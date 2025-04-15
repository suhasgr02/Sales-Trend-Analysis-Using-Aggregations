# Sales Trend Analysis Using Aggregations

This repository contains SQL scripts for analyzing sales trends using aggregation techniques. The provided queries cover various aspects of sales data, such as revenue analysis, order volume, and trends by time periods and payment methods.

## Overview

The SQL script in this repository demonstrates how to:

1. Extract and group data by year and month.
2. Calculate total revenue using `SUM()`.
3. Analyze order volume with `COUNT('DISTINCT Transaction ID')`.
4. Group data by payment methods (e.g., Credit Card, PayPal, Debit Card).
5. Sort and limit results to specific time ranges.

## Key Features

- **Monthly Revenue Trends:** Aggregates revenue by year and month.
- **Payment Method Analysis:** Breaks down revenue and volume by payment method.
- **Order Volume Insights:** Counts unique orders over time.
- **Custom Time Periods:** Filters and limits results based on specific date ranges.

## Prerequisites

Ensure the following requirements are met:

- A SQL database compatible with the script (e.g., MySQL).
- Access to a dataset with the following schema:
  - `Date`: A column containing order dates.
  - `Total Revenue`: A column containing revenue data.
  - `order_id`: A unique identifier for each order.
  - `Payment_Method`: A column specifying the payment method (e.g., Credit Card, PayPal, Debit Card).

## How to Use

1. **Clone the Repository:**
   ```bash
   git clone https://github.com/suhasgr02/Sales-Trend-Analysis-Using-Aggregations//sales-trend-analysis.git
   ```

2. **Set Up Your Database:**
   - Import your sales dataset into a database.
   - Ensure the table name matches the one used in the script (e.g., `suhasdb.order`).

3. **Run the Queries:**
   - Open a SQL editor or terminal connected to your database.
   - Copy and paste the desired queries from the script to analyze your data.


## Contribution

Contributions are welcome! If you have additional queries or enhancements, feel free to submit a pull request.

## License

This project is licensed under the [MIT License](LICENSE).

---

For questions or support, contact [your-email@example.com](suhasgr7479@gmail.com).
