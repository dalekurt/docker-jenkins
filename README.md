# Docker Jenkins
Docker image with Jenkins installed listening on port 8080. Additional packages installed git, pip and awscli tools.

## Usage
To run the container, do the following:
``` bash
docker run --name jenkins -d -p 8080:8080 dalekurt/jenkins
```

## Building
To build the docker image, simply execute

```bash
docker build github.com/dalekurt/docker-jenkins
```

## Author
* Dale-Kurt Murray <dalekurt.murray@gmail.com>

## License

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

  http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
