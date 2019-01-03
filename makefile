DIR=$(shell pwd)

bootstrap:
	grep 'source $(DIR)/bootstrap.sh' ~/.bashrc || echo 'source $(DIR)/bootstrap.sh' >> ~/.bashrc
