-- Baseline index provided in the assignment
CREATE INDEX IF NOT EXISTS idx_plays_played_at
ON plays (played_at);

-- Final covering index for Reports A and C
CREATE INDEX IF NOT EXISTS idx_plays_user_played_at_covering
ON plays (user_id, played_at)
INCLUDE (track_id);

-- Covering index for Report B
CREATE INDEX IF NOT EXISTS idx_plays_date_covering
ON plays (played_at)
INCLUDE (user_id, play_duration_seconds);

-- Remove the overlapping index from Report A
DROP INDEX IF EXISTS idx_plays_user_played_at;

-- Update table statistics
ANALYZE plays;