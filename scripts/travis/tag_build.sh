echo "Tagging build with $BUILD_NAME"
#export GITHUB_TOKEN="a2dbd554f0da4d4ff815195bc345711eeb430ee4"
export TARGET_URL="https://github.com/anthonydenecheau/eurekasvr/releases?access_token=$GITHUB_TOKEN"

body="{
  \"tag_name\": \"$BUILD_NAME\",
  \"target_commitish\": \"master\",
  \"name\": \"$BUILD_NAME\",
  \"body\": \"Release of version $BUILD_NAME\",
  \"draft\": true,
  \"prerelease\": true
}"

curl -k -X POST \
  -H "Content-Type: application/json" \
  -d "$body" \
  $TARGET_URL
