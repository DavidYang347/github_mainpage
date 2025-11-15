# 🎨 自定义示例教程

这个文档通过实际例子展示如何自定义你的 GitHub Profile README。

---

## 📝 示例场景

假设我们有这样一位开发者：
- 姓名：张三
- GitHub 用户名：zhangsan
- 职位：前端开发工程师
- 所在地：北京
- 邮箱：zhangsan@example.com
- 擅长：React、TypeScript、Node.js
- 正在学习：Rust、WebAssembly
- 个人网站：https://zhangsan.dev

让我们看看如何将模板改成他的信息。

---

## 🔧 自定义步骤

### Step 1: 修改基础信息

**原模板**（style-1-minimalist.md）:
```markdown
# 👋 你好，我是 [你的名字]

> 💼 [你的职位/角色] | 📍 [所在城市] | 🌐 [个人网站](https://yourwebsite.com)
```

**修改后**:
```markdown
# 👋 你好，我是 张三

> 💼 前端开发工程师 | 📍 北京 | 🌐 [个人网站](https://zhangsan.dev)
```

### Step 2: 更新个人简介

**原模板**:
```markdown
- 🔭 目前正在开发：**[你的项目名称]**
- 🌱 正在学习：**[新技术/框架]**
- 💬 可以问我关于：**[你擅长的技术]**
- 📫 联系我：[your.email@example.com](mailto:your.email@example.com)
- ⚡ 趣闻：[一句有趣的自我介绍]
```

**修改后**:
```markdown
- 🔭 目前正在开发：**React 组件库**
- 🌱 正在学习：**Rust 和 WebAssembly**
- 💬 可以问我关于：**React、TypeScript、性能优化**
- 📫 联系我：[zhangsan@example.com](mailto:zhangsan@example.com)
- ⚡ 趣闻：写代码的时候喜欢听摇滚乐 🎸
```

### Step 3: 选择技术栈

根据实际技能，**保留**相关的技术徽章，**删除**不熟悉的。

**原模板包含很多技术**:
```markdown
![Python](https://img.shields.io/badge/-Python-3776AB?...)
![JavaScript](https://img.shields.io/badge/-JavaScript-F7DF1E?...)
![TypeScript](https://img.shields.io/badge/-TypeScript-3178C6?...)
![Java](https://img.shields.io/badge/-Java-007396?...)
![Go](https://img.shields.io/badge/-Go-00ADD8?...)
```

**张三只保留他会的**:
```markdown
### 编程语言
![JavaScript](https://img.shields.io/badge/-JavaScript-F7DF1E?style=flat-square&logo=javascript&logoColor=black)
![TypeScript](https://img.shields.io/badge/-TypeScript-3178C6?style=flat-square&logo=typescript&logoColor=white)
![Rust](https://img.shields.io/badge/-Rust-000000?style=flat-square&logo=rust&logoColor=white)

### 前端开发
![React](https://img.shields.io/badge/-React-61DAFB?style=flat-square&logo=react&logoColor=black)
![Next.js](https://img.shields.io/badge/-Next.js-000000?style=flat-square&logo=next.js&logoColor=white)
![Tailwind CSS](https://img.shields.io/badge/-Tailwind_CSS-38B2AC?style=flat-square&logo=tailwind-css&logoColor=white)
![Webpack](https://img.shields.io/badge/-Webpack-8DD6F9?style=flat-square&logo=webpack&logoColor=black)

### 后端开发
![Node.js](https://img.shields.io/badge/-Node.js-339933?style=flat-square&logo=node.js&logoColor=white)
![Express](https://img.shields.io/badge/-Express-000000?style=flat-square&logo=express&logoColor=white)
```

### Step 4: 更新 GitHub 统计

**原模板**:
```markdown
![Stats](https://github-readme-stats.vercel.app/api?username=你的用户名&...)
```

**修改后**:
```markdown
![Stats](https://github-readme-stats.vercel.app/api?username=zhangsan&show_icons=true&theme=tokyonight&count_private=true)
```

### Step 5: 添加社交媒体链接

**原模板**:
```markdown
[![LinkedIn](https://img.shields.io/badge/-LinkedIn-0077B5?...)](https://linkedin.com/in/你的用户名)
[![Twitter](https://img.shields.io/badge/-Twitter-1DA1F2?...)](https://twitter.com/你的用户名)
```

**修改后**:
```markdown
[![LinkedIn](https://img.shields.io/badge/-LinkedIn-0077B5?style=for-the-badge&logo=linkedin&logoColor=white)](https://linkedin.com/in/zhangsan)
[![Twitter](https://img.shields.io/badge/-Twitter-1DA1F2?style=for-the-badge&logo=twitter&logoColor=white)](https://twitter.com/zhangsan_dev)
[![掘金](https://img.shields.io/badge/-掘金-1E80FF?style=for-the-badge&logo=bytedance&logoColor=white)](https://juejin.cn/user/zhangsan)
[![个人博客](https://img.shields.io/badge/-Blog-FFA500?style=for-the-badge&logo=rss&logoColor=white)](https://zhangsan.dev/blog)
```

