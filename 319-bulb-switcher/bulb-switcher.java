class Solution {
    public int bulbSwitch(int n) {
      if(n==0)
      {
        return 0;
      }

      int low = 1, high = n, ans=0;

      while(low<=high)
      {
        int mid = low+(high-low)/2;

        if((long)mid*mid<=n)
        {
            ans=mid;
            low=mid+1;
        }
        else
        {
            high=mid-1;
        }
      }
      return ans;
        
    }
}