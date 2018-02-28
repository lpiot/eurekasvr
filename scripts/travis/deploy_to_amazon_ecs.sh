echo "Launching $BUILD_NAME IN AMAZON ECS"
ecs-cli configure --region eu-west-3 --access-key $AWS_ACCESS_KEY --secret-key $AWS_SECRET_KEY --cluster aws-services-dev
ecs-cli compose --file docker/common/docker-compose.yml up
rm -rf ~/.ecs
