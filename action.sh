TAG=$(git tag | tail -2 | head -1)
EOF=$(dd if=/dev/urandom bs=15 count=1 status=none | base64)
echo "changelog<<$EOF" >> $GITHUB_OUTPUT
git log --no-merges --pretty=tformat:%s HEAD...$TAG >> $GITHUB_OUTPUT
git log --no-merges --pretty=tformat:%s HEAD...$TAG
echo "$EOF" >> $GITHUB_OUTPUT