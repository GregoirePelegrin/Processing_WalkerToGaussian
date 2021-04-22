int yStep;
// ArrayList<Path> paths;
Path path;
Graph graph;

void setup(){
    size(800, 800);
    frameRate(60);
    background(0);
    rectMode(CENTER);

    yStep = 10;
    // paths = new ArrayList<Path>();

    // paths.add(new Path(100, 4*width/10));
    path = new Path(100, 4*width/10);

    graph = new Graph(width/2, 9*width/10);
}

void draw(){
    // Path currPath = paths.get(paths.size()-1);
    // if(currPath.stop) {
    //     paths.add(new Path(100, 4*width/10));
    //     graph.display();
    // }
    // else {
    //     currPath.update();
    //     currPath.displayLast();
    // }

    // if(path.stop){
    //     path = new Path(100, 4*width/10);
    //     graph.display();
    // } else {
    //     path.update();
    //     path.displayLast();
    // }

    path = new Path(100, 4*width/10);
    path.fullUpdate();
    graph.display();
}