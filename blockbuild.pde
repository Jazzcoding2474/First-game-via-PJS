var Block = function(x, y, type){
    this.x = x;
    this.y = y;
    this.type = type;
};
var wood = new Block([1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32], [1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8], [
0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,35,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,
2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,
2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2]);

var typeInHand = 1;
var scroll = 0;
var keyIsReleased = false;
var hotbar = [1,2,3,4,35,5,15,36,13,14,12,16,37,17,38,39,40,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34];
var hotbarNum = 0;
var options = false;
var menu = true;
var playing = false;
var fancyGraphics = true;
var generatedStructures = true;

var liquid = function(direction, level){
    this.direction = direction;
    this.level = level;
};

var keyReleased = function(){keyIsReleased = true;};

var draw = function(){
    
    if(menu === true){
        background(209, 87, 0);
        textSize(35);
        textAlign(CENTER, CENTER);
        text("Block Builder 2.0", 200, 50);
        fill(150);
        rect(150, 175, 100, 25);
        rect(150, 205, 100, 25);
        fill(0, 0, 0);
        textSize(20);
        text("Play", 200, 187);
        text("Options", 200, 220);
        if(mouseX > 150 & mouseX < 250 & mouseY > 175 & mouseY < 200 & mouseIsPressed){
            menu = false;
            if(generatedStructures === true){
                wood = new Block([1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32], [1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8], [
0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,2,2,2,2,0,0,0,0,
0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,2,2,3,5,0,0,0,0,
0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,2,2,3,3,0,0,0,0,
0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,2,2,2,0,0,0,0,0,2,2,3,3,3,2,0,0,0,
0,0,0,0,0,0,0,0,0,0,0,0,0,2,2,2,2,2,2,0,0,0,0,2,3,3,3,2,2,0,0,0,
2,2,2,5,5,5,5,5,5,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,
2,2,2,2,2,5,5,5,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,
2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2]);
            }
        }
        if(mouseX > 150 & mouseX < 250 & mouseY > 205 & mouseY < 230 & mouseIsPressed){
            options = true;
        }
    }
    if(options === true){
        background(209, 87, 0);
        fill(150);
        rect(50, 50, 150, 50);
        rect(250, 50, 50, 50);
        rect(310, 50, 50, 50);
        rect(300, 325, 75, 50);
        fill(0, 0, 0);
        textSize(20);
        text("Back", 337, 350);
        if(mouseX > 300 & mouseX < 375 & mouseY > 325 & mouseY < 375 & mouseIsPressed){
            options = false;
        }
        text("Fancy Graphics", 125, 75);
        text("On", 275, 75);
        text("Off", 335, 75);
        if(mouseX > 250 & mouseX < 300 & mouseY > 50 & mouseY < 100 & mouseIsPressed){
            fancyGraphics = true;
        }
        if(mouseX > 310 & mouseX < 360 & mouseY > 50 & mouseY < 100 & mouseIsPressed){
            fancyGraphics = false;
        }
        if(fancyGraphics === true){
            fill(53, 46, 255, 100);
            rect(250, 50, 50, 50);
        }else{
            fill(53, 46, 255, 100);
            rect(310, 50, 50, 50);
        }
        if(playing === false){
            fill(150);
            rect(50, 110, 150, 50);
            rect(250, 110, 50, 50);
            rect(310, 110, 50, 50);
            textSize(15);
            fill(0, 0, 0);
            text("Generated Structures", 125, 135);
            textSize(20);
            text("On", 275, 135);
            text("Off", 335, 135);
            if(mouseX > 250 & mouseX < 300 & mouseY > 110 & mouseY < 160 & mouseIsPressed){
                generatedStructures = true;
            }
            if(mouseX > 310 & mouseX < 360 & mouseY > 110 & mouseY < 160 & mouseIsPressed){
                generatedStructures = false;
            }
            if(generatedStructures === true){
                fill(53, 46, 255, 100);
                rect(250, 110, 50, 50);
            }else{
                fill(53, 46, 255, 100);
                rect(310, 110, 50, 50);
            }
        }
        
    }
    
    if(options === false & menu === false){
    
    playing = true;
    noStroke();
    background(94, 137, 255);
    translate(-scroll, 0);
    
    //blocks
    Block.prototype.draw = function(){
        if(random(0, 100) < 1){
            for(var i = 0; i < this.type.length; i++){
                if(this.type[i] > 5 & this.type[i] < 12){
                    this.type[i] = 0;
                }
            }
        }
        for(var i = 0; i < this.type.length; i++){
            if(this.type[i] === 0){
                fill(94, 137, 255);
                rect(this.x[i]*50-50, this.y[i]*50-50, 50, 50);
            }
            if(this.type[i] === 1){
                fill(242, 128, 41);
                rect(this.x[i]*50-50, this.y[i]*50-50, 50, 50);
            }
            if(this.type[i] === 2){
                fill(255, 89, 0);
                rect(this.x[i]*50-50, this.y[i]*50-50, 50, 50);
                if(this.type[i-32] === 0){
                    fill(19, 161, 0);
                    rect(this.x[i]*50-50, this.y[i]*50-50, 50, 10);
                }
            }
            if(this.type[i] === 3){
                fill(166, 166, 166);
                rect(this.x[i]*50-50, this.y[i]*50-50, 50, 50);
            }
            if(this.type[i] === 4){
                fill(130, 130, 130);
                rect(this.x[i]*50-50, this.y[i]*50-50, 50, 50);
                if(fancyGraphics === true){
                    noFill();
                    stroke(0, 0, 0);
                    arc((this.x[i]*50-50), (this.y[i]*50-50), 20, 20, 0, 90);
                    arc((this.x[i]*50), (this.y[i]*50-50), 20, 20, 90, 180);
                    arc((this.x[i]*50-30), (this.y[i]*50-50), 20, 20, 0, 180);
                    ellipse((this.x[i]*50-30), (this.y[i]*50-10), 10, 15);
                    arc((this.x[i]*50-15), (this.y[i]*50), 20, 20, -180, 0);
                    arc((this.x[i]*50-50), (this.y[i]*50), 20, 20, -90, 0);
                    arc((this.x[i]*50-50), (this.y[i]*50-25), 20, 20, -90, 90);
                    arc((this.x[i]*50), (this.y[i]*50-25), 20, 20, 90, 270);
                    ellipse((this.x[i]*50-25), (this.y[i]*50-28), 20, 20);
                    noStroke();
                }else{
                    stroke(107, 107, 107);
                    strokeWeight(5);
                    line(this.x[i]*50-47, this.y[i]*50-25, this.x[i]*50, this.y[i]*50-25);
                    line(this.x[i]*50-25, this.y[i]*50-47, this.x[i]*50-25, this.y[i]*50);
                    strokeWeight(1);
                    noStroke();
                }
            }
            if(this.type[i] === 5){
                if(this.type[i + 32] === 0){
                    this.type[i + 32] = 5;
                }else if(this.type[i + 32] > 4 & this.type[i + 32] < 11){
                    this.type[i + 32] = 5;
                }else{
                    if(this.type[i - 1] === 0 & this.x[i] > 1){
                        this.type[i - 1] = 6;
                    }
                    if(this.type[i + 1] === 0 & this.x[i] < 32){
                        this.type[i + 1] = 6;
                    }
                }
                fill(0, 68, 255);
                rect(this.x[i]*50-50, this.y[i]*50-50, 50, 50);
            }
            if(this.type[i] === 6){
                if(this.type[i + 32] === 0){
                    this.type[i + 32] = 5;
                }else if(this.type[i + 32] > 4 & this.type[i + 32] < 11){
                    this.type[i + 32] = 5;
                }else{
                    if(this.type[i - 1] === 0 & this.x[i] > 1){
                        this.type[i - 1] = 7;
                    }
                    if(this.type[i + 1] === 0 & this.x[i] < 32){
                        this.type[i + 1] = 7;
                    }
                }
                fill(94, 137, 255);
                rect(this.x[i]*50-50, this.y[i]*50-50, 50, 50);
                fill(0, 68, 255);
                rect(this.x[i]*50-50, this.y[i]*50-43, 50, 43);
            }
            if(this.type[i] === 7){
                if(this.type[i + 32] === 0){
                    this.type[i + 32] = 5;
                }else if(this.type[i + 32] > 4 & this.type[i + 32] < 11){
                    this.type[i + 32] = 5;
                }else{
                    if(this.type[i - 1] === 0 & this.x[i] > 1){
                        this.type[i - 1] = 8;
                    }
                    if(this.type[i + 1] === 0 & this.x[i] < 32){
                        this.type[i + 1] = 8;
                    }
                }
                fill(94, 137, 255);
                rect(this.x[i]*50-50, this.y[i]*50-50, 50, 50);
                fill(0, 68, 255);
                rect(this.x[i]*50-50, this.y[i]*50-36, 50, 36);
            }
            if(this.type[i] === 8){
                if(this.type[i + 32] === 0){
                    this.type[i + 32] = 5;
                }else if(this.type[i + 32] > 4 & this.type[i + 32] < 11){
                    this.type[i + 32] = 5;
                }else{
                    if(this.type[i - 1] === 0 & this.x[i] > 1){
                        this.type[i - 1] = 9;
                    }
                    if(this.type[i + 1] === 0 & this.x[i] < 32){
                        this.type[i + 1] = 9;
                    }
                }
                fill(94, 137, 255);
                rect(this.x[i]*50-50, this.y[i]*50-50, 50, 50);
                fill(0, 68, 255);
                rect(this.x[i]*50-50, this.y[i]*50-29, 50, 29);
            }
            if(this.type[i] === 9){
                if(this.type[i + 32] === 0){
                    this.type[i + 32] = 5;
                }else if(this.type[i + 32] > 4 & this.type[i + 32] < 11){
                    this.type[i + 32] = 5;
                }else{
                    if(this.type[i - 1] === 0 & this.x[i] > 1){
                        this.type[i - 1] = 10;
                    }
                    if(this.type[i + 1] === 0 & this.x[i] < 32){
                        this.type[i + 1] = 10;
                    }
                }
                fill(94, 137, 255);
                rect(this.x[i]*50-50, this.y[i]*50-50, 50, 50);
                fill(0, 68, 255);
                rect(this.x[i]*50-50, this.y[i]*50-22, 50, 22);
            }
            if(this.type[i] === 10){
                if(this.type[i + 32] === 0){
                    this.type[i + 32] = 5;
                }else if(this.type[i + 32] > 4 & this.type[i + 32] < 11){
                    this.type[i + 16] = 5;
                }else{
                    if(this.type[i - 1] === 0 & this.x[i] > 1){
                        this.type[i - 1] = 11;
                    }
                    if(this.type[i + 1] === 0 & this.x[i] < 32){
                        this.type[i + 1] = 11;
                    }
                }
                fill(94, 137, 255);
                rect(this.x[i]*50-50, this.y[i]*50-50, 50, 50);
                fill(0, 68, 255);
                rect(this.x[i]*50-50, this.y[i]*50-15, 50, 15);
            }
            if(this.type[i] === 11){
                if(this.type[i + 32] === 0){
                    this.type[i + 32] = 5;
                }
                fill(94, 137, 255);
                rect(this.x[i]*50-50, this.y[i]*50-50, 50, 50);
                fill(0, 68, 255);
                rect(this.x[i]*50-50, this.y[i]*50-8, 50, 8);
            }
            if(this.type[i] === 12){
                fill(158, 134, 154);
                rect(this.x[i]*50-50, this.y[i]*50-50, 50, 50);
                if(this.y[i] < 8 & this.type[i + 32] === 0){
                    this.type[i + 32] = 12;
                    this.type[i] = 0;
                }
            }
            if(this.type[i] === 13){
                fill(242, 128, 41);
                rect(this.x[i]*50-50, this.y[i]*50-50, 50, 50);
                fill(0, 0, 0);
                rect(this.x[i]*50-20, this.y[i]*50-40, 10, 20);
                fill(207, 207, 207);
                rect(this.x[i]*50-30, this.y[i]*50-20, 20, 10);
                rect(this.x[i]*50-40, this.y[i]*50-40, 10, 10);
            }
            if(this.type[i] === 14){
                fill(130, 130, 130);
                rect(this.x[i]*50-50, this.y[i]*50-50, 50, 50);
                noFill();
                if(fancyGraphics === true){
                    stroke(0, 122, 0);
                    strokeWeight(5);
                    arc((this.x[i]*50-50), (this.y[i]*50-50), 20, 20, 0, 90);
                    arc((this.x[i]*50), (this.y[i]*50-50), 20, 20, 90, 180);
                    arc((this.x[i]*50-30), (this.y[i]*50-50), 20, 20, 0, 180);
                    ellipse((this.x[i]*50-30), (this.y[i]*50-10), 10, 15);
                    arc((this.x[i]*50-15), (this.y[i]*50), 20, 20, -180, 0);
                    arc((this.x[i]*50-50), (this.y[i]*50), 20, 20, -90, 0);
                    arc((this.x[i]*50-50), (this.y[i]*50-25), 20, 20, -90, 90);
                    arc((this.x[i]*50), (this.y[i]*50-25), 20, 20, 90, 270);
                    ellipse((this.x[i]*50-25), (this.y[i]*50-28), 20, 20);
                    noStroke();
                    strokeWeight(1);
                }else{
                    stroke(5, 94, 0);
                    strokeWeight(5);
                    line(this.x[i]*50-47, this.y[i]*50-25, this.x[i]*50, this.y[i]*50-25);
                    line(this.x[i]*50-25, this.y[i]*50-47, this.x[i]*50-25, this.y[i]*50);
                    strokeWeight(1);
                    noStroke();
                }
            }
            if(this.type[i] === 15){
                fill(222, 69, 69);
                stroke(255, 255, 255);
                strokeWeight(2);
                rect(this.x[i]*50-50, this.y[i]*50-50, 25, 10);
                rect(this.x[i]*50-25, this.y[i]*50-50, 25, 10);
                rect(this.x[i]*50-50, this.y[i]*50-40, 25, 10);
                rect(this.x[i]*50-25, this.y[i]*50-40, 25, 10);
                rect(this.x[i]*50-50, this.y[i]*50-30, 25, 10);
                rect(this.x[i]*50-25, this.y[i]*50-30, 25, 10);
                rect(this.x[i]*50-50, this.y[i]*50-20, 25, 10);
                rect(this.x[i]*50-25, this.y[i]*50-20, 25, 10);
                rect(this.x[i]*50-50, this.y[i]*50-10, 25, 10);
                rect(this.x[i]*50-25, this.y[i]*50-10, 25, 10);
                strokeWeight(1);
                noStroke();
            }
            if(this.type[i] === 16){
                fill(89, 0, 37);
                stroke(56, 0, 43);
                strokeWeight(2);
                rect(this.x[i]*50-50, this.y[i]*50-50, 25, 10);
                rect(this.x[i]*50-25, this.y[i]*50-50, 25, 10);
                rect(this.x[i]*50-50, this.y[i]*50-40, 25, 10);
                rect(this.x[i]*50-25, this.y[i]*50-40, 25, 10);
                rect(this.x[i]*50-50, this.y[i]*50-30, 25, 10);
                rect(this.x[i]*50-25, this.y[i]*50-30, 25, 10);
                rect(this.x[i]*50-50, this.y[i]*50-20, 25, 10);
                rect(this.x[i]*50-25, this.y[i]*50-20, 25, 10);
                rect(this.x[i]*50-50, this.y[i]*50-10, 25, 10);
                rect(this.x[i]*50-25, this.y[i]*50-10, 25, 10);
                strokeWeight(1);
                noStroke();
            }
            if(this.type[i] === 17){
                fill(94, 137, 255);
                rect(this.x[i]*50-50, this.y[i]*50-50, 50, 50);
                stroke(255, 255, 255);
                strokeWeight(4);
                noFill();
                rect(this.x[i]*50-48, this.y[i]*50-48, 46, 46);
                strokeWeight(1);
                noStroke();
            }
            if(this.type[i] === 18){
                fill(130, 59, 43);
                rect(this.x[i]*50-50, this.y[i]*50-50, 50, 50);
            }
            if(this.type[i] === 19){
                fill(222, 182, 129);
                rect(this.x[i]*50-50, this.y[i]*50-50, 50, 50);
            }
            if(this.type[i] === 20){
                fill(255, 85, 0);
                rect(this.x[i]*50-50, this.y[i]*50-50, 50, 50);
            }
            if(this.type[i] === 21){
                fill(227, 32, 136);
                rect(this.x[i]*50-50, this.y[i]*50-50, 50, 50);
            }
            if(this.type[i] === 22){
                fill(122, 94, 217);
                rect(this.x[i]*50-50, this.y[i]*50-50, 50, 50);
            }
            if(this.type[i] === 23){
                fill(255, 170, 0);
                rect(this.x[i]*50-50, this.y[i]*50-50, 50, 50);
            }
            if(this.type[i] === 24){
                fill(65, 145, 0);
                rect(this.x[i]*50-50, this.y[i]*50-50, 50, 50);
            }
            if(this.type[i] === 25){
                fill(255, 84, 110);
                rect(this.x[i]*50-50, this.y[i]*50-50, 50, 50);
            }
            if(this.type[i] === 26){
                fill(74, 60, 44);
                rect(this.x[i]*50-50, this.y[i]*50-50, 50, 50);
            }
            if(this.type[i] === 27){
                fill(133, 88, 52);
                rect(this.x[i]*50-50, this.y[i]*50-50, 50, 50);
            }
            if(this.type[i] === 28){
                fill(83, 117, 105);
                rect(this.x[i]*50-50, this.y[i]*50-50, 50, 50);
            }
            if(this.type[i] === 29){
                fill(117, 0, 103);
                rect(this.x[i]*50-50, this.y[i]*50-50, 50, 50);
            }
            if(this.type[i] === 30){
                fill(39, 0, 110);
                rect(this.x[i]*50-50, this.y[i]*50-50, 50, 50);
            }
            if(this.type[i] === 31){
                fill(69, 30, 0);
                rect(this.x[i]*50-50, this.y[i]*50-50, 50, 50);
            }
            if(this.type[i] === 32){
                fill(14, 74, 0);
                rect(this.x[i]*50-50, this.y[i]*50-50, 50, 50);
            }
            if(this.type[i] === 33){
                fill(181, 0, 12);
                rect(this.x[i]*50-50, this.y[i]*50-50, 50, 50);
            }
            if(this.type[i] === 34){
                fill(41, 17, 0);
                rect(this.x[i]*50-50, this.y[i]*50-50, 50, 50);
            }
            if(this.type[i] === 35){
                if(this.type[i + 32] > 0){
                    fill(255, 111, 0);
                    rect(this.x[i]*50-30, this.y[i]*50-40, 10, 40);
                    fill(255, 234, 0);
                    rect(this.x[i]*50-30, this.y[i]*50-50, 10, 10);
                }else if(this.type[i + 1] > 0){
                    fill(255, 111, 0);
                    quad(this.x[i]*50, this.y[i]*50, this.x[i]*50, this.y[i]*50-12.5, this.x[i]*50-12.5, this.y[i]*50-25, this.x[i]*50-25, this.y[i]*50-25);
                    fill(255, 234, 0);
                    quad(this.x[i]*50-35, this.y[i]*50-35, this.x[i]*50-22.5, this.y[i]*50-35, this.x[i]*50-12.5, this.y[i]*50-25, this.x[i]*50-25, this.y[i]*50-25);
                }else if(this.type[i - 1] > 0){
                    fill(255, 111, 0);
                    quad(this.x[i]*50-50, this.y[i]*50, this.x[i]*50-50, this.y[i]*50-12.5, this.x[i]*50-37.5, this.y[i]*50-25, this.x[i]*50-25, this.y[i]*50-25);
                    fill(255, 234, 0);
                    quad(this.x[i]*50-15, this.y[i]*50-35, this.x[i]*50-27.5, this.y[i]*50-35, this.x[i]*50-37.5, this.y[i]*50-25, this.x[i]*50-25, this.y[i]*50-25);
                }else{
                    this.type[i] = 0;
                }
            }
            if(this.type[i] === 36){
                fill(255, 244, 117);
                rect(this.x[i]*50-50, this.y[i]*50-50, 50, 10);
                fill(255, 234, 138);
                rect(this.x[i]*50-50, this.y[i]*50-40, 50, 40);
                if(fancyGraphics === true){
                    noFill();
                    stroke(255, 239, 8);
                    arc((this.x[i]*50-50), (this.y[i]*50-50), 20, 20, 0, 90);
                    arc((this.x[i]*50), (this.y[i]*50-50), 20, 20, 90, 180);
                    arc((this.x[i]*50-30), (this.y[i]*50-50), 20, 20, 0, 180);
                    ellipse((this.x[i]*50-30), (this.y[i]*50-10), 10, 15);
                    arc((this.x[i]*50-15), (this.y[i]*50), 20, 20, -180, 0);
                    arc((this.x[i]*50-50), (this.y[i]*50), 20, 20, -90, 0);
                    arc((this.x[i]*50-50), (this.y[i]*50-25), 20, 20, -90, 90);
                    arc((this.x[i]*50), (this.y[i]*50-25), 20, 20, 90, 270);
                    ellipse((this.x[i]*50-25), (this.y[i]*50-28), 20, 20);
                    noStroke();
                }
            }
            if(this.type[i] === 37){
                fill(255, 119, 0);
                rect(this.x[i]*50-50, this.y[i]*50-50, 50, 50);
                fill(140, 0, 0);
                rect(this.x[i]*50-50, this.y[i]*50-45, 10, 40);
                fill(18, 0, 135);
                rect(this.x[i]*50-40, this.y[i]*50-45, 10, 40);
                fill(255, 234, 0);
                rect(this.x[i]*50-30, this.y[i]*50-45, 10, 40);
                fill(26, 130, 0);
                rect(this.x[i]*50-20, this.y[i]*50-45, 10, 40);
                fill(255, 0, 0);
                rect(this.x[i]*50-10, this.y[i]*50-45, 10, 40);
            }
            if(this.type[i] === 38){
                fill(255, 64, 64);
                rect(this.x[i]*50-35, this.y[i]*50-20, 20, 20);
                fill(97, 32, 0);
                rect(this.x[i]*50-30, this.y[i]*50-30, 10, 10);
                fill(0, 171, 9);
                ellipse(this.x[i]*50-25, this.y[i]*50-35, 20, 20);
            }
            if(this.type[i] === 39){
                if(random(0, 500) < 1){
                    this.type[i] = 0;
                }
                stroke(255, 0, 0);
                strokeWeight(5);
                fill(255, 106, 0);
                triangle(this.x[i]*50-37.5, this.y[i]*50-40, this.x[i]*50-50, this.y[i]*50, this.x[i]*50-25, this.y[i]*50);
                triangle(this.x[i]*50-12.5, this.y[i]*50-40, this.x[i]*50-25, this.y[i]*50, this.x[i]*50, this.y[i]*50);
                strokeWeight(1);
                noStroke();
            }
            if(this.type[i] === 40){
                fill(255, 0, 0);
                rect(this.x[i]*50-50, this.y[i]*50-50, 50, 16);
                rect(this.x[i]*50-50, this.y[i]*50-16, 50, 16);
                fill(255, 255, 255);
                rect(this.x[i]*50-50, this.y[i]*50-34, 50, 18);
                if(mouseX + scroll > this.x[i]*50-50 & mouseX + scroll < this.x[i]*50 & mouseY > this.y[i]*50-50 & mouseY < this.y[i]*50 & typeInHand === 39 & mouseButton === RIGHT & mouseIsPressed){
                    this.type[i] = 0;
                    this.type[i - 1] = 0;
                    this.type[i + 1] = 0;
                    this.type[i - 32] = 0;
                    this.type[i + 32] = 0;
                    this.type[i - 33] = 0;
                    this.type[i - 31] = 0;
                    this.type[i + 31] = 0;
                    this.type[i + 33] = 0;
                    this.type[i + 2] = 0;
                    this.type[i - 2] = 0;
                    this.type[i - 3] = 0;
                    this.type[i + 3] = 0;
                    this.type[i - 34] = 0;
                    this.type[i - 30] = 0;
                    this.type[i + 30] = 0;
                    this.type[i + 34] = 0;
                    this.type[i + 64] = 0;
                    this.type[i + 63] = 0;
                    this.type[i + 65] = 0;
                }
            }
            
        }
    };
    Block.prototype.mining = function(){
        for(var i = 0; i < this.type.length; i++){
            if(mouseX + scroll > this.x[i]*50-50 && mouseX + scroll < this.x[i]*50 && mouseY > this.y[i]*50-50 && mouseY < this.y[i]*50){
                if(mouseButton === RIGHT & mouseIsPressed & this.type[i] === 0){
                    this.type[i] = typeInHand;
                }else if(mouseButton === RIGHT & mouseIsPressed & this.type[i] > 4 & this.type[i] < 11){
                    this.type[i] = typeInHand;
                }
                if(mouseButton === LEFT & mouseIsPressed){
                    if(this.type[i] > 5 & this.type[i] < 12){}else{
                        this.type[i] = 0;
                    }
                }
            }
        }
    };
    wood.draw();
    wood.mining();
    
    //hotbar and scroll
    typeInHand = hotbar[hotbarNum];
    if(keyIsReleased){
        if(keyCode === UP & hotbarNum < hotbar.length-1){
            hotbarNum+=1;
        }
        if(keyCode === DOWN & hotbarNum > 0){
            hotbarNum-=1;
        }
    }
    textSize(12);
    textAlign(END, END);
    fill(0, 0, 0);
    if(typeInHand === 1){
        text("Wood", scroll + 5, 15);
    }
    if(typeInHand === 2){
        text("Dirt", scroll + 5, 15);
    }
    if(typeInHand === 3){
        text("Stone", scroll + 5, 15);
    }
    if(typeInHand === 4){
        text("Cobblestone", scroll + 5, 15);
    }
    if(typeInHand === 5){
        text("Water Bucket", scroll + 5, 15);
    }
    if(typeInHand === 12){
        text("Gravel", scroll + 5, 15);
    }
    if(typeInHand === 13){
        text("Crafting Table", scroll + 5, 15);
    }
    if(typeInHand === 14){
        text("Mossy Cobble", scroll + 5, 15);
    }
    if(typeInHand === 15){
        text("Brick", scroll + 5, 15);
    }
    if(typeInHand === 16){
        text("Nether Brick", scroll + 5, 15);
    }
    if(typeInHand === 17){
        text("Glass", scroll + 5, 15);
    }
    if(typeInHand === 18){
        text("Hardened Clay", scroll + 5, 15);
    }
    if(typeInHand === 19){
        text("White Stained Clay", scroll + 5, 15);
    }
    if(typeInHand === 20){
        text("Orange Stained Clay", scroll + 5, 15);
    }
    if(typeInHand === 21){
        text("Magenta Stained Clay", scroll + 5, 15);
    }
    if(typeInHand === 22){
        text("Light Blue Stained Clay", scroll + 5, 15);
    }
    if(typeInHand === 23){
        text("Yellow Stained Clay", scroll + 5, 15);
    }
    if(typeInHand === 24){
        text("Lime Stained Clay", scroll + 5, 15);
    }
    if(typeInHand === 25){
        text("Pink Stained Clay", scroll + 5, 15);
    }
    if(typeInHand === 26){
        text("Gray Stained Clay", scroll + 5, 15);
    }
    if(typeInHand === 27){
        text("Light Gray Stained Clay", scroll + 5, 15);
    }
    if(typeInHand === 28){
        text("Cyan Stained Clay", scroll + 5, 15);
    }
    if(typeInHand === 29){
        text("Purple Stained Clay", scroll + 5, 15);
    }
    if(typeInHand === 30){
        text("Blue Stained Clay", scroll + 5, 15);
    }
    if(typeInHand === 31){
        text("Brown Stained Clay", scroll + 5, 15);
    }
    if(typeInHand === 32){
        text("Green Stained Clay", scroll + 5, 15);
    }
    if(typeInHand === 33){
        text("Red Stained Clay", scroll + 5, 15);
    }
    if(typeInHand === 34){
        text("Black Stained Clay", scroll + 5, 15);
    }
    if(typeInHand === 35){
        text("Torch", scroll + 5, 15);
    }
    if(typeInHand === 36){
        text("Sandstone", scroll + 5, 15);
    }
    if(typeInHand === 37){
        text("Bookshelf", scroll + 5, 15);
    }
    if(typeInHand === 38){
        text("Potted Plant", scroll + 5, 15);
    }
    if(typeInHand === 39){
        text("Flint & Steel", scroll + 5, 15);
    }
    if(typeInHand === 40){
        text("TNT", scroll + 5, 15);
    }
    if(keyIsPressed){
        if(keyCode === LEFT & scroll > 0){
            scroll-=10;
        }
        if(keyCode === RIGHT & scroll < 1200){
            scroll+=10;
        }
    }
    fill(150);
    rect(315 + scroll, 10, 75, 50);
    textSize(20);
    fill(0, 0, 0);
    textAlign(CENTER, CENTER);
    text("Options", 352 + scroll, 35);
    if(mouseX > 315 & mouseX < 390 & mouseY > 10 & mouseY < 60 & mouseIsPressed){
        options = true;
    }
    keyIsReleased = false;
    resetMatrix();
    }
};
