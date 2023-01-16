#ifndef APP_H
#define APP_H

#include <SFML/Graphics.hpp>
#include <SFML/Window.hpp>

class App{
    public:
        App();
        void run();

    private:
        void proccessEvents();
        void render();
        void update();

    private:
        sf::RenderWindow mWindow;
        sf::CircleShape mPlayer;
};


#endif
