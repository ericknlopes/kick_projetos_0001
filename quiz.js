// Função para enviar o quiz e verificar as respostas
function submitQuiz() {
    const answers = getAnswers();
    const correctAnswers = ['Brasília', 'Pacífico', 'Leonardo da Vinci'];
    const score = calculateScore(answers, correctAnswers);
    displayResult(score);
}

// Função para obter as respostas selecionadas pelo usuário
function getAnswers() {
    const form = document.getElementById('quizForm');
    const answers = [];
    for (let i = 1; i <= 3; i++) {
        const question = form['question' + i];
        for (const option of question) {
            if (option.checked) {
                answers.push(option.value);
            }
        }
    }
    return answers;
}

// Função para calcular a pontuação com base nas respostas do usuário e nas respostas corretas
function calculateScore(answers, correctAnswers) {
    let score = 0;
    for (let i = 0; i < correctAnswers.length; i++) {
        if (answers[i] === correctAnswers[i]) {
            score++;
        }
    }
    return score;
}

// Função para exibir o resultado do quiz
function displayResult(score) {
    const resultElement = document.getElementById('result');
    resultElement.textContent = `Você acertou ${score} de 3 perguntas.`;
}
