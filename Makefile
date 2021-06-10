
image_name := silvagpe/node14-angular-dev
pwd := $(shell pwd)

build-image:		
ifndef v
	$(error Version (v) is not defined)
endif				
	docker build -t $(image_name):$(v) .


test-image: 
ifndef v
	$(error Version (v) is not defined)
endif				
	docker run -ti -p 4200:4200 --rm -v $(pwd)/test:/app $(image_name):$(v) sh