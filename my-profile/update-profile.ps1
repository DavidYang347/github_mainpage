# GitHub 个人主页信息自动更新脚本
# 使用方法：
# 1. 在下面的"配置区域"填写你的真实信息
# 2. 在 PowerShell 中运行此脚本：.\update-profile.ps1
# 3. 检查生成的 README.md 文件

Write-Host "=====================================" -ForegroundColor Cyan
Write-Host " GitHub 个人主页信息更新工具" -ForegroundColor Cyan
Write-Host "=====================================" -ForegroundColor Cyan
Write-Host ""

################################################################################
# 配置区域 - 请在这里填写你的信息
################################################################################

# 基础信息
$config = @{
    # GitHub 用户名（必填，非常重要！）
    userName = "zhangsan"
    
    # 显示名称（你的姓名或昵称）
    displayName = "张三"
    
    # 邮箱地址
    email = "zhangsan@example.com"
    
    # GitHub 用户 ID（访问 https://api.github.com/users/你的用户名 获取）
    userId = "12345678"
    
    # 职位或角色
    jobTitle = "全栈开发工程师"
    
    # 所在地
    location = "北京"
    
    # 社交媒体用户名
    linkedIn = "zhangsan"
    twitter = "zhangsan_dev"
    
    # 个人博客地址
    blog = "https://zhangsan.dev"
}

################################################################################
# 脚本主体 - 不需要修改下面的内容
################################################################################

# 检查 README.md 是否存在
if (-not (Test-Path "README.md")) {
    Write-Host "❌ 错误：找不到 README.md 文件" -ForegroundColor Red
    Write-Host "请确保在 my-profile 目录下运行此脚本" -ForegroundColor Yellow
    exit 1
}

# 创建备份
$backupFile = "README.md.backup-$(Get-Date -Format 'yyyyMMdd-HHmmss')"
Copy-Item "README.md" $backupFile
Write-Host "✅ 已创建备份：$backupFile" -ForegroundColor Green

# 读取文件内容
$content = Get-Content "README.md" -Raw -Encoding UTF8

# 显示配置信息
Write-Host ""
Write-Host "📝 即将使用以下信息更新 README.md：" -ForegroundColor Yellow
Write-Host "   GitHub 用户名: $($config.userName)" -ForegroundColor White
Write-Host "   显示名称: $($config.displayName)" -ForegroundColor White
Write-Host "   邮箱: $($config.email)" -ForegroundColor White
Write-Host "   用户 ID: $($config.userId)" -ForegroundColor White
Write-Host "   职位: $($config.jobTitle)" -ForegroundColor White
Write-Host "   位置: $($config.location)" -ForegroundColor White
Write-Host ""

# 询问确认
$confirm = Read-Host "确认要继续吗？(Y/N)"
if ($confirm -ne "Y" -and $confirm -ne "y") {
    Write-Host "❌ 操作已取消" -ForegroundColor Red
    Remove-Item $backupFile
    exit 0
}

Write-Host ""
Write-Host "🔄 正在更新文件..." -ForegroundColor Cyan

# 执行替换
$replacements = @{
    '你的GitHub用户名' = $config.userName
    '你的名字' = $config.displayName
    'your\.email@example\.com' = $config.email
    '你的GitHub用户ID' = $config.userId
    '全栈开发工程师' = $config.jobTitle
    '中国' = $config.location
    '你的用户名' = $config.linkedIn
    'yourblog\.com' = $config.blog
}

$updateCount = 0
foreach ($key in $replacements.Keys) {
    $oldContent = $content
    $content = $content -replace $key, $replacements[$key]
    if ($oldContent -ne $content) {
        $matches = ([regex]::Matches($oldContent, $key)).Count
        Write-Host "  ✓ 替换 '$key' -> '$($replacements[$key])' ($matches 处)" -ForegroundColor Gray
        $updateCount += $matches
    }
}

# 保存文件
$content | Set-Content "README.md" -Encoding UTF8 -NoNewline

Write-Host ""
Write-Host "=====================================" -ForegroundColor Green
Write-Host "✅ 更新完成！" -ForegroundColor Green
Write-Host "=====================================" -ForegroundColor Green
Write-Host ""
Write-Host "📊 统计信息：" -ForegroundColor Cyan
Write-Host "   总共更新了 $updateCount 处" -ForegroundColor White
Write-Host "   备份文件：$backupFile" -ForegroundColor White
Write-Host ""
Write-Host "📋 下一步操作：" -ForegroundColor Yellow
Write-Host "   1. 打开 README.md 检查替换结果" -ForegroundColor White
Write-Host "   2. 根据实际情况调整技能、经历等内容" -ForegroundColor White
Write-Host "   3. 查看《部署指南.md》了解如何部署到 GitHub" -ForegroundColor White
Write-Host ""
Write-Host "💡 提示：如果需要恢复，使用备份文件：" -ForegroundColor Cyan
Write-Host "   Copy-Item $backupFile README.md" -ForegroundColor Gray
Write-Host ""

# 可选：自动打开文件
$openFile = Read-Host "是否在默认编辑器中打开 README.md？(Y/N)"
if ($openFile -eq "Y" -or $openFile -eq "y") {
    Start-Process "README.md"
}

Write-Host "🎉 完成！祝你的 GitHub 主页越来越精彩！" -ForegroundColor Green

