# git clone https://github.com/zengxs/gitlab-arm64.git
# docker stop gitlab
# docker rm gitlab
# docker run --detach   --hostname localhost:8080   --publish 4433:443 --publish 8080:80 --publish 2222:22   --name gitlab   --restart always   --volume gitlab-config:/etc/gitlab   --volume gitlab-logs:/var/log/gitlab   --volume gitlab-data:/var/opt/gitlab  zengxs/gitlab:ce
docker run --hostname `ipconfig getifaddr en0` --publish 9999:9999 --publish 4433:443 --publish 80:80 --publish 2222:22 --name gitlab --volume gitlab-config:/etc/gitlab --volume gitlab-logs:/var/log/gitlab --volume gitlab-data:/var/opt/gitlab zengxs/gitlab:ce
# user=User.find_by(email: 'bil022@ucsd.edu')
# docker exec -it gitlab /bin/bash
# user.state = 'active'
# user.save!

#docker cp create_user.rb gitlab:/tmp/create_user.rb
#docker exec -it gitlab gitlab-rails runner /tmp/create_user.rb

