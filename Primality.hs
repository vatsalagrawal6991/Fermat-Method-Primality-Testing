import System.Random (randomRs,mkStdGen)

{-///////////////////////////////////////////////////////////////////////////////////////////////////////////
********************Problem 2 - Primality Testing*****************************************
-}

prime n q =    let  b=randomgen n q 
                         --b=quot (n-1) q
               in
                    if n<=1 || q>n
                    then show n++" Is Not Prime"
                    else if n==2 || n==3
                         then show n++" Is Prime"
                    else primek n q b 0.0 1

primek n q b p a=   if    (p<=1.0 && a<=q) && b/=[]
                    then if isp n r n==r
                              --isp n (a*b) n==b
                         then primek n q bs (p+(1/fromInteger q)) (a+1)
                              --primek n q b (p+(1/fromInteger q)) (a+1)
                         else show n++" Is Not Prime"
                    else show n++" Is Prime"
                    where (r:bs)=b

isp n b c =    if    c==1
               then  mod b n
               else if mod c 2 ==0
                    then isp n (mod (b*b) n) (quot c 2)
               else mod (b*isp n (mod (b*b) n) (quot c 2)) n

randomgen n q =let  h1= fromIntegral (n*q)::Int
                    h2= fromIntegral q::Int
               in   take h2 (randomRs (2,n-1) (mkStdGen h1)) 