---

## 🎨 进阶自定义

### 自定义 1: 修改统计主题

GitHub Readme Stats 支持多种主题，选择你喜欢的：

```markdown
<!-- 默认主题 -->
![Stats](https://github-readme-stats.vercel.app/api?username=zhangsan&theme=default)

<!-- 深色主题 -->
![Stats](https://github-readme-stats.vercel.app/api?username=zhangsan&theme=dark)

<!-- 东京之夜 -->
![Stats](https://github-readme-stats.vercel.app/api?username=zhangsan&theme=tokyonight)

<!-- 激进紫 -->
![Stats](https://github-readme-stats.vercel.app/api?username=zhangsan&theme=radical)

<!-- 德古拉 -->
![Stats](https://github-readme-stats.vercel.app/api?username=zhangsan&theme=dracula)
```

### 自定义 2: 调整布局

**并排显示统计**:
```markdown
<div align="center">
  <img height="180em" src="https://github-readme-stats.vercel.app/api?username=zhangsan&show_icons=true&theme=tokyonight"/>
  <img height="180em" src="https://github-readme-stats.vercel.app/api/top-langs/?username=zhangsan&layout=compact&theme=tokyonight"/>
</div>
```

**垂直堆叠**:
```markdown
<div align="center">
  <img src="https://github-readme-stats.vercel.app/api?username=zhangsan&show_icons=true&theme=tokyonight"/>
</div>

<div align="center">
  <img src="https://github-readme-stats.vercel.app/api/top-langs/?username=zhangsan&layout=compact&theme=tokyonight"/>
</div>
```

### 自定义 3: 添加动态打字效果

```markdown
<div align="center">
  
[![Typing SVG](https://readme-typing-svg.herokuapp.com?font=Fira+Code&size=32&duration=2800&pause=2000&color=3178C6&center=true&vCenter=true&width=940&lines=你好！我是+张三+👋;前端开发工程师+💻;React+专家+⚛️;TypeScript+爱好者+📘)](https://git.io/typing-svg)

</div>
```

### 自定义 4: 添加技能进度条

```markdown
## 💪 技能熟练度

```text
React        ████████████████████  95%
TypeScript   ███████████████████   90%
Node.js      ██████████████████    85%
Rust         ████████              40%
WebAssembly  ██████                30%
```
\```

### 自定义 5: 展示精选项目

```markdown
## 🌟 精选项目

<div align="center">

