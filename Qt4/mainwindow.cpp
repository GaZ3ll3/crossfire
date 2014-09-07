#include "mainwindow.h"

#include "board.h"

MainWindow::MainWindow(QWidget *parent)
    : QMainWindow(parent)
{
    initialize();
    configuration();
    setRailAdjMatrix();
    setRoadAdjMatrix();
}

MainWindow::~MainWindow()
{
    for (int i = 0; i < BOARDSIZE; i++)
    {
        delete[] RailMatrix[i];
        delete[] RoadMatrix[i];
    }
    delete RailMatrix;
    delete RoadMatrix;
}

void MainWindow::setRailAdjMatrix()
{
    for (int i = 0; i < 5; i++)
    {
        rail_1[i] = 5 + i;
        rail_2[i] = 35 + i;
        rail_3[i] = 65 + i;
        rail_4[i] = 95 + i;
        rail_5[i] = 25 + i;
        rail_6[i] = 55 + i;
        rail_7[i] = 85 + i;
        rail_8[i] = 115 + i;

        rail_9[i] = 5 + 5*i;
        rail_9[12 - i] = 69 + 5*i;

        rail_10[i] = 9 + 5*i;
        rail_10[12 - i] = 65 + 5*i;

        rail_11[i] = 35 + 5*i;
        rail_11[12 - i] = 99 + 5*i;

        rail_12[i] = 39 + 5*i;
        rail_12[12 - i] = 95 + 5*i;

        rail_13[i] = 5 + 5*i;
        rail_13[9 - i] = 99 + 5*i;

        rail_14[i] = 9 + 5*i;
        rail_14[9 - i] = 35 + 5*i;

        rail_15[i] = 39 + 5*i;
        rail_15[9 - i] = 65 + 5*i;

        rail_16[i] = 69 + 5*i;
        rail_16[9 - i] = 95 + 5*i;

    }

    rail_9[5] = 120; rail_9[6] = 127; rail_9[7] = 123;
    rail_10[5] = 121; rail_10[6] = 125; rail_10[7] = 122;
    rail_11[5] = 121; rail_11[6] = 124; rail_11[7] = 120;
    rail_12[5] = 122; rail_12[6] = 126; rail_12[7] = 123;

    rail_17[0] = 27;rail_17[1] = 124; rail_17[2] = 128; rail_17[3] = 126; rail_17[4] = 87;
    rail_18[0] = 57;rail_18[1] = 125; rail_18[2] = 128; rail_18[3] = 127; rail_18[4] = 117;




    RailMatrix = new int*[BOARDSIZE];
    for (int i = 0; i < BOARDSIZE; i++)
    {
        RailMatrix[i] = new int[BOARDSIZE];
    }

    for (int i = 0 ; i < 4; i++)
    {
        RailMatrix[rail_1[i]][ rail_1[i+1]] = 1;
        RailMatrix[rail_1[i+1]][ rail_1[i]] = 1;
        RailMatrix[rail_2[i]][ rail_2[i+1]] = 1;
        RailMatrix[rail_2[i+1]][ rail_2[i]] = 1;
        RailMatrix[rail_3[i]][rail_3[i+1]] = 1;
        RailMatrix[rail_3[i+1]][rail_3[i]] = 1;
        RailMatrix[rail_4[i]][ rail_4[i+1]] = 1;
        RailMatrix[rail_4[i+1]][ rail_4[i]] = 1;
        RailMatrix[rail_5[i]][ rail_5[i+1]] = 1;
        RailMatrix[rail_5[i+1]][ rail_5[i]] = 1;
        RailMatrix[rail_6[i]][ rail_6[i+1]] = 1;
        RailMatrix[rail_6[i+1]][ rail_6[i]] = 1;
        RailMatrix[rail_7[i]][ rail_7[i+1]] = 1;
        RailMatrix[rail_7[i+1]][ rail_7[i]] = 1;
        RailMatrix[rail_8[i]][ rail_8[i+1]] = 1;
        RailMatrix[rail_8[i+1]][ rail_8[i]] = 1;
        RailMatrix[rail_17[i]][ rail_17[i+1]] = 1;
        RailMatrix[rail_17[i+1]][ rail_17[i]] = 1;
        RailMatrix[rail_18[i]][rail_18[i+1]] = 1;
        RailMatrix[rail_18[i+1]][ rail_18[i]] = 1;
    }
    for (int i = 0; i < 12; i++)
    {
        RailMatrix[rail_9[i]][ rail_9[i+1]] = 1;
        RailMatrix[rail_9[i+1]][ rail_9[i]] = 1;
        RailMatrix[rail_10[i]][ rail_10[i+1]] = 1;
        RailMatrix[rail_10[i+1]][ rail_10[i]] = 1;
        RailMatrix[rail_11[i]][ rail_11[i+1]] = 1;
        RailMatrix[rail_11[i+1]][ rail_11[i]] = 1;
        RailMatrix[rail_12[i]][ rail_12[i+1]] = 1;
        RailMatrix[rail_12[i+1]][ rail_12[i]] = 1;
    }

    for (int i = 0; i < 9; i++)
    {
        RailMatrix[rail_13[i]][rail_13[i+1]] = 1;
        RailMatrix[rail_13[i+1]][ rail_13[i]] = 1;
        RailMatrix[rail_14[i]][ rail_14[i+1]] = 1;
        RailMatrix[rail_14[i+1]][ rail_14[i]] = 1;
        RailMatrix[rail_15[i]][ rail_15[i+1]] = 1;
        RailMatrix[rail_15[i+1]][ rail_15[i]] = 1;
        RailMatrix[rail_16[i]][rail_16[i+1]] = 1;
        RailMatrix[rail_16[i+1]][ rail_16[i]] = 1;
    }


}

