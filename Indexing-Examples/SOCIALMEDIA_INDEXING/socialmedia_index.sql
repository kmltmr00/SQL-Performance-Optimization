CREATE NONCLUSTERED INDEX IX_socialmedia1_seek_all
ON socialmedia1 (platform, post_day, likes)
INCLUDE (post_id, post_type, post_time, comments, shares, sentiment_score);


SET STATISTICS IO ON;
SET STATISTICS TIME ON;

SELECT *
FROM socialmedia1
WHERE platform = 'facebook'
  AND post_day = 'Thursday'
  AND likes > 1000
ORDER BY post_time DESC;
--------------------------------------------------------------
SELECT post_id, platform, post_type, likes, comments, post_time
FROM socialmedia1
WHERE sentiment_score = 'positive'
  AND shares > 50
  AND post_day = 'Monday'
ORDER BY post_time DESC;

CREATE NONCLUSTERED INDEX ýx_socialmedia1_sentiment_score_shares_postday ON socialmedia1(sentiment_score,shares,post_day)
INCLUDE (post_id,platform,post_type,likes,comments,post_time)
-------------------------------------------------------------------------------------
SELECT post_id, platform, post_type, likes, comments, post_time
FROM socialmedia1
WHERE sentiment_score = 'positive'
  AND shares > 50
  AND post_day = 'Monday'
ORDER BY post_time DESC;


CREATE NONCLUSTERED INDEX IX_socialmedia2_seek_desc
ON socialmedia1 (sentiment_score, post_day, shares, post_time DESC)
INCLUDE (post_id, platform, post_type, likes, comments);
---------------------------------------------------------------------------------------------
