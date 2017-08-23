- -exc
- |

echo $(pwd)
echo $(ls -lart)

LAST_COMMIT_HASH=$(cd sourceCode && git log -1 | grep commit | cut -d' ' -f2)

LAST_COMMIT_DETAILS=$(cd sourceCode && git log -1 --name-status)

echo "Build Successful ${LAST_COMMIT_HASH}" >> email-content/subject.txt

echo "Build Successful\n\n ${LAST_COMMIT_DETAILS}" >> email-content/body.txt

echo $(pwd)
echo $(ls -lart)

cd email-content

echo $(pwd)
echo $(ls -lart)

less subject.txt
less body.txt

cd ..

echo $(pwd)
echo $(ls -lart)