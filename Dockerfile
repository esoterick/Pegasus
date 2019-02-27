FROM microsoft/dotnet:sdk AS build-env
WORKDIR /app

# Copy csproj and restore as distinct layers
COPY ./Pegasus/Pegasus.csproj ./
RUN dotnet restore

# Copy everything else and build
COPY ./Pegasus ./
RUN dotnet publish -c Release -o out

# Build runtime image
FROM microsoft/dotnet:aspnetcore-runtime
WORKDIR /app
RUN echo "{}" > /app/Config.json
COPY --from=build-env /app/out .
ENTRYPOINT ["dotnet", "Pegasus.dll"]
