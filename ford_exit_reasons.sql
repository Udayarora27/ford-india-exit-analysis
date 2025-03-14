-- Strategic missteps / exit causes
CREATE TABLE ford_exit_reasons (
    year INT,
    reason VARCHAR(50),
    explanation VARCHAR(50)
);
Drop table ford_exit_reasons;
CREATE TABLE ford_exit_reasons (
    year INT,
    reason_category VARCHAR(50),  -- e.g., Economic, Regulatory, Strategic, Market
    description TEXT,
    impact_rating INT,  -- scale from 1 (low) to 5 (high)
    is_estimated BOOLEAN DEFAULT TRUE,
    source VARCHAR(255)
);
INSERT INTO ford_exit_reasons (year, reason_category, description, impact_rating, is_estimated, source) VALUES
(2021, 'Market', 'Low and declining market share compared to competitors like Maruti and Hyundai.', 5, FALSE, 'Economic Times'),
(2021, 'Economic', 'High operating costs due to underutilized manufacturing capacity.', 4, TRUE, 'Estimated from industry reports'),
(2021, 'Strategic', 'Shift in global strategy to focus on electric vehicles and profitable markets.', 4, FALSE, 'Ford Global Press Release'),
(2021, 'Regulatory', 'Frequent tax changes, including GST rollout challenges.', 3, TRUE, 'Estimated from government data'),
(2021, 'Consumer Behavior', 'Preference for affordable and fuel-efficient cars, Ford’s portfolio mismatched.', 4, TRUE, 'AutoCar India');

-- 1950s exit
INSERT INTO ford_exit_reasons (year, reason_category, description, impact_rating, is_estimated, source) VALUES
(1953, 'Political', 'License Raj and political pressure forced exit during early post-independence era.', 5, TRUE, 'Historical reports');
SELECT * FROM ford_exit_reasons;