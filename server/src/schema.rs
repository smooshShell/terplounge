diesel::table! {
    users(id) {
        id -> Int4,
    }
}

diesel::table! {
    sessions(id) {
        id -> Int4,
        user -> Int4,
        language -> String,
        uuid -> diesel::pg::sql_types::Uuid,
        resource -> Option<String>,
        sample_rate -> Int4,
        silence_length -> Int4,
        sequence_number -> Int4,
        updated_at -> Timestamp,
        created_at -> Timestamp,
        transcripts -> Jsonb,
        model -> Int4,
    }
}

diesel::table! {
    models(id) {
        id -> Int4,
        model_name -> Text,
    }
}

diesel::joinable!(users -> sessions(user));
diesel::joinable!(models -> sessions(model));
