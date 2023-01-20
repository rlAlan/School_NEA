#include <NEA/App.h>
#include <SFML/System/Time.hpp>
#include <SFML/Window/Keyboard.hpp>


App::App(unsigned int width, unsigned int height)
    : mWindow({width,height}, "My App")
    , mUser(20)
{

    mWindow.setFramerateLimit(60);

    //tmp default User
    mUser.setRadius(20);
    mUser.setPosition(400,400);
    mUser.setFillColor(sf::Color::Cyan);

}


void App::run(){
    sf::Clock clock;
    sf::Time timeSinceLastUpdate = sf::Time::Zero;
    sf::Time timePerFrame{sf::seconds(1.0f / 60.0f)};
    while(mWindow.isOpen()){
        proccessEvents();
        timeSinceLastUpdate += clock.restart();
        while(timeSinceLastUpdate > timePerFrame){
            timeSinceLastUpdate -= timePerFrame;
            proccessEvents();
            update(timePerFrame);
        }
        render();
    }
}

void App::update(sf::Time dt){
    sf::Vector2f movement{0.0f,0.0f};
    sf::Vector2f UserSpeed{200,200};
    if(mUserMove.Up)
        movement.y -= UserSpeed.y;
    if(mUserMove.Down)
        movement.y += UserSpeed.y;
    if(mUserMove.Left)
        movement.x -= UserSpeed.x;
    if(mUserMove.Right)
        movement.x += UserSpeed.x;
    mUser.move(movement*dt.asSeconds());
}


void App::proccessEvents(){
    sf::Event event;
    while(mWindow.pollEvent(event)){
        switch(event.type)
        {
            case sf::Event::KeyPressed:
                handleUserInput(event.key.code, true);
                break;
            case sf::Event::KeyReleased:
                handleUserInput(event.key.code, false);
                break;
            case sf::Event::Closed:
                mWindow.close();
            default:
                break;
        }
    }
}


void App::render(){
        mWindow.clear(sf::Color::Black);
        mWindow.draw(mUser);
        mWindow.display();
}


void App::handleUserInput(sf::Keyboard::Key key,bool isPressed){
    switch(key){
        case sf::Keyboard::W:
            mUserMove.Up = isPressed;
            break;
        case sf::Keyboard::S:
            mUserMove.Down = isPressed;
            break; 
        case sf::Keyboard::D:
            mUserMove.Right = isPressed;
            break;
        case sf::Keyboard::A:
            mUserMove.Left = isPressed;
            break;
        default:
            break;
    }
}
