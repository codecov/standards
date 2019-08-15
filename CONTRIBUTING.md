# Contributing Guide

If you would like to contribute your own language specific standard to Codecov you can do so as follows:

1. Write a sample repository that contains Docker and docker-compose based orchestration for running your project easily locally (if containarization is possible)
2. Your project should be as simple as possible while providing and testing the following functions:
   - A function that is fully tested and covered by tests
   - A function that is not tested at all
   - A function that contains a conditional with a tested if and/or else condition.
3. A TravisCI configuration that will run the tests and upload coverage to Codecov.

If your standard is accepted by Codecov you can transfer ownership to the Codecov Organization and will be accepted in our current [List of Standards](https://github.com/codecov/standards-scripts#list-of-standards) with credit given to the repository's original author. You can review the List of Standards to see which languages and frameworks currently need a standard submitted. If you create a standard please, email support@codecov.io with the subject line "New <Language> Standard Submission" and the team will review it for acceptance.
