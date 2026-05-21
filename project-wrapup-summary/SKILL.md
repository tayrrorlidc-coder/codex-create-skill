---
name: project-wrapup-summary
description: Use this skill whenever the user asks Codex to summarize a completed project, task, coding session, implementation, fix, audit, or handoff. Trigger on phrases such as "总结这个项目", "项目收尾总结", "做完了总结一下", "handoff", "wrap up", "what changed", "continue from here", or when the user wants a concise record of goals, changes, verification, risks, and next starting point.
---

# Project Wrap-up Summary

Use this skill to write a concise end-of-project summary that helps the user quickly understand what happened and resume work later without rereading the whole thread.

## When to Use

Use this when the user asks for a final summary after completing a project, task, debugging session, code change, design pass, research task, or any work that should be handed off or resumed later.

## Output Language

Respond in the user's language. If the workspace or user instruction requires Simplified Chinese, write the summary in Simplified Chinese.

Keep command names, paths, filenames, branch names, error messages, and test names in English when that preserves accuracy.

## Summary Structure

Always cover these five points, in this order:

1. **任务目标**: State what the task was trying to accomplish.
2. **最终改动**: Summarize what changed, including important files, modules, commands, artifacts, or configuration changes.
3. **已验证内容**: List what was verified, such as tests run, builds, manual checks, screenshots, logs reviewed, or files inspected.
4. **剩余风险**: Mention known risks, unverified areas, assumptions, limitations, flaky checks, or anything the next person should not treat as guaranteed.
5. **后续起点**: Tell the user exactly where to continue next, such as a file path, command, branch, PR, issue, test, TODO, or decision point.

## Style Rules

- Be concise and direct.
- Prefer concrete facts over vague status language.
- If no verification was run, say that explicitly.
- If there are no known risks, say "暂无已知风险", but still mention any reasonable residual uncertainty.
- Do not invent tests, files, commits, PRs, or verification that did not happen.
- Include clickable local file paths when available in the environment's preferred format.
- Preserve exact command names and important output snippets when useful.

## Recommended Template

```markdown
**任务目标**
[一句话说明目标。]

**最终改动**
- [改动 1]
- [改动 2]

**已验证内容**
- [验证项，或说明未运行验证。]

**剩余风险**
- [风险、假设或未覆盖点。]

**后续起点**
- [下一步应从哪里开始，包含路径、命令、分支、PR 或具体动作。]
```

For very small tasks, keep each section to one short sentence. For larger projects, use 2-5 bullets per section.

## Quality Checklist

Before answering, check that:

- The summary can stand alone without the reader needing the full conversation.
- The "后续起点" is actionable, not just "继续优化".
- Verification and risks are honest and specific.
- The final answer is short enough to scan quickly.
