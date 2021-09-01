FROM registry.redhat.io/openshift4/ose-jenkins-agent-maven:latest 

USER root

RUN sleep 10

COPY ./etc-pki-entitlement /etc/pki/entitlement
# RUN yum update --disablerepo=* --enablerepo=ubi-8-appstream --enablerepo=ubi-8-baseos -y && rm -rf /var/cache/yum
# RUN yum install --disablerepo=* --enablerepo=ubi-8-appstream --enablerepo=ubi-8-baseos xorg-x11-xauth xorg-x11-server-Xvfb devtoolset-3-eclipse-swt -y && rm -rf /var/cache/yum 
RUN yum repolist -v

RUN sleep 10 

RUN cat /etc/yum.repos.d/redhat.repo

RUN yum repolist --disablerepo=* &&     yum -y update &&     yum -y install --enablerepo=rhel-8-for-x86_64-appstream-rpms xorg-x11-xauth xorg-x11-server-Xvfb devtoolset-3-eclipse-swt

