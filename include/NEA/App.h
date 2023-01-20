#ifndef APP_H
#define APP_H

#include <SFML/Graphics.hpp>
#include <SFML/Window.hpp>


struct mIsMoving{
    bool Up     : 2;
    bool Down   : 2;
    bool Left   : 2;
    bool Right  : 2;
};

class App{
    public:
        App(unsigned int, unsigned int);
        void run();

    private:
        void proccessEvents();
        void render();
        void update(sf::Time);
        void handleUserInput(sf::Keyboard::Key,bool);

    private:

        sf::RenderWindow mWindow;
        sf::CircleShape mUser;
        mIsMoving mUserMove;
};



#endif
