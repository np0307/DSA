class Solution {
    public boolean isAnagram(String s, String t) {
        char[] c=s.toCharArray();
        char[] v=t.toCharArray();
        Arrays.sort(c);
        Arrays.sort(v);
         return Arrays.equals(c,v);

    }
}