void MainWindow::setRoadAdjMatrix()
{
    RoadMatrix = new int*[BOARDSIZE];
    for (int i = 0; i < BOARDSIZE; i++)
    {
        RoadMatrix[i] = new int[BOARDSIZE];
    }

    // Adjacent Matrix of all map
    // take railway's matrix as part of it
    for (int i = 0; i < BOARDSIZE; i++)
    {
        for (int j = 0; j < BOARDSIZE; j++)
        {
            RoadMatrix[i][j] = RailMatrix[i][j];
        }
    }

    // TODO:normal parts
    // horizontal and vertical
    for (int i = 0; i < 4; i++)
    {
        for (int j = 0; j < 6; j++)
        {
            for (int k = 0; k < 4; k++)
            {
                RoadMatrix[30*i + 5*j + k][30*i + 5*j + k + 1] = 1;
                RoadMatrix[30*i + 5*j + k + 1][30*i + 5*j + k] = 1;
            }
        }
    }

    for (int i = 0; i < 4; i++)
    {
        for (int k = 0; k < 5; k++)
        {
            for (int j = 0; j < 5; j++)
            {
                RoadMatrix[30*i + 5*j + k][30*i + 5*(j+1) + k] = 1;
                RoadMatrix[30*i + 5*(j+1) + k][30*i + 5*j + k] = 1;
            }
        }
    }

    // camp parts
    int shifts[4] = {-4, 4, -6, 6};
    int keys[5] = {11, 13, 17, 21, 23};

    for (int i = 0; i < 4; i++)
    {
        for (int j = 0; j < 4; j++)
        {
            for (int k = 0; k < 5; k++)
            {
                RoadMatrix[i*30 + keys[k]][ i*30 + keys[k] + shifts[j]] = 1;
                RoadMatrix[i*30 + keys[k] + shifts[j]][i*30 + keys[k] ] = 1;
            }
        }
    }

}


