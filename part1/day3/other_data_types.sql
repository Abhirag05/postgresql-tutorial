CREATE TABLE first_schema.app_events(

    --UUID is univerally unique id (best for security)
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),

    event_name TEXT NOT NULL,

    --JSONB for storing the json values
    metadata JSONB DEFAULT '{}'::jsonb,

    created_at TIMESTAMP DEFAULT NOW()


);

--querying the json data
--SELECT event_name ,metadata --> 'browser' AS browser FROM first_schema.app_events WHERE metadata ? 'browser';