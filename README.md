# Grafana Dashboards Deploy Action

Github Action to deploy grafana dashboards through APIs.

## Usage

Here is an example of how to use this action with Grafana dashboards' JSON files under the `dashboards` folder of your repo:

```yaml
name: Deploy
on:
  release:
    types: [ published ]

jobs:
  deployment:
    runs-on: ubuntu-latest
    steps:
    - uses: actions/checkout@v1
    - name: Deploy
      uses: casavo/action-grafana-dashboards-deploy@v1
      with:
        endpoint: https://grafana.my.tld
        api-key: ${{ secrets.GRAFANA_API_KEY }}
        folder: MyGrafanaFolder
```