void MainWindow::initialize()
{
    setGeometry(0,0, 760, 760);
    /*
     * set bridge for buttons
     */
    indicator = new QSignalMapper(this);
    QObject::connect(indicator, SIGNAL(mapped(int)), this, SLOT(playturn(int)));
    /*
     * set initial variables
     */
    first_clicked = 0;

    current = GREEN;

    for (int i = 0; i < 4; i++)
    {
        state[i] = 0;

    }

    // in game variable
    GameResult = -1;

    // tweakable variable
    // BlackBox hides all information
    // set as 0 will reveal all information
    BlackBox = 1;

    // GUI setting
    int ind;
    for (int j = 0; j < 6; j++)
    {
        for (int k = 0; k < 5; k++)
        {
            ind =j*5 + k;
            buttons[ind] = new QPushButton("", this);

            buttons[ind]->setGeometry(QRect(QPoint((7 + k)*SIZE, j*SIZE),
                                        QSize(SIZE, SIZE)));
            QObject::connect(buttons[ind], SIGNAL(clicked()), indicator, SLOT(map()));
            indicator->setMapping(buttons[ind], ind);


            if (isCamp(ind ))
            {
                setCamp(ind);
            }
            else if (isBase(ind))
            {
                setBase(ind);
            }
            else if (isRail(ind))
            {
                setRail(ind);
            }
            else
            {
                buttons[ind]->setStyleSheet("QPushButton{"
                                            "color: white;"
                                            "background-color: "
                                            "QLinearGradient( x1: 0, y1: 0, x2: 0, y2: 1, stop: 0 #FE642E, stop: 0.1 #FE642E, stop: 0.49 #FE642E, "
                                            "stop: 0.5 #FE642E, stop: 1 #fff);"
                                            "border-width: 1px;"
                                            "border-color: #339;"
                                            "border-style: solid;"
                                            "border-radius: 7;"
                                            "padding: 3px;"
                                            "padding-left: 5px;"
                                            "padding-right: 5px;}");
            }


        }
    }

    for (int k = 0; k < 5; k++)
    {
        for (int j = 0; j < 6; j++)
        {
            ind = 30 + j*5 + k;
            buttons[ind] = new QPushButton("", this);
            buttons[ind]->setGeometry(QRect(QPoint((18 - j)*SIZE, (7 + k)*SIZE),
                                            QSize(SIZE, SIZE)));
            QObject::connect(buttons[ind], SIGNAL(clicked()), indicator, SLOT(map()));
            indicator->setMapping(buttons[ind], ind);

            if (isCamp(ind  - 30))
            {
                setCamp(ind);
            }
            else if (isBase(ind - 30))
            {
                setBase(ind);
            }
            else if (isRail(ind - 30))
            {
                setRail(ind);
            }
            else
            {
                buttons[ind]->setStyleSheet("QPushButton{"
                                            "color: white;"
                                            "background-color: "
                                            "QLinearGradient( x1: 0, y1: 0, x2: 0, y2: 1, stop: 0 #00FFFF, stop: 0.1 #00FFFF, stop: 0.49 #00FFFF, "
                                            "stop: 0.5 #00FFFF, stop: 1 #fff);"
                                            "border-width: 1px;"
                                            "border-color: #339;"
                                            "border-style: solid;"
                                            "border-radius: 7;"
                                            "padding: 3px;"
                                            "padding-left: 5px;"
                                            "padding-right: 5px;}");
            }
        }
    }

    for (int j =0; j < 6; j++)
    {
        for (int k = 0; k < 5; k++)
        {
            ind = 60 + j*5 + k;
            buttons[ind] = new QPushButton("", this);

            buttons[ind]->setGeometry(QRect(QPoint((11 - k)*SIZE, (18 - j)*SIZE),
                                        QSize(SIZE, SIZE)));
            QObject::connect(buttons[ind], SIGNAL(clicked()), indicator, SLOT(map()));
            indicator->setMapping(buttons[ind], ind);

            if (isCamp(ind  - 60))
            {
                setCamp(ind);
            }
            else if (isBase(ind - 60))
            {
                setBase(ind);
            }
            else if (isRail(ind - 60))
            {
                setRail(ind);
            }
            else
            {
                buttons[ind]->setStyleSheet("QPushButton{"
                                            "color: white;"
                                            "background-color: "
                                            "QLinearGradient( x1: 0, y1: 0, x2: 0, y2: 1, stop: 0 #9AFE2E, stop: 0.1 #9AFE2E, stop: 0.49 #9AFE2E, "
                                            "stop: 0.5 #9AFE2E, stop: 1 #fff);"
                                            "border-width: 1px;"
                                            "border-color: #339;"
                                            "border-style: solid;"
                                            "border-radius: 7;"
                                            "padding: 3px;"
                                            "padding-left: 5px;"
                                            "padding-right: 5px;}");
            }

        }

    }

    for (int k = 0; k < 5; k++)
    {
        for (int j = 0; j < 6; j++)
        {
            ind = 90 + j*5 + k;
            buttons[ind] = new QPushButton("", this);
            buttons[ind]->setGeometry(QRect(QPoint(j*SIZE, (11- k)*SIZE),
                                            QSize(SIZE, SIZE)));
            QObject::connect(buttons[ind], SIGNAL(clicked()), indicator, SLOT(map()));
            indicator->setMapping(buttons[ind], ind);
            if (isCamp(ind  - 90))
            {
                setCamp(ind);
            }
            else if (isBase(ind - 90))
            {
                setBase(ind);
            }
            else if (isRail(ind - 90))
            {
                setRail(ind);
            }
            else
            {
                buttons[ind]->setStyleSheet("QPushButton{"
                                            "color: white;"
                                            "background-color: "
                                            "QLinearGradient( x1: 0, y1: 0, x2: 0, y2: 1, stop: 0 #A4A4A4, stop: 0.1 #A4A4A4, stop: 0.49 #A4A4A4, "
                                            "stop: 0.5 #A4A4A4, stop: 1 #fff);"
                                            "border-width: 1px;"
                                            "border-color: #339;"
                                            "border-style: solid;"
                                            "border-radius: 7;"
                                            "padding: 3px;"
                                            "padding-left: 5px;"
                                            "padding-right: 5px;}");
            }
        }
    }

    ind = ind + 1;
    buttons[ind] = new QPushButton("", this);
    buttons[ind]->setGeometry(QRect(QPoint(7*SIZE, 7*SIZE),
                                    QSize(SIZE, SIZE)));
    QObject::connect(buttons[ind], SIGNAL(clicked()), indicator, SLOT(map()));
    indicator->setMapping(buttons[ind], ind);
    setRail(ind);

    ind = ind + 1;
    buttons[ind] = new QPushButton("", this);
    buttons[ind]->setGeometry(QRect(QPoint(11*SIZE, 7*SIZE),
                                    QSize(SIZE, SIZE)));
    QObject::connect(buttons[ind], SIGNAL(clicked()), indicator, SLOT(map()));
    indicator->setMapping(buttons[ind], ind);
    setRail(ind);

    ind = ind + 1;
    buttons[ind] = new QPushButton("", this);
    buttons[ind]->setGeometry(QRect(QPoint(11*SIZE, 11*SIZE),
                                    QSize(SIZE, SIZE)));
    QObject::connect(buttons[ind], SIGNAL(clicked()), indicator, SLOT(map()));
    indicator->setMapping(buttons[ind], ind);

    setRail(ind);

    ind = ind + 1;
    buttons[ind] = new QPushButton("", this);
    buttons[ind]->setGeometry(QRect(QPoint(7*SIZE,11*SIZE),
                                    QSize(SIZE, SIZE)));
    QObject::connect(buttons[ind], SIGNAL(clicked()), indicator, SLOT(map()));
    indicator->setMapping(buttons[ind], ind);
    setRail(ind);

    ind = ind + 1;
    buttons[ind] = new QPushButton("", this);
    buttons[ind]->setGeometry(QRect(QPoint(9*SIZE,7*SIZE),
                                    QSize(SIZE, SIZE)));
    QObject::connect(buttons[ind], SIGNAL(clicked()), indicator, SLOT(map()));
    indicator->setMapping(buttons[ind], ind);
    setRail(ind);

    ind = ind + 1;
    buttons[ind] = new QPushButton("", this);
    buttons[ind]->setGeometry(QRect(QPoint(11*SIZE,9*SIZE),
                                    QSize(SIZE, SIZE)));
    QObject::connect(buttons[ind], SIGNAL(clicked()), indicator, SLOT(map()));
    indicator->setMapping(buttons[ind], ind);
    setRail(ind);

    ind = ind + 1;
    buttons[ind] = new QPushButton("", this);
    buttons[ind]->setGeometry(QRect(QPoint(9*SIZE,11*SIZE),
                                    QSize(SIZE, SIZE)));

    QObject::connect(buttons[ind], SIGNAL(clicked()), indicator, SLOT(map()));
    indicator->setMapping(buttons[ind], ind);
    setRail(ind);

    ind = ind + 1;
    buttons[ind] = new QPushButton("", this);
    buttons[ind]->setGeometry(QRect(QPoint(7*SIZE,9*SIZE),
                                    QSize(SIZE, SIZE)));
    QObject::connect(buttons[ind], SIGNAL(clicked()), indicator, SLOT(map()));
    indicator->setMapping(buttons[ind], ind);

    setRail(ind);

    ind = ind + 1;
    buttons[ind] = new QPushButton("", this);
    buttons[ind]->setGeometry(QRect(QPoint(9*SIZE,9*SIZE),
                                    QSize(SIZE, SIZE)));
    QObject::connect(buttons[ind], SIGNAL(clicked()), indicator, SLOT(map()));
    indicator->setMapping(buttons[ind], ind);

    setRail(ind);

}

bool isCamp(int n)
{
    if (n == 11 || n == 13 || n == 17 || n == 21 || n == 23)
    {
        return true;
    }
    return false;
}

bool isBase(int n)
{
    if (n == 1 || n == 3)
    {
        return true;
    }
    return false;
}

bool isRail(int n)
{
    int m = n%30;
    if ((m > 4 && m < 11) || (m > 13 && m < 30 && m%5 == 4) || (m > 14 && m < 26 && m%5 == 0) || (m > 25 && m < 29))
    {
        return true;
    }
    if (n > 119)
    {
        return true;
    }
    return false;
}

