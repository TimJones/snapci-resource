# Snap CI Resource for Concourse CI

Tracks [Snap CI](https://snap-ci.com) piplines for integration with 
[Concourse CI](https://concourse.ci/).  
Useful when migrating from Snap CI to Concourse CI.

## Source Configuration

* `owner`: *Required.* The Snap CI build owner.

* `repository`: *Required.* The Snap CI build repository.

* `branch_name`: *Required.* The Snap CI build branch name.

* `user`: *Required.* Your Snap CI user account.

* `api_key`: *Required.* Your Snap CI User API Key.

* `api_server`: *Optional.* The Snap CI API server. Defaults to `https://api.snap-ci.com`.

## Behavior

### `check`: Checks for Snap CI builds.

Calls the Snap CI pipelines API to iterate over builds in the specified 
pipeline.


### `in`: Nothing.

No-op.


### `out`: Nothing.

No-op.


## Example

``` yaml
resource_types:
- name: snap-ci
  type: docker-image
  source:
    repository: timjones/snapci-resource

resources:
- name: snapci-pipeline
  type: snap-ci
  source:
    owner: ProjectOwner
    repository: some-repo
    branch_name: master
    user: Me
    api_key: MySnapCiAPIKey

jobs:
- name: run-end-to-end-tests
  plan:
  - get: snapci-pipeline
    trigger: true
  - task: run-tests
    config:
      ...
```
