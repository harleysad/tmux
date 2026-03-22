# Vibe Coding Protocol & Session Logging

This document defines the mandatory rules for interaction, code generation, and documentation in this repository.

## 1. Session Logging (The "Vibe" Record)
Every significant task or code change must be documented to preserve the original prompts.

- **Trigger:** Create or update a log file for every feature, fix, or major interaction.
- **Location:** Store all logs in `/docs/sessions/`.
- **Naming Convention:** `YYYY-MM-DD_HHMM_[SESSION_ID].md` 
  *(Example: 2026-03-22_1530_auth_logic.md)*
- **Content Requirements:** Use a **literal transcript** of the conversation.
    - **Header:** Start Date/Time and Session Objective.
    - **Log:** > User: [Insert literal prompt provided here]
        > Agent: [Brief summary of action or code generated]

## 2. Git Flow & Commit Standards
You must follow professional Git practices to ensure a clean and traceable history.

- **Branching Strategy:**
    - Use `feature/description` for new code.
    - Use `fix/description` for bug fixes.
    - Use `docs/description` for documentation-only tasks.
- **Conventional Commits:** All commit messages must follow this format:
    - `feat:` (new features)
    - `fix:` (bug fixes)
    - `docs:` (documentation/logs)
    - `refactor:` (code improvement without new features)
    - `chore:` (maintenance/config)
- **Granularity:** Make small, atomic commits. Do not bundle unrelated changes.

## 3. Final Consolidation (Main Branch)
The `main` branch must serve as the "Source of Truth".
- Before merging or finalizing a task, ensure the session log file contains the **entire** conversation history for that specific session.
- No session history should be lost; every prompt that led to the current state of `main` must be retrievable in `/docs/sessions/`.

## 4. Execution Instructions
1. Read this protocol before starting any task.
2. Initialize the session log file immediately.
3. Commit the code and the session log together or in sequence.

## 5. Localization Protocol
To ensure accessibility for Portuguese-speaking contributors:
- **Requirement:** Every time `README.md` is updated, a corresponding update **must** be applied to `README.pt-BR.md`.
- **Linking:** Both files must contain a visible link to each other at the top of the document.

## Related Documentation
- [Agents](./agents.md)
- [Claude](./claude