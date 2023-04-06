TAG=$(git tag | tail -2 | head -1)
git log --no-merges --pretty=tformat:%s HEAD...$TAG >> $GITHUB_OUTPUT