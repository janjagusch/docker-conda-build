image?=conda-build
tag?=latest
run_args?=

build_image:
	docker build \
		--tag "$(image):$(tag)" \
		--file "Dockerfile" \
		.

run_container:
	docker run \
		--interactive \
		--tty \
		$(run_args) \
		"$(image):$(tag)" \
		/bin/bash
