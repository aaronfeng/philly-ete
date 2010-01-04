# Philly ETE 2010 Talk

Work with Trotter on ideas for the presentation...



## Use Of Open Source in the Enterprise or Financial Industry

Is it ok for me to use this in the Financial Industry?

How do I convince my boss?

Won't the open source gremlins steal our code?  Or: how do I keep the licensing clear between the corporate IP and the open source libraries we use.

Licensing Considerations

Handling Bugs

Handling Contributions, Fixes, Enhancements

Interacting with the Community productively

How much time to spend on the tools / libraries vs your own value adds.

When to ditch the open code and roll your own.

Where did it work for us?

When to open a library to the public. Aka, what is intelluctual property I should protect?



## Clojure in the Financial Industry

Anectdote about how easy it was to makde the AMQP consumer more robust by using agents.  Going from a simple thread based consumer to one that, in an outer try/catch block sent-off a message to an agent asking to be restarted.  The implementation was very simple.  The simplicity of using Clojure data strcutures for configuratrion; how immutability made for less debugging and runtime errors in the system.

Statelessness leads to far fewer issues.  Functions as first class types allow for the easy creation of DSL-like declarative configurations: we have leveraged this heavily in our messaging code for handling message processing and routing.  These mini-dsls often manifest themselves simply as dispatch tables, keeping the overall shape and concerns of the code in one place.

The JVM is a great platform, Java is an expensive language to perform development in.  Clojure allows us to move nearly as quickly as Ruby, while being a more natural fit on the JVM, allows you to implement much more complex logic with a lot less supporting code.

Deployment: Long running processes: Clojure compiles to class files.  JRuby does support compilation, though as far as we know it is not widely used in this way (should look at warbler and what it does, it may do this!!).  Ruby needs to be open to extension at run-time in ways that Clojure does not.  Clojure still supports macros and first class functions, which puts it inbetween languages like Ruby and Java, it is more dynamic than Java (from a code perspective), but not at runtime (as Ruby is).

Personal Observation: Contemplating writing our messaging code in Ruby (from Clojure) I immediately get the feeling that I'd want a much more comprehensive test suite if it were to be done in JRuby.  The first thing that comes to mind are tests that are not necessary given the types and function signature checking that is done in the clojure compilation process and in the JVM itself when classes are loaded.  These are aspects that are not handled in JRuby as far as I know.

Hiring Resources / Learning Clojure (vs something like Scala):  Clojure is much smaller of a langauge than Scala, but most of you out there refuse to work in a Lisp (look around the room).


## Highly Interactive Applications: Javascript in The Browser

YUI, jQuery, our pretty complex web front end using very small bits of data back and forth with the server, the patterns of interaction we recognized (eg: the url hash / bookmarking feature)...



## Trends in Enterprise Automation

Is your organization dying from an inability to provision systems and move your application through QA quickly enough? The world we live is changing as automated tools make it easier to leverage vast numbers of systems and test code with fewer people. In this talk, we'll discuss what we see as the emerging trends in automated deployment and testing. We'll talk about how tools like Chef and Cucumber allow you to scale your team further.


- Provisioning

  - Setting up multiple boxes by one person is expected

  - Doing it by hand takes too long and is fragile

  - How do you ensure that dev env is the same as prod env

  - We wrote a bash script, not best

  - Chef / Puppet are good techs

  - How do I get my code running on the 10 boxes that I just bought on Slicehost?

  - Past: Commercial tools / doing it your own on a box by box basis

  - Present: Linux distro's tools + custom scripting

  - Future: Chef / Puppet which allow you to treat your configuration and app code as co-dependent

- QA

  - We write unit tests to check quality on the low level

  - Integration tests let us check at the high level

  - Writing integration tests for browsers is now easier due to selenium and others

  - Cucumber can make your integration tests understandable by the business people

  - Two trends: unit testing / integration testing

  - Unit testing didn't really take off until XP and X-Unit style frameworks

  - Past: QA team develops test plans and performs manual regressions (or you used, really just bought and didn't use, expensive commercial apps like Mercury Test Runner)

  - Present: TDD and Unit testing frameworks are well established, automated integration testing is not standardized. 

  - Future: Integration testing automation is emerging (for web at least) with tools like cucumber that make browser drivers like selenium easier to use and understand.






## Patterns of Enterprise Messaging with AMQP and RabbitMQ

JMS, (IBM?) MQ, MSMQ or Tibco's days may be numbered, there's a new protocol in town: AMQP.  Open Source, Standardized Asynchronous Messaging is maturing with the release of RabbitMQ and other AMQP implementations.  This highly performant, technology neutral protocol allows you to write your messaging clients in any language you want.  In this talk we'll discuss the AMQP standard, how you can leverege it in your architecture, and RabbitMQ in particular.


- Part I: What is a Message Queuing?

  - Where did AMQP Come from?

- Common Usage Patterns

    - Workload Distribution

    - RPC

      - Asynchronous

      - Synchronous

    - Logging / Event Notification

    - Broadcasting information / Synchronization to multiple consumers

    - Instant Messaging...2 browser based users working with each other

- Less Common Usage Patterns

    - ESB-Like: Service Decomposition Boundaries, Service Discovery, Resource Abstraction (Eg: like REST), Location Decoupling (better term for this?)

    - Time Shifting: 'do this later' or 'tell them, or me, at some point'

    - Bridging / Integration Patterns, Protocol Adapters/ Bridges

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

- Part IV: Monitoring and Deployment

- Part V: Clustering, Failover


