#ifndef MAINWINDOW_H
#define MAINWINDOW_H

#include <QtGui>
#include "board.h"
#include <string>
#include <deque>
#include <vector>
#include <algorithm>

#define SIZE 40

/*
 * local auxillary functions
 *
 */
bool isCamp(int);
bool isBase(int);
bool isRail(int);
void reOrder(int *, int *);
bool isAlly(int, int);
bool isLEI(int);
bool isQI(int);
bool isZHA(int);
bool isGONG(int);



class MainWindow : public QMainWindow
{
    Q_OBJECT
private:
    QSignalMapper *indicator;
    /*
     *  methods for board
     *
     */
    void initialize();
    void configuration();

    /*
     *  methods used for initialization
     */
    void setRail(int);
    void setCamp(int);
    void setBase(int);
    /*
     *  methods for locating rail location
     */
    void setRailAdjMatrix();
    void setRoadAdjMatrix();

    bool onSameRail(int, int);
    int  searchRail(int*,int, int);
    bool checkRail(int *, int, int);
    /*
     * battle field
     *
     */
    Battle compare(int, int);



    /*
     * Move from one tile to another
     */
    void Move();

    /*
     * Move from one player to another
     */
    void next_player();


    /*
     *  Simulation of button click for AI
     *
     */
    void simulate(int, int);
public:
    MainWindow(QWidget *parent = 0);
    ~MainWindow();

    QPushButton *buttons[BOARDSIZE];

    // need to be private
    Board Master;

    /*
     * Game Variables
     *
     */
    bool first_clicked;
    Tile from_pos;
    Tile to_pos;
    pieceColor current;
    int ** RailMatrix;
    int ** RoadMatrix;

    int state[4];
    int GameResult;
    int BlackBox;

    std::vector<std::pair<int, int>> curr_avails;
    /*
     *  search all available moves for current player.
     */
    void searchAvail();

    /*
     *
     * railway auxillary arrays
     *
     */
    int rail_1[5];
    int rail_2[5];
    int rail_3[5];
    int rail_4[5];

    int rail_5[5];
    int rail_6[5];
    int rail_7[5];
    int rail_8[5];

    int rail_9[13];
    int rail_10[13];
    int rail_11[13];
    int rail_12[13];

    int rail_13[10];
    int rail_14[10];
    int rail_15[10];
    int rail_16[10];

    int rail_17[5];
    int rail_18[5];



public slots:
    void playturn(int ButtonId);
};

#endif // MAINWINDOW_H
