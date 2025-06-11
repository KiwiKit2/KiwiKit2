#!/bin/bash

echo "🏢 LIMBUS COMPANY DEPLOYMENT PROTOCOL INITIATED"
echo "═══════════════════════════════════════════════════════════════"

# Check if GitHub username is provided
if [ -z "$1" ]; then
    echo "⚠️  ERROR: GitHub username required"
    echo "Usage: ./deploy.sh <your-github-username>"
    echo "Example: ./deploy.sh johndoe"
    exit 1
fi

USERNAME=$1

echo "🔍 SCANNING FOR COMPANY SECRETS..."
echo "Target Employee: $USERNAME"
echo ""

# Replace placeholders with actual username
echo "📝 UPDATING EMPLOYEE RECORDS..."
sed -i "s/YourUsername/$USERNAME/g" README.md
sed -i "s/YourUsername/$USERNAME/g" PROJECT_README_TEMPLATE.md

echo "✅ Employee database updated"
echo ""

# Add files to Git
echo "📦 PACKAGING CLASSIFIED MATERIALS..."
git add .
git status

echo ""
echo "🚀 READY FOR DEPLOYMENT!"
echo "═══════════════════════════════════════════════════════════════"
echo ""
echo "NEXT STEPS:"
echo "1. Create a repository on GitHub named: $USERNAME"
echo "2. Run: git remote add origin https://github.com/$USERNAME/$USERNAME.git"
echo "3. Run: git commit -m '🏢 LIMBUS COMPANY: Initial employee profile deployment'"
echo "4. Run: git push -u origin main"
echo ""
echo "⚠️  REMEMBER: Replace other placeholders in README.md with your info!"
echo "    - [Your Name]"
echo "    - [Your Employee ID]" 
echo "    - [Your Current Project]"
echo "    - [Technologies you're learning]"
echo "    - [Your expertise areas]"
echo "    - [Your email]"
echo "    - Social media links"
echo ""
echo "🎯 COMPANY DIRECTIVE: Your profile will look AMAZING!"
