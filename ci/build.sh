- -exc
- |

echo $(pwd)
echo $(ls -lart)

cd sourceCode

echo $(pwd)
echo $(ls -lart)

# mvn clean install -e -DskipTests=true

mvn clean install -e -DskipTests=false

mvn sonar:sonar -Dsonar.host.url=http://54.169.190.81:9000

cd target

echo $(pwd)
echo $(ls -lart)

mv *.jar ../../jarFile/*.jar
cd ../../jarFile

echo $(pwd)
echo $(ls -lart)
