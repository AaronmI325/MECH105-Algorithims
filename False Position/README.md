# False Position Method
This Algorithim uses the False Position method to estimate the root of any given function. All that's needed to estimate the root is the function and the bounds around where the root is located. If wanted, you can specify how accurate you want the root estimate to be by including a disired relative error and a desired max amount of iterations. 

## Inputs:
- The function being evaluated
- The lower guess
- The upper guess
- The desired relative error (optional)
- The max ammount of iterations needed (optional)
- Any parameters used by the function (optional)

## Outputs:
 - The estimated root
 - The function evaluated at the root
 - The approximate relative error
 - The total number of iterations used
 
 ## Limitations 
 - Upper and lower guess can't can't be the same sign (Positive or negative)
