This project is a fork of Apache Ant 1.6.5, including only the classes
necessary to use the `ZipScanner` utility. Several of these types had
references to unnecessary other classes, or had unnecessary methods
that have been removed to keep the API as simple as possible.