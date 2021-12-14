# build and publish the app
FROM mcr.microsoft.com/dotnet/sdk:3.1-bullseye AS build
WORKDIR /src
## copy csproj and restore as distinct layers
COPY Okta.Blog.Chat.csproj ./
RUN dotnet restore
## copy everything else and publish app
COPY . ./
RUN dotnet publish -c release -o /app --no-restore
ARG CERT_PASSWORD
RUN dotnet dev-certs https -ep /app/aspnetapp.pfx -p ${CERT_PASSWORD}

# final stage/image
FROM mcr.microsoft.com/dotnet/aspnet:3.1-bullseye-slim AS base
WORKDIR /app
COPY --from=build /app ./
ENTRYPOINT ["dotnet", "Okta.Blog.Chat.dll"]