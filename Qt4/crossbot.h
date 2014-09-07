#ifndef CROSSBOT_H
#define CROSSBOT_H

/*
 * "Crossbot" is an artificial intelligence program for "CrossFire" game.
 *
 * It is based on threat-field and min-max search/prune as well as using
 * Bayesian analysis.
 *
 * Each player will choose a move from available moves. Use threat-field
 * to rule out unlikely doable choices, then search min-max tree with a
 * relatively large depth.
 *
 * This will be extremely slow if there are not any pruning work for Miners'
 * choices. Here miners' movement will subject to a contraint and a optimization
 * function, to minimize threat on them and maximize the chance to clear the mines.
 *
 *
 */

class Crossbot
{
public:
    Crossbot();


};

#endif // CROSSBOT_H
