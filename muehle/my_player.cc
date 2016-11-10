/*  Version 07 */
/*

In this version:
phase I : piece_put = the point with highest priority level 
phase II: use loop and index to make decision. (too many repetition in v4.)
remove:  search from A->X , select obvious threatening opponent piece to remove.

use external function to make main() more clear


version 6 + more smarts.
version 6- : have a fatal fault!! in phase 2/3, there is no remove.

*/
 
#include <stdio.h>
#include <stdlib.h>
#include <time.h>

/* every point on the board consist :
a state(represented by board[]) and 
a priority(indicates how good it is to be chosen) */
 
typedef struct {
	int lineIndex;
	int index1;
	int index2;
	int index3;
	char b1;
	char b2;
	char b3;
	int line_state;  // hash value from 3 points state.
}LINE;

typedef struct {
	int index;
	char point_state;  // <= board[i]
	int priority;
	LINE l1;
	LINE l2;
	int indexInL1;
	int indexInL2;

	int neighbors[4]; //  0:upper, 1:nether, 2:left, 3:right,

}POINT;

int lineStateValue(char c1, char c2, char c3, unsigned current_player){
 	int result =0 ;
	int i=0;
	char c[3] = {c1,c2,c3};
	for(i=0;i<3;i++){
		if(c[i] == (char)current_player +'0'){
			result += 4;
		}
		else if(c[i] == '.'){
			result += 0;
		}
		else{
			result += 1;
		}
	}

	return result;

}

// calculate how better a point is to be piece_put according to its line_state.
// so there must be an empty point.
int priorityToPut(int line_state){  // serve for phase1
	int result = 0;
	switch(line_state){
		case 0:		// empty | empty | empty
			result = 2;
			break;
		case 1:		// oppo | empty | empty
			result = 3;  // 2*case1 should be greater than all but shoule be less than case8 and case 2.
						// case1 should < case4.
			break;
		case 2:     // oppo | oppo | empty
			result = 9; //must be greater than 2*case4 !!! 
			break;
		case 4: 	// self | empty | empty
			result = 4; // 2*case4 shoud be greater than all but shoule be less than case8 and case2.
			break;
		case 5:     // self | oppo | empty
			result = 1;
			break;
		case 8:    // self | self | empty
			result = 10;  //must be greater than case2 
						// it can be less than case2+case3(can form next mill and block oppo's mill.)
						// it can be greater than case2+case3( form the current mill and remove an oppo's mill .)
			break;
		default:
			printf("Unknown state happens to a line!\n"); 
	}

	return result;
}

int priorityToMovej(int line_state){  //serve for phase2, need 1 step to get better
	int result = 0;
	switch(line_state){
		case 0:		// empty | empty | empty
			result = 3;
			break;
		case 1:		// oppo | empty | empty
			result = 2; 
			break;
		case 2:     // oppo | oppo | empty
			result = 11; //must be greater than 2*case4 !!! 
			break;
		case 4: 	// self | empty | empty
			result = 6; 
			break;
		case 5:     // self | oppo | empty
			result = 2;
			break;
		case 8:    // self | self | empty
			result = 15;
			break;
		default:
			printf("Unknown state happens to a line!\n"); 
	}

	return result;
}

int priorityToMovek(int line_state){  //serve for phase2, need 2 steps to get better
	int result = 0;
	switch(line_state){
		case 0:		// empty | empty | empty
			result = 1;
			break;
		case 1:		// oppo | empty | empty
			result = 1; 
			break;
		case 2:     // oppo | oppo | empty
			result = 5; //must be greater than 2*case4 !!! 
						// if this empty has an oppo neighbor, then result = 
			break;
		case 4: 	// self | empty | empty
			result = 3; 
			break;
		case 5:     // self | oppo | empty
			result = 1;
			break;
		case 8:    // self | self | empty
			result = 12;
			break;
		default:
			printf("Unknown state happens to a line!\n"); 
	}

	return result;
}

int priorityFlyTo(int line_state){   // serve for phase3
	int result = 0;
	switch(line_state){
		case 0:		// empty | empty | empty
			result = 2;
			break;
		case 1:		// oppo | empty | empty
			result = 1; 
			break;
		case 2:     // oppo | oppo | empty
			result = 3; //must be less than case8/2 !!! 
			break;
		case 4: 	// self | empty | empty
			result = 4; 
			break;
		case 5:     // self | oppo | empty
			result = 1;
			break;
		case 8:    // self | self | empty
			result = 9;
			break;
		default:
			printf("Unknown state happens to a line!\n"); 
	}

	return result;	
}
 

