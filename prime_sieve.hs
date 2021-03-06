sieve [] = []
sieve (x:xs) = x : sieve' xs (insertprime x xs PQ.empty)
    where
        insertprime p xs table = PQ.insert (p*p) (map (* p) xs) table
        sieve' [] table = []
        sieve' (x:xs) table
            | nextComposite <= x = sieve' xs (adjust table)
            | otherwise = x : sieve' xs (insertprime x xs table)
                where
                    nextComposite = PQ.minKey table
                    adjust table
                        | n <= x = adjust (PQ.deleteMinAndInsert n' ns table)
                        | otherwise = table
                    where
                        (n, n':ns) = PQ.minKeyValue table
