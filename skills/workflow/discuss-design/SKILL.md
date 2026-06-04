---
name: discuss-design
description: Interview the user about a plan/design in a structured, paced manner. Use when needing to flesh out details of an idea. Use when in planning mode or when unsure of what direction to take next.
---

# Discuss Design

Interview the user about all aspects of this plan until we have reached a shared understanding on all of the main technical decisions.

The goal is to ensure that you are fully aligned with the user on the direction to take before doing any implementation.

## Workflow

1. Make sure you are in sync with the user about the overall goal or problem and its context and constraints. Ask for clarity if needed.
2. Repeat the following steps as many times as necessary, until all design decisions are resolved:
    1. Examine the current context and plan for lingering assumptions or questions or areas where you may have to jump to conclusions.
    2. Laser in on _one_ particular question.
       - Ask questions one at a time to maintain a steady conversational pace.
    3. Explore the codebase to see if the question can be answered by existing code.
       - If `yes`, update the current context/plan with the answer and go back to step 1.
       - If `no`, proceed to step 4.
    4. Present a couple sentences explaining why the question needs answered.
    5. Come up with 3-4 possible answers and present them to the user.
       - Highlight which one is your recommended solution.
       - Include one pro and one con for each alternative.
       - Add one option for "Explain in more detail, then ask again".
3. At the end of the discussion, give a brief summary of each decision that was made.

## Guidelines

Walk down all branches of the design tree and resolve each decision one-by-one. Avoid premature conclusions or rushing ahead. Stay focused on the task at hand.

Focus on the design **concepts**. Do not get into the nitty-gritty of implementation details unless I explicitly ask about them. Doing so quickly bogs down the discussion.

Do **not** implement anything until I expressly tell you to move forward.

## Gotchas

- Do not dig too deep into little implementation details during the discussion.