/* convert player number to board symbols */
static char num2sym(char input)
{
	switch (input) {
		case '0':
			return 'X';  // player 0
		case '1':
			return 'O'; // player 1
		case '.':
			return ' ';
		default:
			return input;
	}
}

void moveDecision_Phase1(char board[24], POINT point[24], int currentPP, char *piece_move, char *piece_put )
{

	int i=0;
	int randomNumber;


	*piece_move = ' ';
	

	// ONLY when the point is empty, its priority will be increased accordingly.
	for(i=0; i<24; i++){

		if(board[i] == '.'){
			point[i].priority += priorityToPut(point[i].l1.line_state);
			point[i].priority += priorityToPut(point[i].l2.line_state);
		}else{
			point[i].priority = 0;
		}
				
	}

	// when it's my turn, I randomly select one as initial decision
	// then I compare all 24 point to this selected one, once better, change.

	srand((unsigned int) time(NULL));
	randomNumber = rand()%24;
	*piece_put = 'A' + randomNumber;
	currentPP = point[randomNumber].priority;

	for(i=0; i < 24; i++){
		if(point[i].priority >= currentPP){
			*piece_put = 'A' + i;
			currentPP = point[i].priority;
		}
		point[i].priority = 0; //reset point's priority here.
	}
	
}
		

void moveDecision_Phase2(char board[24], unsigned current_player, POINT point[24], int currentPP, char *piece_move, char *piece_put )
{
	int i =0;
	int j =0;
	int k =0;
 
	for(i=0; i<24; i++){
		if(board[i] == (char)current_player+'0'){
			for(j=0; j<4; j++){
				if(point[i].neighbors[j] == -1){
					continue;
				}

				if(board[point[i].neighbors[j]] == '.'){ // only an empty board can be piece_put

					if(j==0 || j==1){ // neighbors in l2
						point[i].priority = priorityToMovej(point[point[i].neighbors[j]].l1.line_state);
					}else{  //neighbors in l1
						point[i].priority = priorityToMovej(point[point[i].neighbors[j]].l2.line_state);
					}

					for(k=0; k<4; k++){
						if(board[point[point[i].neighbors[j]].neighbors[k]] == '.'){
							if(k==0 || k==1){
								point[i].priority = priorityToMovek(point[point[point[i].neighbors[j]].neighbors[k]].l1.line_state);
							}else{
								point[i].priority = priorityToMovek(point[point[point[i].neighbors[j]].neighbors[k]].l2.line_state);

							}
						}
					}

					if(point[i].l1.line_state == 12 || point[i].l2.line_state == 12 ){
						point[i].priority = 13;
					}

					if(point[i].priority > currentPP){
						currentPP = point[i].priority;
						*piece_move = 'A' + i;
						*piece_put = 'A' + point[i].neighbors[j];
					}

				}
			}
		}

		point[i].priority = 0; // reset the point's priority here.

	}
	printf(" %s's prioriry = %d\n", piece_move, currentPP );
	 
}


void moveDecision_Phase3(char board[24], unsigned current_player, POINT point[24], int currentPP, int oppoAlivePieces, char *piece_move, char *piece_put )
{
	int i =0;
  
 	*piece_move = ' ';
				
	for(i=0; i<24; i++){
		if(board[i] == (char)current_player+'0'){
			if( (point[i].l1.line_state!=8 && point[i].l2.line_state!=8) || *piece_move == ' '){ // first fit first selected
 				*piece_move = 'A' + i;
			} 
		}
	}
 
				
	// to decide where to fly : piece_put.
	currentPP=0;

	for(i=0; i<24; i++){
		if(board[i]=='.'){
			point[i].priority += priorityFlyTo(point[i].l1.line_state);
			point[i].priority += priorityFlyTo(point[i].l2.line_state);

			if(point[i].priority >= currentPP){ // '>=' -> last fit first selected
				*piece_put = 'A' + i;
				currentPP = point[i].priority;

 			}
		}
		point[i].priority = 0; // reset the point's priority here.

	} 
}

void removeDecision(char board[24], POINT point[24], unsigned current_player, int unplaced_pieces, char piece_move, char piece_put, char *piece_kill)
{	
	
	int i=0;
	// as soon as there is oppo that does not in a mill, you can't remove the one in a mill.
	//eg: oppo | empty | empty, oppo | self | empty, oppo | self | self
	for(i=0; i<24; i++){
  		if((board[i] != (char)current_player+'0' && board[i] != '.' ) ){  // this is oppo's piece.

  			if(unplaced_pieces){
  				if( (point[i].l1.line_state == 2 && point[i].l2.line_state!=3) || (point[i].l2.line_state == 2 && point[i].l1.line_state != 3) ){
  					*piece_kill = 'A' +i;
  					break;
  				}
  			}
  			
			if((point[i].l1.line_state == 3 || point[i].l2.line_state == 3)){
				if(*piece_kill == '\n'){
					*piece_kill = 'A' + i;
				}
			}else{
				*piece_kill = 'A' + i;

				if((point[i].l1.line_state == 2 && point[i].l2.line_state == 2)){ // oppo|oppo|empty: very threatening.
					break;
				}
			}			
		}
	}

}


