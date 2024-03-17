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

Problem #7 : Fix Names in a Table:
==================================
data = [[1, 'aLice'], [2, 'bOB']]
users = pd.DataFrame(data, columns=['user_id', 'name']).astype({'user_id':'Int64', 'name':'object'})
"Write a solution to fix the names so that only the first character is uppercase and the rest are lowercase."
def fix_names(users: pd.DataFrame) -> pd.DataFrame:
    users['name'] = users['name'].str.capitalize()
    #users['name'] = users['name'].str.title()
  # Sort the result table by user_id in ascending order
    result_df = users.sort_values(by='user_id', ascending=True)
    return result_df

Problem #8 :Find Users With Valid E-Mails
========================================
data = [[1, 'Winston', 'winston@leetcode.com'], [2, 'Jonathan', 'jonathanisgreat'], [3, 'Annabelle', 'bella-@leetcode.com'], [4, 'Sally', 'sally.come@leetcode.com'], [5, 'Marwan', 'quarz#2020@leetcode.com'], [6, 'David', 'david69@gmail.com'], [7, 'Shapiro', '.shapo@leetcode.com']]
users = pd.DataFrame(data, columns=['user_id', 'name', 'mail']).astype({'user_id':'int64', 'name':'object', 'mail':'object'})

Input: 
Users table:
+---------+-----------+-------------------------+
| user_id | name      | mail                    |
+---------+-----------+-------------------------+
| 1       | Winston   | winston@leetcode.com    |
| 2       | Jonathan  | jonathanisgreat         |
| 3       | Annabelle | bella-@leetcode.com     |
| 4       | Sally     | sally.come@leetcode.com |
| 5       | Marwan    | quarz#2020@leetcode.com |
| 6       | David     | david69@gmail.com       |
| 7       | Shapiro   | .shapo@leetcode.com     |
+---------+-----------+-------------------------+
Output: 
+---------+-----------+-------------------------+
| user_id | name      | mail                    |
+---------+-----------+-------------------------+
| 1       | Winston   | winston@leetcode.com    |
| 3       | Annabelle | bella-@leetcode.com     |
| 4       | Sally     | sally.come@leetcode.com |
+---------+-----------+-------------------------+
Explanation: 
The mail of user 2 does not have a domain.
The mail of user 5 has the # sign which is not allowed.
The mail of user 6 does not have the leetcode domain.
The mail of user 7 starts with a period.

Write a solution to find the users who have valid emails.

"A valid e-mail has a prefix name and a domain where:
The prefix name is a string that may contain letters (upper or lower case), digits, underscore '_', period '.', and/or dash '-'. The prefix name must start with a letter.
The domain is '@leetcode.com'.
Return the result table in any order."

def valid_emails(users: pd.DataFrame) -> pd.DataFrame:
   regex_pattern = "[A-Za-z][A-Za-z0-9_\.\-]*@leetcode(\?com)?\.com"
   users = (users[users.mail.str.match(regex_pattern)])
   return users

Problem #9: Patients With a Condition
==================================
data = [[1, 'Daniel', 'YFEV COUGH'], [2, 'Alice', ''], [3, 'Bob', 'DIAB100 MYOP'], [4, 'George', 'ACNE DIAB100'], [5, 'Alain', 'DIAB201']]
patients = pd.DataFrame(data, columns=['patient_id', 'patient_name', 'conditions']).astype({'patient_id':'int64', 'patient_name':'object', 'conditions':'object'})

"Write a solution to find the patient_id, patient_name, and conditions of the patients who have Type I Diabetes.
Type I Diabetes always starts with DIAB1 prefix.
Return the result table in any order."

def find_patients(patients: pd.DataFrame) -> pd.DataFrame:
       patients = patients[patients['conditions'].str.contains(r'(^DIAB1)|( DIAB1)')]
       return patients

Problem #10: Count Occurrences in Text
=====================================
data = [['draft1.txt', 'The stock exchange predicts a bull market which would make many investors happy.'], ['draft2.txt', 'The stock exchange predicts a bull market which would make many investors happy, but analysts warn of possibility of too much optimism and that in fact we are awaiting a bear market.'], ['final.txt', 'The stock exchange predicts a bull market which would make many investors happy, but analysts warn of possibility of too much optimism and that in fact we are awaiting a bear market. As always predicting the future market is an uncertain game and all investors should follow their instincts and best practices.']]
files = pd.DataFrame(data, columns=['file_name', 'content']).astype({'file_name':'object', 'content':'object'})

