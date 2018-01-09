#!/usr/bin/env bash
docker rm -f $(docker ps -aq --filter name=web-hp --filter name=web-srp-pdp --filter name=image-compare-test)
if [ ${MOCK_SERVER} = true ]
then
    echo "HP and SRP-PDP will use mock server."
    docker run -d --name=web-hp -p 3000:3000 -p 4000:4000 -e NODE_ENV=test ${REPOSITORY_URL}/${HP_REPO_NAME}:${VERSION_HP}
    docker run -d --name=web-srp-pdp -e NODE_ENV=test --net=container:web-hp ${REPOSITORY_URL}/${SRP_PDP_REPO_NAME}:${VERSION_SRPPDP}
else
    echo "HP and SRP-PDP will not use mock server."
    docker run -d --name=web-hp -p 3000:3000 -p 4000:4000 ${REPOSITORY_URL}/${HP_REPO_NAME}:${VERSION_HP}
    docker run -d --name=web-srp-pdp --net=container:web-hp ${REPOSITORY_URL}/${SRP_PDP_REPO_NAME}:${VERSION_SRPPDP}
fi
docker run -i --rm --name=image-compare-test -e MARKET=${MARKET}  --net=container:web-hp \
    -v /tmp:/tmp  image-compare-test
# docker run -i --rm --name=image-compare-test   -e MARKET="baidu" \
#    -v $(pwd):/test  image-compare-test