# Codecov Language Standards

[![Build Status](https://travis-ci.org/codecov/standards.svg?branch=master)](https://travis-ci.org/codecov/standards)
[![FOSSA Status](https://app.fossa.com/api/projects/git%2Bgithub.com%2Fcodecov%2Fstandards.svg?type=shield)](https://app.fossa.com/projects/git%2Bgithub.com%2Fcodecov%2Fstandards?ref=badge_shield)

## What is this?

This is a repository containing aggregated information about the state of all Codecov language standards. Each standard ensures that Codecov is properly processing reports for a particular lanaguge if its build is passing. 

## List of Standards

| Standard | Travis CI | CircleCI |
|-|-|-|
| [Python](https://github.com/codecov/Python-Standard.git) | [![Build Status](https://travis-ci.org/codecov/Python-Standard.svg?branch=master)](https://travis-ci.org/codecov/Python-Standard) | [![CircleCI](https://circleci.com/gh/codecov/python-standard/tree/circle-ci.svg?style=svg)](https://circleci.com/gh/codecov/python-standard/tree/circle-ci) |
|[Swift/Xcode](https://github.com/codecov/Swift-Standard) |[![Build Status](https://travis-ci.org/codecov/Swift-Standard.svg?branch=master)](https://travis-ci.org/codecov/Swift-Standard) |
|[Ruby 1 - Codecov Gem](https://github.com/codecov/Ruby-Standard-1) |[![Build Status](https://travis-ci.org/codecov/Ruby-Standard-1.svg?branch=master)](https://travis-ci.org/codecov/Ruby-Standard-1) |
|[Ruby 2 - Bash Uploader](https://github.com/codecov/Ruby-Standard-2) |[![Build Status](https://travis-ci.org/codecov/Ruby-Standard-2.svg?branch=master)](https://travis-ci.org/codecov/Ruby-Standard-2) |
|[TypeScript](https://github.com/codecov/TypeScript-Standard) |[![Build Status](https://travis-ci.org/codecov/TypeScript-Standard.svg?branch=master)](https://travis-ci.org/codecov/TypeScript-Standard) |
|[Kotlin](https://github.com/codecov/kotlin-Standard) |[![Build Status](https://travis-ci.org/codecov/kotlin-Standard.svg?branch=master)](https://travis-ci.org/codecov/kotlin-Standard) |
|[Go](https://github.com/codecov/go-Standard) |[![Build Status](https://travis-ci.org/codecov/go-Standard.svg?branch=master)](https://travis-ci.org/codecov/go-Standard) |
|[C++ (11)](https://github.com/codecov/cpp-11-Standard) |[![Build Status](https://travis-ci.org/codecov/cpp-11-Standard.svg?branch=master)](https://travis-ci.org/codecov/cpp-11-Standard) |
|[Java](https://github.com/codecov/java-Standard) |[![Build Status](https://travis-ci.org/codecov/java-Standard.svg?branch=master)](https://travis-ci.org/codecov/java-Standard) |

## Operation Details

Inside the `scripts` folder, you'll find shell files that run daily on a Travis CRON job. These scripts attach a timestamp to the `Last Updated` line in the `README.md` files for each standard and commit this change. This action triggers a Travis build for the respective standard. 

Within the Travis build for each standard:
  * Unit tests are run
  * A coverage report is generated (should not vary from commit to commit) 
  * Coverage is uploaded to Codecov
  * A script ensures that Codecov's API returns the right coverage percentage
  
If all of these details check out, then Codecov's processing for that lanaguage is working as intended. The build status of all of these builds are aggregated in the table above. 

## Contributing

Want to write a standard for a lanaguage that's not listed in the table? Contributions are welcome! See the [Contributing Guide](CONTRIBUTING.md) for more details. 


## License
[![FOSSA Status](https://app.fossa.com/api/projects/git%2Bgithub.com%2Fcodecov%2Fstandards.svg?type=large)](https://app.fossa.com/projects/git%2Bgithub.com%2Fcodecov%2Fstandards?ref=badge_large)