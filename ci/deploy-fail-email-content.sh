- -exc
- |

echo $(pwd)
echo $(ls -lart)

LAST_COMMIT_HASH=$(cd sourceCode && git log -1 | grep commit | cut -d' ' -f2)

LAST_COMMIT_DETAILS=$(cd sourceCode && git log -1 --name-status)

echo "Deploy FAILED ${LAST_COMMIT_HASH}" >> email-content/subject.txt

echo "Deploy FAILED\n\n ${LAST_COMMIT_DETAILS}" >> email-content/body.txt