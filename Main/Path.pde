class Path{
    ArrayList<Node> nodes;
    int currStep;
    int nbSteps;
    int size;
    boolean stop;

    Path(int _n, int _s){
        this.nbSteps = _n;
        this.size = _s;

        this.currStep = 0;
        this.nodes = new ArrayList<Node>();
        this.nodes.add(new Node(width/10, height/2));
        this.stop = false;
    }

    void display(){
        noFill();
        stroke(255, 20);
        strokeWeight(1);

        // beginShape();
        // for(Node node : this.nodes)
        //     vertex(node.x, node.y);
        // endShape();
        for(Node node : this.nodes)
            node.display();
    }
    void displayLast(){
        this.nodes.get(this.nodes.size()-1).display();
    }
    void fullUpdate(){
        while(!this.stop)
            this.update();
    }
    void update(){
        if(!this.stop){
            this.currStep++;
            Node currNode = nodes.get(nodes.size()-1);
            Node nextNode;
            int test = round(random(0, 1));
            if(test == 0) test = -yStep;
            else test = yStep;
            nextNode = new Node(width/10+this.currStep*this.size/this.nbSteps, currNode.y+test);
            this.nodes.add(nextNode);
            if(this.currStep == this.nbSteps){
                graph.addY(nextNode.y);
                this.stop = true;
            }
        }
    }
}