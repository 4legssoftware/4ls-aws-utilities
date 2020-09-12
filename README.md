# AWS Utilities

A collection of notes and convenience scripts for various AWS chores.

## AWS Login Required

* All scripts assume your `AWS_PROFILE` environment variable is set and has 
the necessary permissions.

### Updating your AWS Session Token (utilizing 1Password)
 
* Authenticate with 1Password
  * `rake "mfa[<op-item>,<op-vault>]`
  * This will require you to then type in your password unless a valid OP_SESSION ENV var is found
  * To use a default item, set as an environment variable `OP_ITEM`
  * To use a default vault, set as an environment variable `OP_VAULT`

## Conventions

* Where usage notes below include bracketed strings, replace them with actual 
values.
* e.g. replace `<region>` with `ap-south-1`

## Credentials

  * Current profile in use
  
    `ruby scripts/credentials/current_profile.rb`

## S3

  * List bucket names 
  
    `ruby scripts/s3/list_buckets.rb`
    
    * Note that region doesn't matter for listing buckets
    * Equivalent to the CLI command: `aws s3api list-buckets`
    
## VPC

  * **WIP** - *Not yet implemented* - Delete default VPC in unused regions 
  
    `ruby src/vpc/delete_default.rb <region>`

    * It's a good practice to delete the default VPC in regions that you don't 
    actively host anything in. This reduces the surface area of anything that 
    you need to monitor and protect.

---

## Contributing

  * Styling is checked by Rubocop
    * Run `rubocop` from the root directory
