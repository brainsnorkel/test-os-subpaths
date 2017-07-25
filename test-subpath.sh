#!/bin/sh

set -ex 

oc rsh $(oc get pods | grep Running | awk '// {print $1}') cat /opt/test-text.txt
oc rsh $(oc get pods | grep Running | awk '// {print $1}') cat /opt/test-secret.txt
