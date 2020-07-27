
# puppet-lsst_pipeline_prereq

#### Table of Contents

1. [Description](#description)
2. [Setup - The basics of getting started with lsst_pipeline_prereq](#setup)
    * [What lsst_pipeline_prereq affects](#what-lsst_pipeline_prereq-affects)
    * [Setup requirements](#setup-requirements)
    * [Beginning with lsst_pipeline_prereq](#beginning-with-lsst_pipeline_prereq)
3. [Usage - Configuration options and additional functionality](#usage)
4. [Limitations - OS compatibility, etc.](#limitations)

## Description

Puppet module for installing prerequisites for the LSST Pipeline.

## Setup

### What lsst_pipeline_prereq affects

The module installs prerequisites for the LSST Pipeline. See the following for current prerequisites:

  * https://pipelines.lsst.io/install/prereqs.html#system-prereqs

### Setup Requirements

This module requires the following puppet modules to be installed:

  * https://forge.puppet.com/puppetlabs/stdlib

### Beginning with lsst_pipeline_prereq

## Usage

To use load the lsst_pipeline_prereq puppet module, declare this class in your manifest with `include lsst_pipeline_prereq`.

## Reference

The following parameters let you extend lsst_pipeline_prereq options beyond the default:

  * `lsst_pipeline_prereq::packages` - Array of prerequisite packages to install via YUM
  * `lsst_pipeline_prereq::scl_yumrepo_baseurl` - URL of YUM repository for the CentOS Linux Software Collections

## Limitations

This lsst_pipeline_prereq module only supports RHEL/CentOS servers.

