class Solution {
    public int[] twoSum(int[] nums, int target) {
        Map<Integer,Integer> map = new HashMap<>();

        for(int i=0;i<nums.length;i++)
        {
            int cn=nums[i];
            int req=target-cn;

            if(map.containsKey(req))
            {
                return new int[] {map.get(req),i};
            }

            map.put(cn,i);
        }
        return new int[] {-1,-1};

        
        
    }
} 