SET CGO_ENABLED=0
SET GOOS=darwin
SET GOARCH=amd64
go build -o build/darwin_transfer

SET CGO_ENABLED=0
SET GOOS=windows
SET GOARCH=amd64
go build -o build/windows_transfer.exe

SET CGO_ENABLED=0
SET GOOS=linux
SET GOARCH=amd64
go build -o build/linux_transfer

copy app.yml build
copy app_elastic.yml build

7z a bin/transfer.zip build

