//Danielle

let gameOver = false;
let computerChoices = ["rock", "paper", "scissors"];

function randomFrom(array) {
  return array[(Math.floor(Math.random()*3)) ];
}


function checkInput(input, computerChoices) {
  if (input === "quit") {
    return true;
  }
  
  let computerChoice = randomFrom(computerChoices);

  if (computerChoice === "rock" && input === "scissors"){

    alert("Computer wins!");
    
  } else if (computerChoice === "scissors" && input === "paper"){

    alert("Computer wins!");

  } else if (computerChoice === "paper" && input === "rock"){

    alert("Computer wins!");

  } else if (computerChoice === input) {

    alert("Tie game!");

  } else {

    alert("You win!");

  }
  
  return false;
}

function start(gameOver, computerChoices) {
  while (!gameOver){

    let playerInput = prompt("Hi! Enter rock/paper/scissors to play, or quit to stop playing.");

    playerInput = playerInput.toLowerCase();


    gameOver = checkInput(playerInput, computerChoices);
  } 
}



start(gameOver, computerChoices); 



//Maya

function playGame() {
  //set up game pieces and ranks:
  let pieces = ['rock', 'paper', 'scissors'];
  
  let losesTo = {  //set up, so the object's key-string 'losesTo' its value-string.  
    'rock': 'scissors',
    'scissors': 'paper',
    'paper' : 'rock'
  };
  
  //functions for players (computer and user) to make choice:
  function makeComputerChoice() {
    return pieces[Math.floor(Math.random() * pieces.length)];
  }
  
  function makeUserChoice() {
    return prompt(`type a piece: ${pieces.join(' ')} to play OR type 'quit' to end game`);
  }
  
  //function to play one round:
  function playRound() {
    let computerChoice = makeComputerChoice();
    let userChoice = makeUserChoice();
    if(userChoice === null) {
      console.log('quit');
    }
    
    let quit = userChoice.toLowerCase() === 'quit' ? true: false;
    if(quit) {
      gameOver = true;
      return null;
    }
    
    while(!pieces.includes(userChoice)) {
      userChoice = prompt(`please try again.  Type: ${pieces.join(' ')} or 'quit'`);
    }
    
    let tie = computerChoice === userChoice;
    if(tie) {
      alert(`computer: ${computerChoice}. User: ${userChoice}.`);
      return 'ties';
    }
    let winner = losesTo.computerChoice === userChoice ? 'computer': 'user';
    alert(`computer: ${computerChoice}. User: ${userChoice}.`);
    return winner;
  }
  
  let gameOver = false;
  
  let score = {
    computer: 0,
    user: 0,
    ties: 0
  };
  
  while (!gameOver) {
    let roundWinner = playRound();
    if(roundWinner) {
      score[roundWinner]++;
    }
  }
  
  let winner = `It's a tie!`;
  let highScore = score.ties;
  for(let player in score) {
    if(score[player] > highScore) {
      winner = player;
    }
  }
  console.log('score: ', score);
  console.log(`the winner is: ${winner}!`);
  
}

playGame();
















