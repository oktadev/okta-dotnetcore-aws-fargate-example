# .NET Core + AWS Fargate Example

This example shows how to deploy a .NET Core app to AWS Fargate with Docker. Please read [Deploy a .NET Container with AWS Fargate](https://developer.okta.com/blog/2020/06/22/deploy-dotnet-container-aws-fargate) to see how this example was created.

**Prerequisites:**

- Basic knowledge of .NET
- [.NET SDK 3.1](https://docs.microsoft.com/en-in/dotnet/core/install/)
- [An AWS account (we'll be using a free tier product)](https://aws.amazon.com/free)
- [Okta CLI](https://cli.okta.com)
- [AWS CLI V2](https://aws.amazon.com/cli/)
- [Docker Desktop for Windows/macOS (Not required if you are on Linux)](https://www.docker.com/get-started)

> [Okta](https://developer.okta.com/) has Authentication and User Management APIs that reduce development time with instant-on, scalable user infrastructure. Okta's intuitive API and expert support make it easy for developers to authenticate, manage and secure users and roles in any application.

## Getting Started

To install this example application, run the following commands:

```bash
git clone https://github.com/oktadeveloper/okta-dotnetcore-aws-fargate-example.git
cd okta-dotnetcore-aws-fargate-example
```

This will get a copy of the project installed locally.

To create a new OIDC app for your .NET Core app on Okta:

Install the [Okta CLI](https://cli.okta.com/) and run `okta register` to sign up for a new account. If you already have an account, run `okta login`. Then, run `okta apps create`. Select the default app name, or change it as you see fit. Choose **Web** and press **Enter**.

Select **Other**. Then, change the Redirect URI to `http://localhost:5000/authorization-code/callback` and accept the default Logout Redirect URI of `http://localhost:5000`.

Open this project up in your IDE and open **appsettings.json**. Copy and paste the values from the **.okta.env** file created at the folder where you executed the `okta apps create` command.

```json
"OktaSettings": {
  "OktaDomain": "{yourOktaDomain}",
  "ClientId": "{yourOktaClientID}",
  "ClientSecret": "{yourOktaClientSecret}"
}
```

**NOTE:** The value of `{yourOktaDomain}` should be something like `https://dev-123456.okta.com`. Make sure you don't include `-admin` in the value!

At this point, you should be able to build and run your application.

For instructions on how to build a Docker image and deploy this application to AWS Fargate, please read the [blog post](https://developer.okta.com/blog/2020/06/22/deploy-dotnet-container-aws-fargate)!

## Links

This example uses the following open source libraries from Okta:

- [Okta ASP.NET Middleware](https://github.com/okta/okta-aspnet)

## Help

Please post any questions as comments on the [blog post](https://developer.okta.com/blog/2020/06/22/deploy-dotnet-container-aws-fargate), or visit our [Okta Developer Forums](https://devforum.okta.com/).

## License

Apache 2.0, see [LICENSE](LICENSE).
