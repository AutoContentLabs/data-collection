CREATE TABLE tasks (
    task_id INT AUTO_INCREMENT PRIMARY KEY, -- Unique identifier for each task. Automatically increments with each new entry.
    source_id INT NOT NULL, -- ID of the source associated with the task. References the resource_id in the resources table, determining which data source to retrieve data from.
   
    task_type ENUM('update', 'check') NOT NULL, -- Specifies the type of task. 'update' represents a data update operation; 'check' represents a data validation check operation.
    task_scheduled_time TIMESTAMP NOT NULL, -- The timestamp indicating when the task is scheduled to be executed. Critical for task scheduling management.
    task_status ENUM('pending', 'completed', 'failed') DEFAULT 'pending', -- Indicates the current status of the task. 'pending' means the task has not yet been executed; 'completed' means the task has been successfully completed; 'failed' means an error occurred during task execution.
   
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP -- The timestamp indicating when the task was created. Defaults to the current timestamp at the time of record creation.
);
