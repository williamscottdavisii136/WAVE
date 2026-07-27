# Zero-Cost Policy

## Controlling rule

`MAX_INCREMENTAL_SPEND_USD=0`

WAVE may not create, authorize, estimate, or conceal incremental spend above `$0.00`.

## Enforcement

1. Local and open-source execution is the default.
2. Paid provider fallback is denied.
3. Automatic account reload, top-up, credit purchase, or metered upgrade is denied.
4. Unknown cost is treated as non-zero and blocked.
5. Browser hooks and localhost services are not required for core operation.
6. Network commands are excluded from the default execution allowlist except explicit read-only GitHub status checks.
7. GitHub Actions are manual-only and must not be invoked when included minutes or billing controls have not been verified.
8. No recurring hosted-runner schedule is permitted.
9. Every execution receipt records `incremental_spend_usd: 0`.
10. Cross-repository runtime access is denied.

## Approved default routes

- POSIX `sh`
- local operating-system utilities
- Git and read-only GitHub CLI status commands
- local append-only execution receipts
- GitHub repository features already included in the owner's current plan

## Prohibited routes

- metered API calls without verified zero-cost protection
- trial cycling or subscription avoidance
- license circumvention
- auto-provisioned paid infrastructure
- silent paid or network fallback
- commands that alter another repository
