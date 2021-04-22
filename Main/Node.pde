class Node{
    float x;
    int y;

    Node(float _x, int _y){
        this.x = _x;
        this.y = _y;
    }

    void display(){
        stroke(255, 2);
        fill(255, 2);
        ellipse(this.x, this.y, 5, 5);
    }
}