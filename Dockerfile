# This image microsoft/aspnetcore contains runtime only
FROM microsoft/aspnetcore:2.0 
ARG source
WORKDIR /app
EXPOSE 80
COPY ${source:-bin/Debug/netcoreapp2.0/publish} .
ENTRYPOINT ["dotnet", "Codmatic.Api.dll"]