CREATE TABLE IF NOT EXISTS QUESTION (
    id BIGINT PRIMARY KEY AUTO_INCREMENT,  -- Use BIGINT to match Java Long
    question VARCHAR(255),
    optionA VARCHAR(255),
    optionB VARCHAR(255),
    optionC VARCHAR(255),
    optionD VARCHAR(255),
    correctAnswer CHAR(1)
);

INSERT INTO QUESTION (question, optionA, optionB, optionC, optionD, correctAnswer) 
VALUES 
('What is the captial of india?', 'odisha', 'madhyapradesh', 'new delhi', 'telengana', 'c'),
('What is 2 + 2?', '3', '4', '5', '6', 'B'),
('Who wrote Godan nobel?', 'Munshi Premchand', 'William Shakespeare', 'Mahatma Gandhi', 'Lal Bhadur Sastri', 'B');
