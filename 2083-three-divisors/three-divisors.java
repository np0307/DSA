class Solution {
    public boolean isThree(int n) {
        
            List<Integer> list = new ArrayList<>();

            for (int i = 1; i * i <= n; i++) {
                if (n % i == 0) {
                    list.add(i);
                    if (i != n / i) {
                        list.add(n / i);
                    }
                }
            }

            if (list.size() == 3) {
               return true;
            }
            else
            {
                return false;
            }
        }
    }