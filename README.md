Walmart Superstore Sales & Profitability Analysis
Executive Summary:

Walmart Superstore's overall sales look healthy, but profit is being quietly eroded by two things: heavy discounting and a chronically unprofitable Furniture category. Using SQL, Python, and Power BI, I cleaned and analyzed 9,993 order line items (5,009 orders, Jan–Sep 2019) to find where profit was leaking out of an otherwise strong sales picture. I found that discounted orders lose money on average, and that Furniture — despite being the second-highest category by sales — returns almost no profit, dragged down by Tables and Bookcases. I recommend the business:

Tighten or remove discounting on categories/sub-categories that are already low-margin
Re-price or re-negotiate costs on Tables and Bookcases specifically
Shift marketing and promotional spend toward Technology and Office Supplies, which convert sales into profit far more efficiently
Business Problem:

Walmart Superstore's finance team noticed that total revenue looked strong, but profit growth wasn't keeping pace. Sales and finance stakeholders wanted to know: which categories, sub-categories, and regions are actually generating profit — and is our discounting strategy helping or hurting the bottom line?

Methodology:
SQL queries that clean, aggregate, and summarize sales, profit, and discount data across categories, regions, and sub-categories.
A Power BI dashboard that visualizes sales and profit performance interactively.
A Python-based analysis to quantify the relationship between discounting and profitability, and to identify the specific sub-categories losing money.
Skills:

SQL: Aggregate functions, GROUP BY, CASE logic, views, filtering on profit thresholds

Power BI: Data visualization, data modeling, interactive dashboard design

Python: Pandas, exploratory data analysis, profitability segmentation

Results & Business Recommendation:

Across 9,993 line items totaling $2,267,200 in sales and $286,398 in profit (12.6% overall margin), two clear patterns emerged:

1. Discounting is a profit drain. Non-discounted line items average $66.90 profit per line (34.3% margin), while discounted line items average -$6.66 profit (-8.2% margin). Roughly half of all line items (5,195 of 9,993) carry a discount, and those discounts are, on average, turning profitable sales into losses.

2. Furniture sells well but doesn't make money. Furniture generated $741,999 in sales — nearly as much as Technology ($806,154) — but returned only $18,451 in profit (2.5% margin), compared to Technology's 18.0% margin and Office Supplies' 17.0% margin. Within Furniture, Tables lost $17,725 and Bookcases lost $3,472, while Copiers, Phones, Accessories, Paper, and Binders were the strongest profit contributors company-wide.

3. Nearly 1 in 5 line items (18.7%) were sold at a loss, totaling -$156,130 in losses — concentrated in the same discounted, low-margin categories.

Based on this, I recommend:

Cap or eliminate discounts on Tables, Bookcases, and other already-thin-margin sub-categories, since the data shows discounts are pushing many of these below breakeven.
Review supplier costs and pricing on Tables specifically — it's the single biggest source of lost profit in the dataset.
Reallocate promotional budget toward Technology and Office Supplies, which convert discounts and marketing spend into profit far more reliably.
Investigate regional differences further — Central region trails West and East in profit relative to sales, and may warrant a separate pricing or logistics review.

These changes target the biggest, most concrete source of margin loss in the data (discount-driven losses and Furniture's poor economics) without requiring a change in overall sales strategy.

Next Steps:
A/B test reduced discount thresholds on Tables and Bookcases
Build a discount-approval rule that flags any discount pushing a line item's expected margin below a set threshold
Re-run this analysis quarterly to track whether the discount and Furniture margin issues are improving
