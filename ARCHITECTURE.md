# Architecture - personal_pro_site

## Goal

The main objective of this document is to organize the software development process

## Initial Rules, Threshold and Analysis

- The entire project must respect the Lint rules in the fluterrando-analysis package;
- This project must have a minimum test coverage of at least 70%;
- Global layers must have a specific place in the application, therefore, they must be in the shared folder;
- Each feature should have its own folder where it will contain all the layers needed to execute the feature's use cases;
- All design patterns used in the project must be listed in the “Design Patterns” section of this document, otherwise it will be considered an erroneous implementation;
- New packages and plugins can only be used in projects after evaluation and approval by the entire team responsible for the project;
- Updates to the Domain Model can only be accepted if it is first added to this document and approved by all those involved in the project;
- It is not allowed to have a concrete class as a dependency of a layer. Cohesion will only be accepted with abstract classes or interfaces. With the exception of the Store;
- Each layer should have only one responsibility.

## Design Patterns

- Repository Pattern: For external API access;
- Service Pattern: To isolate code snippets with other responsibilities;
- Dependency Injection: Resolve class dependencies;
- Store: Save and change states;
- State pattern: Standard that assists in state management;
- Adpater: Convert one object to another;
- Result: Working with Multiple Returns.

## External packages

- Uno: HTTP Client;
- Result: Multiple return in Failure and Success format;
- Mocktail: For unit tests.
- Flutter_modular: Route modularization and dependency injection;

