#include <NEA/App.h>
#include <SFML/Window/Keyboard.hpp>


App::App(unsigned int width, unsigned int height)
    : mRWindow({width,height}, "My App")
    , mPlayer(20)
{

    mRWindow.setFramerateLimit(60);

    //tmp default player
    mPlayer.setRadius(20);
    mPlayer.setPosition(400,400);
    mPlayer.setFillColor(sf::Color::Cyan);

}


void App::run(){
    while(mRWindow.isOpen()){
        proccessEvents();
        update();
        render();
    }
}

void App::update(){
// nothing to update for now
    sf::Vector2f movement{0.0f,0.0f};
    sf::Vector2f velocity{5,5};
    if(mPlayerMove.Up)
        movement.y -= velocity.y;
    if(mPlayerMove.Down)
        movement.y += velocity.y;
    if(mPlayerMove.Left)
        movement.x -= velocity.x;
    if(mPlayerMove.Right)
        movement.x += velocity.x;
    mPlayer.move(movement);
}


void App::proccessEvents(){
    sf::Event event;
    while(mRWindow.pollEvent(event)){
        switch(event.type)
        {
            case sf::Event::KeyPressed:
                handlePlayerInput(event.key.code, true);
                break;
            case sf::Event::KeyReleased:
                handlePlayerInput(event.key.code, false);
                break;
            case sf::Event::Closed:
                mRWindow.close();
            default:
                break;
        }
    }
}


void App::render(){
        mRWindow.clear(sf::Color::Black);
        mRWindow.draw(mPlayer);
        mRWindow.display();
}


void App::handlePlayerInput(sf::Keyboard::Key key,bool isPressed){
    switch(key){
        case sf::Keyboard::W:
            mPlayerMove.Up = isPressed;
            break;
        case sf::Keyboard::S:
            mPlayerMove.Down = isPressed;
            break; 
        case sf::Keyboard::D:
            mPlayerMove.Right = isPressed;
            break;
        case sf::Keyboard::A:
            mPlayerMove.Left = isPressed;
            break;
        default:
            break;
    }
}