"Write a solution to find the number of files that have at least one occurrence of the words 'bull' and 'bear' as a standalone word, 
respectively, disregarding any instances where it appears without space on either side 
(e.g. 'bullet', 'bears', 'bull.', or 'bear' at the beginning or end of a sentence will not be considered) 
Return the word 'bull' and 'bear' along with the corresponding number of occurrences in any order."

def count_occurrences(files: pd.DataFrame) -> pd.DataFrame:
    files['bull'] = files.content.str.contains(r"\sbull\s") 
    files['bear'] = files.content.str.contains(r"\sbear\s")
    return pd.DataFrame({'word':['bull', 'bear'], 'count':[files['bull'].sum(), files['bear'].sum()]})

Problem #11 : Nth Highest Salary:
=================================
data = [[1, 100], [2, 200], [3, 300]]
employee = pd.DataFrame(data, columns=['Id', 'Salary']).astype({'Id':'Int64', 'Salary':'Int64'})
"Write a solution to find the nth highest salary from the Employee table. If there is no nth highest salary, return null."

1st method:
---------
def nth_highest_salary(employee: pd.DataFrame, N: int) -> pd.DataFrame:
    df=pd.DataFrame()
    ee=employee.sort_values(by='salary',ascending=False)
    ss=ee['salary'].unique()
    df[f'getNthHighestSalary({N})']= ([ss[N-1]] if N<=len(ss) and N>0 else [None] )
    return  df
2nd Method of writing IF statement:
----------------------------------
def nth_highest_salary(employee: pd.DataFrame, N: int) -> pd.DataFrame:
    ee = employee.sort_values(by='salary', ascending=False)
    ss = ee['salary'].unique()
    df=pd.DataFrame()
    if N<=len(ss) and N>0:
        df[f'getNthHighestSalary({N})']= ([ss[N-1]])
    else:
        df[f'getNthHighestSalary({N})']= [None]
   # df[f'getNthHighestSalary({N})']= ([ss[N-1]] if N<=len(ss) and N>0 else [None] )
    return df

Problem #12 : 2nd Highest Salary:
=================================
data = [[1, 100], [2, 200], [3, 300]]
employee = pd.DataFrame(data, columns=['Id', 'Salary']).astype({'Id':'Int64', 'Salary':'Int64'})
"Write a solution to find the nth highest salary from the Employee table. If there is no nth highest salary, return null."

def second_highest_salary(employee: pd.DataFrame) -> pd.DataFrame:
    ee = employee.sort_values(by='salary', ascending=False)
    ss = ee['salary'].unique()
    df=pd.DataFrame()
    df[f'SecondHighestSalary']= ([ss[2-1]] if 2<=len(ss) else [None] )
    return df

Problem # 13 Department highest Salary:
=====================================
data = [[1, 'Joe', 70000, 1], [2, 'Jim', 90000, 1], [3, 'Henry', 80000, 2], [4, 'Sam', 60000, 2], [5, 'Max', 90000, 1]]
employee = pd.DataFrame(data, columns=['id', 'name', 'salary', 'departmentId']).astype({'id':'Int64', 'name':'object', 'salary':'Int64', 'departmentId':'Int64'})
data = [[1, 'IT'], [2, 'Sales']]
department = pd.DataFrame(data, columns=['id', 'name']).astype({'id':'Int64', 'name':'object'})

def department_highest_salary(employee: pd.DataFrame, department: pd.DataFrame) -> pd.DataFrame:
    department=department.rename(columns={'id':'departmentId'})
    df=pd.merge(employee,department,how='outer', on='departmentId') # Join the two tables using left outer
    df=df[['name_y','name_x','salary']] # select the required columns for output
    df=df.rename(columns={'name_y':'Department','name_x':'Employee','salary':'Salary'}) # rename the columns
    # Use group by to group data by 'department' and apply a lambda function to get employees with highest salary in each group
    df=df.groupby('Department').apply(lambda x: x[x.Salary==x.Salary.max()])
    return df


    


