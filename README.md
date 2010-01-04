# Philly ETE 2010 Talk


Work with Trotter on ideas for the presentation...

## Use Of Open Source in the Enterprise or Financial Industry

## Clojure in the Financial Industry

Anectdote about how easy it was to makde the AMQP consumer more robust by using agents.  Going from a simple thread based consumer to one that, in an outer try/catch block sent-off a message to an agent asking to be restarted.  The implementation was very simple.  The simplicity of using Clojure data strcutures for configuratrion; how immutability made for less debugging and runtime errors in the system.

## Highly Interactive Applications: Javascript in The Browser

YUI, jQuery, our pretty complex web front end using very small bits of data back and forth with the server, the patterns of interaction we recognized (eg: the url hash / bookmarking feature)...

## BDD and The QA Force Multiplier: Cucumber

Using BDD to increase applicaiton quality.  Adjunct to unit testing, not a replacement for QA but augmentation of QA.  Catches what was already caught, but very little new.  Doesn't catch things like: "That took too long"; "That doesn't look right" and so on.  Does enure that things are working as expected (for the most part), in ways that Unit testing and human based testing just doesn't even come close to.

A

## Automated Deployment: Chef, the Art and The Practice of Autoamted Deployment and Provisoining

## Patterns of Enterprise Messaging with AMQP and RabbitMQ

- Part I: What is a Message Queue?

  - Common Usage Patterns

    - Workload Distribution

    - RPC

      - Asynchronous

      - Synchronous

- Part II: Working With AMQP

  -  Installing and Configuring RabbitMQ

  -  Messaging Topology

    -  Vhosts, Exchanges and Queues

    -  Message Routing: Bindings

  -  Distributed Transactions

- Part III: Permissions and Security

  -  Users and Permissions

  -  Message Security

    -  Encrypted or Signed message bodies

    -  SSL and TLS

      - Generating Self Signed Certificates

      - Enabling Client SSL (.NET and Java)

      - Client Server Certificate Validation (.NET and Java)

      - Client Side Certificates and Validation

