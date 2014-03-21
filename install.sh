# install mongodb
apt-get update
echo "deb http://downloads-distro.mongodb.org/repo/debian-sysvinit dist 10gen" > /etc/apt/sources.list.d/10gen.list
apt-key adv --keyserver keyserver.ubuntu.com --recv 7F0CEB10
apt-get update && apt-get -y install mongodb-10gen python-dev libxml2-dev libxslt1-dev

# install scrapy
apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 627220E7
echo 'deb http://archive.scrapy.org/ubuntu scrapy main' | tee /etc/apt/sources.list.d/scrapy.list
apt-get update && apt-get -y install scrapyd-0.16 curl python-pip git

# install python libs
pip install bleach virtualenv pymongo isodate timelib
