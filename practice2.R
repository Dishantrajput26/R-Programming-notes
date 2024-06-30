num_entries <- as.integer(readline(prompt = "Enter the number of entries for the course dataframe: "))

course_sno <- vector(mode = "integer", length = num_entries)
course_id <- vector(mode = "character", length = num_entries)
course_name <- vector(mode = "character", length = num_entries)
course_dept <- vector(mode = "character", length = num_entries)
course_fee <- vector(mode = "numeric", length = num_entries)

for (i in 1:num_entries) {
  cat("\nEntry", i, ":\n")
  course_sno[i] <- as.integer(readline(prompt = "Enter course_sno: "))
  course_id[i] <- readline(prompt = "Enter course_id: ")
  course_name[i] <- readline(prompt = "Enter course_name: ")
  course_dept[i] <- readline(prompt = "Enter course_dept: ")
  course_fee[i] <- as.numeric(readline(prompt = "Enter course_fee: "))
}

course <- data.frame(course_sno, course_id, course_name, course_dept, course_fee)

print("Content of the 'course' dataframe:")
print(course)