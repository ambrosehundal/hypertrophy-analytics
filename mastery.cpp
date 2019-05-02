public void ReverseArray(int [] arr){
    int start = 0;
    int end = arr.length;

    while(start < end){
        int temp = arr[start]; //first letter
        arr[start] = arr[end];
        arr[end] = temp;
        start++;
        end--;
    }

    for(int i = 0; i < arr.length; i++){

    }
}

//

