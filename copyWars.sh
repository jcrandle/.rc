#!/bin/bash
 
# Using symbolic link to to specify webapps directory -- either webapps.all to run everything locally or webapps.myDG to run just myDG locally
DEST_DIR=/dg/local/cots/tomcat/tomcat_8080/webapps/
#DEST_DIR=/dg/local/cots/tomcat/tomcat_8080/webapps.all/
#DEST_DIR=/dg/local/cots/tomcat/tomcat_8080/webapps.somelocal/

SVN_DIR=$HOME/dev/online/onlinePortfolio/trunk
#SVN_DIR=$HOME/dev/online/onlinePortfolio/branches/2015.01
#SVN_DIR=$HOME/dev/online/sandbox/Hackathon-Spring-2015
 
# remove old exploded directories
for EXPLODED in $DEST_DIR/deliveryservice $DEST_DIR/dgwatch-global $DEST_DIR/earthservice $DEST_DIR/mapservice $DEST_DIR/memberManager $DEST_DIR/memberServices $DEST_DIR/orderservice $DEST_DIR/res $DEST_DIR/rulesService $DEST_DIR/services $DEST_DIR/wfsservice $DEST_DIR/myDigitalGlobe $DEST_DIR/tileManagerConsole $DEST_DIR/wpsservice $DEST_DIR/bulk-tile

do
 if [[ "" != "$1" ]]
   then
     dirpattern="$1"
     if [[ "$EXPLODED" != "${EXPLODED%$dirpattern}" ]]
       then
         rm -Rf $EXPLODED
     fi
   else
     rm -Rf $EXPLODED
 fi
  
done
  
# copy newly built jars to tomcat for re-starting

# these will not be copied for typical local tomcat deploy
#$SVN_DIR/res/target/res.war
#$SVN_DIR/tile-production/tile-manager-ui/web/target/tileManagerConsole.war 
#$SVN_DIR/tile-production/bulk-tile-war/target/bulk-tile.war 
#$SVN_DIR/ingest/processing-war/target/ingest-processing.war
#$SVN_DIR/ingest/rest-war/target/dgcs-ingest.war
#$SVN_DIR/ccs/rest-war/target/dgcs-ccs.war
#$SVN_DIR/gcdn/gcdn-sync/target/gcdn-sync.war
#$SVN_DIR/emailService/target/emailservice.war
#$SVN_DIR/feedbackService/feedbackServiceWeb/target/feedbackServiceWeb.war
#$SVN_DIR/wps/wpsManager/target/wpsmanager.war
#$SVN_DIR/lyrfileService/target/lyrfileService.war 
#$SVN_DIR/cswService/target/cswservice.war 
#$SVN_DIR/wcsService/target/deliveryservice.war 
#$SVN_DIR/contentManagement/target/contentManagement.war 
#$SVN_DIR/imageProcessing/dg-image-service/target/imageservice.war
#$SVN_DIR/wfsService/target/wfsservice.war 
#$SVN_DIR/sif/war/target/sif.war  
#$SVN_DIR/wps/wpsService/target/wpsservice.war
#$SVN_DIR/dgwatch/web/target/dgwatch-global.war 
#$SVN_DIR/master-catalog/master-catalog-war/target/master-catalog.war 
#$SVN_DIR/memberServiceAdmin/target/memberManager.war
#$SVN_DIR/rulesService/target/rulesService.war
#$SVN_DIR/memberService/target/memberServices.war
#$SVN_DIR/services/services-war/target/services.war 
#$SVN_DIR/mapService/target/mapservice.war 
#$SVN_DIR/earthService/target/earthservice.war

for WAR in \
$SVN_DIR/mydg/target/myDigitalGlobe.war

do
 if [[ "" != "$1" ]]
   then
     dirpattern="$1\.war"
     if [[ "$WAR" != "${WAR%$dirpattern}" ]]
       then
         cp -v $WAR $DEST_DIR
     fi
 else
   cp -v $WAR $DEST_DIR
 fi
done
