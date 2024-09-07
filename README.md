# linuxtips-course-ecs-cluster
Using to LinuxTips course proposal ECS - Day2

## Get ami optimazed
https://docs.aws.amazon.com/systems-manager/latest/userguide/parameter-store-public-parameters-ecs.html

aws ssm get-parameters \
    --names /aws/service/ecs/optimized-ami/amazon-linux-2/recommended
