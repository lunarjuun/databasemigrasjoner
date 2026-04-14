CREATE TABLE tasks (
    id SERIAL,
    title VARCHAR(255) NOT NULL,
    description TEXT,
    status VARCHAR(20) NOT NULL,
    assignee_id INTEGER,
    created_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),
    completed_at TIMESTAMPTZ,

    FOREIGN KEY (assignee_id)
        REFERENCES users(id)
        ON DELETE SET NULL,

    CHECK (status IN (
        'BACKLOG',
        'READY',
        'IN_PROGRESS',
        'IN_REVIEW',
        'IN_TESTING'
        'COMPLETED'
    ))

    CREATE INDEX idx_tasks_assignee_id ON tasks(assignee_id);
    CREATE INDEX idx_tasks_status ON tasks(status);
);