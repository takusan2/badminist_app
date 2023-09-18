build_runner:
	fvm flutter packages pub run build_runner build --delete-conflicting-outputs
openapi_build_runner:
	cd client && fvm flutter packages pub run build_runner build --delete-conflicting-outputs
gen_openapi:
	openapi-generator generate -i ../badminist_backend/docs/openapi.yaml -g dart-dio -o ./client
