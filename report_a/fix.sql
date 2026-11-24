-- Create a composite index to improve Report A performance
CREATE INDEX idx_plays_user_played_at
ON plays (user_id, played_at);

-- Update table statistics
ANALYZE plays;