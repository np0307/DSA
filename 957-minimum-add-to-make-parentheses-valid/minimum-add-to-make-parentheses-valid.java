class Solution {
    public int minAddToMakeValid(String s) {
        int op=0;
        int ex=0;

        for(int i=0;i<s.length();i++)
        {
            char c=s.charAt(i);

            if(c=='(')
            {
                op++;
            }
            else
            {
                if(op>0){
                op--;
            }
            else
            {
                ex++;
            }
        }
    }
    return op+ex;
}
}