# gogs Dockerfile

Dockerfile to build a container image that provides a running [gogs](http://gogs.io/) server.

## Important note

You need an i686 binary of Docker which has to be compiled by yourself.

## The base image

  * [i686/ubuntu](https://registry.hub.docker.com/u/i686/ubuntu/)

## Installation

Pull it from the public [Docker Hub Registry](https://registry.hub.docker.com/):

    docker pull i686/gogs

Alternatively, you can build an image from this Dockerfile by executing

    docker build -t="i686/gogs" github.com/dockerfile-i686/gogs

## Usage

    docker run -d -p 22:22 -p 50000:50000 --volumes-from <your-volume> i686/gogs

Open up your browser and navigate to

    http://your.host.tld:50000

## License

The MIT License (MIT)

Copyright (c) Dockerfile Project (i686)

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in
all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
THE SOFTWARE.
