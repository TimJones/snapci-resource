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

## Behavior

### `check`: Checks for Snap CI builds.

Calls the Snap CI pipelines API to iterate over builds in the specified 
pipeline.


### `in`: Nothing.

No-op.


#### Parameters

No-op.


### `out`: Nothing.

No-op.


## Example

``` yaml

```
