#!/bin/sh

set -e

oc rsh $(oc get pods | grep Running | awk '// {print $1}') cat /opt/test-text.txt
oc rsh $(oc get pods | grep Running | awk '// {print $1}') cat /opt/test-secret.txt
oc rsh $(oc get pods | grep Running | awk '// {print $1}') sh -c set | grep -i SEKRIT_ENV
