#!/bin/bash
oc new-project dev --display-name=development
sleep 1
oc new-project test --display-name=testing
sleep 1
oc new-project prod --display-name=production
sleep 5
oc adm policy add-role-to-user edit system:serviceaccount:jenkins:jenkins -n dev
oc adm policy add-role-to-user edit system:serviceaccount:jenkins:jenkins -n test
oc adm policy add-role-to-user edit system:serviceaccount:jenkins:jenkins -n prod
sleep 7
oc project test && oc adm policy add-role-to-group system:image-puller system:serviceaccounts:test -n dev
oc project prod && oc adm policy add-role-to-group system:image-puller system:serviceaccounts:prod -n dev 
sleep 7
oc project test && oc adm policy add-role-to-group system:image-puller system:serviceaccounts:test -n dev
oc project prod && oc adm policy add-role-to-group system:image-puller system:serviceaccounts:prod -n dev
#oc delete project dev test prod



