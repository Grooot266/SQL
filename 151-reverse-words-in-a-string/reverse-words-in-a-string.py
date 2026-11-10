# Python solution 
class Solution:
    def reverseWords(self, s: str) -> str:
      
        # Sol: 1   
        return ' '.join(s.split()[::-1])

        # # Sol: 2 :- Two Pointers
        
        # s=list(s.strip().split())
        # l=0
        # r=len(s)-1
        # res = ""
        # while r>l:
        #     s[l],s[r] = s[r],s[l]
        #     l +=1
        #     r -=1
        
        # for i in s:
        #     res += " "+i
        
        # return res.strip()



        

 
