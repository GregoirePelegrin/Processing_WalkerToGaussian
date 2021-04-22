class Graph{
    IntList xData;
    IntList yData;
    int xMin;
    int xMax;

    Graph(int _min, int _max){
        this.xMin = _min;
        this.xMax = _max;

        this.xData = new IntList();
        this.yData = new IntList();
    }

    void addY(int y){
        if(this.yData.hasValue(y)){
            int temp = this.getIndex(y);
            this.xData.set(temp, this.xData.get(temp) + 1);
        } else {
            this.xData.append(1);
            this.yData.append(y);
        }
    }
    void display(){
        stroke(0);
        fill(0);
        rect(3*width/4, height/2, width/2, height);
        stroke(255, 100);
        fill(255, 100);
        int maxi = this.xData.max();
        float unit = (this.xMax-this.xMin)/maxi;
        for(int i=0; i<this.xData.size(); i++){
            rect(this.xMin + this.xData.get(i)*unit/2, this.yData.get(i), this.xData.get(i)*unit, yStep);
        }
    }
    int getIndex(int n){
        for(int i=0; i<this.yData.size(); i++)
            if(this.yData.get(i) == n) return i;
        return -1;
    }
}