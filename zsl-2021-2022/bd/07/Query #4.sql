INSERT INTO informatycy (`idosoby`, `punkty`)
SELECT kandydaci.idosoby, (kandydaci.matematyka + kandydaci.informatyka + kandydaci.informatyka)
FROM kandydaci
JOIN zgloszenia ON kandydaci.idosoby =  zgloszenia.`id osoby`
WHERE zgloszenia.kierunek = "informatyka"
ORDER BY (kandydaci.matematyka + kandydaci.informatyka + kandydaci.informatyka) DESC
LIMIT 20;