-- Insert Platforms Data
INSERT INTO platforms (platform_name, platform_description, category_name, subcategory_name) VALUES
('YouTube', 'A video-sharing platform where users can upload, share, and view videos.', 'Creative Arts and Entertainment', 'Film and Television'),
('Instagram', 'A social media platform for sharing photos and videos, known for its visual focus.', 'Creative Arts and Entertainment', 'Visual Arts'),
('TikTok', 'A social media app for creating and sharing short videos, popular for its entertainment content.', 'Creative Arts and Entertainment', 'Entertainment'),
('Medium', 'An online publishing platform for writers and readers to share articles and stories.', 'Human Society and Culture', 'Social Media and Communication'),
('GitHub', 'A platform for version control and collaboration, mainly for software development projects.', 'Technology and Innovation', 'Software Development'),
('Microsoft (Live or MSN)', 'A web-based service for email and online collaboration tools.', 'Technology and Innovation', 'Software Development'),
('Twitter (x.com)', 'A social media platform for real-time communication and updates.', 'Human Society and Culture', 'Social Media and Communication'),
('Spotify', 'A music streaming service that offers a wide range of music and podcasts.', 'Creative Arts and Entertainment', 'Music'),
('Reddit', 'A social news aggregation and discussion website, known for its community-driven content.', 'Human Society and Culture', 'Sociology'),
('Notion', 'An all-in-one workspace for note-taking, project management, and collaboration.', 'Technology and Innovation', 'Software Development'),
('Slack', 'A communication platform for teams, facilitating collaboration and messaging.', 'Technology and Innovation', 'Communication'),
('Substack', 'A platform for publishing newsletters directly to subscribers.', 'Data and Information Systems', 'Data Privacy'),
('Quora', 'A question-and-answer platform where users can ask questions and receive answers from the community.', 'Human Society and Culture', 'Communication'),
('Facebook', 'A social media platform for connecting with friends, family, and communities.', 'Human Society and Culture', 'Social Media and Communication'),
('Google Trends', 'A tool that shows the popularity of search queries in Google across various regions.', 'Data and Information Systems', 'Data Science'),
('Google News', 'An aggregator of news articles from various sources, providing updates on current events.', 'Human Society and Culture', 'Politics and Governance');

INSERT INTO services (platform_name, service_name, service_description, service_url) VALUES
('Google', 'Google News', 'An aggregator of news articles from various sources.', 'https://news.google.com'),
('Google', 'Google Trends', 'A tool that shows the popularity of search queries in Google.', 'https://trends.google.com');
