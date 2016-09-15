from hyperledger/fabric-baseimage
RUN mkdir -p $GOPATH/src/github.com/skuchain/
ADD . $GOPATH/src/github.com/skuchain/doc_proofs
WORKDIR $GOPATH
RUN go install github.com/skuchain/doc_proofs
RUN cp src/github.com/skuchain/doc_proofs/vendor/github.com/hyperledger/fabric/peer/core.yaml $GOPATH/bin
CMD $GOPATH/bin/doc_proofs