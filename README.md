# AWS Utilities

### Conventions

  * All scripts assume your `AWS_PROFILE` environment variable is set and has the necessary 
    permissions.
  * Where usage notes below include bracketed strings, replace them with actual values.
    * e.g. replace `<region>` with `ap-south-1`

## Credentials

  * Current profile in use
  
    * `ruby scripts/credentials/current_profile.rb`

## S3

  * List bucket names 
  
    Note: region doesn't matter for listing buckets

    * `ruby scripts/s3/list_buckets.rb`
    
## VPC

  * **WIP** - *Not yet implemented* - Delete default VPC in unused regions 
  
    It's good practice to delete the default VPC in regions that you don't actively host anything in.
    This reduces the surface area of anything that you need to monitor and protect.

    * `ruby src/vpc/delete_default.rb <region>`

---

## Contributing

  * Styling is checked by Rubocop
    * Run `rubocop` from the root directory
