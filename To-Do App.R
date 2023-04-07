
# the to-do- app is not persistent
# the tasks will be lost when exiting

# Define the functions for the To-do app

add_task <- function(task_list, task) {
    task_list <- append(task_list, task)
    return(task_list)
}

remove_task <- function(task_list, task_index) {
    if (task_index > 0 & task_index <= length(task_list)) {
        task_list <- task_list[-task_index]
    } else {
        cat("Invalid task index\n")
    }
    return(task_list)
}

view_tasks <- function(task_list) {
    if (length(task_list) == 0) {
        cat("No tasks in the list\n")
    } else {
        cat("To-do List:\n")
        for (i in 1:length(task_list)) {
            cat(paste0(i, ". ", task_list[i], "\n"))
        }
    }
}

# Initialize the task list
task_list <- c()

# Main loop for the To-do app
repeat {
    cat("\nChoose an option:\n1. Add task\n2. Remove task\n3. View tasks\n4. Exit\nEnter your choice (1-4): ")
    choice <- as.integer(readline())

    switch(choice,
           task_list <- add_task(task_list, readline(prompt = "Enter the task: ")),
           task_list <- remove_task(task_list, as.integer(readline(prompt = "Enter the task index to remove: "))),
           view_tasks(task_list),
           if (choice == 4) break
    )
}
