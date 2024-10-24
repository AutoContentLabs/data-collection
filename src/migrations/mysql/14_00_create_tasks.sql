CREATE TABLE tasks (
    task_id INT AUTO_INCREMENT PRIMARY KEY, -- Unique identifier for each task
    source_id INT NOT NULL,                  -- ID of the source associated with the task (references resources table)
    task_type ENUM('update', 'check') NOT NULL, -- Type of task ('update' for data updates, 'check' for validation)
    task_scheduled_time TIMESTAMP NOT NULL,  -- When the task is scheduled to be executed
    task_status ENUM('pending', 'completed', 'failed') DEFAULT 'pending', -- Current status of the task
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP -- When the task was created
);
