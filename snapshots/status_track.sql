{% snapshot status_track %}
    {{
        config(
            target_schema='dev_Schema',
            target_database='dev_Db',
            unique_key='tid',
            strategy='check',
            check_cols=['status']
        )
    }}

    select * from {{ source('s1', 't_tickets') }}
 {% endsnapshot %}