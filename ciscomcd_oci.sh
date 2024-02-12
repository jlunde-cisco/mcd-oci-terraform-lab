#!/bin/bash

PS3="Select an action (enter the number): "
options=("Create Infrastructure" "Destroy Infrastructure" "Quit")

select action in "${options[@]}"; do
    case $action in
        "Create Infrastructure")
            echo "Running 'terraform apply'..."
            terraform init
            terraform apply --auto-approve

            if [ $? -eq 1 ]; then
                echo "Running 'terraform refresh' so that we can build the DRG links"
                terraform refresh

                echo "Running 'terraform apply' again... "
                terraform apply --auto-approve
                
                if [ $? -eq 1 ]; then
                    echo "Running 'terraform refresh' so that we can build the DRG links"
                    terraform refresh

                    echo "Running 'terraform apply' again... "
                    terraform apply --auto-approve
                else
                    echo "It passed on the second loop through. All infrastructure is now provisioned."
                fi
                break
            else
                echo "It passed on the first time! All Infrasctructure is now provisioned."
            fi
            break
            ;;
        "Destroy Infrastructure")
            echo "Running 'terraform destroy'..."
            terraform destroy --auto-approve
            break
            ;;
        "Quit")
            echo "Exiting without any action."
            break
            ;;
        *) 
            echo "Invalid option. Please select a valid option."
            ;;
    esac
done
