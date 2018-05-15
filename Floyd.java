class Floyd{ 

    public static void main(String args[]){
        Floyd floyd = new Floyd(); 
        floyd.start();
    } 

    public void start(){ 
    int row = 100;
    int currentNum=1;
    int sum = 0;

    for(int rowNumber=1; rowNumber<=row; rowNumber++){ 
        for(int count=1; count<=rowNumber; count++){
            System.out.print(currentNum+" ");
            if(rowNumber == 91 ){
                sum = sum + currentNum;
            } 
            currentNum++;

        }
        System.out.println();
    }
    System.out.println(sum);
    } 
}