void MainWindow::configuration()
{
    std::string prefix = ":/images/images/";
    std::string postfix = ".png";

    int layout[30] =
    {5, 2, 11, 12, 11,
    10, 1,  4, 11,  4,
     3, 0,  3,  0,  2,
     8, 2,  0, 10,  3,
     5, 0,  1,  0,  7,
     6, 9,  1,  6,  7};

    int relayout[30];
    std::string var;
    reOrder(layout, relayout);

    // piece has 101 elements, to make things easy, the first one is abandoned.
    Master.piece[0].isAlive = false;
    Master.piece[0].name = NONE;


    for (int i = 0; i < 30; i++)
    {
        if (BlackBox == 1)
        {
            var = "r";
        }
        else
        {
            var = "r" + std::to_string(layout[i] - 1);
        }

        if (~isCamp(i))
        {
            buttons[i]->setIcon(QIcon(QString::fromStdString(prefix + var + postfix)));
            buttons[i]->setIconSize(QSize(SIZE,SIZE));
        }

        Master.tile[i].num = i;
        Master.tile[i].piece_num = (relayout[i] == 0 ? 0:relayout[i]);
        if (relayout[i] != 0)
        {
            Master.piece[relayout[i]].isAlive = true;
            Master.piece[relayout[i]].color = RED;
            Master.piece[relayout[i]].position = i;
            Master.piece[relayout[i]].name = (pieceName) layout[i];

        }
//            Master.piece[relayout[i]].atBase = isBase(i);
//            Master.piece[relayout[i]].atCamp = isCamp(i);
//            Master.piece[relayout[i]].atRail = isRail(i);



        if (BlackBox == 1)
        {
            var = "b";
        }
        else
        {
            var = "b" + std::to_string(layout[i] - 1);
        }
        if (~isCamp(i))
        {
            buttons[i + 30]->setIcon(QIcon(QString::fromStdString(prefix + var + postfix)));
            buttons[i + 30]->setIconSize(QSize(SIZE,SIZE));
        }

        Master.tile[i + 30].num = i + 30;
        Master.tile[i + 30].piece_num = (relayout[i] == 0 ? 0:relayout[i] + 25);

        if (relayout[i] != 0)
        {
            Master.piece[relayout[i] + 25].isAlive = true;
            Master.piece[relayout[i] + 25].color = BLUE;
            Master.piece[relayout[i] + 25].position = i + 30;
            Master.piece[relayout[i] + 25].name = (pieceName) layout[i];
//            Master.piece[relayout[i] + 25].atBase = isBase(i);
//            Master.piece[relayout[i] + 25].atCamp = isCamp(i);
//            Master.piece[relayout[i] + 25].atRail = isRail(i);
        }



        var = "g" + std::to_string(layout[i] - 1);
        if (~isCamp(i))
        {
            buttons[i + 60]->setIcon(QIcon(QString::fromStdString(prefix + var + postfix)));
            buttons[i + 60]->setIconSize(QSize(SIZE,SIZE));
        }

        Master.tile[i + 60].num = i + 60;
        Master.tile[i + 60].piece_num = (relayout[i] == 0 ? 0:relayout[i] + 50);
        if (relayout[i] != 0)
        {
            Master.piece[relayout[i] + 50].isAlive = true;
            Master.piece[relayout[i] + 50].color = GREEN;
            Master.piece[relayout[i] + 50].position = i + 60;
            Master.piece[relayout[i] + 50].name = (pieceName) layout[i];
//            Master.piece[relayout[i] + 50].atBase = isBase(i);
//            Master.piece[relayout[i] + 50].atCamp = isCamp(i);
//            Master.piece[relayout[i] + 50].atRail = isRail(i);
        }


        if (BlackBox == 1)
        {
            var = "d";
        }
        else
        {
            var = "d" + std::to_string(layout[i] - 1);
        }
        if (~isCamp(i))
        {
            buttons[i + 90]->setIcon(QIcon(QString::fromStdString(prefix + var + postfix)));
            buttons[i + 90]->setIconSize(QSize(SIZE,SIZE));
        }
            Master.tile[i + 90].num = i + 90;
            Master.tile[i + 90].piece_num = (relayout[i] == 0 ? 0:relayout[i] + 75);

            if (relayout[i] != 0)
            {
                Master.piece[relayout[i] + 75].isAlive = true;
                Master.piece[relayout[i] + 75].color = DARK;
                Master.piece[relayout[i] + 75].position = i + 90;
                Master.piece[relayout[i] + 75].name = (pieceName) layout[i];

//            Master.piece[relayout[i] + 75].atBase = isBase(i);
//            Master.piece[relayout[i] + 75].atCamp = isCamp(i);
//            Master.piece[relayout[i] + 75].atRail = isRail(i);
            }



    }


    for (int i = 0; i < 9; i++)
    {
        Master.tile[120 + i].num = 120 + i;
        Master.tile[120 + i].piece_num = 0;
        buttons[120 + i]->setIconSize(QSize(SIZE,SIZE));
    }


}


void MainWindow::setRail(int n)
{
    buttons[n]->setStyleSheet("QPushButton{"
                                "color: white;"
                                "background-color: "
                                "QLinearGradient( x1: 0, y1: 0, x2: 0, y2: 1, stop: 0 #FFFF00, stop: 0.1 #FFFF00, stop: 0.49 #FFFF00, "
                                "stop: 0.5 #FFFF00, stop: 1 #fff);"
                                "border-width: 1px;"
                                "border-color: #339;"
                                "border-style: solid;"
                                "border-radius: 7;"
                                "padding: 3px;"
                                "padding-left: 5px;"
                                "padding-right: 5px;}");
}


void MainWindow::setBase(int n)
{
    buttons[n]->setStyleSheet("QPushButton{"
                                "color: white;"
                                "background-color: "
                                "QLinearGradient( x1: 0, y1: 0, x2: 0, y2: 1, stop: 0 #DF0101, stop: 0.1 #DF0101, stop: 0.49 #DF0101, "
                                "stop: 0.5 #DF0101, stop: 1 #fff);"
                                "border-width: 1px;"
                                "border-color: #339;"
                                "border-style: solid;"
                                "border-radius: 7;"
                                "padding: 3px;"
                                "padding-left: 5px;"
                                "padding-right: 5px;}");
}


void MainWindow::setCamp(int n)
{
    buttons[n]->setStyleSheet("QPushButton{"
                                "color: white;"
                                "background-color: "
                                "QLinearGradient( x1: 0, y1: 0, x2: 0, y2: 1, stop: 0 #DF01A5, stop: 0.1 #DF01A5, stop: 0.49 #DF01A5, "
                                "stop: 0.5 #DF01A5, stop: 1 #fff);"
                                "border-width: 1px;"
                                "border-color: #339;"
                                "border-style: solid;"
                                "border-radius: 7;"
                                "padding: 3px;"
                                "padding-left: 5px;"
                                "padding-right: 5px;}");
}


