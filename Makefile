all: build zip

build:
	gcc -static -O3 -o upc_keys upc_keys.c -lcrypto

zip:
	chmod 0755 index.js
	chmod 0755 upc_keys
	zip upc_keys.zip index.js upc_keys
	@echo Now upload upc_keys.zip to AWS Lambda

clean:
	rm upc_keys.zip upc_keys || true
