import java.util.Arrays;

private static Bullet[] push(Bullet[] array, Bullet push) {
    Bullet[] longer = new Bullet[array.length + 1];
    System.arraycopy(array, 0, longer, 0, array.length);
    longer[array.length] = push;
    return longer;
}

private static Stars[] push(Stars[] array, Stars push) {
    Stars[] longer = new Stars[array.length + 1];
    System.arraycopy(array, 0, longer, 0, array.length);
    longer[array.length] = push;
    return longer;
}

// Function to remove the element 
  public static Stars[] removeTheElement(Stars[] arr,int index) 
  { 

    // If the array is empty 
    // or the index is not in array range 
    // return the original array 
    if (arr == null
      || index < 0
      || index >= arr.length) { 

      return arr; 
    } 

    // Create another array of size one less 
    Stars[] anotherArray = new Stars[arr.length - 1]; 

    // Copy the elements except the index 
    // from original array to the other array 
    for (int i = 0, k = 0; i < arr.length; i++) { 

      // if the index is 
      // the removal element index 
      if (i == index) { 
        continue; 
      } 

      // if the index is not 
      // the removal element index 
      anotherArray[k++] = arr[i]; 
    } 

    // return the resultant array 
    return anotherArray; 
  } 
  
  public static Bullet[] removeTheElement(Bullet[] arr, 
                    int index) 
  { 

    // If the array is empty 
    // or the index is not in array range 
    // return the original array 
    if (arr == null
      || index < 0
      || index >= arr.length) { 

      return arr; 
    } 

    // Create another array of size one less 
    Bullet[] anotherArray = new Bullet[arr.length - 1]; 

    // Copy the elements except the index 
    // from original array to the other array 
    for (int i = 0, k = 0; i < arr.length; i++) { 

      // if the index is 
      // the removal element index 
      if (i == index) { 
        continue; 
      } 

      // if the index is not 
      // the removal element index 
      anotherArray[k++] = arr[i]; 
    } 

    // return the resultant array 
    return anotherArray; 
  } 