void MainWindow::playturn(int id)
{
    if (first_clicked == 0 && GameResult == -1)
    {
        from_pos = Master.tile[id];
        if (from_pos.piece_num > 0 && current == (from_pos.piece_num/25 + 1) &&
                Master.piece[from_pos.piece_num].isAlive == true )
        {
            //std::cout << current << std::endl;
            first_clicked = 1;
        }


    }
    else
    {
        if (first_clicked == 1)
        {
            to_pos = Master.tile[id];
            first_clicked = 0;
            Move();

        }
    }
}


void MainWindow::next_player()
{
    /*
     * Judge win or lose state
     *
     */
    if (state[0] + state[1] + state[2] + state[3] == 3)
    {
        if (state[0] == 0 || state[2] == 0)
        {
            GameResult = 1;
            return;
        }
        else
        {
            GameResult = 0;
            return;
        }
    }

    if (state[0] + state[1] + state[2] + state[3] == 2)
    {
        if (state[0] == 0 && state[2] == 0)
        {
            // win
            GameResult = 1;
            return;
        }
        else if (state[1] == 0 && state[3] == 0)
        {
            // lose
            GameResult = 0;
            return;
        }
    }

    std::cout << current << std::endl;
    current = (pieceColor)((int)current%4);
    current = (pieceColor)((int)current + 1);
    std::cout << current << std::endl;

    while (state[current - 1] == 1)
    {
        current = (pieceColor)((int)current%4);
        current = (pieceColor)((int)current + 1);
    }
    std::cout << current << std::endl;
}

