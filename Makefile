
OPT=$(CURDIR)/opt
SRC=$(OPT)/src
PATH:=$(PATH):$(OPT)/bin

get-base-deps:
	[ ! -d $(SRC)/node ] \
		&& git clone http://github.com/joyent/node.git $(SRC)/node \
		|| ( cd $(SRC)/node && git pull )

build-base-deps:
	cd $(SRC)/node; ./configure --prefix=$(OPT) && make install

get-node-deps:
	npm install -g \
		express@">=3.0" \
		buster@"0.6.0" \
		ready.js@"2.0.3" \
		common-node@"0.2.4" \
		requirejs@"2.0.2" \
		#ws@"0.4.19" \
		#socket.io@"0.9.6" \
		#async@"0.1.22" \
		#cluster@"0.7.7" \
		#underscore@"1.3.3" \
		#backbone@"0.9.2" \
		#zappajs@">=0.4.2"
