# AWS Utilities

### Conventions

  * All scripts assume your `AWS_PROFILE` environment variable is set and has the necessary 
    permissions.
  * Where usage notes below include bracketed strings, replace them with actual values.
    * e.g. replace `<region>` with `ap-south-1`

## VPC

  * **WIP** - *Not yet implemented* - Delete default VPC in unused regions 
  
    It's good practice to delete the default VPC in regions that you don't actively host anything in.
    This reduces the surface area of anything that you need to monitor and protect.

    * `ruby vpc/delete_default.rb <region>`

---

## Contributing

  * Styling is checked by Rubocop
    * Run `rubocop` from the root directory