void MainWindow::Move()
{
    /*
     *  Move from from_pos to to_pos
     *
     *  1. from_pos is not to_pos and not an ally
     *  2. piece on from_pos is alive and can move.(not LEI OR QI OR in base), to_pos is not occupied camp
     *  3. to_pos is reachable:
     *      if from_pos is camp, all directions.
     *      if from_pos is rail,
     *          if is GONG, BFS search all railway.
     *          if is not GONG, search the railway.
     *      if from_pos is normal, 4 directions or less.
     *
     */

    bool isReachable = false;
    if (from_pos.num == to_pos.num || isAlly(from_pos.piece_num, to_pos.piece_num))
    {
//        //std::cout << from_pos.piece_num<< "," << to_pos.piece_num << std::endl;
//        //std::cout << "Ally" << std::endl;

    }
    else if (isLEI(from_pos.piece_num) || isQI(from_pos.piece_num) || (from_pos.num < 120 && from_pos.num%30 == 1)
             || (from_pos.num < 120 && from_pos.num%30 == 3) || (isCamp(to_pos.num%30) && to_pos.piece_num !=0 ))
    {
//        //std::cout << from_pos.num << " Cannot Move" << std::endl;
    }
    else
    {
        /*
         *  do not have to worry about rails in center.
         */
        if (isCamp(from_pos.num%30) || isCamp(to_pos.num%30))
        {
            int diff = abs(to_pos.num - from_pos.num);
            if (diff == 1 || diff == 4 || diff == 5 || diff == 6)
            {
                isReachable = true;
                goto moveit;
            }
        }
        else if (isRail(from_pos.num) && isRail(to_pos.num))
        {
//            //std::cout << "R to R" << std::endl;
            /*
             * BFS search, not path finding
             *
             * to make it find path, need to use std::deque<std::vector<int>>
             */
            if (isGONG(from_pos.piece_num))
            {
//                //std::cout << "Miner route" << std::endl;
                isReachable = false;
                std::deque<int> RailQ;
                std::vector<int> visited;
                RailQ.push_back(from_pos.num);
                int tmp;
                while (RailQ.size() > 0)
                {
                    tmp = RailQ.front();

                    if (tmp == to_pos.num)
                    {
                        isReachable = true;
                        goto moveit;
                    }
                    else
                    {
                        RailQ.pop_front();


                        visited.push_back(tmp);
                        for (int i = 0; i < BOARDSIZE; i++)
                        {
                            if (RailMatrix[tmp][i] == 1 && ((Master.tile[i].piece_num == 0) || i==to_pos.num)
                                                             &&
                                    (std::find(visited.begin(), visited.end(), i)==visited.end()))
                            {
                                RailQ.push_back(i);
//                                //std::cout << "push " << i << std::endl;
                            }
                        }
                    }
                }

                goto moveit;
            }
            else
            {

//                //std::cout << "Other cases" << std::endl;
                // TODO:slow method, need to hash tuple set.
                int from_ind = searchRail(rail_1, 5, from_pos.num);
                int to_ind = searchRail(rail_1, 5, to_pos.num);
                if (from_ind > -1 && to_ind > -1)
                {
                    //std::cout << "RAIL 1" << std::endl;
                    isReachable = checkRail(rail_1, from_ind, to_ind);
                    goto moveit;
                }
                from_ind = searchRail(rail_2, 5, from_pos.num);
                to_ind = searchRail(rail_2, 5, to_pos.num);
                if (from_ind > -1 && to_ind > -1)
                {
                    //std::cout << "RAIL 2" << std::endl;
                    isReachable = checkRail(rail_2, from_ind, to_ind);
                    goto moveit;
                }
                from_ind = searchRail(rail_3, 5, from_pos.num);
                to_ind = searchRail(rail_3, 5, to_pos.num);
                if (from_ind > -1 && to_ind > -1)
                {
                    //std::cout << "RAIL 3" << std::endl;
                    isReachable = checkRail(rail_3, from_ind, to_ind);
                    goto moveit;
                }
                from_ind = searchRail(rail_4, 5, from_pos.num);
                to_ind = searchRail(rail_4, 5, to_pos.num);
                if (from_ind > -1 && to_ind > -1)
                {
                    //std::cout << "RAIL 4" << std::endl;
                    isReachable = checkRail(rail_4, from_ind, to_ind);
                    goto moveit;
                }
                from_ind = searchRail(rail_5, 5, from_pos.num);
                to_ind = searchRail(rail_5, 5, to_pos.num);
                if (from_ind > -1 && to_ind > -1)
                {
                    //std::cout << "RAIL 5" << std::endl;
                    isReachable = checkRail(rail_5, from_ind, to_ind);
                    goto moveit;
                }
                from_ind = searchRail(rail_6, 5, from_pos.num);
                to_ind = searchRail(rail_6, 5, to_pos.num);
                if (from_ind > -1 && to_ind > -1)
                {
                    //std::cout << "RAIL 6" << std::endl;
                    isReachable = checkRail(rail_6, from_ind, to_ind);
                    goto moveit;
                }
                from_ind = searchRail(rail_7, 5, from_pos.num);
                to_ind = searchRail(rail_7, 5, to_pos.num);
                if (from_ind > -1 && to_ind > -1)
                {
                    //std::cout << "RAIL 7" << std::endl;
                    isReachable = checkRail(rail_7, from_ind, to_ind);
                    goto moveit;
                }
                from_ind = searchRail(rail_8, 5, from_pos.num);
                to_ind = searchRail(rail_8, 5, to_pos.num);
                if (from_ind > -1 && to_ind > -1)
                {
                    //std::cout << "RAIL 8" << std::endl;
                    isReachable = checkRail(rail_8, from_ind, to_ind);
                    goto moveit;
                }
                from_ind = searchRail(rail_9, 13, from_pos.num);
                to_ind = searchRail(rail_9, 13, to_pos.num);
                if (from_ind > -1 && to_ind > -1)
                {
                    //std::cout << "RAIL 9" << std::endl;
                    isReachable = checkRail(rail_9, from_ind, to_ind);
                    goto moveit;
                }
                from_ind = searchRail(rail_10, 13, from_pos.num);
                to_ind = searchRail(rail_10, 13, to_pos.num);
                if (from_ind > -1 && to_ind > -1)
                {
                    //std::cout << "RAIL 10" << std::endl;
                    isReachable = checkRail(rail_10, from_ind, to_ind);
                    goto moveit;
                }
                from_ind = searchRail(rail_11, 13, from_pos.num);
                to_ind = searchRail(rail_11, 13, to_pos.num);
                if (from_ind > -1 && to_ind > -1)
                {
                    //std::cout << "RAIL 11" << std::endl;
                    isReachable = checkRail(rail_11, from_ind, to_ind);
                    goto moveit;
                }
                from_ind = searchRail(rail_12, 13, from_pos.num);
                to_ind = searchRail(rail_12, 13, to_pos.num);
                if (from_ind > -1 && to_ind > -1)
                {
                    //std::cout << "RAIL 12" << std::endl;
                    isReachable = checkRail(rail_12, from_ind, to_ind);
                    goto moveit;
                }
                from_ind = searchRail(rail_13, 10, from_pos.num);
                to_ind = searchRail(rail_13, 10, to_pos.num);
                if (from_ind > -1 && to_ind > -1)
                {
                    //std::cout << "RAIL 13" << std::endl;
                    isReachable = checkRail(rail_13, from_ind, to_ind);
                    goto moveit;
                }
                from_ind = searchRail(rail_14, 10, from_pos.num);
                to_ind = searchRail(rail_14, 10, to_pos.num);
                if (from_ind > -1 && to_ind > -1)
                {
                    //std::cout << "RAIL 14" << std::endl;
                    isReachable = checkRail(rail_14, from_ind, to_ind);
                    goto moveit;
                }
                from_ind = searchRail(rail_15, 10, from_pos.num);
                to_ind = searchRail(rail_15, 10, to_pos.num);
                if (from_ind > -1 && to_ind > -1)
                {
                    //std::cout << "RAIL 15" << std::endl;
                    isReachable = checkRail(rail_15, from_ind, to_ind);
                    goto moveit;
                }
                from_ind = searchRail(rail_16, 10, from_pos.num);
                to_ind = searchRail(rail_16, 10, to_pos.num);
                if (from_ind > -1 && to_ind > -1)
                {
                    //std::cout << "RAIL 16" << std::endl;
                    isReachable = checkRail(rail_16, from_ind, to_ind);
                    goto moveit;
                }
                from_ind = searchRail(rail_17, 5, from_pos.num);
                to_ind = searchRail(rail_17, 5, to_pos.num);
                if (from_ind > -1 && to_ind > -1)
                {
                    //std::cout << "RAIL 17" << std::endl;
                    isReachable = checkRail(rail_17, from_ind, to_ind);
                    goto moveit;
                }
                from_ind = searchRail(rail_18, 5, from_pos.num);
                to_ind = searchRail(rail_18, 5, to_pos.num);
                if (from_ind > -1 && to_ind > -1)
                {
                    //std::cout << "RAIL 18" << std::endl;
                    isReachable = checkRail(rail_18, from_ind, to_ind);
                    goto moveit;
                }

            }
        }
        else
        {
            int diff = abs(to_pos.num - from_pos.num);
            if (diff == 1 || diff == 5)
            {
                isReachable = true;
                goto moveit;
            }
        }

moveit:
        if (isReachable)
        {
            std::string prefix = ":/images/images/";
            std::string var;
            std::string postfix = ".png";
            pieceColor player_1;
            pieceColor player_2;
            switch(compare(from_pos.piece_num, to_pos.piece_num))
            {
            case ILLEGAL:
                //std::cout << "Illegal Move detected." << std::endl;
                break;
            case MOVE:
                buttons[to_pos.num]->setIcon(buttons[from_pos.num]->icon());
                buttons[from_pos.num]->setIcon(QIcon());

                // piece transfer
                // piece number changed.
                Master.tile[to_pos.num].piece_num = Master.tile[from_pos.num].piece_num;
                Master.piece[Master.tile[to_pos.num].piece_num].position = to_pos.num;
                // from_pos  empty

                Master.tile[from_pos.num].piece_num = 0;
                break;

            case CAPTURE:
                buttons[to_pos.num]->setIcon(buttons[from_pos.num]->icon());
                buttons[from_pos.num]->setIcon(QIcon());

                // piece transfer state
                Master.piece[Master.tile[to_pos.num].piece_num].isAlive = false;
                // piece changed
                Master.tile[to_pos.num].piece_num = Master.tile[from_pos.num].piece_num;
                Master.piece[Master.tile[to_pos.num].piece_num].position = to_pos.num;
                Master.tile[from_pos.num].piece_num = 0;
                break;

            case LOSE:
                buttons[from_pos.num]->setIcon(QIcon());
                // transfer state
                Master.piece[Master.tile[from_pos.num].piece_num].isAlive = false;
                Master.tile[from_pos.num].piece_num = 0;
                break;

            case BOTHDIE:
                buttons[from_pos.num]->setIcon(QIcon());
                buttons[to_pos.num]->setIcon(QIcon());

                Master.piece[Master.tile[to_pos.num].piece_num].isAlive = false;
                Master.piece[Master.tile[from_pos.num].piece_num].isAlive = false;

                Master.tile[from_pos.num].piece_num = 0;
                Master.tile[to_pos.num].piece_num = 0;
                break;

            case LING_LING:
                buttons[from_pos.num]->setIcon(QIcon());
                buttons[to_pos.num]->setIcon(QIcon());
                player_1 = Master.piece[Master.tile[from_pos.num].piece_num].color;
                player_2 = Master.piece[Master.tile[to_pos.num].piece_num].color;



                Master.piece[Master.tile[to_pos.num].piece_num].isAlive = false;
                Master.piece[Master.tile[from_pos.num].piece_num].isAlive = false;

                Master.tile[from_pos.num].piece_num = 0;
                Master.tile[to_pos.num].piece_num = 0;



                if (player_1 == 1)
                {
                    var = "r11";
                    buttons[Master.piece[player_1*25].position]->setIcon(QIcon(QString::fromStdString(prefix+ var+ postfix)));
                }
                else if (player_1 == 2)
                {
                    var = "b11";

                    buttons[Master.piece[player_1*25].position]->setIcon(QIcon(QString::fromStdString(prefix+ var+ postfix)));
                }
                else if (player_1 == 3)
                {
                    var = "g11";

                    buttons[Master.piece[player_1*25].position]->setIcon(QIcon(QString::fromStdString(prefix+ var+ postfix)));
                }
                else if (player_1 == 4)
                {
                    var = "d11";
                    buttons[Master.piece[player_1*25].position]->setIcon(QIcon(QString::fromStdString(prefix+ var+ postfix)));
                }

                if (player_2 == 1)
                {
                    var = "r11";
                    buttons[Master.piece[player_2*25].position]->setIcon(QIcon(QString::fromStdString(prefix+ var+ postfix)));
                }
                else if (player_2 == 2)
                {
                    var = "b11";
                    buttons[Master.piece[player_2*25].position]->setIcon(QIcon(QString::fromStdString(prefix+ var+ postfix)));
                }
                else if (player_2 == 3)
                {
                    var = "g11";
                    buttons[Master.piece[player_2*25].position]->setIcon(QIcon(QString::fromStdString(prefix+ var+ postfix)));
                }
                else if (player_2 == 4)
                {
                    var = "d11";
                    buttons[Master.piece[player_2*25].position]->setIcon(QIcon(QString::fromStdString(prefix+ var+ postfix)));
                }
                break;

            case ZHA_LING:
                buttons[from_pos.num]->setIcon(QIcon());
                buttons[to_pos.num]->setIcon(QIcon());
                player_2 = Master.piece[Master.tile[to_pos.num].piece_num].color;
                Master.piece[Master.tile[to_pos.num].piece_num].isAlive = false;
                Master.piece[Master.tile[from_pos.num].piece_num].isAlive = false;

                Master.tile[from_pos.num].piece_num = 0;
                Master.tile[to_pos.num].piece_num = 0;

                if (player_2 == 1)
                {
                    var = "r11";
                    buttons[Master.piece[player_2*25].position]->setIcon(QIcon(QString::fromStdString(prefix+ var+ postfix)));
                }
                else if (player_2 == 2)
                {
                    var = "b11";
                    buttons[Master.piece[player_2*25].position]->setIcon(QIcon(QString::fromStdString(prefix+ var+ postfix)));
                }
                else if (player_2 == 3)
                {
                    var = "g11";
                    buttons[Master.piece[player_2*25].position]->setIcon(QIcon(QString::fromStdString(prefix+ var+ postfix)));
                }
                else if (player_2 == 4)
                {
                    var = "d11";
                    buttons[Master.piece[player_2*25].position]->setIcon(QIcon(QString::fromStdString(prefix+ var+ postfix)));
                }
                break;
                break;

            case LING_ZHA:
                buttons[from_pos.num]->setIcon(QIcon());
                buttons[to_pos.num]->setIcon(QIcon());
                player_1 = Master.piece[Master.tile[from_pos.num].piece_num].color;
                Master.piece[Master.tile[to_pos.num].piece_num].isAlive = false;
                Master.piece[Master.tile[from_pos.num].piece_num].isAlive = false;

                Master.tile[from_pos.num].piece_num = 0;
                Master.tile[to_pos.num].piece_num = 0;

                if (player_1 == 1)
                {
                    var = "r11";
                    buttons[Master.piece[player_1*25].position]->setIcon(QIcon(QString::fromStdString(prefix+ var+ postfix)));
                }
                else if (player_1 == 2)
                {
                    var = "b11";

                    buttons[Master.piece[player_1*25].position]->setIcon(QIcon(QString::fromStdString(prefix+ var+ postfix)));
                }
                else if (player_1 == 3)
                {
                    var = "g11";

                    buttons[Master.piece[player_1*25].position]->setIcon(QIcon(QString::fromStdString(prefix+ var+ postfix)));
                }
                else if (player_1 == 4)
                {
                    var = "d11";
                    buttons[Master.piece[player_1*25].position]->setIcon(QIcon(QString::fromStdString(prefix+ var+ postfix)));
                }

                break;

            case LING_LEI:
                buttons[from_pos.num]->setIcon(QIcon());
                // transfer state
                player_1 = Master.piece[Master.tile[from_pos.num].piece_num].color;
                Master.piece[Master.tile[from_pos.num].piece_num].isAlive = false;
                Master.tile[from_pos.num].piece_num = 0;
                if (player_1 == 1)
                {
                    var = "r11";
                    buttons[Master.piece[player_1*25].position]->setIcon(QIcon(QString::fromStdString(prefix+ var+ postfix)));
                }
                else if (player_1 == 2)
                {
                    var = "b11";

                    buttons[Master.piece[player_1*25].position]->setIcon(QIcon(QString::fromStdString(prefix+ var+ postfix)));
                }
                else if (player_1 == 3)
                {
                    var = "g11";

                    buttons[Master.piece[player_1*25].position]->setIcon(QIcon(QString::fromStdString(prefix+ var+ postfix)));
                }
                else if (player_1 == 4)
                {
                    var = "d11";
                    buttons[Master.piece[player_1*25].position]->setIcon(QIcon(QString::fromStdString(prefix+ var+ postfix)));
                }

                break;

            case FLAG:
                buttons[to_pos.num]->setIcon(buttons[from_pos.num]->icon());
                buttons[from_pos.num]->setIcon(QIcon());


                // piece transfer
                Master.piece[Master.tile[to_pos.num].piece_num].isAlive = false;
                pieceColor loser = Master.piece[Master.tile[to_pos.num].piece_num].color;

                //std::cout << loser << std::endl;

                state[loser - 1] = 1;

                Master.tile[to_pos.num].piece_num = Master.tile[from_pos.num].piece_num;
                Master.piece[Master.tile[to_pos.num].piece_num].position = to_pos.num;

                Master.tile[from_pos.num].piece_num = 0;

                for (int i = 1 ; i < 26 ; i++)
                {
//                    //std::cout << "alive " << Master.piece[((int) (loser - 1)*25 + i )].isAlive << std::endl;
                    if (Master.piece[((int) (loser - 1)*25 + i )].isAlive)
                    {
                        buttons[Master.piece[((int) (loser - 1)*25 + i)].position]->setIcon(QIcon());
//                        //std::cout << ((int) (loser - 1)*25 + i) << std::endl;
                        // end their lives
                        Master.piece[((int) (loser - 1)*25 + i )].isAlive = false;
                        // set no piece on tile
                        Master.tile[Master.piece[((int) (loser - 1)*25 + i)].position].piece_num = 0;
                    }
                }
                break;

            }
            // last step executed, now change player id
            next_player();
        }
    }
}

