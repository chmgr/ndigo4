all:
	c-for-go --out .. NDI.yml


clean:
	rm -f cgo_helpers.go cgo_helpers.h cgo_helpers.c
	rm -f doc.go types.go const.go
	rm -f ndigo4.go

test:
	go build