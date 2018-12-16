.PHONY: all

FILES = \
	src/asn1-1.0.js \
	src/asn1hex-1.1.js \
	src/asn1x509-1.0.js \
	src/asn1cms-1.0.js \
	src/asn1tsp-1.0.js \
	src/asn1cades-1.0.js \
	src/asn1csr-1.0.js \
	src/asn1ocsp-1.0.js \
	src/base64x-1.1.js \
	src/crypto-1.1.js \
	src/ecdsa-modified-1.0.js \
	src/ecparam-1.0.js \
	src/dsa-2.0.js \
	src/keyutil-1.0.js \
	src/rsapem-1.1.js \
	src/rsasign-1.2.js \
	src/x509-1.1.js \
	src/jws-3.3.js \
	src/jwsjs-2.0.js

FILES_EXT_MIN = \
	ext/rsa.js \
	ext/rsa2.js

FILES_MIN = \
	min/asn1-1.0.min.js \
	min/asn1hex-1.1.min.js \
	min/asn1x509-1.0.min.js \
	min/asn1cms-1.0.min.js \
	min/asn1tsp-1.0.min.js \
	min/asn1cades-1.0.min.js \
	min/asn1csr-1.0.min.js \
	min/asn1ocsp-1.0.min.js \
	min/base64x-1.1.min.js \
	min/crypto-1.1.min.js \
	min/ecdsa-modified-1.0.min.js \
	min/ecparam-1.0.min.js \
	min/dsa-2.0.min.js \
	min/keyutil-1.0.min.js \
	min/rsapem-1.1.min.js \
	min/rsasign-1.2.min.js \
	min/x509-1.1.min.js \
	min/jws-3.3.min.js \
	min/jwsjs-2.0.min.js

FILES_EXT_MIN = \
	ext/rsa-min.js \
	ext/rsa2-min.js

all-min: $(FILES_MIN)
	@echo "all min converted."

all-ext-min: $(FILES_EXT_MIN)
	@echo "all ext min converted."

min/%.min.js: src/%.js
	yuicmp $^ -o $@

ext/%-min.js: ext/%.js
	yuicmp $^ -o $@
lib/jsrsasign.js: npm2/header.js ext/yahoo.js $(FILES) npm/lib/footer.js
	cat $^ > $@
