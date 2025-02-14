FROM mcr.microsoft.com/dotnet/sdk:5.0 AS build
WORKDIR /src
COPY ./ConversaoPeso.Web/ConversaoPeso.Web.csproj ./
RUN dotnet restore
COPY ./ConversaoPeso.Web/. ./
RUN dotnet publish -c release -o /app

FROM mcr.microsoft.com/dotnet/aspnet:5.0
WORKDIR /app
COPY --from=build /app .

ENTRYPOINT ["dotnet", "ConversaoPeso.Web.dll"]
