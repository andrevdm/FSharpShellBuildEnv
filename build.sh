#!/bin/sh
echo
mkdir -p packages
.nuget/NuGet.exe restore -PackagesDirectory packages/
cd packages
fake=`find . -type d -iname "FAKE*" | sort -r | head -1`
rm -rf FAKE
ln -s $fake/ ./FAKE
chmod +x ./FAKE/tools/FAKE.exe
cd ..
packages/$fake/tools/FAKE.exe build.fsx
