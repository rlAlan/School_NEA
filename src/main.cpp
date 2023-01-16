#include "../build/config.h"
#include <SFML/Graphics/Color.hpp>
#include <SFML/Window/Event.hpp>
#include <SFML/Window/Keyboard.hpp>
#include <iostream>
#include <SFML/Graphics/RenderWindow.hpp>
#include <SFML/Graphics/CircleShape.hpp>

#include <NEA/App.h>


int main() {
    sf::RenderWindow window{sf::VideoMode{1200,800}, "Main Game"};
    window.setFramerateLimit(60);

    sf::CircleShape shape;
    shape.setRadius(20);
    shape.setPosition(400,400);
    shape.setFillColor(sf::Color::Cyan);


    while(window.isOpen()){
    sf::Event event;
        while(window.pollEvent(event)){
            if(event.type == sf::Event::Closed)
                window.close();
        }
        window.clear(sf::Color::Black);
        window.draw(shape);
        window.display();
    }
    
    return 0;
}