Battle MainWindow::compare(int va, int vb)
{
    if (vb == 0)
    {
        return MOVE;
    }
    else if ((int)Master.piece[vb].name > 0 && (int)Master.piece[vb].name < 10
             && (int)Master.piece[va].name > 0 && (int)Master.piece[va].name < 10)
    {
        if  ((int)Master.piece[va].name > (int)Master.piece[vb].name )
            return CAPTURE;
        if  ((int)Master.piece[va].name < (int)Master.piece[vb].name )
            return LOSE;
        if ((int)Master.piece[va].name == (int)Master.piece[vb].name )
        {
            if (Master.piece[va].name == LING)
            {
                return LING_LING;
            }
            return BOTHDIE;
        }
    }

    else if ((int)Master.piece[vb].name == 10)
    {
        if (Master.piece[va].name == LING)
        {
            return LING_ZHA;
        }
        return BOTHDIE;
    }

    else if ((int)Master.piece[va].name == 10)
    {
        if (Master.piece[vb].name == LING)
        {
            return ZHA_LING;
        }
        return BOTHDIE;
    }

    else if ((int)Master.piece[vb].name == 11)
    {
        if (Master.piece[va].name == LING)
        {
            return LING_LEI;
        }
        if (Master.piece[va].name == GONG)
        {
            return CAPTURE;
        }
        return LOSE;
    }

    else if ((int)Master.piece[vb].name == 12)
    {
        return FLAG;
    }
    return ILLEGAL;

}


