#importing essential libraries
import pandas as pd
import sqlalchemy


#connecting to database and creating the engine , *Mysql
try:
    engine = sqlalchemy.create_engine('mysql+pymysql://root:root@localhost:3306/hospital')

except Exception as e:
    print("Error while connecting to mysql ",e)



# Creating a Data frame from the given file and preparing staging_table  from it
try:
    df = pd.read_csv("sample_data_file.txt",sep="|",header=0).drop(columns=['Unnamed: 0','H'])
    df.to_sql("staging_table", con=engine, if_exists = 'replace' ,index=False)
except Exception as e:
    print("Error while creating staging_table :", e)

#Getting Every single country from the give data
country_list = df.country.unique()



#Function to Create country based tables from segragate country based dataframes
try:
    def dataFrameToSql(dataframe,country):
        table = "table_"+str(country).lower()
        dataframe.to_sql(
        name = table,
        con = engine,
        index = False,
        if_exists = 'replace'
        )
except Exception as e:
    print("Error while Creating country based tables from segragate country based dataframes :", e)



#Looping through Every single Country from the given , Creating their individual dataframes
#calling dataFrameToSql() to Create country based tables
for country in country_list:
    df_country = df.loc[df['country'] == country]
    dataFrameToSql(df_country,country)
