SELECT * FROM suhasdb.order;

#Extract Month and Year
SELECT 
    EXTRACT(YEAR FROM Date) AS Year,
    EXTRACT(MONTH FROM Date) AS Month
   FROM suhasdb.order
GROUP BY EXTRACT(YEAR FROM Date), EXTRACT(MONTH FROM Date);


#Monthly Revenue by Payment Method
SELECT 
    EXTRACT(YEAR FROM Date) AS Year,
    EXTRACT(MONTH FROM Date) AS Month,
    'Payment Method',
    SUM(`Total Revenue`) AS Total_Revenue
FROM suhasdb.order
GROUP BY EXTRACT(YEAR FROM Date), EXTRACT(MONTH FROM Date), 'Payment Method'
ORDER BY Year DESC, Month DESC, Total_Revenue DESC;


#COUNT(DISTINCT) for Volume
SELECT 
    EXTRACT(YEAR FROM Date) AS Year,
    EXTRACT(MONTH FROM Date) AS Month,
    COUNT('DISTINCT Transaction ID') AS Volume
FROM suhasdb.order
GROUP BY EXTRACT(YEAR FROM Date), EXTRACT(MONTH FROM Date);


#ORDER BY for Sorting
SELECT 
    EXTRACT(YEAR FROM Date) AS Year,
    EXTRACT(MONTH FROM Date) AS Month,
    SUM(`Total Revenue`) AS Revenue,
    COUNT('DISTINCT Transaction ID') AS Volume
FROM suhasdb.order
GROUP BY EXTRACT(YEAR FROM Date), EXTRACT(MONTH FROM Date)
ORDER BY Year DESC, Month DESC;

#Total Revenue by Year (Without Month)
SELECT 
    EXTRACT(YEAR FROM Date) AS Year,
    SUM(`Total Revenue`) AS Revenue
FROM suhasdb.order
GROUP BY EXTRACT(YEAR FROM Date);

#Total Volume by Year (Without Month)
SELECT 
    EXTRACT(YEAR FROM Date) AS Year,
    COUNT('DISTINCT Transaction ID') AS Volume
FROM suhasdb.order
GROUP BY EXTRACT(YEAR FROM Date);

#Top 5 Month by Revenue
SELECT 
    EXTRACT(MONTH FROM Date) AS Year,
    SUM(`Total Revenue`) AS Revenue
FROM suhasdb.order
GROUP BY EXTRACT(MONTH FROM Date)
ORDER BY Revenue DESC
LIMIT 5;

#Revenue for Each Month in a Specific Date Range
SELECT 
    EXTRACT(YEAR FROM Date) AS Year,
    EXTRACT(MONTH FROM Date) AS Month,
    AVG(`Total Revenue`) AS Avg_Revenue_Per_Order
FROM suhasdb.order
GROUP BY EXTRACT(YEAR FROM Date), EXTRACT(MONTH FROM Date)
ORDER BY Year DESC, Month DESC;

#Total Revenue by Region
SELECT 
    Region,
    SUM(`Total Revenue`) AS Revenue
FROM suhasdb.order
GROUP BY Region
ORDER BY Revenue DESC;



