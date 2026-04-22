---
name: take-notes
description: Keep the repository's `notes/` directory updated as a structured roadmap, and use it as an execution queue. Use when the user asks to take notes, update planning notes, add roadmap items, create or revise topic todo files, keep long-term mathematical project notes in the existing `notes/` style, or explicitly asks to "work off the notes".
---

# Take Notes

Use this skill when the user wants persistent planning notes in this repository rather than a transient chat summary.

This skill has two modes:

- Note-taking mode: update or reorganize the notes tree.
- Execution mode: when the user asks to "work off the notes", use the notes tree to choose the next implementation task and then do the code work.

## Notes Layout

The notes live under `notes/`.

- `notes/todo.md` is the top-level roadmap.
- Each major topic gets its own subfolder under `notes/`.
- Each topic subfolder contains its own `todo.md`.
- This structure is recursive: if a topic-level `todo.md` is still too broad, make subfolders inside that topic, each with its own `todo.md`.

Current topic folders are expected to follow the existing roadmap structure, for example:

- `notes/foundations/todo.md`
- `notes/order-theory/todo.md`
- `notes/algebraic-hierarchy/todo.md`
- `notes/real-analysis/todo.md`

## Style

Keep the notes terse and structured.

- Prefer short headings and short checklist items.
- Use Markdown checklists: `- [ ] item`.
- Keep top-level roadmap items broad.
- Keep topic-level items more concrete and implementation-oriented.
- Avoid nested bullets unless the user explicitly asks for a more detailed hierarchy.
- Prefer updating existing files over creating duplicate note files.
- Prefer recursive folder structure over long flat todo lists when a topic is still too broad.

## Workflow

1. Read `notes/todo.md` first.
2. If the request concerns an existing topic, update that topic's `notes/<topic>/todo.md`.
3. If the request introduces a new major topic, update `notes/todo.md` and create a new topic subfolder with its own `todo.md`.
4. Keep the top-level roadmap and topic folders consistent with each other.
5. When expanding a topic, keep the lower `todo.md` between 10 and 30 checklist items unless the user explicitly wants a different size.
6. When adding a new top-level roadmap from scratch, aim for 10 to 30 broad areas.
7. Before working on a topic in note-taking mode, check whether its current `todo.md` is narrow enough that one unchecked item could reasonably be completed in one session.
8. If it is not narrow enough, first break that topic into subtopics by creating subfolders and a new lower-level `todo.md`, then work from that narrower list.
9. Keep drilling down recursively until the active `todo.md` is session-sized.
10. If the user asks to record progress, mark completed items and add short new unchecked items only when they reflect real next steps.
11. Do not turn the notes into prose documentation. These files are for planning and tracking.

## Execution Mode

When the user says to "work off the notes", do not stop at note maintenance. Use the notes as the task queue.

1. Start at `notes/todo.md`.
2. Follow the active branch or else the first unchecked item in execution order.
3. If that item points to a lower `todo.md`, descend into it.
4. If the current item is still too broad for one session, first split it into subfolders with narrower `todo.md` files.
5. Repeat until you reach a concrete item that is narrow enough to plausibly complete in one session.
6. Then switch from note-taking to implementation: read the relevant code, write Acorn code, and verify the change.
7. Prefer actually finishing the todo item over discussing it abstractly.
8. After the code verifies, update the notes immediately.

## Updating Notes After Work

When an execution-mode task is completed:

- remove the completed bullet from the active `todo.md`
- if useful, add one or more new follow-up bullets that reflect the new frontier
- if a subtopic file becomes empty, remove or collapse that branch in the parent notes
- keep parent indexes consistent with the remaining children

If the task was only partially completed:

- rewrite the active bullet into smaller remaining bullets
- keep the notes honest about what is left
- do not mark broad progress if the concrete subtask is still unfinished

## Verification

In execution mode, the notes are not enough by themselves. Always try to verify the code change before updating the notes as though the item is complete.

- For Acorn library work, prefer `acorn` or the narrowest verifying command that still justifies the note update.
- If verification fails, keep the todo item or replace it with narrower remaining work.

## Naming Conventions

- Use lowercase, hyphenated folder names.
- Name the per-topic file `todo.md`.
- Keep topic titles in Markdown synchronized with the corresponding roadmap entry.

## Preferred Edits

- Update links in `notes/todo.md` when topic folders are added or renamed.
- Preserve stable folder names once they exist.
- If a topic becomes too large for session-sized work, split it into subtopics before attempting the work itself.
- When splitting a topic, make the parent `todo.md` point to the narrower subfolders.
- Stop splitting when a single bullet is concrete enough to plausibly complete in one session.

## Output

When you finish a note-taking request, report:

- which note files were updated
- whether any new topic folders were created
- any major roadmap changes that affect navigation

When you finish an execution-mode request, also report:

- which todo item you selected
- whether it was completed and removed from the notes
- which code files changed
- what verification was run
