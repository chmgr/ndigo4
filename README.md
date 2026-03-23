# Go bindings for NewTek NDI® SDK

Go bindings for the [NDI® SDK](https://ndi.tv/sdk/) by NewTek generated using [c-for-go](https://github.com/xlab/c-for-go).

## Getting started
In order to use these bindings the NDI® SDK version 4 must first be 
installed for your system from NewTek directly.

This should appear on the path as `ndi.4` and should be discoverable by 
standard build tools.

## License
These bindings are released under MIT License. For the NDI® SDK
different licenses apply.

## Disclaimer
NDI® is a registered trademark of Vizrt Group.

# Development

Execute the following commands to build the docker image build and generate 
the go bindings.

```bash
docker build --tag=ndi4 .
docker run --mount type=bind,src="./",dst="/go/src/github.com/chmgr/ndigo4" ndi4
```

To test the bindings, execute the following command:
```bash
docker run --entrypoint "make" --mount type=bind,src="./",dst="/go/src/github.com/chmgr/ndigo4" ndi4 test
```

Clean up the generated files:
```bash
docker run --entrypoint "make" --mount type=bind,src="./",dst="/go/src/github.com/chmgr/ndigo4" ndi4 clean
```
