# Codex Skills

这个仓库用于共享可安装的 Codex Skill。

## project-wrapup-summary

用于在 Codex 完成一个项目、任务、修复、调试或交接时，按固定五点生成收尾总结：

1. 任务目标
2. 最终改动
3. 已验证内容
4. 剩余风险
5. 后续起点

## 安装方式

### Windows PowerShell

```powershell
git clone https://github.com/tayrrorlidc-coder/codex-create-skill.git
cd codex-create-skill\project-wrapup-summary
.\install.ps1
```

### macOS / Linux

```bash
git clone https://github.com/tayrrorlidc-coder/codex-create-skill.git
cd codex-create-skill/project-wrapup-summary
bash install.sh
```

安装后重启 Codex，然后可以用这些话触发：

```text
总结这个项目
项目收尾总结
wrap up this coding session
handoff 一下这个任务
后续继续做应该从哪里开始
```
