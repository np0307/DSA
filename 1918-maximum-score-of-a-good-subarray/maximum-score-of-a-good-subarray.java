class Solution {
    public int maximumScore(int[] nums, int k) {

        int n = nums.length;
        int l = k, r = k;
        int currMin = nums[k];
        int ans = currMin;

        while (l > 0 || r < n - 1) {
            int leftVal = (l > 0) ? nums[l - 1] : -1;
            int rightVal = (r < n - 1) ? nums[r + 1] : -1;

            if (leftVal > rightVal) {
                l--;
                currMin = Math.min(currMin, nums[l]);
            } else {
                r++;
                currMin = Math.min(currMin, nums[r]);
            }

            ans = Math.max(ans, currMin * (r - l + 1));
        }

        return ans;
    }
}
