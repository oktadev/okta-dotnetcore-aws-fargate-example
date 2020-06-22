# .NET Core + AWS Fargate Example
 
This example shows how to deploy a .NET Core app to AWS Fargate with Docker.

Please read [Deploy a .NET Container with AWS Fargate](https://developer.okta.com/blog/2020/06/22/deploy-dotnet-container-aws-fargate) to see how this example was created. 

**Prerequisites:** 

- [Visual Studio Code or Visual Studio 2019](https://visualstudio.microsoft.com/downloads/)
- An [Okta Developer Account](https://developer.okta.com/) (free forever, to handle your OAuth needs)
- [An AWS account (we'll be using a free tier product)](https://aws.amazon.com/free)
- [AWS Toolkit for Visual Studio](https://aws.amazon.com/visualstudio/)
- [AWS CLI V2](https://aws.amazon.com/cli/)
- [Docker Desktop for Windows](https://hub.docker.com/editions/community/docker-ce-desktop-windows/)

> [Okta](https://developer.okta.com/) has Authentication and User Management APIs that reduce development time with instant-on, scalable user infrastructure. Okta's intuitive API and expert support make it easy for developers to authenticate, manage and secure users and roles in any application.

* [Getting Started](#getting-started)
* [Links](#links)
* [Help](#help)
* [License](#license)

## Getting Started

To install this example application, run the following commands:

```bash
git clone https://github.com/oktadeveloper/okta-dotnetcore-aws-fargate-example.git
cd okta-dotnetcore-aws-fargate-example
```

This will get a copy of the project installed locally.

To create a new OIDC app for your .NET Core app on Okta:

1. Log in to your developer account, navigate to **Applications**, and click on **Add Application**.
2. Select **Web** and click **Next**. 
3. Give the application a name and click **Done**.

Open this project up in Visual Studio and open `appsettings.json`. Copy and paste the values from the Okta app you created.

```json
"OktaSettings": {
  "OktaDomain": "{yourOktaDomain}",
  "ClientId": "{yourOktaClientID}",
  "ClientSecret": "{yourOktaClientSecret}"
}
```

**NOTE:** The value of `{yourOktaDomain}` should be something like `dev-123456.okta.com`. Make sure you don't include `-admin` in the value!

At this point, you should be able to build and run your application. 

For instructions on how to build a Docker image and deploy this application to AWS Fargate, please read the [blog post](https://developer.okta.com/blog/2020/06/22/deploy-dotnet-container-aws-fargate)!

## Links

This example uses the following open source libraries from Okta:

* [Okta ASP.NET Middleware](https://github.com/okta/okta-aspnet)

## Help

Please post any questions as comments on the [blog post](https://developer.okta.com/blog/2020/06/22/deploy-dotnet-container-aws-fargate), or visit our [Okta Developer Forums](https://devforum.okta.com/).

## License

Apache 2.0, see [LICENSE](LICENSE).
