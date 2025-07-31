class Solution {
    public boolean check(int[] nums) {
        int count=0;
        int num=nums.length;

        for(int i=0;i<num;i++)
        {
            if(nums[i]>nums[(i+1)%num])
            {
                count++;
            }
        }
        return count<=1;
    }
}