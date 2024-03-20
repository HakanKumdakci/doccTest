##!/bin/sh

xcrun xcodebuild docbuild \
    -scheme doccTest \
    -destination 'generic/platform=iOS Simulator' \
    -derivedDataPath "$PWD/.derivedData"
    
xcrun docc process-archive transform-for-static-hosting \
    "$PWD/.derivedData/Build/Products/Debug-iphonesimulator/doccTest.doccarchive" \
    --output-path ".docs" \
    --hosting-base-path "doccTest" # add with your repo name later
    
echo '<script>window.location.href += "/documentation/docctest"</script>' > .docs/index.html
