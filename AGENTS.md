# Agent Instructions

Before starting any task in this repository:

1. Run `make agents/sync`. It writes the shared Plus3 IT instructions for this repository's tardigrade-ci version to `.agents/plus3it/AGENTS.md`.
2. Read `.agents/plus3it/AGENTS.md` and follow it together with this file. If the sync fails, tell the user, and don't guess the conventions.

These rules always apply, even without the shared instructions:

- Don't push, open pull requests, publish releases, or apply infrastructure changes unless the user asks. List those steps for a person in your final report.
- Don't edit files under `.agents/plus3it/`; they are generated and overwritten by the sync.

@.agents/plus3it/AGENTS.md

## Repository-specific

### Purpose

This Terraform module creates an AWS Config aggregator, an aggregate authorization, or both. Set the `aggregator` input to create an aggregator from account or organization aggregation sources, and the `authorization` input to authorize an aggregator in another account and region. Each input defaults to `null`, which skips that part. The module outputs `aggregator` and `authorization`, each holding the attributes of the created resource, or `null` when its input is not set.

### Module-specific files

- `modules/aggregator/` — Submodule that creates the `aws_config_configuration_aggregator` resource; the root module calls it when `aggregator` is set
- `modules/authorization/` — Submodule that creates the `aws_config_aggregate_authorization` resource; the root module calls it when `authorization` is set
