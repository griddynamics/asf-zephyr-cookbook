chef-zephyr
======================

This cookbook install Zephyr plugin to already installed Atlassian JIRA.

Depends
-------
No dependencies


Usage
-----
#### chef-zephyr::default

Just include `chef-zephyr` in your node's `run_list`:

```json
{
  "name":"my_node",
  "run_list": [
    "recipe[chef-zephyr]"
  ]
}
```
