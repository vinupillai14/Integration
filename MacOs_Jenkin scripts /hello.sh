#!/bin/bash
##-----------------------------------------------------------------------------
##
##
##  Licensed Materials - Property of IBM;
##  5724-A82,5765-D66 (c) Copyright IBM Corp. 2000, 2015;
##  All Rights Reserved;
##  US Government Users Restricted Rights - use,
##  duplication or disclosure restricted by GSA
##  ADP Schedule Contract with IBM Corp.;
##
## Version  %Z% %I% %W% %E% %U% [%H% %T%]
##
##-----------------------------------------------------------------------------

#!/bin/bash


. "/Applications/IBM App Connect Enterprise.app/Contents/mqsi/server/bin/mqsiprofile"

echo $PWD
AppName=Test

my_dir=$PWD
mqsicreatebar -data $my_dir -b /Users/vinur/IBM/ACET11/workspace/$AppName.bar -a $AppName
echo "Created $AppName.bar succesfully from directory $my_dir"

#mqsideploy -i localhost -p 7600 -a /Users/vinur/IBM/ACET11/workspace/$AppName.bar
mqsideploy -i ace11docker.centralindia.azurecontainer.io -p 7600 -a /Users/vinur/IBM/ACET11/workspace/$AppName.bar
echo "Deployed $AppName.bar succesfully"

