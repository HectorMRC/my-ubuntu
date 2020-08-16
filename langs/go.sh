#!/bin/bash

GO_SOURCE=https://golang.org/dl
GO_VERSION=go1.15.linux-amd64.tar.gz
BASHRC_PATH=~/.bashrc

if !(go version); then
	echo "Installing Golang from ${GO_SOURCE}"
    curl -LO ${GO_SOURCE}/${GO_VERSION}
    sudo tar -C /usr/local -xzf ${GO_VERSION}
    rm -rf ${GO_VERSION}

    printf "\n\n# Updated by a setup script at $(date)\n" $USER >> ${BASHRC_PATH}
    printf "export PATH=\$PATH:/usr/local/go/bin\n" $USER >> ${BASHRC_PATH}
    printf "export GO111MODULE=on  # Enable module mode\n" $USER >> ${BASHRC_PATH}
    printf "export PATH=\"\$PATH:$(go env GOPATH)/bin\"\n" $USER >> ${BASHRC_PATH}

	echo "Getting Golang's Protobuf compiler from Github"
    go get github.com/golang/protobuf/protoc-gen-go
	
	echo "Getting Golang's GRPC module from Github"
    go get google.golang.org/grpc
fi