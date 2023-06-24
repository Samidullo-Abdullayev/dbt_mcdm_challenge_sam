# Marketing Common Data Modelling Challenge
## Dashboard
Access the [recreated dashboard](https://lookerstudio.google.com/u/1/reporting/100fcb46-0b6b-42ee-b861-00dbd05e9546/page/tEnnC) to view the visualizations and insights.

## MCDM Repository
This repository is connected to dbt Cloud, providing a seamless data modeling and analytics environment.

Find the completed MCDM files in the [staging](/models/staging) directory. Each platform is mapped to a suggested structure for its data table, and the `paid_ads__basic_performance` model aggregates data from all platforms.

The [marts](/models/marts) folder contains the queries used to create the dashboard.

## Adding a New Platform
To add a new platform to the data model, follow these steps:

1. Include the data for the new platform in a `new_platform_data.csv` file within the seed folder.
2. Create an `new_platform.sql` model that maps the new platform's data to the `paid_ads__basic_performance` model. You can refer to the existing `new_*.sql` files in the models folder.
3. Update the `combined_data.sql` model by adding a new source using a `union` statement:
```
...

union all

select * 
from {{ ref('new_platform') }}
```
4. In the dbt console, run `dbt seed` and `dbt build` to incorporate the new platform's data.

Feel free to reach out if you have any questions or need further assistance.
