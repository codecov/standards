# Codecov Language Standards

[![Build Status](https://travis-ci.org/codecov/standards-scripts.svg?branch=master)](https://travis-ci.org/codecov/standards-scripts)

## What is this?

This is a repository containing aggregated information about the state of all Codecov language standards. Each standard ensures that Codecov is properly processing reports for said lanaguge if it's build is passing. 

## Operation Details

Inside the `scripts` folder, you'll find shell files that run daily on a Travis CRON. These scripts attach a timestamp to the `Last Updated` line in the `README.md` files for each standard and commit this change. This action triggers a Travis build for the respective standard. 

Within the Travis build for each standard:
  * Unit tests are run
  * A coverage report is generated (should not vary from commit to commit) 
  * Coverage is uploaded to Codecov
  * A script ensures that Codecov's API returns the right coverage
  
If all of these details check out, then Codecov's processing for that lanaguage is working properly. The results of all of these builds is aggregated in the table below. 

## List of Standards

|                           Standard                           | Build Status                                                                                                                      |
| :----------------------------------------------------------: | --------------------------------------------------------------------------------------------------------------------------------- |
| [Python](https://github.com/codecov/Python-Standard.git) | [![Build Status](https://travis-ci.org/codecov/Python-Standard.svg?branch=master)](https://travis-ci.org/codecov/Python-Standard) |
|[Swift/Xcode](https://github.com/codecov/Swift-Standard) |[![Build Status](https://travis-ci.org/codecov/Swift-Standard.svg?branch=master)](https://travis-ci.org/codecov/Swift-Standard) |
|[Ruby 1 - Codecov Gem](https://github.com/codecov/Ruby-Standard-1) |[![Build Status](https://travis-ci.org/codecov/Ruby-Standard-1.svg?branch=master)](https://travis-ci.org/codecov/Ruby-Standard-1) |
|[Ruby 2 - Bash Uploader](https://github.com/codecov/Ruby-Standard-2) |[![Build Status](https://travis-ci.org/codecov/Ruby-Standard-2.svg?branch=master)](https://travis-ci.org/codecov/Ruby-Standard-2) |
|[TypeScript](https://github.com/codecov/TypeScript-Standard) |[![Build Status](https://travis-ci.org/codecov/TypeScript-Standard.svg?branch=master)](https://travis-ci.org/codecov/TypeScript-Standard) |

## Contributing

Want to write a standard for a lanaguage that's not listed in the table above? Contributions are welcome! See the [Contributing Guide](CONTRIBUTING) for more details. 
