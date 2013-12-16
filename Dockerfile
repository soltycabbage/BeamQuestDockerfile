FROM ubuntu
MAINTAINER nise_nabe <nise.nabe@gmail.com>

RUN apt-get update
RUN apt-get --yes upgrade

RUN apt-get --yes install curl
RUN curl -L https://www.opscode.com/chef/install.sh | bash
RUN echo 'export PATH=${PATH}:/opt/chef/embedded/bin' >> /etc/bash.bashrc

ADD chef-repo /opt/soltycabbage/chef-repo
ADD solo.rb /opt/soltycabbage/chef-repo/solo.rb
RUN chef-solo -c /opt/soltycabbage/chef-repo/solo.rb -j /opt/soltycabbage/chef-repo/nodes/base.json

ADD deploy.sh /root/deploy.sh
CMD bash /root/deploy.sh
