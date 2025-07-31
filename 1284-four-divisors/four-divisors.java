class Solution {
    public int sumFourDivisors(int[] nums) {
        int sum = 0;
        for (int n : nums) {
            List<Integer> list = new ArrayList<>();

            for (int i = 1; i * i <= n; i++) {
                if (n % i == 0) {
                    list.add(i);
                    if (i != n / i) {
                        list.add(n / i);
                    }
                }
            }

            if (list.size() == 4) {
                int total = 0;
                for (int l : list) {
                    total += l;
                }
                sum += total;
            }
        }
        return sum;
    }
}
