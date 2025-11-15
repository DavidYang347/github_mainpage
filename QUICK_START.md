# 🚀 快速开始指南

这份指南帮助你在 5 分钟内创建一个精美的 GitHub 个人主页。

---

## 📋 前置要求

- 一个 GitHub 账号
- 5 分钟时间

---

## 🎯 三步创建你的 GitHub 主页

### 第 1 步：创建特殊仓库

1. 登录你的 GitHub 账号
2. 点击右上角的 `+` 号，选择 `New repository`
3. **重要**: 仓库名称必须与你的 GitHub 用户名完全相同
   - 例如：用户名是 `zhangsan`，仓库名就是 `zhangsan`
4. 勾选 `Public`（必须是公开的）
5. 勾选 `Add a README file`
6. 点击 `Create repository`

> 💡 **提示**: 如果仓库名称正确，GitHub 会显示一条提示：
> "You found a secret! ✨ zhangsan/zhangsan is a special repository. Its README.md will appear on your public profile!"

### 第 2 步：选择模板

从本项目的 `templates/` 目录中选择一个你喜欢的风格：

| 模板文件 | 风格 | 难度 | 适合人群 |
|:---|:---|:---:|:---|
| `style-1-minimalist.md` | 简约专业 | ⭐ | 求职者、专业开发者 |
| `style-2-dynamic.md` | 动态炫酷 | ⭐⭐⭐ | 开源爱好者、年轻开发者 |
| `style-3-minimal-bw.md` | 极简黑白 | ⭐ | 极简主义者 |
| `style-4-creative.md` | 创意卡片 | ⭐⭐ | 前端开发者、设计师 |
| `style-5-data-driven.md` | 数据驱动 | ⭐⭐⭐⭐ | 数据科学家、高级工程师 |

**不确定选哪个？** 查看 [`examples/preview.md`](examples/preview.md) 详细对比

### 第 3 步：自定义内容

1. 打开你刚创建的仓库
2. 点击 `README.md` 文件
3. 点击右上角的 ✏️ 编辑按钮
4. 复制你选择的模板内容，粘贴到编辑器
5. 根据下面的"必改项清单"修改你的信息
6. 点击 `Commit changes` 保存

---

## ✅ 必改项清单

无论选择哪个模板，都必须修改这些内容：

### 基础信息
- [ ] `你的名字` → 你的真实姓名或昵称
- [ ] `你的用户名` → 你的 GitHub 用户名
- [ ] `your.email@example.com` → 你的邮箱
- [ ] `你的职位/角色` → 你的职位，如"全栈开发工程师"
- [ ] `所在城市` → 你所在的城市

### 个人介绍
- [ ] `[你的专业领域]` → 你擅长的技术领域
- [ ] `[你的项目名称]` → 你正在开发的项目
- [ ] `[新技术/框架]` → 你正在学习的技术
- [ ] `[你擅长的技术]` → 可以问你的技术问题
- [ ] `[一句有趣的自我介绍]` → 一句话描述你的特点

### 技术栈
- [ ] 删除你不会的技术徽章
- [ ] 保留你熟悉的技术
- [ ] 可以从 [useful-tools.md](resources/useful-tools.md) 找更多徽章

### 链接
- [ ] LinkedIn 链接 → 你的 LinkedIn 主页
- [ ] Twitter 链接 → 你的 Twitter 主页
- [ ] 个人网站链接 → 你的个人网站（如果有）
- [ ] 项目链接 → 你的开源项目

### GitHub 统计
- [ ] 所有 `username=你的用户名` → 替换为你的 GitHub 用户名

---

## 🎨 个性化建议

### 初级（5分钟）
完成上面的"必改项清单"就够了！

### 中级（15分钟）
- 调整技术栈徽章的颜色和图标
- 选择不同的 GitHub 统计主题
- 添加你的精选项目

### 高级（30分钟+）
- 配置 Spotify 音乐展示
- 添加贡献蛇动画
- 自定义配色方案
- 混搭多个模板的元素

---

## 🔧 常见问题

### Q1: 我的 README 没有显示在个人主页上？

