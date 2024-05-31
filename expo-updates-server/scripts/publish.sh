while getopts d: flag
do
    case "${flag}" in
        d) directory=${OPTARG};;
    esac
done

rm -rf updates/$directory/
cp -r ./last-update/dist/ updates/$directory

node ./scripts/exportClientExpoConfig.js > updates/$directory/expoConfig.json