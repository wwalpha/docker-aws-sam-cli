
# docker-aws-sam-cli

## Supported tags and respective `Dockerfile` links

- [`latest` (*latest/Dockerfile*)](./Dockerfile)

## What is AWS SAM Local?

[Amazon AWS SAM](https://github.com/awslabs/aws-sam-cli/) is a tool for local development and testing of Serverless applications. It can be used to test functions locally, start a local API Gateway from a SAM template, validate a SAM template, and generate sample payloads for various event sources.

## How to use this image?

```console
$ docker run -it --rm \
	-v /var/run/docker.sock:/var/run/docker.sock \
	-v "$(PWD)":/var/opt \
	-p "3000:3000" \
	cnadiminti/aws-sam-local
```

This will add your current directory as a volume to the container and publish host port to container port.

For a working example please take a look at the [Makefile](./Makefile) in the source repository.

## License

- [Amazon AWS SAM License Agreement](https://github.com/awslabs/aws-sam-cli/blob/master/LICENSE)
