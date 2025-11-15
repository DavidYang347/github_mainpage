#!/bin/bash

# GitHub 个人主页信息自动更新脚本
# 使用方法：
# 1. 在下面的"配置区域"填写你的真实信息
# 2. 添加执行权限：chmod +x update-profile.sh
# 3. 运行脚本：./update-profile.sh
# 4. 检查生成的 README.md 文件

echo "====================================="
echo " GitHub 个人主页信息更新工具"
echo "====================================="
echo ""

################################################################################
# 配置区域 - 请在这里填写你的信息
################################################################################

# 基础信息
USER_NAME="zhangsan"              # GitHub 用户名（必填，非常重要！）
DISPLAY_NAME="张三"                # 显示名称（你的姓名或昵称）
EMAIL="zhangsan@example.com"      # 邮箱地址
USER_ID="12345678"                # GitHub 用户 ID
JOB_TITLE="全栈开发工程师"         # 职位或角色
LOCATION="北京"                   # 所在地
LINKEDIN="zhangsan"               # LinkedIn 用户名
TWITTER="zhangsan_dev"            # Twitter 用户名
BLOG="https://zhangsan.dev"       # 个人博客地址

################################################################################
# 脚本主体 - 不需要修改下面的内容
################################################################################

# 颜色定义
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
CYAN='\033[0;36m'
GRAY='\033[0;37m'
NC='\033[0m' # No Color

# 检查 README.md 是否存在
if [ ! -f "README.md" ]; then
    echo -e "${RED}❌ 错误：找不到 README.md 文件${NC}"
    echo -e "${YELLOW}请确保在 my-profile 目录下运行此脚本${NC}"
    exit 1
fi

# 创建备份
BACKUP_FILE="README.md.backup-$(date +%Y%m%d-%H%M%S)"
cp README.md "$BACKUP_FILE"
echo -e "${GREEN}✅ 已创建备份：$BACKUP_FILE${NC}"

# 显示配置信息
echo ""
echo -e "${YELLOW}📝 即将使用以下信息更新 README.md：${NC}"
echo -e "   GitHub 用户名: ${USER_NAME}"
echo -e "   显示名称: ${DISPLAY_NAME}"
echo -e "   邮箱: ${EMAIL}"
echo -e "   用户 ID: ${USER_ID}"
echo -e "   职位: ${JOB_TITLE}"
echo -e "   位置: ${LOCATION}"
echo ""

# 询问确认
read -p "确认要继续吗？(Y/N) " -n 1 -r
echo
if [[ ! $REPLY =~ ^[Yy]$ ]]; then
    echo -e "${RED}❌ 操作已取消${NC}"
    rm "$BACKUP_FILE"
    exit 0
fi

echo ""
echo -e "${CYAN}🔄 正在更新文件...${NC}"

# 使用临时文件进行替换
TEMP_FILE="README.md.tmp"
cp README.md "$TEMP_FILE"

# 执行替换并统计
UPDATE_COUNT=0

# 替换函数
replace_text() {
    local search="$1"
    local replace="$2"
    local label="$3"
    
    # 计算匹配次数
    local count=$(grep -o "$search" "$TEMP_FILE" | wc -l)
    
    if [ $count -gt 0 ]; then
        # 执行替换
        if [[ "$OSTYPE" == "darwin"* ]]; then
            # macOS
            sed -i '' "s|$search|$replace|g" "$TEMP_FILE"
        else
            # Linux
            sed -i "s|$search|$replace|g" "$TEMP_FILE"
        fi
        echo -e "${GRAY}  ✓ 替换 '$label' ($count 处)${NC}"
        UPDATE_COUNT=$((UPDATE_COUNT + count))
    fi
}

# 执行所有替换
replace_text "你的GitHub用户名" "$USER_NAME" "GitHub用户名"
replace_text "你的名字" "$DISPLAY_NAME" "显示名称"
replace_text "your\.email@example\.com" "$EMAIL" "邮箱"
replace_text "你的GitHub用户ID" "$USER_ID" "用户ID"
replace_text "全栈开发工程师" "$JOB_TITLE" "职位"
replace_text "中国" "$LOCATION" "位置"
replace_text "你的用户名" "$LINKEDIN" "社交媒体用户名"
replace_text "yourblog\.com" "${BLOG//\//\\/}" "博客地址"

# 应用更改
mv "$TEMP_FILE" README.md

echo ""
echo -e "${GREEN}=====================================${NC}"
echo -e "${GREEN}✅ 更新完成！${NC}"
echo -e "${GREEN}=====================================${NC}"
echo ""
echo -e "${CYAN}📊 统计信息：${NC}"
echo -e "   总共更新了 $UPDATE_COUNT 处"
echo -e "   备份文件：$BACKUP_FILE"
echo ""
echo -e "${YELLOW}📋 下一步操作：${NC}"
echo -e "   1. 打开 README.md 检查替换结果"
echo -e "   2. 根据实际情况调整技能、经历等内容"
echo -e "   3. 查看《部署指南.md》了解如何部署到 GitHub"
echo ""
echo -e "${CYAN}💡 提示：如果需要恢复，使用备份文件：${NC}"
echo -e "${GRAY}   cp $BACKUP_FILE README.md${NC}"
echo ""

# 可选：询问是否打开文件
read -p "是否在默认编辑器中打开 README.md？(Y/N) " -n 1 -r
echo
if [[ $REPLY =~ ^[Yy]$ ]]; then
    if command -v xdg-open > /dev/null; then
        xdg-open README.md
    elif command -v open > /dev/null; then
        open README.md
    else
        echo -e "${YELLOW}无法自动打开文件，请手动打开 README.md${NC}"
    fi
fi

echo -e "${GREEN}🎉 完成！祝你的 GitHub 主页越来越精彩！${NC}"