[![Readme Card](https://github-readme-stats.vercel.app/api/pin/?username=zhangsan&repo=react-ui-kit&theme=tokyonight)](https://github.com/zhangsan/react-ui-kit)
[![Readme Card](https://github-readme-stats.vercel.app/api/pin/?username=zhangsan&repo=typescript-utils&theme=tokyonight)](https://github.com/zhangsan/typescript-utils)

</div>
```

---

## 🌈 配色方案示例

### 方案 1: 蓝色主题（专业）
```markdown
<!-- 使用蓝色系徽章 -->
![React](https://img.shields.io/badge/-React-61DAFB?style=for-the-badge&logo=react&logoColor=black)
![TypeScript](https://img.shields.io/badge/-TypeScript-3178C6?style=for-the-badge&logo=typescript&logoColor=white)

<!-- 配合蓝色主题统计 -->
![Stats](https://github-readme-stats.vercel.app/api?username=zhangsan&theme=cobalt)
```

### 方案 2: 紫色主题（创意）
```markdown
<!-- 使用紫色系统计主题 -->
![Stats](https://github-readme-stats.vercel.app/api?username=zhangsan&theme=radical)
![Trophy](https://github-profile-trophy.trophies.it/?username=zhangsan&theme=radical)
```

### 方案 3: 深色主题（炫酷）
```markdown
<!-- 东京之夜主题 -->
![Stats](https://github-readme-stats.vercel.app/api?username=zhangsan&theme=tokyonight)
![Activity](https://github-readme-activity-graph.vercel.app/graph?username=zhangsan&theme=tokyo-night)
```

### 方案 4: 浅色主题（清爽）
```markdown
<!-- 默认浅色主题 -->
![Stats](https://github-readme-stats.vercel.app/api?username=zhangsan&theme=default)
<!-- 或者 Graywhite -->
![Stats](https://github-readme-stats.vercel.app/api?username=zhangsan&theme=graywhite)
```

---

## 📱 响应式布局技巧

### 技巧 1: 使用百分比宽度

```markdown
<p align="center">
  <img src="图片1" width="48%" />
  <img src="图片2" width="48%" />
</p>
```

### 技巧 2: 固定高度，自适应宽度

```markdown
<img height="180em" src="统计图片链接" />
```

### 技巧 3: 移动端友好的布局

```markdown
<!-- 桌面端并排，移动端自动堆叠 -->
<div align="center">
  <img height="170" src="图片1" />
  <img height="170" src="图片2" />
</div>
```

---

## 🎯 完整示例对比

### 修改前（模板）
```markdown
# 👋 你好，我是 [你的名字]

- 🔭 目前正在开发：**[你的项目名称]**
- 🌱 正在学习：**[新技术/框架]**

## 🛠️ 技术栈
![Python](https://img.shields.io/badge/-Python-3776AB?...)
![JavaScript](https://img.shields.io/badge/-JavaScript-F7DF1E?...)
![Java](https://img.shields.io/badge/-Java-007396?...)

![Stats](https://github-readme-stats.vercel.app/api?username=你的用户名)
```

### 修改后（张三的主页）
```markdown
# 👋 你好，我是 张三

> 💼 前端开发工程师 | 📍 北京 | 🌐 [zhangsan.dev](https://zhangsan.dev)

- 🔭 目前正在开发：**React 组件库**
- 🌱 正在学习：**Rust 和 WebAssembly**
- 💬 可以问我关于：**React、TypeScript、性能优化**
- 📫 联系我：[zhangsan@example.com](mailto:zhangsan@example.com)
- ⚡ 趣闻：写代码的时候喜欢听摇滚乐 🎸

## 🛠️ 技术栈

### 前端开发
![React](https://img.shields.io/badge/-React-61DAFB?style=for-the-badge&logo=react&logoColor=black)
![TypeScript](https://img.shields.io/badge/-TypeScript-3178C6?style=for-the-badge&logo=typescript&logoColor=white)
![Next.js](https://img.shields.io/badge/-Next.js-000000?style=for-the-badge&logo=next.js&logoColor=white)

### 后端开发
![Node.js](https://img.shields.io/badge/-Node.js-339933?style=for-the-badge&logo=node.js&logoColor=white)
![Express](https://img.shields.io/badge/-Express-000000?style=for-the-badge&logo=express&logoColor=white)

## 📊 GitHub 统计

<div align="center">
  <img height="180em" src="https://github-readme-stats.vercel.app/api?username=zhangsan&show_icons=true&theme=tokyonight&count_private=true"/>
  <img height="180em" src="https://github-readme-stats.vercel.app/api/top-langs/?username=zhangsan&layout=compact&theme=tokyonight"/>
</div>

## 🔗 联系方式

<div align="center">
  
[![LinkedIn](https://img.shields.io/badge/-LinkedIn-0077B5?style=for-the-badge&logo=linkedin&logoColor=white)](https://linkedin.com/in/zhangsan)
[![Twitter](https://img.shields.io/badge/-Twitter-1DA1F2?style=for-the-badge&logo=twitter&logoColor=white)](https://twitter.com/zhangsan_dev)
[![掘金](https://img.shields.io/badge/-掘金-1E80FF?style=for-the-badge&logo=bytedance&logoColor=white)](https://juejin.cn/user/zhangsan)

</div>

---

<div align="center">
  
![访客数](https://visitor-badge.laobi.icu/badge?page_id=zhangsan.zhangsan)

**💡 "用代码创造美好世界" - 保持学习，持续进步！**

</div>
```

---

## ✅ 检查清单

在发布你的 GitHub Profile README 之前，检查以下项目：

### 内容检查
- [ ] 所有个人信息已更新
- [ ] GitHub 用户名替换正确
- [ ] 邮箱和联系方式正确
- [ ] 技术栈反映真实技能
- [ ] 项目链接有效

### 格式检查
- [ ] Markdown 语法正确
- [ ] 图片链接有效
- [ ] 徽章显示正常
- [ ] 布局美观

### 功能检查
- [ ] GitHub 统计显示正常
- [ ] 所有外部链接可访问
- [ ] 社交媒体链接正确
- [ ] 在移动端显示良好

### 内容质量
- [ ] 没有拼写错误
- [ ] 信息准确真实
- [ ] 布局清晰易读
- [ ] 突出个人特色

---

## 🚀 发布后

### 定期维护（建议每月一次）
- 更新正在学习的技术
- 添加新完成的项目
- 调整技术栈列表
- 检查链接有效性

### 持续优化
- 根据访客反馈调整
- 尝试新的展示方式
- 添加个性化元素
- 保持内容新鲜

---

<div align="center">

**🎨 创造属于你自己的独特主页！**

*记住：没有完美的模板，只有最适合你的展示方式。*

</div>

