CREATE TABLE database_throughput (
    datetime BIGINT NOT NULL,
    db_insert_queue_count integer,
    current_index integer,
    next_index integer,
    buffer_usage real
);

-- ハイパーテーブル作成
SELECT create_hypertable('database_throughput', by_range('datetime'));

-- 時刻列でのインデックス追加
CREATE INDEX ix_datetime ON database_throughput (datetime DESC);