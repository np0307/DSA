class Solution {
    public boolean isPalindrome(int x) {
        if(x<0)
        {
            return false;
        }
        int original=x;
        int reversed=0;

        while(x!=0)
        {
            int dig=x%10;
            reversed=reversed*10+dig;
            x=x/10;
        }
        return original==reversed;
        
        
        
    }
}