get:
	curl "localhost:3000"  

initialize-bestire-repo:
	mkdir -p internal cmd .github/workflows testing cloudformation/app db/migrations
	touch Dockerfile Makfile main.go .gitignore LICENSE .github/workflows/ci.yml
	cp ../bestir-dev-client/main.go main.go
	cp ../bestir-dev-client/.github/workflows/ci.yml .github/workflows/ci.yml
	cp ../bestir-dev-client/Dockerfile Dockerfile                            
	git add . 
	git commit -m "setup rudimentary chi http server"
	git push 

go-mod-init-bestir-repo:
	go mod init github.com/Max-Gabriel-Susman/bestir-