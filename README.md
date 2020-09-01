# stateful-micro-h2o project
## How to Deploy to DigitalOcean Kubernetes with GitHub Actions
[Example of GitHub Action](https://github.com/max0l0gy/stateful-micro-h2o/blob/master/.github/workflows/maven.yml)
## API
http POST http://localhost:8080/customer-passport history="Some short history of item2"
````
{
    "dateOfCreation": 1597260554461,
    "history": "Some short history of item2",
    "id": 2
}
````
http GET http://localhost:8080/customer-passport
````
[
    {
        "dateOfCreation": 1597260543062,
        "history": "Some short history of item",
        "id": 1
    },
    {
        "dateOfCreation": 1597260554461,
        "history": "Some short history of item2",
        "id": 2
    }
]
````
## Health check
````
· /health/live - The application is up and running.
· /health/ready - The application is ready to serve requests.
· /health - Accumulating all health check procedures in the application.
````
[Martin Fowler ActiveRecord](https://www.martinfowler.com/eaaCatalog/activeRecord.html)

This project uses Quarkus, the Supersonic Subatomic Java Framework.

If you want to learn more about Quarkus, please visit its website: https://quarkus.io/ .

## Running the application in dev mode

You can run your application in dev mode that enables live coding using:
```
./mvnw quarkus:dev
```

## Packaging and running the application

The application can be packaged using `./mvnw package`.
It produces the `stateful-micro-h2o-0.0.1-runner.jar` file in the `/target` directory.
Be aware that it’s not an _über-jar_ as the dependencies are copied into the `target/lib` directory.

The application is now runnable using `java -jar target/stateful-micro-h2o-0.0.1-runner.jar`.

## Creating a native executable

You can create a native executable using: `./mvnw package -Pnative`.

Or, if you don't have GraalVM installed, you can run the native executable build in a container using: `./mvnw package -Pnative -Dquarkus.native.container-build=true`.

You can then execute your native executable with: `./target/stateful-msvc-h2o-0.0.1-runner`

If you want to learn more about building native executables, please consult https://quarkus.io/guides/building-native-image.