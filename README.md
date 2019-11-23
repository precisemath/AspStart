# AspStart

A [Giraffe](https://github.com/giraffe-fsharp/Giraffe) web application, which has been created via the `dotnet new giraffe` command.

## Build and test the application

### Windows

Run the `build.bat` script in order to restore, build and test (if you've selected to include tests) the application:

```
> ./build.bat
```

### Linux/macOS

Run the `build.sh` script in order to restore, build and test (if you've selected to include tests) the application:

```
$ ./build.sh
```

## Run the application

### Import Environment Variables
```
export ASPNETCORE_ENVIRONMENT="Development"
```

After a successful build you can start the web application by executing the following command in your terminal:

```
dotnet run src/AspStart
```

After the application has started visit [http://localhost:5000](http://localhost:5000) in your preferred browser.

## Creating this application from a blank slate

### Download and Install Dotnet Core

You can install dotnet core 3.0 from this [link](https://dotnet.microsoft.com/download/dotnet-core/3.0)
Once installed, make sure to set the: DOTNET_CLI_TELEMETRY_OPTOUT so it does not send telemetry to Microsoft.

On Linux style operating systems, you can do this by including the following piece of code in your `~/.bashrc` file.
```
export DOTNET_CLI_TELEMETRY_OPTOUT=1
```

### Create the project from a Giraffe Template

Run the following command:
```
dotnet new -i "giraffe-template::*"
```

### Use Paket Manager to manage your dependencies

The template uses the default Nuget package manager to manage dependencies.
We need to convert this to Paket for better dependency management.
Use the intructions in the [webpage](https://fsprojects.github.io/Paket/get-started.html) to install the dotnet tool: Paket

From the root of your source code run the following command once you have installed the Paket tool:
```
dotnet paket convert-from-nuget
```