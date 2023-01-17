#include <NEA/App.h>


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
}


void App::proccessEvents(){
    sf::Event event;
    while(mRWindow.pollEvent(event)){
        if(event.type == sf::Event::Closed)
            mRWindow.close();
    }
}


void App::render(){
        mRWindow.clear(sf::Color::Black);
        mRWindow.draw(mPlayer);
        mRWindow.display();
}
