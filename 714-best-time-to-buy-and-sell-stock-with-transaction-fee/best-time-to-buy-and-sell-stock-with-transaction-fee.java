class Solution {
    public int maxProfit(int[] prices, int fee) {
        int n= prices.length;
        int cash=0;
        int hold = -prices[0];
        for (int i = 0;i<n;i++)
        {
            int price= prices[i];
            cash=Math.max(cash,hold+price-fee);

            hold=Math.max(hold,cash-price);
        }
        return cash;
        
    }
}