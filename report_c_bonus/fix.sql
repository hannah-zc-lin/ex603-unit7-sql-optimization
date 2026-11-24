-- Replace the Report A index with a covering index
CREATE INDEX idx_plays_user_played_at_covering
ON plays (user_id, played_at)
INCLUDE (track_id);
DROP INDEX idx_plays_user_played_at;
ANALYZE plays;