**检查清单**:
- [ ] 仓库名称是否与用户名完全一致？
- [ ] 仓库是否设置为 Public（公开）？
- [ ] 文件名是否为 `README.md`（大小写敏感）？
- [ ] 等待 1-2 分钟刷新缓存

### Q2: GitHub 统计图片不显示？

**解决方法**:
- 检查 URL 中的用户名是否正确
- 刷新页面或清除缓存
- 确认第三方服务没有宕机
- 尝试换一个统计服务

### Q3: 徽章或图标颜色怎么改？

在徽章 URL 中修改颜色代码：
```
https://img.shields.io/badge/文字-颜色代码?style=样式&logo=图标
```

例如：
```
https://img.shields.io/badge/Python-3776AB?style=for-the-badge&logo=python
```

**颜色代码可以是**:
- 颜色名: `red`, `blue`, `green`
- 十六进制: `FF0000`, `0000FF`
- 英文名: `brightgreen`, `yellow`

### Q4: 我想要更多图标怎么办？

访问这些网站查找：
- [Shields.io](https://shields.io/) - 徽章生成器
- [Simple Icons](https://simpleicons.org/) - 查找品牌图标
- [Skill Icons](https://github.com/tandpfun/skill-icons) - 技能图标
- [DevIcon](https://devicon.dev/) - 开发图标

### Q5: 如何添加访客统计？

添加这行代码到你的 README：
```markdown
![访客数](https://visitor-badge.laobi.icu/badge?page_id=你的用户名.你的用户名)
```

或者：
```markdown
![Profile views](https://komarev.com/ghpvc/?username=你的用户名&color=brightgreen)
```

### Q6: 统计主题有哪些？

GitHub Readme Stats 支持的主题：
- `default` - 默认
- `dark` - 深色
- `radical` - 激进紫
- `tokyonight` - 东京之夜
- `onedark` - One Dark
- `cobalt` - 钴蓝
- `dracula` - 德古拉
- `monokai` - Monokai
- 更多主题查看 [useful-tools.md](resources/useful-tools.md)

更改主题：
```markdown
![Stats](https://github-readme-stats.vercel.app/api?username=你的用户名&theme=tokyonight)
```

---

## 📚 进阶资源

### 想要更多灵感？
- 📖 查看 [`examples/preview.md`](examples/preview.md) - 风格详细对比
- 🛠️ 查看 [`resources/useful-tools.md`](resources/useful-tools.md) - 工具和资源大全
- ⭐ 访问 [Awesome GitHub Profile README](https://github.com/abhisheknaiidu/awesome-github-profile-readme)

### 想要自动化？
- 使用 GitHub Actions 自动更新博客列表
- 配置 WakaTime 自动更新编码时间
- 设置自动刷新的项目统计

---

## ⏱️ 时间线建议

### 第一天（5分钟）
- ✅ 创建仓库
- ✅ 选择模板
- ✅ 修改基础信息

### 第一周（30分钟）
- ✅ 完善技术栈
- ✅ 添加项目链接
- ✅ 调整布局和样式

### 第一个月（持续优化）
- ✅ 添加动态元素
- ✅ 配置第三方服务
- ✅ 定期更新内容

---

## 💡 专业提示

1. **简洁胜过复杂**: 不要堆砌太多元素
2. **真实最重要**: 展示真实的技能和项目
3. **定期更新**: 至少每季度更新一次
4. **测试链接**: 确保所有链接都有效
5. **移动友好**: 在手机上也要看起来不错
6. **个性化**: 添加你独特的元素

---

## 🎉 完成！

恭喜你！你的 GitHub 个人主页已经创建完成了！

### 下一步做什么？

- 🌟 在本项目点个 Star（如果有帮助的话）
- 📢 分享给你的朋友
- 🔗 把主页链接添加到简历中
- 💬 在社交媒体上展示

### 需要帮助？

- 📖 查看 [README.md](README.md) 了解项目详情
- 🔍 阅读 [FAQ](#常见问题)
- 💡 查看 [useful-tools.md](resources/useful-tools.md) 获取更多资源

---

<div align="center">

**🚀 祝你的 GitHub 之旅一帆风顺！**

*记住：最好的主页是能展现真实的你的主页。*

</div>

