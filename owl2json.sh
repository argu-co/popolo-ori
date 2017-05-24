OWL2JSON_LOCATION="/home/joep/Dev/tools/owl2jsonld/target/uberjar/owl2jsonld-0.2.2-SNAPSHOT-standalone.jar"
PROJECT_FOLDER=`pwd`

echo "Generating context file..."
java -jar $OWL2JSON_LOCATION file://${PROJECT_FOLDER}/popolo-ori.owl > ${PROJECT_FOLDER}/context.jsonld && echo "Done!"
