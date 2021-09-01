FROM registry.redhat.io/openshift4/ose-jenkins-agent-maven:latest 

USER root


# RUN yum update --disablerepo=* --enablerepo=ubi-8-appstream --enablerepo=ubi-8-baseos -y && rm -rf /var/cache/yum
# RUN yum install --disablerepo=* --enablerepo=ubi-8-appstream --enablerepo=ubi-8-baseos xorg-x11-xauth xorg-x11-server-Xvfb devtoolset-3-eclipse-swt -y && rm -rf /var/cache/yum 
RUN yum repolist --disablerepo=* &&     subscription-manager repos --enable rhel-8-for-x86_64-appstream-rpms &&     yum -y update &&     yum -y install xorg-x11-xauth xorg-x11-server-Xvfb devtoolset-3-eclipse-swt
RUN sleep 100 
