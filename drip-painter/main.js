let img, iW, iH;
let drips = [];

function preload() {
    img = loadImage('source.jpeg');
}

function setup() {
    var canvas = createCanvas(900, 900);
    canvas.parent('wrapper');
    background(0);
    img.resize(width, 0);
    iW = img.width;
    bg();
}

function draw() {
    image(img, -img.width, 0);
    let iW = img.width;
    let iH = img.height;
    for (let i = 0; i < drips.length; i++) {
        noiseSeed(i);
        drips[i].move();
        if (drips[i].y > height) {
            drips.splice(i, 1);
        }
    }
}

function bg() {
    fill(0);
    stroke(255);
    rect(0, 0, width, height);
}

// Interactions

function mousePressed() {
    drips.push(new Drip(mouseX, iW, iH));
    console.log(drips);
}

function keyPressed() {
    if (keyCode === 32) {
        clear();
        drips = [];
        bg();
    } else if (keyCode === RETURN) {
        saveCanvas('drip', 'jpg');
    }
}


// Drip Class
class Drip {
    constructor(oW, iW, iH) {
        this.oW = oW;
        this.rate = 1;
        this.y = 0;
        this.w = random(100, iW);
        this.h = 0;
    }

    move() {
        this.y += this.rate;
        let nH = noise(frameCount * 0.01) * random(10, 100);
        this.h = nH;
        let nW = (noise(frameCount * 0.01) * 1000) - this.oW;
        this.w = nW;
        // copy
        let cW = map(iW, 0, iW, )
        push();
        translate(this.w - (this.w / 2), 0);
        copy(img, this.w, this.y, img.width, this.h, this.oW, this.y, this.w, this.rate);
        pop();
    }
}
