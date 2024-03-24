# Web-App-DevOps-Project

Welcome to the Web App DevOps Project repo! This application allows you to efficiently manage and track orders for a potential business. It provides an intuitive user interface for viewing existing orders and adding new ones.

## Table of Contents

- [Features](#features)
- [Getting Started](#getting-started)
- [Technology Stack](#technology-stack)
- [Contributors](#contributors)
- [License](#license)

## Features

- **Order List:** View a comprehensive list of orders including details like date UUID, user ID, card number, store code, product code, product quantity, order date, and shipping date.
  
![Screenshot 2023-08-31 at 15 48 48](https://github.com/maya-a-iuga/Web-App-DevOps-Project/assets/104773240/3a3bae88-9224-4755-bf62-567beb7bf692)

- **Pagination:** Easily navigate through multiple pages of orders using the built-in pagination feature.
  
![Screenshot 2023-08-31 at 15 49 08](https://github.com/maya-a-iuga/Web-App-DevOps-Project/assets/104773240/d92a045d-b568-4695-b2b9-986874b4ed5a)

- **Add New Order:** Fill out a user-friendly form to add new orders to the system with necessary information.
  
![Screenshot 2023-08-31 at 15 49 26](https://github.com/maya-a-iuga/Web-App-DevOps-Project/assets/104773240/83236d79-6212-4fc3-afa3-3cee88354b1a)

- **Data Validation:** Ensure data accuracy and completeness with required fields, date restrictions, and card number validation.

## Getting Started

### Prerequisites

For the application to succesfully run, you need to install the following packages:

- flask (version 2.2.2)
- pyodbc (version 4.0.39)
- SQLAlchemy (version 2.0.21)
- werkzeug (version 2.2.3)

### Usage

To run the application, you simply need to run the `app.py` script in this repository. Once the application starts you should be able to access it locally at `http://127.0.0.1:5000`. Here you will be meet with the following two pages:

1. **Order List Page:** Navigate to the "Order List" page to view all existing orders. Use the pagination controls to navigate between pages.

2. **Add New Order Page:** Click on the "Add New Order" tab to access the order form. Complete all required fields and ensure that your entries meet the specified criteria.

## Technology Stack

- **Backend:** Flask is used to build the backend of the application, handling routing, data processing, and interactions with the database.

- **Frontend:** The user interface is designed using HTML, CSS, and JavaScript to ensure a smooth and intuitive user experience.

- **Database:** The application employs an Azure SQL Database as its database system to store order-related data.

## Contributors 

- [Maya Iuga]([https://github.com/yourusername](https://github.com/maya-a-iuga))

## License

This project is licensed under the MIT License. For more details, refer to the [LICENSE](LICENSE) file.

# Aks Terraform

# AKS Networking Terraform Configuration

This Terraform configuration defines the infrastructure needed to provision networking resources for an Azure Kubernetes Service (AKS) cluster. It creates essential networking components such as a Virtual Network (VNet), subnets for control plane and worker nodes, and a Network Security Group (NSG) for security rule enforcement.

## Prerequisites

Before using this Terraform configuration, ensure you have the following prerequisites:

1. An Azure subscription.
2. Terraform installed on your local machine. You can download it from [here](https://www.terraform.io/downloads.html).
3. Azure CLI installed on your local machine.
4. Access to Azure with the necessary permissions to create networking resources.

## Usage

Follow the steps below to use this Terraform configuration:

1. Clone this repository to your local machine:

    ```bash
    git clone <repository_url>
    ```

2. Navigate to the directory containing the Terraform configuration files:

    ```bash
    cd aks-networking-terraform
    ```

3. Initialize Terraform:

    ```bash
    terraform init
    ```

4. Modify the `terraform.tfvars` file to provide values for the required variables such as `resource_group_name`, `location`, and `vnet_address_space`.

5. Review and customize the `main.tf` file if necessary to match your specific networking requirements.

6. Run Terraform plan to preview the changes:

    ```bash
    terraform plan
    ```

7. If the plan looks good, apply the Terraform configuration to provision the networking resources:

    ```bash
    terraform apply
    ```

8. After the resources are provisioned successfully, Terraform will output the IDs and names of the created resources. You can use these outputs to configure other modules or resources in your infrastructure.

9. To clean up the resources, you can run:

    ```bash
    terraform destroy
    ```

## Outputs

The Terraform configuration provides the following outputs:

- `vnet_id`: The ID of the created Virtual Network (VNet).
- `control_plane_subnet_id`: The ID of the control plane subnet within the VNet.
- `worker_node_subnet_id`: The ID of the worker node subnet within the VNet.
- `networking_resource_group_name`: The name of the Azure Resource Group where the networking resources were provisioned.
- `aks_nsg_id`: The ID of the created Network Security Group (NSG).

You can use these outputs to configure the AKS cluster module or any other modules requiring networking resources within the same Azure environment.

## License

This Terraform configuration is licensed under the [MIT License](LICENSE).
