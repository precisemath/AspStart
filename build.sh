#!/bin/sh
dotnet tool restore
dotnet paket restore
dotnet restore src/AspStart
dotnet build src/AspStart