int main(void)
{
	/* current game state is delivered via file descriptor 3 */
	FILE *state_input = fdopen(3, "r");
	/* we output our move via file descriptor 4 */
	FILE *move_output = fdopen(4, "w");
	
	if (!state_input || !move_output) {
		fprintf(stderr, "error accessing file descriptors\n");
		exit(1);
	}
	
	while (1) {
		unsigned current_player;  // int 0,1
		unsigned unplaced_pieces[2];
		char board[24];  // '0', '1', '.'  num2sym[board[i]]='X','O',' '.
		char piece_move, piece_put, piece_kill;
		char newline;   
		int matches; // user for checking if there is error while reading from MCP
			
		int i = 0; // for all for-loop.
 
 		int currentPP; // current selected point's priority

		int myAlivePieces;
		int oppoAlivePieces;

		POINT point[24];
		LINE line[16];


/* Begin: read current_player, unplaced_pieces[0], unplaced_pieces[1], board[0-24] from MCP */

		/* First, read the current game state, given as two lines of text. */
		
		/* The first line contains three decimal numbers: the current player
		 * number (0 or 1) and the number of pieces not yet placed on the board
		 * for both players. */
		matches = fscanf(state_input, "%u %u %u%c", &current_player,
						 &unplaced_pieces[0], &unplaced_pieces[1], &newline);  // read from state-input
		if (matches != 4) { // in total 4 data should be read from state-input. if the number of data that the fscanf got is not =4, wrong reading.
			fprintf(stderr, "error while reading the game state\n"); // write to stderr.
			break;
		}
		
		/* The next line has 24 characters, one for each place on the board,
		 * starting in the top left. Each of these characters is either a .,
		 * a 0 or a 1, showing that the place is free or occupied by the
		 * respective player. */
		matches = fscanf(state_input, "%24c%c", board, &newline); // board newline, 2 data in total should be read from state-input.
		if (matches != 2) { // if the number of data that the fscanf got is not =4, wrong reading.
			fprintf(stderr, "error while reading the board state\n");
			break;
		}

/* End: read current_player, unplaced_pieces[0], unplaced_pieces[1], board[0-24] from MCP */

/* Begin: initialization of points and lines */  
		
		// order: left->right; up->down; horizontal->vertical
		line[0] = (LINE){0, 0,1,2,board[0],board[1],board[2],lineStateValue(board[0],board[1],board[2],current_player)};
		line[1] = (LINE){1, 3,4,5,board[3],board[4],board[5],lineStateValue(board[3],board[4],board[5],current_player)};
		line[2] = (LINE){2, 6,7,8,board[6],board[7],board[8],lineStateValue(board[6],board[7],board[8],current_player)};
		line[3] = (LINE){3, 9,10,11,board[9],board[10],board[11],lineStateValue(board[9],board[10],board[11],current_player)};
		line[4] = (LINE){4, 12,13,14,board[12],board[13],board[14],lineStateValue(board[12],board[13],board[14],current_player)};
		line[5] = (LINE){5, 15,16,17,board[15],board[16],board[17],lineStateValue(board[15],board[16],board[17],current_player)};
		line[6] = (LINE){6, 18,19,20,board[18],board[19],board[20],lineStateValue(board[18],board[19],board[20],current_player)};
		line[7] = (LINE){7, 21,22,23,board[21],board[22],board[23],lineStateValue(board[21],board[22],board[23],current_player)};
		line[8] = (LINE){8, 0,9,21,board[0],board[9],board[21],lineStateValue(board[0],board[9],board[21],current_player)};
		line[9] = (LINE){9, 3,10,18,board[3],board[10],board[18],lineStateValue(board[3],board[10],board[18],current_player)};
		line[10] = (LINE){10, 6,11,15,board[6],board[11],board[15],lineStateValue(board[6],board[11],board[15],current_player)};
		line[11] = (LINE){11, 1,4,7,board[1],board[4],board[7],lineStateValue(board[1],board[4],board[7],current_player)};
		line[12] = (LINE){12, 16,19,22,board[16],board[19],board[22],lineStateValue(board[16],board[19],board[22],current_player)};
		line[13] = (LINE){13, 8,12,17,board[8],board[12],board[17],lineStateValue(board[8],board[12],board[17],current_player)};
		line[14] = (LINE){14, 5,13,20,board[5],board[13],board[20],lineStateValue(board[5],board[13],board[20],current_player)};
		line[15] = (LINE){15, 2,14,23,board[2],board[14],board[23],lineStateValue(board[2],board[14],board[23],current_player)};

		// initialization for each point
		point[0] = (POINT) {0, board[0], 0, line[0], line[8], 0,0,    {-1,9,-1,1} }; //A
		point[1] = (POINT) {1, board[1], 0, line[0], line[11], 1,0,   {-1,4,0,2}}; //B
		point[2] = (POINT) {2, board[2], 0, line[0], line[15], 2,0,   {-1,14,1,-1}}; //C
		point[3] = (POINT) {3, board[3], 0, line[1], line[9], 0,0,    {-1,10,-1,4}}; //D
		point[4] = (POINT) {4, board[4], 0, line[1], line[11], 1,1,	  {1,7,3,5}}; //E
		point[5] = (POINT) {5, board[5], 0, line[1], line[14], 2,0,   {-1,13,4,-1}}; //F
		point[6] = (POINT) {6, board[6], 0, line[2], line[10], 0,0,   {-1,11,-1,7}}; //G
		point[7] = (POINT) {7, board[7], 0, line[2], line[11], 1,2,   {4,-1,6,8}}; //H
		point[8] = (POINT) {8, board[8], 0, line[2], line[13], 2,0,   {-1,12,7,-1}}; //I
		point[9] = (POINT) {9, board[9], 0, line[3], line[8], 0,1,    {0,21,-1,10}}; //J
		point[10] = (POINT) {10, board[10], 0, line[3], line[9], 1,1, {3,18,9,11}}; //K
		point[11] = (POINT) {11, board[11], 0, line[3], line[10], 2,1,  {6,15,10,-1}}; //L
		point[12] = (POINT) {12, board[12], 0, line[4], line[13], 0,1,  {8,17,-1,13}}; //M
		point[13] = (POINT) {13, board[13], 0, line[4], line[14], 1,1,  {5,20,12,14}}; //N
		point[14] = (POINT) {14, board[14], 0, line[4], line[15], 2,1,  {2,23,13,-1}}; //O
		point[15] = (POINT) {15, board[15], 0, line[5], line[10], 0,2,  {11,-1,-1,16}}; //P 
		point[16] = (POINT) {16, board[16], 0, line[5], line[12], 1,0,  {-1,19,15,17}}; //Q
		point[17] = (POINT) {17, board[17], 0, line[5], line[13], 2,2,  {12,-1,16,-1}}; //R
		point[18] = (POINT) {18, board[18], 0, line[6], line[9], 0,2,   {10,-1,-1,19}}; //S
		point[19] = (POINT) {19, board[19], 0, line[6], line[12], 1,1,  {16,22,18,20}}; //T
		point[20] = (POINT) {20, board[20], 0, line[6], line[14], 2,2,  {13,-1,19,-1}}; //U
		point[21] = (POINT) {21, board[21], 0, line[7], line[8], 0,2,   {9,-1,-1,22}}; //V
		point[22] = (POINT) {22, board[22], 0, line[7], line[12], 1,2,  {19,-1,21,23}}; //W
		point[23] = (POINT) {23, board[23], 0, line[7], line[15], 2,2,  {14,-1,22,-1}}; //X


/* End: initialization of points and lines */  



/* Begin : Print the board and ask the user for a move. */
		
		printf("\n");
		printf("Nine Men's Morris -- xxs \n");  //player0
		printf("========================\n");
		printf("\n");

		/* print players' unplaced pieces */ 

		if (unplaced_pieces[0]) { // if xxs still has free piece
			printf("Player 0: ");
			for ( i = 0; i < unplaced_pieces[0]; i++)
				printf("%c", num2sym('0'));
			printf("\n");
		}
		if (unplaced_pieces[1]) { // if player1 still has free piece
			printf("Player 1: ");
			for ( i = 0; i < unplaced_pieces[1]; i++)
				printf("%c", num2sym('1'));
			printf("\n\n");
		}

		/* print  the current state of board */
		printf("Current board situation on the left,\n");
		printf("letters for identifying the places on the right:\n");
		printf("\n");
		printf("%c----------%c----------%c            A----------B----------C\n",
			   num2sym(board[0]), num2sym(board[1]), num2sym(board[2]));
		printf("|          |          |            |          |          |\n");
		printf("|   %c------%c------%c   |            |   D------E------F   |\n",
			   num2sym(board[3]), num2sym(board[4]), num2sym(board[5]));
		printf("|   |      |      |   |            |   |      |      |   |\n");
		printf("|   |   %c--%c--%c   |   |            |   |   G--H--I   |   |\n",
			   num2sym(board[6]), num2sym(board[7]), num2sym(board[8]));
		printf("|   |   |     |   |   |            |   |   |     |   |   |\n");
		printf("%c---%c---%c     %c---%c---%c            J---K---L     M---N---O\n",
			   num2sym(board[9]), num2sym(board[10]), num2sym(board[11]),
			   num2sym(board[12]), num2sym(board[13]), num2sym(board[14]));
		printf("|   |   |     |   |   |            |   |   |     |   |   |\n");
		printf("|   |   %c--%c--%c   |   |            |   |   P--Q--R   |   |\n",
			   num2sym(board[15]), num2sym(board[16]), num2sym(board[17]));
		printf("|   |      |      |   |            |   |      |      |   |\n");
		printf("|   %c------%c------%c   |            |   S------T------U   |\n",
			   num2sym(board[18]), num2sym(board[19]), num2sym(board[20]));
		printf("|          |          |            |          |          |\n");
		printf("%c----------%c----------%c            V----------W----------X\n",
			   num2sym(board[21]), num2sym(board[22]), num2sym(board[23]));
		printf("\n");
		printf("Player %d's move (%c).\n", current_player,
			   num2sym((char)current_player + '0'));   // current_player is read from state-input => Player 0's move (X).
		
/* End : Print the board and ask the user for a move. */



/* Begin : Decide piece_move; piece_put; piece_remove */

		printf("=============== Begin: decide piece_put , piece_move  ===============\n");

		//initialization

		currentPP = 0;
		myAlivePieces = 0;
		oppoAlivePieces = 0;

		/* Unless we have unplaced pieces, ask which piece to move. */
		if (unplaced_pieces[current_player]) { // still phase1, piece_move = null.
			
			moveDecision_Phase1(board, point, currentPP, &piece_move, &piece_put);

		} else {  // enter phase2 / phase3
 
			for(i=0; i<24; i++){
				if(board[i] == (char)current_player + '0'){
					myAlivePieces ++;
				}
				if(board[i]!=(char)current_player + '0' && board[i]!= '.' ){
					oppoAlivePieces ++;     	// difficult :( to consider all cases. to be cont'
				}
			}

			if( myAlivePieces > 3){   // phase2, move
				
				moveDecision_Phase2(board, current_player, point, currentPP, &piece_move, &piece_put);
 
			}else{  // phase3, fly

 				moveDecision_Phase3(board, current_player, point, currentPP, oppoAlivePieces, &piece_move, &piece_put);
					
			}

		}

 		printf("=============== End: decide piece_put , piece_move  ===============\n");

 		printf("\n");

		printf("=============== Begin: decide piece_remove ===============\n");

 
		piece_kill = '\n';
		currentPP = 0;
 		
		// ONLY if it will form a mill after this time's piece_put executes, it will be able to remove
		// i.e. the current line state of l1 or l2: self | self | empty(piece_put).  stateVal = 6.
		if( (point[(int)piece_put - 65].l1.line_state==8 && point[(int)piece_put - 65].l1.lineIndex != point[(int)piece_move - 65].l1.lineIndex) || (point[(int)piece_put - 65].l2.line_state==8 && point[(int)piece_put - 65].l2.lineIndex != point[(int)piece_move - 65].l2.lineIndex)){

			removeDecision(board, point, current_player, unplaced_pieces[current_player], piece_move, piece_put, &piece_kill);

		}else{
			printf("I didn't make a mill and can't remove.\n");
		}
	
		printf("=============== End: decide piece_remove   ===============\n");

/* End : Decide piece_move; piece_put; piece_remove */


/* Begin : output piece_move; piece_put; piece_remove to MCP */

		printf("\n");
 		
		/* Output our move as three characters, followed by a newline.
		 * The first character specifies the piece to move or a space if an
		 * unplaced piece is used.
		 * The second character specifies the place to put the piece.
		 * The third character specifies an opponent's piece to remove, or a
		 * space if this is not appropriate. */
		fprintf(move_output, "%c%c%c\n", piece_move, piece_put, piece_kill);
		
		/* Flush the buffer so the MCP actually receives our move. */
		fflush(move_output);
	}

/* End : output piece_move; piece_put; piece_remove to MCP */
	
	/* cleanup */
	fclose(state_input);
	fclose(move_output);
	
	/* in all cases we get here, an error happened */
	return 1;
}


