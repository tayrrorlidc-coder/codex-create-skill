# Codex Skills

这个仓库用于同步、备份和共享我的 Codex skills。

最近一次同步记录见 [`SKILLS_SYNC.md`](./SKILLS_SYNC.md)。

## 当前包含

本仓库当前包含 45 个 skill：

- `ai-seo`
- `backlink-analyzer`
- `chrome-devtools`
- `claude-to-im`
- `competitor-profiling`
- `find-skills`
- `github-actions-docs`
- `gpt-image-2`
- `hatch-pet`
- `humanizer-zh`
- `lark-approval`
- `lark-attendance`
- `lark-base`
- `lark-calendar`
- `lark-contact`
- `lark-doc`
- `lark-drive`
- `lark-event`
- `lark-im`
- `lark-mail`
- `lark-markdown`
- `lark-minutes`
- `lark-okr`
- `lark-openapi-explorer`
- `lark-shared`
- `lark-sheets`
- `lark-skill-maker`
- `lark-slides`
- `lark-task`
- `lark-vc`
- `lark-vc-agent`
- `lark-whiteboard`
- `lark-wiki`
- `lark-workflow-meeting-summary`
- `lark-workflow-standup-report`
- `last30days`
- `marketing-ideas`
- `programmatic-seo`
- `project-wrapup-summary`
- `requesting-code-review`
- `seo-audit`
- `seo-geo`
- `skill-creator`
- `ui-ux-pro-max`
- `vercel-react-best-practices`

## 安装单个 Skill

### Windows PowerShell

```powershell
git clone https://github.com/tayrrorlidc-coder/codex-create-skill.git
cd codex-create-skill
New-Item -ItemType Directory -Force -Path "$env:USERPROFILE\.codex\skills" | Out-Null
Copy-Item -LiteralPath ".\project-wrapup-summary" -Destination "$env:USERPROFILE\.codex\skills\project-wrapup-summary" -Recurse -Force
```

把 `project-wrapup-summary` 替换成你要安装的 skill 名称即可。

### macOS / Linux

```bash
git clone https://github.com/tayrrorlidc-coder/codex-create-skill.git
cd codex-create-skill
mkdir -p "$HOME/.codex/skills"
cp -R project-wrapup-summary "$HOME/.codex/skills/project-wrapup-summary"
```

把 `project-wrapup-summary` 替换成你要安装的 skill 名称即可。

## 安装全部 Skill

### Windows PowerShell

```powershell
git clone https://github.com/tayrrorlidc-coder/codex-create-skill.git
cd codex-create-skill
New-Item -ItemType Directory -Force -Path "$env:USERPROFILE\.codex\skills" | Out-Null
Get-ChildItem -Directory | Where-Object { Test-Path (Join-Path $_.FullName "SKILL.md") } | ForEach-Object {
  Copy-Item -LiteralPath $_.FullName -Destination (Join-Path "$env:USERPROFILE\.codex\skills" $_.Name) -Recurse -Force
}
```

### macOS / Linux

```bash
git clone https://github.com/tayrrorlidc-coder/codex-create-skill.git
cd codex-create-skill
mkdir -p "$HOME/.codex/skills"
for skill in */SKILL.md; do
  name="$(dirname "$skill")"
  cp -R "$name" "$HOME/.codex/skills/$name"
done
```

安装或更新后请重启 Codex。

## 安全说明

- 这些 skills 来自多个来源，包括第三方仓库和本机全局安装目录。
- 使用前建议阅读对应 skill 的 `SKILL.md`，尤其是包含脚本、网络请求、凭证处理或自动化操作的 skill。
- 不要把真实 token、API key、app secret、cookie、keychain 文件或本地私有配置提交到仓库。
- 本仓库同步时不做删除式镜像；如果需要移除某个 skill，请手动确认后再操作。

