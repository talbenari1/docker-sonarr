cd $TRAVIS_BUILD_DIR/sonarr

export TAG=$(git describe --abbrev=0)

git checkout $TAG

npm install

bash ./build.sh
bash ./test.sh

