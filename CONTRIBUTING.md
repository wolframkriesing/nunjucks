# Contributing

Thanks for your interest in contributing! The advice below will help you get your issue fixed / pull request merged.


## Purpose

Nunjucks has the following purpose:

* Aim for templating feature parity with Jinja2.
* Aim for templating feature parity with Twig, but only when not conflicting with Jinja2 parity.
* Works in all node releases that are
  [actively maintained by the Node Foundation](https://github.com/nodejs/Release#release-schedule)
* Works in all modern browsers (with [ES5 support](http://kangax.github.io/compat-table/es5/)).
* Works in IE8 with [es5-shim](https://github.com/es-shims/es5-shim).
* Keep footprint browser files as small as possible (save on bandwidth, download time).
* Keep performance as fast as possible (see benchmarks).
* Keep maintenance as easy as possible (avoid complexity, automate what we can).

Notes:

* We don't aim for parity of all language specific syntax.
* We don't aim for parity of language specific filters like [Twig's PHP date format](http://twig.sensiolabs.org/doc/functions/date.html).

Issues and pull requests contributing to this purpose have the best chance to make it into Nunjucks.


## Questions?

Please DO NOT ask "how do I?" or usage questions via GitHub issues. Instead,
use the [mailing list](https://groups.google.com/forum/#!forum/nunjucks).


## Submitting Issues

Issues are easier to reproduce/resolve when they have:

- A pull request with a failing test demonstrating the issue
- A code example that produces the issue consistently
- A traceback (when applicable)


## Pull Requests

When creating a pull request:

- Write tests (see below).
- Note user-facing changes in the [`CHANGELOG.md`](CHANGELOG.md) file.
- Update the documentation (in [`docs/`](docs/)) as needed.


## Testing

Please add tests for any changes you submit. The tests should fail before your
code changes, and pass with your changes. Existing tests should not break. Test
coverage (output at the end of every test run) should never decrease after your
changes.

To install all the requirements for running the tests:

```bash
npm install
```

To run the tests:

```bash
npm test
```


## Setup Nunjucks via docker-compose

Note: You can always run nunjucks on your system without any docker. Doing as described below is optional!

If you can't or don't want to install the project or any parts globally on your machine, you can use the
provided docker-compose setup, which allows developing and running the project in an isolated container
and provides a reproducible environment and allows for preventing unwanted installation and changes on your
machine, they all take place inside this docker container.

Requirement is to have [docker-compose installed](https://docs.docker.com/compose/install/).

To start the docker container(s) run:

```shell-session
$ docker-compose up -d
Creating network "nunjucks_default" with the default driver
Creating nunjucks ... done
```

For developing you can "enter" the container and work on the command line in there as you are used to via:

```shell-session
$ docker-compose exec nunjucks bash
root@123abc:/app# 
```

Now you can e.g. `npm install` or `npm test` on the shell provided via the command above.
If you want to develop and use your editor as you are used to, you can too, the files are mounted into the
container under `/app` inside the container. A change you do in this directory (here where you are now)
it is reflected inside the docker container. Any test watcher, or alikes work just like you expect it.