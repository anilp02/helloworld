- -exc
- |
export TERM=dumb

cd sourceCode

# mvn clean install -e -DskipTests=true

mvn clean install -e -DskipTests=false

mvn sonar:sonar -Dsonar.host.url=<host uri>

cd target
mv *.jar ../../jarFile/*.jar
cd ../../jarFile