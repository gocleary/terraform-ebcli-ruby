# terraform-ebcli-ruby
Terraform + Elastic Beanstalk CLI + Ruby

# build and deploy
```
docker login
docker build --no-cache -t terraform-ebcli-ruby .
docker tag terraform-ebcli-ruby gocleary/terraform-ebcli-ruby:latest
docker push gocleary/terraform-ebcli-ruby:latest
```