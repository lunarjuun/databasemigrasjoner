CREATE TABLE (
    id SERIAL,
    title VARCHAR(255) NOT NULL,
    description TEXT,
    status VARCHAR(20) NOT NULL,
    assignee_id INTEGER,
    created_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),
    completed at TIMESTAMPTZ,

    FOREIGN KEY (assignee_id)
    REFERENCES users(id)
    ON DELETE SET NULL
)