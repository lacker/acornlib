#!/usr/bin/env bash
set -euo pipefail

default_repo() {
    local remote_url

    if remote_url="$(git remote get-url upstream 2>/dev/null)"; then
        parse_github_repo "$remote_url"
        return
    fi

    printf '%s\n' 'acornprover/acornlib'
}

parse_github_repo() {
    local remote_url="$1"
    local repo_path

    repo_path="${remote_url%.git}"
    case "$repo_path" in
        git@github.com:*)
            repo_path="${repo_path#git@github.com:}"
            ;;
        https://github.com/*)
            repo_path="${repo_path#https://github.com/}"
            ;;
        http://github.com/*)
            repo_path="${repo_path#http://github.com/}"
            ;;
        ssh://git@github.com/*)
            repo_path="${repo_path#ssh://git@github.com/}"
            ;;
        *)
            printf 'Could not parse a GitHub repository from remote URL: %s\n' "$remote_url" >&2
            return 1
            ;;
    esac

    printf '%s\n' "$repo_path"
}

repo="${1:-${GITHUB_REPO:-$(default_repo)}}"
api_url="${GITHUB_API_URL:-https://api.github.com}"
per_page=100
page=1
token="${GITHUB_TOKEN:-${GH_TOKEN:-}}"

headers=(
    -H "Accept: application/vnd.github+json"
    -H "X-GitHub-Api-Version: 2022-11-28"
)

if [[ -n "$token" ]]; then
    headers+=(-H "Authorization: Bearer $token")
fi

printf 'Open PR assignment status for %s\n' "$repo"

while true; do
    response="$(
        curl --fail --silent --show-error --location \
            "${headers[@]}" \
            "${api_url}/repos/${repo}/pulls?state=open&per_page=${per_page}&page=${page}"
    )"

    count="$(
        printf '%s' "$response" | python3 -c 'import json, sys; print(len(json.load(sys.stdin)))'
    )"

    if [[ "$count" -eq 0 ]]; then
        break
    fi

    printf '%s' "$response" | python3 -c '
import json
import sys

for pr in json.load(sys.stdin):
    assignees = [assignee["login"] for assignee in pr.get("assignees", [])]
    if assignees:
        status = "assigned to " + ", ".join(assignees)
    else:
        status = "unassigned"
    print("#{0}: {1} - {2}".format(pr["number"], status, pr["title"]))
'

    if [[ "$count" -lt "$per_page" ]]; then
        break
    fi

    page=$((page + 1))
done
