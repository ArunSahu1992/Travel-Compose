FROM mcr.microsoft.com/dotnet/sdk:6.0-alpine AS build
WORKDIR /app

COPY . ./
RUN dotnet publish "Travel.WebApp/Travel.WebApp.csproj" -c Release -o /app/publish

FROM mcr.microsoft.com/dotnet/aspnet:6.0-alpine

WORKDIR /app
COPY --from=build /app/publish .
ENTRYPOINT ["dotnet", "Travel.WebApp.dll"]