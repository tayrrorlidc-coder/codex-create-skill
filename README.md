# Codex Skills

这个仓库用于同步和共享我的 Codex Skills。

## 当前包含

- `find-skills`
- `hatch-pet`
- `project-wrapup-summary`
- `seo-audit`
- `skill-creator`

## 安装单个 Skill

### Windows PowerShell

```powershell
git clone https://github.com/tayrrorlidc-coder/codex-create-skill.git
cd codex-create-skill
Copy-Item -LiteralPath ".\project-wrapup-summary" -Destination "$env:USERPROFILE\.codex\skills\project-wrapup-summary" -Recurse -Force
```

把 `project-wrapup-summary` 替换成你要安装的 Skill 名称即可。

### macOS / Linux

```bash
git clone https://github.com/tayrrorlidc-coder/codex-create-skill.git
cd codex-create-skill
mkdir -p "$HOME/.codex/skills"
cp -R project-wrapup-summary "$HOME/.codex/skills/project-wrapup-summary"
```

把 `project-wrapup-summary` 替换成你要安装的 Skill 名称即可。

## 安装全部 Skill

### Windows PowerShell

```powershell
git clone https://github.com/tayrrorlidc-coder/codex-create-skill.git
cd codex-create-skill
$skills = "find-skills","hatch-pet","project-wrapup-summary","seo-audit","skill-creator"
New-Item -ItemType Directory -Force -Path "$env:USERPROFILE\.codex\skills" | Out-Null
foreach ($skill in $skills) {
  Copy-Item -LiteralPath ".\$skill" -Destination "$env:USERPROFILE\.codex\skills\$skill" -Recurse -Force
}
```

### macOS / Linux

```bash
git clone https://github.com/tayrrorlidc-coder/codex-create-skill.git
cd codex-create-skill
mkdir -p "$HOME/.codex/skills"
for skill in find-skills hatch-pet project-wrapup-summary seo-audit skill-creator; do
  cp -R "$skill" "$HOME/.codex/skills/$skill"
done
```

安装或更新后重启 Codex。
