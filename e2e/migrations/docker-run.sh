CURRENT_DIRECTORY=`pwd`

testOne=`docker run --privileged -v $CURRENT_DIRECTORY:/gopkg/src/github.com/hashicorp/nomad -it nomad-e2e /bin/bash -c "cd gopkg/src/github.com/hashicorp/nomad/e2e/migrations && go test --run TestJobMigrations"`

echo $testOne

docker run --privileged -v $CURRENT_DIRECTORY:/gopkg/src/github.com/hashicorp/nomad -it nomad-e2e /bin/bash -c "cd gopkg/src/github.com/hashicorp/nomad/e2e/migrations && go test --run TestMigrations_WithACLs"
