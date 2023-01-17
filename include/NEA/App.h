#ifndef APP_H
#define APP_H

#include <SFML/Graphics.hpp>
#include <SFML/Window.hpp>

class App{
    public:
        App(unsigned int, unsigned int);
        void run();

    private:
        void proccessEvents();
        void render();
        void update();

    private:
        sf::RenderWindow mRWindow;
        sf::CircleShape mPlayer;
};


#endif
