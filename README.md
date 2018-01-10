# Basic OpenStack architecture with networking (API level 3)

This provides a template for running a simple architecture on an OpenStack
cloud.

To simplify the example, this intentionally ignores deploying and
getting your application onto the servers. However, you could do so either via
[provisioners](https://www.terraform.io/docs/provisioners/) and a configuration
management tool, or by pre-baking configured images with
[Packer](http://www.packer.io).

After you run `terraform apply` on this configuration, it will output the
floating IP address assigned to the instance. After your instance started,
this should respond with the default nginx web page.

First set the required environment variables for the OpenStack provider by
sourcing the [credentials file](http://docs.openstack.org/cli-reference/content/cli_openrc.html).

```
source openrc
```

Afterwards run with a command like this:

```
terraform apply \
  -var 'external_gateway=497c1f11-0cbb-4e94-8b6e-339945ea73d1' \
  -var 'pool=provider'
```

To get a list of usable floating IP pools run this command, and the UUID of the external gateway
is in the following `ID` column:

```
$ openstack network list --external
+--------------------------------------+----------+--------------------------------------+
| ID                                   | Name     | Subnets                              |
+--------------------------------------+----------+--------------------------------------+
| 497c1f11-0cbb-4e94-8b6e-339945ea73d1 | provider | cffa80a5-26bc-46d2-8e1a-d7929969ffec |
+--------------------------------------+----------+--------------------------------------+
```
