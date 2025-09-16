# Quiz Application - Spring Boot

## Overview

This project is a simple **Quiz Application** built using **Spring Boot**. The application allows users to take a quiz by answering multiple-choice questions. The results are tracked, and users can see how many questions they answered correctly and view the history of their responses. This is a great example of using Spring Boot to build RESTful APIs with an in-memory H2 database.

### Features:
- Start a new quiz session.
- Retrieve random multiple-choice questions.
- Submit answers and track correctness.
- View results (total questions answered, correct answers, and question history).

## Technologies Used:
- **Spring Boot**: Framework for building the application.
- **Spring Data JPA**: Used for interaction with the database.
- **H2 Database**: In-memory database for storing quiz questions.
- **REST APIs**: Exposed to interact with the application via HTTP requests.

---

## API Endpoints

### 1. Start a New Quiz Session
**Endpoint**: `POST /api/quiz/start`  
**Description**: Resets the current session and starts a new quiz session.  
**Request**: No body required.  
**Response**:
```json
"New quiz session started!"
```

### 2. Get a Random Question
**Endpoint**: `GET /api/quiz/question`  
**Description**: Fetches a random multiple-choice question from the database.  
**Request**: No body required.  
**Response**:
```json
{
    "id": 1,
    "question": "What is the capital of France?",
    "optionA": "Paris",
    "optionB": "Berlin",
    "optionC": "Madrid",
    "optionD": "Rome",
    "correctAnswer": "A"
}
```

### 3. Submit an Answer
**Endpoint**: `POST /api/quiz/submit`  
**Description**: Submits an answer for a question and returns whether the answer is correct or not.  
**Request Parameters**:
- `questionId`: ID of the question being answered.
- `answer`: The user's selected answer (A, B, C, or D).  

**Example Request**:
```http
POST http://localhost:8080/api/quiz/submit?questionId=1&answer=A
```

**Response**:
- If the answer is correct:
```json
"Correct!"
```
- If the answer is incorrect:
```json
"Incorrect!"
```

### 4. Get Quiz Results
**Endpoint**: `GET /api/quiz/results`  
**Description**: Retrieves the current session's results, including total questions answered, correct answers, and the history of answered questions.  
**Request**: No body required.  
**Response**:
```json
{
    "totalQuestionsAnswered": 1,
    "correctAnswers": 1,
    "questionHistory": [
        "What is the capital of France? (Correct)"
    ]
}


---

## Database Setup (H2)

This application uses an **H2 in-memory database** to store quiz questions. Upon starting the application, the following questions are seeded into the database:

1. What is the capital of France?  
   Options: Paris, Berlin, Madrid, Rome  
   Correct Answer: A (Paris)

2. What is 2 + 2?  
   Options: 3, 4, 5, 6  
   Correct Answer: B (4)

3. Who wrote Hamlet?  
   Options: Charles Dickens, William Shakespeare, Mark Twain, Leo Tolstoy  
   Correct Answer: B (William Shakespeare)

The H2 database can be accessed via the following URL during development:  
**`http://localhost:8080/h2-console`**

---

## Setup and Running the Application

### Prerequisites
- **JDK 17** or higher
- **Maven** or **Gradle**
- **IDE** (IntelliJ IDEA, Eclipse, or any preferred editor)

### Steps to Run:
1. Clone the repository:
   ```bash
   git clone https://github.com/your-repository-url.git
   cd your-repository-folder
   ```

2. Build and run the application using Maven:
   ```bash
   ./mvnw spring-boot:run

3. The application will be available at `http://localhost:8080`.

---

## Assumptions and Limitations:
- The application is **session-based**: The session will reset if the application is restarted, and no user-specific data is stored.
- **No authentication**: This version of the quiz app doesn't require authentication.
- **In-memory H2 database**: All questions and results are stored temporarily in an in-memory database, which will be cleared upon application restart.
- **Question generation**: The questions are seeded into the database at startup and are fetched randomly during each session.
- **Answer Validation**: Answers are validated based on the question’s `correctAnswer` field, and results are shown immediately after submission.

---

## Directory Structure:
```text
src/
 └── main/
      ├── java/
      │    └── com/
      │         └── example/
      │             └── quizapp/
      │                 ├── controller/
      │                 ├── model/
      │                 ├── repository/
      │                 ├── service/
      └── resources/
           ├── application.properties
           ├── data.sql

## How to Contribute:
1. Fork this repository.
2. Create a new branch (`git checkout -b feature-name`).
3. Commit your changes (`git commit -am 'Add new feature'`).
4. Push to the branch (`git push origin feature-name`).
5. Create a new pull request.

---

## Contact
For questions or support, feel free to reach out to me at:  
Email : meena27072001@gmail.com 
#Quiz-app
