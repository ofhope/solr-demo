#!/bin/sh

# This file is for testing purposes
# Start with ./start.sh stop with Ctrl+C

SOLR_HOME="../solr"
LOG_FILE="logging.properties"

#java -DSTOP.PORT=8079 -DSTOP.KEY=stopkey -Dsolr.solr.home=$SOLR_HOME -Djava.util.logging.config.file="$SOLR_HOME/$LOG_FILE" -jar start.jar

java -DSTOP.PORT=8079 -DSTOP.KEY=stopkey -Dsolr.solr.home=$SOLR_HOME -jar start.jar

