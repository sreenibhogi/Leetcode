import pandas as pd

Problem #1 Big Countries
=======================
"A country is big if:
it has an area of at least three million (i.e., 3000000 km2), or
it has a population of at least twenty-five million (i.e., 25000000).
Write a solution to find the name, population, and area of the big countries."

"data = [['Afghanistan', 'Asia', 652230, 25500100, 20343000000], ['Albania', 'Europe', 28748, 2831741, 12960000000], ['Algeria', 'Africa', 2381741, 37100000, 188681000000], ['Andorra', 'Europe', 468, 78115, 3712000000], ['Angola', 'Africa', 1246700, 20609294, 100990000000]]
world = pd.DataFrame(data, columns=['name', 'continent', 'area', 'population', 'gdp']).astype({'name':'object', 'continent':'object', 'area':'Int64', 'population':'Int64', 'gdp':'Int64'})"

def big_countries(world: pd.DataFrame) -> pd.DataFrame:
    big_countries_df = world[(world['area'] >= 3000000) | (world['population'] >= 25000000)]
    result_df = big_countries_df[['name', 'population', 'area']]

Problem #2 : Recyclable and Low Fat Products
=============================================
"data = [[1, 3, 5, '2019-08-01'], [1, 3, 6, '2019-08-02'], [2, 7, 7, '2019-08-01'], [2, 7, 6, '2019-08-02'], [4, 7, 1, '2019-07-22'], [3, 4, 4, '2019-07-21'], [3, 4, 4, '2019-07-21']]
views = pd.DataFrame(data, columns=['article_id', 'author_id', 'viewer_id', 'view_date']).astype({'article_id':'Int64', 'author_id':'Int64', 'viewer_id':'Int64', 'view_date':'datetime64[ns]'})"

"Write a solution to find the ids of products that are both low fat and recyclable."

def find_products(products: pd.DataFrame) -> pd.DataFrame:
    #filtering the data
   result_df = (products['low_fats'] == 'Y') & (products['recyclable'] == 'Y')
   df = products.loc[result_df,['product_id']]
   return df
    
Problem #3: Customers Who Never Order
======================================
data = [[1, 'Joe'], [2, 'Henry'], [3, 'Sam'], [4, 'Max']]
customers = pd.DataFrame(data, columns=['id', 'name']).astype({'id':'Int64', 'name':'object'})
data = [[1, 3], [2, 1]]
orders = pd.DataFrame(data, columns=['id', 'customerId']).astype({'id':'Int64', 'customerId':'Int64'})

### Solution 1:::: using NOT isin method
-----------------------------------------
def find_customers(customers: pd.DataFrame, orders: pd.DataFrame) -> pd.DataFrame:
       df= customers[~customers['id'].isin(orders['customerId'])]
       return df[['name']].rename(columns = {'name':'Customers'})
Notes:
We write NotIn using ~tablename['columnname'].isin
We will use the rename method to rename the columns

#### Solution 2 :::: using MERGE(Join in Pandas)
--------------------------------------------------
def find_customers(customers: pd.DataFrame, orders: pd.DataFrame) -> pd.DataFrame:
       merged_df =customers.merge(orders,how='left', left_on = 'id', right_on = 'customerId')
       mask = merged_df['customerId'].isna()
       result_df = merged_df[mask]
       return result_df[['name']].rename(columns = {'name':'Customers'})
Notes:
"The .isna() method checks whether the objects of a Dataframe or a Series contain missing or null values (NA, NaN) and returns a new object with the same shape as the original but with boolean values True or False as the elements. 
True indicates the presence of null or missing values and False indicates otherwise. "

Problem 4: Article Views I
==========================
data = [[1, 3, 5, '2019-08-01'], [1, 3, 6, '2019-08-02'], [2, 7, 7, '2019-08-01'], [2, 7, 6, '2019-08-02'], [4, 7, 1, '2019-07-22'], [3, 4, 4, '2019-07-21'], [3, 4, 4, '2019-07-21']]
views = pd.DataFrame(data, columns=['article_id', 'author_id', 'viewer_id', 'view_date']).astype({'article_id':'Int64', 'author_id':'Int64', 'viewer_id':'Int64', 'view_date':'datetime64[ns]'})

Write a solution to find all the authors that viewed at least one of their own articles.
Return the result table sorted by id in ascending order.

def article_views(views: pd.DataFrame) -> pd.DataFrame:
    df = views[(views['author_id'] == views['viewer_id'])]
    df = df[['author_id']].rename(columns = {'author_id':'id'})
    df = df.drop_duplicates()
    df = df.sort_values(by=['id'], ascending = True)
    return df

Note:
Drop Duplicates: Return DataFrame with duplicate rows removed.
Syntax: DataFrame.drop_duplicates(subset=None, *, keep='first', inplace=False, ignore_index=False)
Sort By Values: Sort by the values along either axis.
Syntax:DataFrame.sort_values(by, *, axis=0, ascending=True, inplace=False, kind='quicksort', na_position='last', ignore_index=False, key=None)"

Problem 5: Invalid Tweets:
========================
data = [[1, 'Vote for Biden'], [2, 'Let us make America great again!']]
tweets = pd.DataFrame(data, columns=['tweet_id', 'content']).astype({'tweet_id':'Int64', 'content':'object'})

Write a solution to find the IDs of the invalid tweets. The tweet is invalid if the number of characters used in the content of the tweet is strictly greater than 15.
Return the result table in any order.

def invalid_tweets(tweets: pd.DataFrame) -> pd.DataFrame:
    mask = tweets[tweets['content'].str.len()>15]
    return mask[['tweet_id']]

Note: We use the str.len method to check the length of the String"

Problem #6 : Calculate Special Bonus
==================================
data = [[2, 'Meir', 3000], [3, 'Michael', 3800], [7, 'Addilyn', 7400], [8, 'Juan', 6100], [9, 'Kannon', 7700]]
employees = pd.DataFrame(data, columns=['employee_id', 'name', 'salary']).astype({'employee_id':'int64', 'name':'object', 'salary':'int64'})

Write a solution to calculate the bonus of each employee. The bonus of an employee is 100% of their salary if the ID of the employee is an odd number and the employee's name does not start with the character 'M'. The bonus of an employee is 0 otherwise.
Return the result table ordered by employee_id.

def calculate_special_bonus(employees: pd.DataFrame) -> pd.DataFrame:
    employees['bonus'] = employees.apply(lambda row: row['salary'] if int(row['employee_id']) % 2 != 0 and not row['name'].startswith('M') else 0, axis=1)
    result = employees[['employee_id','bonus']]
    result.sort_values(by = 'employee_id', inplace = True)
    return result

Notes:
Lambda
Syntax: lambda arguments : expression
This function can have any number of arguments but only one expression, which is evaluated and returned.
One is free to use lambda functions wherever function objects are required.
lambda functions are syntactically restricted to a single expression.
pandas.DataFrame.apply
Apply a function along an axis of the DataFrame. Function to apply to each column or row.
Syntax: DataFrame.apply(func, axis=0, raw=False, result_type=None, args=(), by_row='compat', **kwargs)"




