# Bakery Database Management System

A relational database project built using SQLite to manage bakery orders, customers, baked goods, and transactions.

## Features

- Relational database schema
- SQL views for profit and sales analysis
- Transaction tracking
- Customer and order management
- Revenue/profit calculations

## Technologies Used

- SQLite
- SQL
- DB Browser for SQLite
- Python 

## Database Structure

The database contains tables for:
- Customers
- Orders
- Transactions
- Baked Goods

## ERD

link picture here

## Example SQL Views

### Profit View
```sql
CREATE VIEW profit_view AS
SELECT ...
```

## Sample Queries

### Total Revenue by Order
```sql
SELECT order_number, SUM(total)
FROM Transaction
GROUP BY order_number;
```

## What I Learned

- Designing relational schemas
- Creating SQL views
- Working with JOIN statements
- Cleaning and organizing transaction data
- Debugging SQL errors
- Managing database relationships

## Future Improvements

- Add a frontend interface using Python or C++
