# Codecov Language Standards

[![Build Status](https://travis-ci.org/codecov/standards.svg?branch=master)](https://travis-ci.org/codecov/standards)
[![FOSSA Status](https://app.fossa.com/api/projects/git%2Bgithub.com%2Fcodecov%2Fstandards.svg?type=shield)](https://app.fossa.com/projects/git%2Bgithub.com%2Fcodecov%2Fstandards?ref=badge_shield)

## What is this?

This is a repository containing aggregated information about the state of all Codecov language standards. Each standard ensures that Codecov is properly processing reports for a particular language if its build is passing.

## List of Standards

| Standard | Last Run | GitHub Actions | Codecov |
|-|-|-|-|
| [Python](https://github.com/codecov/Python-Standard.git) | [Coverage](https://github.com/codecov/standards/tree/master/coverage_data/python-standard) | [![Build](https://github.com/codecov/python-standard/actions/workflows/python-standard.yml/badge.svg)](https://github.com/codecov/python-standard/actions/workflows/python-standard.yml) |[![codecov](https://codecov.io/gh/codecov/Python-Standard/branch/master/graph/badge.svg)](https://codecov.io/gh/codecov/Python-Standard) |
|[Swift/Xcode](https://github.com/codecov/Swift-Standard) | [Coverage](https://github.com/codecov/standards/tree/master/coverage_data/swift-standard) |[![Build](https://github.com/codecov/swift-standard/actions/workflows/swift_macos-10.15.yml/badge.svg)](https://github.com/codecov/swift-standard/actions/workflows/swift_macos-10.15.yml) |[![codecov](https://codecov.io/gh/codecov/Swift-Standard/branch/master/graph/badge.svg)](https://codecov.io/gh/codecov/Swift-Standard) |
|[Ruby](https://github.com/codecov/Ruby-Standard-2) |[Coverage](https://github.com/codecov/standards/tree/master/coverage_data/ruby-standard-2) |[![Build](https://github.com/codecov/ruby-standard-2/actions/workflows/ruby-standard-2.yml/badge.svg)](https://github.com/codecov/ruby-standard-2/actions/workflows/ruby-standard-2.yml)  |[![codecov](https://codecov.io/gh/codecov/Ruby-Standard-2/branch/master/graph/badge.svg)](https://codecov.io/gh/codecov/Ruby-Standard-2) |
|[TypeScript](https://github.com/codecov/TypeScript-Standard) |[Coverage](https://github.com/codecov/standards/tree/master/coverage_data/typescript-standard) |[![Build](https://github.com/codecov/typescript-standard/actions/workflows/typescript-standard.yml/badge.svg)](https://github.com/codecov/typescript-standard/actions/workflows/typescript-standard.yml)  |[![codecov](https://codecov.io/gh/codecov/TypeScript-Standard/branch/master/graph/badge.svg)](https://codecov.io/gh/codecov/TypeScript-Standard) |
|[Kotlin](https://github.com/codecov/kotlin-Standard) |[Coverage](https://github.com/codecov/standards/tree/master/coverage_data/kotlin-standard)|[![Build](https://github.com/codecov/kotlin-standard/actions/workflows/kotlin-standard.yml/badge.svg)](https://github.com/codecov/kotlin-standard/actions/workflows/kotlin-standard.yml) |[![codecov](https://codecov.io/gh/codecov/kotlin-Standard/branch/master/graph/badge.svg)](https://codecov.io/gh/codecov/kotlin-Standard) |
|[Go](https://github.com/codecov/go-Standard) |[Coverage](https://github.com/codecov/standards/tree/master/coverage_data/go-standard) |[![Build](https://github.com/codecov/go-standard/actions/workflows/go-standard.yml/badge.svg)](https://github.com/codecov/go-standard/actions/workflows/go-standard.yml) | [![codecov](https://codecov.io/gh/codecov/go-Standard/branch/master/graph/badge.svg)](https://codecov.io/gh/codecov/go-Standard) |
|[C++ (11)](https://github.com/codecov/cpp-11-Standard) | [Coverage](https://github.com/codecov/standards/tree/master/coverage_data/cpp-11-standard) | [![Build](https://github.com/codecov/cpp-11-Standard/actions/workflows/cpp-11-standard.yml/badge.svg)](https://github.com/codecov/cpp-11-Standard/actions/workflows/cpp-11-standard.yml) |[![codecov](https://codecov.io/gh/codecov/cpp-11-Standard/branch/master/graph/badge.svg)](https://codecov.io/gh/codecov/cpp-11-Standard) |
|[Java](https://github.com/codecov/java-Standard) |[Coverage](https://github.com/codecov/standards/tree/master/coverage_data/java-standard) |[![Build](https://github.com/codecov/java-standard/actions/workflows/java-standard.yml/badge.svg)](https://github.com/codecov/java-standard/actions/workflows/java-standard.yml) |[![codecov](https://codecov.io/gh/codecov/java-Standard/branch/master/graph/badge.svg)](https://codecov.io/gh/codecov/java-Standard) |

###### 1: The ruby gem does not appear to generate a report, please see the [Ruby 2 - Bash Uploader](https://github.com/codecov/Ruby-Standard-2) for status.

## Operation Details

Inside the `scripts` folder, you'll find shell files that run daily on a GitHub Action CRON job. These scripts attach a timestamp to the `Last Updated` line in the `README.md` files for each standard and commit this change. This action triggers a GitHub Action build for the respective standard.

Within the GitHub Action build for each standard:
  * Unit tests are run
  * A coverage report is generated (should not vary from commit to commit)
  * Coverage is uploaded to Codecov
  * A script ensures that Codecov's API returns the right coverage percentage

If all of these details check out, then Codecov's processing for that language is working as intended. The build status of all of these builds are aggregated in the table above.

## Contributing

Want to write a standard for a language that's not listed in the table? Contributions are welcome! See the [Contributing Guide](CONTRIBUTING.md) for more details.


## License
[![FOSSA Status](https://app.fossa.com/api/projects/git%2Bgithub.com%2Fcodecov%2Fstandards.svg?type=large)](https://app.fossa.com/projects/git%2Bgithub.com%2Fcodecov%2Fstandards?ref=badge_large)
