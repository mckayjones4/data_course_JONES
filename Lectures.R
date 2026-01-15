list.files('Data/', pattern='t$', recursive = T) #654
 
list_of_files_start_with_b <- list.files('Data/', recursive = T)

dat <- read.csv('Data/1620_scores.csv')

list.files("Data/", pattern='.csv', recursive=T) #145

dat[1:2]

readLines('Data/6napoleans.txt')


#know while loops in R
while (condition)


fruit = c('strawberry', 'mango', 'peach')

for (i in fruit) {
  print(paste('i like', i))
  #print(i)
}

for (i in 1:100) { 
  print(i)
  print(i+1)
  print('\n')
}

#4. lists all the .csv files in the Data directory
csv_files <- list.files('Data/', pattern='.csv', recursive = T)

#5. Find how many files fit that description (145)
length(csv_files)

#6. Store the wingspan_vs_mass.csv file in a 'df' object
df <- read.csv('Data/wingspan_vs_mass.csv')

#7. Inspect the first 5 lines
head(df, 5)

base_directory <- "C:/Users/jones/OneDrive/Desktop/Data_Course_JONES/Data"

#8. Find files that begin with the letter 'b'
begin_with_b <- list.files('Data/', pattern="^b", recursive = T)

#9. List the first line of every file that begins with b
for (file in begin_with_b) {
  full_path <- file.path(base_directory, file)
  con <- file(full_path, "r")
  
  print(readLines(con, n=1))
  close(con)
}

#10. Print the first line of every .csv file
for (file in csv_files) {
  full_path <- file.path(base_directory, file)
  con <- file(full_path, "r")
  
  print(readLines(con, n=1))
  close(con)
}
