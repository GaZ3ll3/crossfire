#ifndef BOARD_H
#define BOARD_H

#include <QtGui>
#include <iostream>

#define BOARDSIZE 129
#define PIECESIZE 100


enum pieceName {NONE, GONG, PAI, LIAN, YING, TUAN, LV, SHI, JUN, LING, ZHA, LEI, QI};

enum pieceColor {UNSET, RED, BLUE, GREEN, DARK};

enum Battle {ILLEGAL, MOVE, CAPTURE, LOSE, BOTHDIE, ZHA_LING, LING_ZHA, LING_LING, LING_LEI, FLAG};


typedef struct Tile
{
    int num;
    int piece_num;
//    bool isQI;
//    bool isLEI;
//    bool isGONG;
//    bool isZHA;
} Tile;


typedef struct Piece
{
    pieceName name;
    pieceColor color;
    int position;
    bool isAlive;
//    bool atCamp;
//    bool atRail;
//    bool atBase;
} Piece;

class Board
{
public:
    Board();
    virtual ~Board();

    Tile tile[BOARDSIZE];
    Piece piece[PIECESIZE + 1];

};

#endif // BOARD_H
