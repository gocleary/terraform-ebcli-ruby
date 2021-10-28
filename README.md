# terraform-ebcli-ruby
Terraform + Elastic Beanstalk CLI + Ruby

# build and deploy
```
docker login
docker build --no-cache -t terraform-ebcli-ruby .
docker tag terraform-ebcli-ruby gocleary/terraform-ebcli-ruby:<replace this with the terraform version>
docker push gocleary/terraform-ebcli-ruby:<replace this with the terraform version>
```