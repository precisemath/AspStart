#!/bin/sh
export DOTNET_CLI_TELEMETRY_OPTOUT=1
dotnet tool restore
dotnet paket restore
dotnet restore src/AspStart
dotnet build src/AspStart