int MainWindow::searchRail(int *rail, int len, int n)
{
    for(int i = 0; i < len; i++)
    {
        //std::cout << i << " " << std::endl;
        if (rail[i] == n)
            return i;
    }
    // did not find it.
    return -1;
}

bool MainWindow::checkRail(int *rail, int from_ind, int to_ind)
{
    int s_tmp = 0;
    for (int i = std::min(from_ind, to_ind); i <= std::max(from_ind, to_ind); i++)
    {
        s_tmp += Master.tile[rail[i]].piece_num;
    }
    if (s_tmp == Master.tile[rail[from_ind]].piece_num + Master.tile[rail[to_ind]].piece_num)
    {
        return true;
    }
    return false;
}

bool isLEI(int n)
{
    if (n%25 < 25 && n%25 > 21)
    {
        return true;
    }
    return false;
}

bool isQI(int n)
{
    if (n!=0 && n%25 == 0)
    {
        return true;
    }

    return false;
}

bool isZHA(int n)
{
    if (n%25 == 21 || n%25 == 20)
    {
        return true;
    }
    return false;
}

bool isGONG(int n)
{
    if (n%25 > 0 && n%25 < 4)
    {
        return true;
    }
    return false;
}

bool isAlly(int pieceA_num, int pieceB_num)
{
    /*
     * empty slot is not ally. A is start place, B is destination place.
     *
     */
    if  (pieceA_num > 0 && pieceB_num > 0 && (abs((pieceA_num - 1)/25 - (pieceB_num - 1)/25) == 2 || (pieceA_num - 1)/25 == (pieceB_num - 1)/25))
    {
        return true;
    }
    return false;
}

void reOrder(int* layout, int* re_layout)
{
    int counter[12] = {0};
    int base[12] = {1, 4, 7, 10, 12, 14, 16, 18, 19, 20, 22, 25};
    int actual[12] = {3, 3, 3, 2, 2, 2, 2, 1, 1, 2, 3, 1};
    for (int i = 0; i < 30; i++)
    {
        if (layout[i]!=0)
        {
            re_layout[i] = base[layout[i] -1] + counter[layout[i] - 1];
            counter[layout[i] - 1] += 1;
        }
        else
        {
            re_layout[i] = 0;
        }
    }

    for (int i = 0; i < 12; i++)
    {
        if (actual[i] != counter[i])
        {
            //std::cout <<"Incorrect Num at" << i << ":" << actual[i] << "," << counter[i] << std::endl;
        }
    }
}

void MainWindow::simulate(int n, int m)
{
    if (n < BOARDSIZE && n > -1 && m < BOARDSIZE && m > -1)
    {
        buttons[n]->click();
        buttons[m]->click();
    }
}


void MainWindow::searchAvail()
{
    for (int i = 0; i < 25; i++)
    {
        // search all alive pieces and put them in a queue.
    }
}
