# Basic DC test for openshift

A basic alpine pod with:
 * a configmap to mount as a fail, and 
 * Two secrets - one to add as an environment variable and one as a mounted file


All designed to sanity test an OpenShift server.

## Usage

1. Create a test project:

  `oc new-project test`

2. Run `./oc-create-all-yml.sh`

3. Wait for the pod to deploy, then run: `./test-subpath.sh`

Output should be:

```shell
$ ./test-subpath.sh 
the quick
brown fox
jumps over
the lazy dog
this
is
a
secret
file
SEKRIT_ENV='verySecretPassword
```

