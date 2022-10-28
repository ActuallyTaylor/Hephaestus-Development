/*
    GameScene.cpp
    Zachary lineman
    3/19/22

    =================
    DESCRIPTION
    =================
*/

#include "GameScene.hpp"

#include <utility>

GameScene::GameScene(Hephaestus* _engine, Function _continueFunction) {
    engine = _engine;
    continueFunction = std::move(_continueFunction);

    characterCenteringX = engine->windowWidth() / 2 - 16;
    characterCenteringY = engine->windowHeight() / 2 - 16;
}

void GameScene::setupScene() {
    scene.setCollisionsEnabled(true);
    scene.setPhysicsEnabled(false);

    scene.setInit([this] { init(); });
    scene.setDestroy([this] { destroy(); });
    scene.setTick([this] { tick(); });
    scene.setUpdate([this] { update(); });
    scene.setRender([this] { render(); });

    scene.addCamera(&gameCamera, true);

    /*
     * Sprite Placing
     */
    buildWorldFromTextDefinition("./TestWorld.LDataWorld");

    /*
     * Font Loading
     */
    scene.loadFont("./fonts/NewHiScore.ttf", 18);
    scene.addText(&playerDebugText);
    scene.addText(&cameraDebugText);

    /*
     * Character Setup
     */
    merchant.setupMerchant(&scene);

    space.setupSprite(&scene);

    mainCharacter.setupCharacter(&scene);

    for(DroppedItem &item: droppedItems) {
        item.setupSprite(&scene);
        item.spriteOverlapped = [this](auto && PH1, auto && PH2) { droppedItemOverlapped(std::forward<decltype(PH1)>(PH1), std::forward<decltype(PH2)>(PH2)); };
    }
}


void GameScene::init() {

}

void GameScene::destroy() {

}

void GameScene::tick() {

}

int rotationValue = 0;
void GameScene::update() {
    playerDebugText.text = std::string("x: ") + std::to_string(mainCharacter.position.x) + std::string(", y: ") + std::to_string(mainCharacter.position.y);
    cameraDebugText.text = std::string("x: ") + std::to_string(gameCamera.position.x) + std::string(", y: ") + std::to_string(gameCamera.position.y);

    gameCamera.position.y = -(mainCharacter.position.y - characterCenteringY);
    gameCamera.position.x = -(mainCharacter.position.x - characterCenteringX);

    for(DroppedItem& droppedItem: droppedItems) {
        droppedItem.droppedSprite.rotation.y = rotationValue;
    }
    rotationValue ++;
}

void GameScene::render() {
    if (!mainCharacter.isMoving()) {
        mainCharacter.flipbook.updateAnimation("idle_bounce");
    }
}

void GameScene::buildWorldFromTextDefinition(const std::string& worldPath) {
    std::ifstream file(worldPath);

    if (file.is_open()) {
        std::string line;

        bool passedDataLine = false;
        int lineCount { 0 };
        while (std::getline(file, line)) {
            if (!passedDataLine) { // Skip header line
                if(line == "=== ALL DATA ABOVE THIS LINE WILL BE IGNORED ===") {
                    passedDataLine = true;
                }
                printf("Skipped line %s\n", line.c_str());
                continue;
            }

            // Parse a regular line
            std::istringstream stringStream(line);
            vector<string> values {};

            // Break into comma seperated values
            while(stringStream.good()) {
                string subString;
                getline(stringStream, subString, ',');
                values.push_back(subString);
            }

            std::string imagePath = "./WorldSprites/" + values.at(0) + ".png"; //Append sprite name to get the image path
            glm::vec3 position = {std::stof(values.at(1)), std::stof(values.at(2)), std::stof(values.at(3))};
            glm::vec2 dimension = {std::stof(values.at(4)), std::stof(values.at(5))};
            glm::vec3 rotation = {std::stof(values.at(6)), std::stof(values.at(7)), std::stof(values.at(8))};

            Sprite constructedSprite = Sprite(values.at(0), imagePath, nearest, position, dimension, rotation);
            if(std::stoi(values.at(9))) {
                constructedSprite.setCollidable(true);
            } else {
                constructedSprite.setCollidable(false);
            }

            constructedSprite.immovable = true;
            worldSprites.push_back(constructedSprite);
            lineCount ++;
        }

        for(auto & worldSprite : worldSprites) {
            scene.addSprite(&worldSprite);
        }

        file.close();
    } else {
        std::cerr << "Unable to open file" << std::endl;
    }
}

void GameScene::droppedItemOverlapped(Item* item, DroppedItem* dItem) {
    std::cout << "Dropped Item Overlapped: " << dItem->id << std::endl;
    if (mainCharacter.pickupItem(*item)) {
        scene.removeSprite(&dItem->droppedSprite);
        scene.removeCollision(&dItem->itemCollision);
        dItem->pickedUP = true;

//         Remove based on index instead of this dumb remove_if
//        int index = indexOf(*dItem, droppedItems);
//
//        droppedItems.erase(droppedItems.begin() + index);
    }
}

void GameScene::overlappedEncounterSpace(EncounterSpace *encounterSpace) {
    std::cout << "Overlapped Encounter Space: " << encounterSpace->id << std::endl;

}
