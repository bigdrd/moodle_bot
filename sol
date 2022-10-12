


La risposta corretta è: (a=100, b=false, c=true), (a=90, b=true, c=false)

#########################################################
Quale delle seguenti frasi meglio descrive l'obiettivo del "check di consistenza" che è parte della "requirements validation activity".


La risposta corretta è: Assicurarsi che non ci siano requisiti in conflitto con altri requisiti.

#########################################################
Si consideri un software costituito da due fasi F1 ed F2 ciascuna di costo A. Con probabilità p la fase F1 deve essere ripetuta (a causa di change requests) e con probabilità (1 - p) si passa alla fase F2 e poi al completamento (End) dello sviluppo. Qual'eè il costo atteso per lo sviluppo del software seguendo il processo sopra descritto ?



La risposta corretta è: A*(2 + p)

#########################################################
Il team di sviluppo di un azienda consiste di un senior software engineer e due sviluppatori junior. Usando un approccio agile, ogni iterazione impegna tutti e tre i membri del team per un mese ed occorrono tre iterazioni per completare lo sviluppo. Si assuma che non ci siano "change requests" e che il membro senior costi A Eur/mese ed i membri junior B Eur/mese. Qual'e' il costo dello sviluppo usando un approccio agile ?


La risposta corretta è: 3*(A + 2*B)

#########################################################
Si consideri il seguente requisito:
RQ:  Dopo 60 unità di tempo dall'inizio dell'esecuzione vale la seguente proprietà: 
se 10 unità di tempo nel passato x era maggiore di 0 allora ora y è negativa.
Tenendo presente che, al tempo time, delay(z, w) ritorna 0 se time <= w e ritorna il valore che z aveva al tempo (time - w), se time = w.


La risposta corretta è: class MonitorInputReal x, y;  OutputBoolean wy;Boolean wz;initial equationwy = false;equationwz = (time > 60) and (delay(x, 10) > 0) and (y >= 0);algorithmwhen edge(wz) thenwy := true;end when;end Monitor;

#########################################################
Si consideri il seguente requisito:
RQ:  Dopo 40 unità di tempo dall'inizio dell'esecuzione vale la seguente proprietà: 
se 10 unità di tempo nel passato x era maggiore di 1 allora ora y è nonegativa.
Tenendo presente che, al tempo time, delay(z, w) ritorna 0 se time <= w e ritorna il valore che z aveva al tempo (time - w), se time = w.


La risposta corretta è: class MonitorInputReal x, y;  OutputBoolean wy;Boolean wz;initial equationwy = false;equationwz = (time > 40) and (delay(x, 10) > 1) and (y < 0);algorithmwhen edge(wz) thenwy := true;end when;end Monitor;

#########################################################
Quale delle seguenti frasi meglio descrive l'obiettivo del "check di realismo" (realizability) che è parte della "requirements validation activity".


La risposta corretta è: Assicurarsi che, tenedo conto della tecnologia, budget e tempo disponibili,  sia possibile realizzare un sistema che soddisfa i requisisti.

#########################################################
Un processo di sviluppo plan-driven consiste di 2 fasi F1, F2, ciascuna costo A. Alla fine di ogni fase vengono prese in considerazione le "change requests" e, se ve ne sono, lo sviluppo viene ripetuto a partire dalla prima iterazione.  Quindi con nessuna change request si hanno le fasi: F1, F2 e costo 2A. Con una "change request" dopo la prima fase si ha: F1, F1, F2 e costo 3A.  Con una change request dopo la fase 2 si ha: F1, F2, F1, F2 e costo 4A. Qual'è il costo nel caso in cui ci siano change requests sia dopo la fase 1 che dopo la fase 2.


La risposta corretta è: 5*A

#########################################################
Si consideri un software sviluppato seguendo un approccio iterativo implementato con due fasi: F1 seguita da F2. Ciascuna fase ha costo A. Con probabilità p potrebbe essere necessario ripetere F1 una seconda volta.  Con probabilità q potrebbe essere necessario ripetere F2 una seconda volta. Qual'e' il costo atteso dello sviluppo dell'intero software?


La risposta corretta è: A*(2 + p +q)

#########################################################
L'input di un sistema software è costituito da una sequenza di valori reali. Ad ogni unità di tempo il valore di input può rimanere uguale al precedente oppure differire di un numero random in [-1, 1]. L'input resta costante per numero random di unità di tempo in [1, 10].
Quale dei seguenti modelli Modelica modella meglio l'environment descritto sopra.



La risposta corretta è: block MarkovChain//external function myrandom() returns a random real number in [0, 1]parameter Real x0 = 0;OutputReal x;Integer countdown;algorithmwhen initial() then  x := x0;  countdown := 0;elsewhen sample(0, 1) then  if (countdown <= 0)  then    countdown := 1 + integer(floor(10*myrandom()));    x := x + (-1 + 2*myrandom());  else    countdown := countdown - 1;  end if;end when;end MarkovChain;

#########################################################
Il rischio R può essere calcolato come R = P*C, dove P è la probabilità dell'evento avverso (software failure nel nostro contesto) e C è il costo dell'occorrenza dell'evento avverso. Si consideri un software il cui costo per la failure è C = 1000000 EUR. Volendo un rischio non superiore a 1000 EUR quale è il valore massimo della probabilità di failure P accettabile?



La risposta corretta è: 1/1000

#########################################################
L'input di un sistema software è costituito da una sequenza di 0 (false) ed 1 (true). Ad uno 0 segue un 1 ed ad un 1 segue uno 0. Il tempo tra un valore di input e l'altro è un valore random compreso tra 1 e 10 unità di tempo.
Quale dei seguenti modelli Modelica modella meglio l'environment descritto sopra.



La risposta corretta è: block MarkovChain//external function myrandom() returns a random real number in [0, 1]parameter Real x0 = 0;OutputReal x;Integer countdown;algorithmwhen initial() then  x := x0;  countdown := 0;elsewhen sample(0, 1) then  if (countdown <= 0)  then    countdown := 1 + integer(floor(10*myrandom()));    x := 1 - pre(x);  else    countdown := countdown - 1;  end if;end when;end MarkovChain;

#########################################################
Il branch coverage di un insieme di test cases è la percentuale di branch del programma che sono attraversati da almeno un test case.
Si consideri il seguente programma C:
-----------
#include <stdio.h>
#include <stdlib.h>
#include <assert.h>
#define N  4    /* number of test cases */

int f(int x1, int x2)
{
  if (x1 + x2 <= 2)
  return (1);
  else return (2);     
}

int main() {    int  i, y;   int x1[N], x2[N];
  // define test cases
    x1[0] = 3; x2[0] = -2;    x1[1] = 4; x2[1] = -3;    x1[2] = 7; x2[2] = -4;    x1[3] = 8; x2[3] = -5; 
    // testing
  for (i = 0; i < N; i++)  {
      y = f(x1[i], x2[i]);       // function under testing
      assert(y ==(x1[i], x2[i] <= 2) ? 1 : 2);   // oracle
    }
   printf("All %d test cases passed\n", N);
    return (0);   
}
-----------
Il programma main() sopra realizza il nostro testing per la funzione f1(). I test cases sono i valori in x1[i] ed x2[i].
Quale delle seguenti è la branch coverage conseguita?



La risposta corretta è: 100%

#########################################################
Un processo di sviluppo agile consiste di 3 iterazioni identiche di costo A. Alla fine di ogni iterazione vengono prese in considerazione le "change requests" e, se ve ne sono, l'iterazione viene ripetuta. Sia p la probabilità che ci siano "change requests" all fine di una iterazione. Il valore atteso del costo del progetto è:


La risposta corretta è: 3*(1 + p)*A

#########################################################
Il partition coverage di un insieme di test cases è la percentuale di elementi della partition inclusi nei test cases. La partition è una partizione finita dell'insieme di input della funzione che si sta testando.
Si consideri il seguente programma C:
-----------
#include <stdio.h>
#include <stdlib.h>
#include <assert.h>
#define N  5    /* number of test cases */
int f1(int x)  { return (2*x); }
int main() {  int  i, y;    int x[N];
 // define test cases
  x[0] = 0; x[1] = 1; x[2] = -1; x[3] = 10; x[4] = -10;
// testing
for (i = 0; i < N; i++)   {
      y = f1(x[i]);       // function under testing
      assert(y == 2*x[i]);   // oracle
 }
   printf("All %d test cases passed\n", N);
    return (0); 
}
Si vuole testare la funzione f1(). A tal fine l'insieme degli interi viene partizionato come segue: 
{0, {-1}, {1}, {tutti glli interi negativi diversi da -1}, {tutti glli interi positivi diversi da 1}}
Il programma main() sopra realizza il nostro testing per la funzione f1(). I test cases sono i valori in x[i].
Quale delle seguenti è la partition coverage conseguita?



La risposta corretta è: 100%

#########################################################
Quale delle seguenti frasi meglio descrive il criterio di "requirements verifiability" che è parte della "requirements validation activity".


La risposta corretta è: Per ciascun requisito, dovremmo essere in grado di scrivere un inseme di test che può dimostrare che il sistema sviluppato soddisfa il requisito considerato.

#########################################################
Si consideri un software sviluppato seguendo un approccio iterativo implementato con tre fasi: F1, F2, F3. Ciascuna fase ha costo A. Qual'e' il costo dello sviluppo dell'intero software?


La risposta corretta è: 3*A

#########################################################
Focalizzandosi sui metodi agile di sviluppo del software, quale delle seguenti affermazioni è vera?



La risposta corretta è: Le attività di definizione dei requisiti e di sviluppo sono interleaved.

#########################################################
Quali delle seguenti attività è parte del processo di validazione dei requisiti ?


La risposta corretta è: Accertarsi che i requisiti definiscano un sistema che risolve il problema che l'utente pianifica di risolvere.

#########################################################
Si consideri un software sviluppato seguendo un approccio plan-driven implementato con tre fasi: F1, F2, F3. Le "change requests"  arrivano con probabilità p dopo ciascuna fase e provocano la ripetizione (con relativo costo) di tutte le fasi che precedono. Quali delle seguenti catene di Markov modella lo sviluppo software descritto.




La risposta corretta è: 

#########################################################
Quale delle seguenti frasi meglio descrive l'obiettivo del "validity check" che è parte della "requirements validation activity".


La risposta corretta è: Assicurarsi che un sistema che soddisfa i requisiti risolve il problema del "customer".

#########################################################
Si consideri il seguente requisito:
RQ:  Dopo 50 unità di tempo dall'inizio dell'esecuzione vale la seguente proprietà: 
se la variabile x è minore del 60% della variabile y allora la somma di x ed y è maggiore del 30% della variabile z


La risposta corretta è: class MonitorInputReal x, y, z;  // plant outputOutputBoolean wy;Boolean wz;initial equationwy = false;equationwz = (time > 50) and (x < 0.6*y) and (x + y <= 0.3*z);algorithmwhen edge(wz) thenwy := true;end when;end Monitor;

#########################################################
Si consideri la seguente Markov Chain:


Quale dei seguenti modelli Modelica fornisce un modello ragionevole per la Markov Chain di cui sopra?


La risposta corretta è: model Systemparameter Integer F1 = 1;parameter Integer F2 = 2;parameter Integer F3 = 3;parameter Integer End = 4;parameter Real p = 0.3;parameter Real A[4, 4] =[p, 1-p, 0, 0;p, 0, 1-p, 0;p, 0, 0, 1-p;0, 0, 0, 1];Integer x;  Real r1024;Integer state1024[Modelica.Math.Random.Generators.Xorshift1024star.nState];algorithmwhen initial() then   state1024 := Modelica.Math.Random.Generators.Xorshift1024star.initialState(614657, 30020);   x := F1;   r1024 := 0;elsewhen sample(0,1) then(r1024,state1024) := Modelica.Math.Random.Generators.Xorshift1024star.random(pre(state1024));if (r1024 <= A[x, F1]) then x := F1; elseif (r1024 <= A[x, F1] + A[x, F2]) then x := F2; elseif (r1024 <= A[x, F1] + A[x, F2] + A[x, F3]) then x := F3; else x := End;end if;end when;end System;

#########################################################
Il branch coverage di un insieme di test cases è la percentuale di branch del programma che sono attraversati da almeno un test case.
Si consideri il seguente programma C:
-----------
#include <stdio.h>
#include <stdlib.h>
#include <assert.h>
#define N  4    /* number of test cases */

int f(int x1, int x2)
{
  if (x1 + x2 <= 2)
  return (1);
  else return (2);     
}

int main() {    int  i, y;   int x1[N], x2[N];
  // define test cases
    x1[0] = 5; x2[0] = -2;    x1[1] = 6; x2[1] = -3;    x1[2] = 7; x2[2] = -4;    x1[3] = 8; x2[3] = -5; 
    // testing
  for (i = 0; i < N; i++)  {
      y = f(x1[i], x2[i]);       // function under testing
      assert(y ==(x1[i], x2[i] <= 2) ? 1 : 2);   // oracle
    }
   printf("All %d test cases passed\n", N);
    return (0);   
}
-----------
Il programma main() sopra realizza il nostro testing per la funzione f1(). I test cases sono i valori in x1[i] ed x2[i].
Quale delle seguenti è la branch coverage conseguita?



La risposta corretta è: 50%

#########################################################
Il branch coverage di un insieme di test cases è la percentuale di branch del programma che sono attraversati da almeno un test case.
Si consideri il seguente programma C:
-----------
#include <stdio.h>
#include <stdlib.h>
#include <assert.h>
#define N  4    /* number of test cases */

int f(int x1, int x2)
{
  if (x1 + x2 <= 2)
  return (1);
  else return (2);     
}

int main() {    int  i, y;   int x1[N], x2[N];
  // define test cases
    x1[0] = 3; x2[0] = -2;    x1[1] = 4; x2[1] = -3;    x1[2] = 5; x2[2] = -4;    x1[3] = 6; x2[3] = -5; 
    // testing
  for (i = 0; i < N; i++)  {
      y = f(x1[i], x2[i]);       // function under testing
      assert(y ==(x1[i], x2[i] <= 2) ? 1 : 2);   // oracle
    }
   printf("All %d test cases passed\n", N);
    return (0);   
}
-----------
Il programma main() sopra realizza il nostro testing per la funzione f1(). I test cases sono i valori in x1[i] ed x2[i].
Quale delle seguenti è la branch coverage conseguita?



La risposta corretta è: 50%

#########################################################
Un processo di sviluppo agile consiste di varie iterazioni. Alla fine di ogni iterazione vengono prese in considerazione le "change requests" e, se ve ne sono, l'iterazione viene ripetuta. Sia p la probabilità che ci siano "change requests" all fine di una iterazione e sia A il costo di una iterazione. Il valore atteso del costo per l'iterazione è:


La risposta corretta è: (1 + p)*A

#########################################################
Il rischio R può essere calcolato come R = P*C, dove P è la probabilità dell'evento avverso (software failure nel nostro contesto) e C è il costo dell'occorrenza dell'evento avverso. Assumiamo che la probabilità P sia legata al costo di sviluppo S dalla formula P = exp(-b*S), dove b è una opportuna costante note da dati storici aziendali. Quale sarà il costo dello sviluppo S di un software il cui costo della failure è C ed il rischio ammesso è R?


La risposta corretta è: S = (1/b)*ln(C/R)

#########################################################
Quale delle seguenti affermazioni è vera riguardo ai metodi agile ?



La risposta corretta è: I metodi agile sono metodi di sviluppo incrementale. 

#########################################################
Si consideri un software sviluppato seguendo un approccio plan-driven implementato con tre fasi: F1, F2, F3. Dopo ogni fase c'e' una probabilità p di dover ripeter la fase precedente ed una probabilità (1 - p) di passare alla fase successiva (sino ad arrivare al termine dello sviluppo). Quale delle seguenti catene di Markov modella il processo software descritto sopra?



La risposta corretta è: 

#########################################################
Si consideri il seguente requisito:
RQ:  Dopo 60 unità di tempo dall'inizio dell'esecuzione vale la seguente proprietà: 
se 10 unità di tempo nel passato era stata richiesta una risorsa (variabile x positiva) allora ora è concesso l'accesso alla risorsa (variabile y positiva)
Tenendo presente che, al tempo time, delay(z, w) ritorna 0 se time < w e ritorna il valore che z aveva al tempo (time - w), se time >= w.


La risposta corretta è: class MonitorInputReal x, y;  OutputBoolean wy;Boolean wz;initial equationwy = false;equationwz = (time > 60) and (delay(x, 10) > 0) and (y <= 0);algorithmwhen edge(wz) thenwy := true;end when;end Monitor;

#########################################################
Quale delle seguenti frasi meglio descrive l'obiettivo del "check di completezza" che è parte della "requirements validation activity".


La risposta corretta è: Assicurarsi che i requisisti descrivano tutte le funzionalità e vincoli (e.g., security, performance) del sistema desiderato dal customer.

#########################################################
L'input ad un sistema è costituito da un utente (umano) che preme due pulsanti etichettati, rispettivamente, con 1 ed 2.
L'utente può anche decidere di non premere alcun pulsante.
Con probabilità 0.2 l'utente preme il pulsante 1, con probabilità 0.3 l'utente preme il pulsante 2, con probabilità 0.5 non fa nulla (pulsante 0 per convenzione).


La risposta corretta è: model EnvInteger x;  // Pulsante premuto dall'utente (0 nessun pulsante)Real r1024;Integer state1024[Modelica.Math.Random.Generators.Xorshift1024star.nState];algorithmwhen initial() then   state1024 := Modelica.Math.Random.Generators.Xorshift1024star.initialState(614657, 30020);   x := 0;   r1024 := 0;elsewhen sample(0,1) then  (r1024,state1024) := Modelica.Math.Random.Generators.Xorshift1024star.random(pre(state1024));  if (r1024 <= 0.5)   then x := 0;    else          (r1024,state1024) := Modelica.Math.Random.Generators.Xorshift1024star.random(pre(state1024));         if   (r1024 <= 0.4)   then x := 1;   else x:= 0; end if;  end if;end when;end Env;

#########################################################
Si consideri il seguente requisito:
RQ:  Durante l'esecuzione del programma (cioè per tutti gli istanti di tempo positivi) la variabile x è sempre nell'intervallo [0, 5].


La risposta corretta è: class MonitorInputReal x;  // plant outputOutputBoolean y;Boolean z;initial equationy = false;equationz = (time > 0) and ((x > 5) or (x < 0));algorithmwhen edge(z) theny := true;end when;end Monitor;

#########################################################
Il partition coverage di un insieme di test cases è la percentuale di elementi della partition inclusi nei test cases. La partition è una partizione finita dell'insieme di input della funzione che si sta testando.
Si consideri il seguente programma C:
-----------
#include <stdio.h>
#include <stdlib.h>
#include <assert.h>
#define N  5    /* number of test cases */
int f1(int x)  { return (2*x); }
int main() {  int  i, y;    int x[N];
 // define test cases
  x[0] = 0; x[1] = 1; x[2] = -1; x[3] = 10; x[4] = -10;
// testing
for (i = 0; i < N; i++)   {
      y = f1(x[i]);       // function under testing
      assert(y == 2*x[i]);   // oracle
 }
   printf("All %d test cases passed\n", N);
    return (0); 
}
Si vuole testare la funzione f1(). A tal fine l'insieme degli interi viene partizionato come segue: 
{(-inf, -21], [-20, -1], {0}, [1, 20], [21, +inf)}
Il programma main() sopra realizza il nostro testing per la funzione f1(). I test cases sono i valori in x[i].
Quale delle seguenti è la partition coverage conseguita?



La risposta corretta è: 60%

#########################################################
Il branch coverage di un insieme di test cases è la percentuale di branch del programma che sono attraversati da almeno un test case.
Si consideri il seguente programma C:
-----------

#include <stdio.h>
#include <stdlib.h>
#include <assert.h>
#define N  1   /* number of test cases */
int f(int x)  {   int y = 0;
  LOOP:  if (abs(x) - y <= 2)
                      {return   ;}
                else {y = y + 1; goto LOOP;}     
}  /* f()  */
int main() {  int  i, y;   int x[N];
// define test cases
    x[0] = 3; 
// testing
  for (i = 0; i < N; i++)   {
      y = f(x[i]);       // function under testing
      assert(y == (abs(x[i]) <= 2) ? 0 : (abs(x[i]) - 2));   // oracle
    }
   printf("All %d test cases passed\n", N);
  return (0); 
}
-----------
Il programma main() sopra realizza il nostro testing per la funzione f(). I test cases sono i valori in x1[i] ed x2[i].
Quale delle seguenti è la branch coverage conseguita?



La risposta corretta è: 100%

#########################################################
Una azienda vende software utilizzando un contratto di Service Level Agreement (SLA) per cui l'utente paga 1000 Eur al mese di licenza e l'azienda garantisce che il software sia "up and running". Questo vuol dire che failures del software generano un costo (quello del repair). Sia C = 10000 Eur il costo del repair di una failure e R = P*C il valore atteso (rischio) del costo dovuto alle failures (dove P è la probabilità di una software failure). Ovviamente affinché il business sia profittevole deve essere che R sia al più 1000 Eur. Qual'e' il valore massimo di P che garantisce la validità del modello di business di cui sopra ?


La risposta corretta è: P = 1/10

#########################################################
Si consideri il seguente requisito:
RQ1:  Durante l'esecuzione del programma (cioè per tutti gli istanti di tempo positivi) la variabile x è sempre nell'intervallo [0, 5] oppure [10, 15]


La risposta corretta è: class MonitorInputReal x;  // plant outputOutputBoolean y;Boolean z;initial equationy = false;equationz = (time > 0) and ((x >= 5) or (x <= 0))  and  ((x >= 15) or (x <= 10)) ; algorithmwhen edge(z) theny := true;end when;end Monitor;

#########################################################
Which of the following is an agile principle?


La risposta corretta è: Customers should be closely involved throughout the development process.

#########################################################
Quali delle seguenti attività può contribuire a validare i requisiti di un sistema ?


La risposta corretta è: Costruire un prototipo, metterlo in esercizio ed accertarsi che i porti i benefici attesi.

#########################################################
Un azienda ha un team di sviluppo in cui il 90% dei membri è junior (cioè con poca esperienza) ed il 10% è senior (cioè con molta esperienza).  Con l'obiettivo di massimizzare il numero di progetti completati nell'unità di tempo, quale dei seguenti modelli di sviluppo software appare più opportuno.


La risposta corretta è: Plan driven

#########################################################
Si pianifica di sviluppare un software gestionale per una università. Considerando che questo può essere considerato un sistema mission-critical, quali dei seguenti modelli di processi software generici è più adatto per lo sviluppo di tale software.



La risposta corretta è: Sviluppo plan-driven.

#########################################################
Un'azienda decide di organizzare il processo di sviluppo di un grosso software in 101 phasi sequenziali, numerate da 0 a 100. La phase 0 è quella iniziale. La phase 100 è quella finale in cui lo sviluppo è completato. Tutte le fasi hanno circa la stessa durata.
Alla fine di ogni fase viene eseguita una batteria di tests. I risultati del testing possono essere: 
a) si può passare alla fase successiva;
b) bisogna ripetere la fase corrente;
c) bisogna rivedere il lavoro fatto nella fase precedente (reworking).
Dai dati storici è noto che la probabilità del caso a) è 0.72, del caso b) è 0.18 e del caso c) è 0.1.
Allo scopo di stimare attraverso una simulazione MonteCarlo il valore atteso del tempo di completamento del progetto viene realizzato un modello Modelica  del processo di sviluppo descritto sopra. 
Quale dei seguenti modelli Modelica modella correttamente il processo di sviluppo descritto sopra?



La risposta corretta è: block MarkovChain//external function myrandom() returns a random real number in [0, 1]parameter Integer x0 = 0;parameter Integer xmax = 100;OutputInteger x;algorithmwhen initial() thenx := x0;elsewhen sample(0, 1) thenif (x < xmax)then    if (myrandom() <= 0.9)   then     if (myrandom() <= 0.8)            then            x := x + 1;                else            x := max(0, x - 1);              end if;   else   x := max(0, x - 1);     end if;end if;end when;end MarkovChain;

#########################################################
Pre-condizioni,  invarianti e post-condizioni di un programma possono essere definiti usando la macro del C assert() (in <assert.h>).  In particolare, assert(expre) non fa nulla se l'espressione expre vale TRUE (cioè non è 0), stampa un messaggio di errore su stderr e abortisce l'esecuzione del programma altrimenti.
Si consideri la funzione C
int f(in x, int y) { ..... }
Quale delle seguenti assert esprime la pre-condizione che entrambi gli argomenti di f sono non-negativi ed almeno uno di loro è positivo ?



La risposta corretta è: int f(in x, int y) { assert( (x >= 0) && (y >= 0) && ((x > 0) || (y > 0)) );.....}

#########################################################
Il partition coverage di un insieme di test cases è la percentuale di elementi della partition inclusi nei test cases. La partition è una partizione finita dell'insieme di input della funzione che si sta testando.
Si consideri la seguente funzione C:
int f1(int x)  { return (2*x); }
Si vuole testare la funzione f1(). A tal fine l'insieme degli interi viene partizionato come segue: 
{(-inf, -11], [-10, -1], {0}, [1, 50], [51, +inf)}
Si consideri il seguente insieme di test cases:
{x=-100, x= 40, x=100}
Quale delle seguenti è la partition coverage conseguita?



La risposta corretta è: 60%

#########################################################
Si consideri il seguente requisito:
RQ1:  Dopo 20 unità di tempo dall'inizio dell'esecuzione la variabile x è sempre nell'intervallo [20, 30] .


La risposta corretta è: class MonitorInputReal x;  // plant outputOutputBoolean y;Boolean z;initial equationy = false;equationz = (time > 20) and ((x >= 30) or (x <= 20)) ;algorithmwhen edge(z) theny := true;end when;end Monitor;

#########################################################
 La state coverage di un insieme di test cases (cioè sequeze di inputs) per uno state diagram è la percentuale di stati (inclusi START ed END) raggiunti almeno una volta.
Si consideri lo state diagram in figura 




Si consideri il seguente insieme di test cases:
Test case 1: act2 act1 act2 act2 act1 act0 act1 act2 act2 
Test case 2: act0 act0 act2 

Test case 3: act2 act0 act2 
Quale delle seguenti è la migliore stima della state coverage per i test cases di cui sopra


La risposta corretta è: State coverage: 90%

#########################################################
La transition coverage di un insieme di test cases (cioè sequenze di inputs) per uno state diagram è la percentuale di transizioni (archi nel grafo dello state diagram) percorsi almeno una volta.
Si consideri lo state diagram in figura 




ed il seguente insieme di test cases:
Test case 1: act2 act2 act2 act2 act0 act1 act2 act0 
Test case 2: act1 act2 
Test case 3: act2 act0

Quale delle seguenti è la migliore stima della transition coverage per i test cases di cui sopra?


La risposta corretta è: 40%

#########################################################
 La transition coverage di un insieme di test cases (cioè sequenze di inputs) per uno state diagram è la percentuale di transizioni (archi nel grafo dello state diagram) percorsi almeno una volta.
Si consideri lo state diagram in figura 


ed il seguente insieme di test cases:
Test case 1: act2 act0 act2 act2 act2 
Test case 2: act0 act2 act2 act1 act2 act1 act1 act1 act2 act2 act2 act2 act2 
Test case 3: act2 act2 act2 act0 act1 act0

Quale delle seguenti è la migliore stima della transition coverage per i test cases di cui sopra?


La risposta corretta è: Transition coverage: 70%

#########################################################
Si consideri il processo software con due fasi (0 ed 1) rappresentato con la Markov chain in figura. Lo stato iniziale 0 e p è in (0, 1).  Il costo dello stato (fase) x è c(x). La fase 0 è la fase di design, che ha probabilità p di dover essere ripetuta causa errori. La fase 1 rappreenta il completamento del processo software, e quindi c(1) = 0.
Il costo di una istanza del processo software descritto sopra è la somma dei costi degli stati attraversati (tenendo presente che si parte sempre dallo stato 0.
Quindi il costo C(X) della sequenza di stati X = x(0), x(1), x(2), .... è C(X) = c(x(0)) + c(x(1)) + c(x(2)) + ...
Ad esempio se X = 0, 1 abbiamo C(X) = c(0) + c(1) = c(0)  (poichè c(1) = 0).
Quale delle seguenti formule calcola il valore atteso del costo per completare il processo software di cui sopra

                                                         


La risposta corretta è: c(0)/(1 - p)

#########################################################
Il branch coverage di un insieme di test cases è la percentuale di branch del programma che sono attraversati da almeno un test case.
Si consideri la seguente funzione C:
-----------
int f(int x, int y)  {   
 if (x - y <= 2)   { if (x + y >= 1)  return (1); else return (2); }
  else {if (x + 2*y >= 5)  return (3); else return (4); }
 }  /* f()  */
Si considerino i seguenti test cases:  {x=1, y=2}, {x=0, y=0}, {x=5, y=0}, {x=3, y=0}.
Quale delle seguenti è la branch coverage conseguita?



La risposta corretta è: 100%

#########################################################
Una azienda finanziaria desidera costruire un sistema software per ottimizzare i processi di business. Quali delle seguenti attività può contribuire a validare i requisiti del sistema ?


La risposta corretta è: Costruire un modello di simulazione per i principali aspetti dei processi di business dell'azienda e per il sistema software da realizzare e valutare le migliorie apportate dal sistema software ai processi di business dell'azienda mediante simulazione.

#########################################################
 La transition coverage di un insieme di test cases (cioè sequenze di inputs) per uno state diagram è la percentuale di transizioni (archi nel grafo dello state diagram) percorsi almeno una volta.
Si consideri lo state diagram in figura 


ed il seguente insieme di test cases:
Test case 1: act0 act2 act1 act2 act2 act2 act0 act1 act2 act2 act2 
Test case 2: act0 act1 act2 act2 act1 act2 act0 act2 act2 act2 act0 
Test case 3: act2 act2 act0 act2 act1 act0 act2 act0
Quale delle seguenti è la migliore stima della transition coverage per i test cases di cui sopra?


La risposta corretta è: 80%

#########################################################
Si consideri il seguente requisito:
RQ:  Dopo 10 unità di tempo dall'inizio dell'esecuzione vale la seguente proprietà: se la variabile x è nell'intervallo [10, 20]  allora la variabile y è compresa tra il 50% di x ed il 70% di x.


La risposta corretta è: class MonitorInputReal x, y;  // plant outputOutputBoolean wy;Boolean wz;initial equationwy = false;equationwz = (time > 10) and (x >= 10) and (x <= 20) and ((y < 0.5*x) or (y > 0.7*x)) ;algorithmwhen edge(wz) thenwy := true;end when;end Monitor;

#########################################################
"Ogni giorno, per ciascuna clinica, il sistema genererà una lista dei pazienti che hanno un appuntamento quel giorno."
La frase precedente è un esempio di:


La risposta corretta è: Requisito funzionale. 

#########################################################
Un processo software può essere rappesentato con uno state diagram in cui gli stati rappresentano le fasi (e loro iterazioni) del prcoesso software e gli archi le transizioni da una fase all'altra. Gli archi sono etichettati con le probabilità della transizione e gli stati sono etichettati con il costo  per lasciare lo stato. 
Ad esempio lo state diagram in figura



Rappresenta un processo software con 2 fasi F1 ed F2. F1 ha costo 10000 EUR ed F2 ha costo 1000 EUR. F1 ha una probabilita dello 0.3 di dover essere ripetuta (a causa di errori) ed F2 ha una probabilità 0.1 di dover essere ripetuta (a causa di errori).
Uno scenario è una sequenza di stati.
Qual'e' la probabilità dello scenario: 1, 2, 3, 4 ? In altri terminti, qual'è la probabilità che sia necessario ripetere sia la fase 1 che la fase 2 ?


La risposta corretta è: 0.03

#########################################################
 La state coverage di un insieme di test cases (cioè sequeze di inputs) per uno state diagram è la percentuale di stati (inclusi START ed END) raggiunti almeno una volta.
Si consideri lo state diagram in figura 




Si consideri il seguente insieme di test cases:
Test case 1: act1 act0 act2 act0 
Test case 2: act0 act1 act2 act2 act0 

Test case 3: act0 act0 act0 
Quale delle seguenti è la migliore stima della state coverage per i test cases di cui sopra


La risposta corretta è: State coverage: 75%

#########################################################
Il branch coverage di un insieme di test cases è la percentuale di branch del programma che sono attraversati da almeno un test case.
Si consideri la seguente funzione C:
-----------
int f(int x, int y)  {   
 if (x - y <= 6)   { if (x + y >= 3)  return (1); else return (2); }
  else {if (x + 2*y >= 15)  return (3); else return (4); }
 }  /* f()  */
Quale dei seguenti test sets consegue una branch coverage del 100% ?



La risposta corretta è: Test set: {x=3, y=6}, {x=0, y=0}, {x=15, y=0}, {x=9, y=0}.

#########################################################
 La transition coverage di un insieme di test cases (cioè sequenze di inputs) per uno state diagram è la percentuale di transizioni (archi nel grafo dello state diagram) percorsi almeno una volta.
Si consideri lo state diagram in figura 


ed il seguente insieme di test cases:
Test case 1: act2 act2 act2 act0 
Test case 2: act0 act1 act2 act0 act2 
Test case 3: act2 act2 act2 act2 
Quale delle seguenti è la migliore stima della transition coverage per i test cases di cui sopra?


La risposta corretta è: Transition coverage: 40%

#########################################################
Pre-condizioni,  invarianti e post-condizioni di un programma possono essere definiti usando la macro del C assert() (in <assert.h>).  In particolare, assert(expre) non fa nulla se l'espressione expre vale TRUE (cioè non è 0), stampa un messaggio di errore su stderr e abortisce l'esecuzione del programma altrimenti.
Si consideri la funzione C
int f(in x, int y) { ..... }
Quale delle seguenti assert esprime la pre-condizione che entrambi gli argomenti di f sono positivi ed almeno uno di loro è maggiore di 1 ?



La risposta corretta è: int f(in x, int y) { assert( (x > 0) && (y > 0) && ((x > 1) || (y > 1)) );.....}

#########################################################
Un processo software può essere rappesentato con uno state diagram in cui gli stati rappresentano le fasi (e loro iterazioni) del processo software e gli archi le transizioni da una fase all'altra. Gli archi sono etichettati con le probabilità della transizione e gli stati sono etichettati con il costo per lasciare lo stato. 
Ad esempio lo state diagram in figura



Rappresenta un processo software con 2 fasi F1 ed F2. F1 ha costo 10000 EUR ed F2 ha costo 1000 EUR. F1 ha una probabilita dello 0.4 di dover essere ripetuta (a causa di errori) ed F2 ha una probabilità 0.3 di dover essere ripetuta (a causa di errori).
Uno scenario è una sequenza di stati.
Qual'e' la probabilità dello scenario: 1, 2, 3? In altri terminti, qual'è la probabilità che non sia necessario ripetere la prima fase (ma non la seconda) ?


La risposta corretta è: 0.28

#########################################################
 La state coverage di un insieme di test cases (cioè sequenze di inputs) per uno state diagram è la percentuale di stati (inclusi START ed END) raggiunti almeno una volta.
Si consideri lo state diagram in figura 




Si consideri il seguente insieme di test cases:

Test case 1: act0 act0 act2 act0 act0 act0 act2 act1 act2 act0 act2 act2 act2 act2 act0 act0 act1 act2 act2 act0 act2 act0 act2 act1 act0 act2 act1 act2 act2 act0 act2 
Test case 2: act2 act2 act1 act0 act0 act0 act0 act2 act2 act1 act2 
Test case 3: act2 act2 act2 act1 act0 act2 act2 act0 act2 

Quale delle seguenti è la migliore stima della state coverage per i test cases di cui sopra


La risposta corretta è: State coverage: 100%

#########################################################
 La state coverage di un insieme di test cases (cioè sequeze di inputs) per uno state diagram è la percentuale di stati (inclusi START ed END) raggiunti almeno una volta.
Si consideri lo state diagram in figura 





Si consideri il seguente insieme di test cases:
Test case 1: act1 act2 act2 act2 act2 act0 act2 
Test case 2: act2 act0 act0 act2 act0 
Test case 3: act2 act2 act0 act2 act2 act0 
Quale delle seguenti è la migliore stima della state coverage per i test cases di cui sopra


La risposta corretta è: State coverage: 100%

#########################################################
Il partition coverage di un insieme di test cases è la percentuale di elementi della partition inclusi nei test cases. La partition è una partizione finita dell'insieme di input della funzione che si sta testando.
Si consideri la seguente funzione C:
int f1(int x)  { return (x + 7); }
Si vuole testare la funzione f1(). A tal fine l'insieme degli interi viene partizionato come segue: 
{(-inf, -101], [-100, -1], {0}, [1, 500], [501, +inf)}
Quale dei seguenti test cases consegue una partition coverage del 100% ?



La risposta corretta è: {x = -200, x = -50,  x = 0, x = 100, x = 700}

#########################################################
Si consideri il processo software con due fasi (0 ed 1) rappresentato con la Markov chain in figura. Lo stato iniziale 0 e p è in (0, 1).  Il tempo necessario per completare la fase x è time(x). La fase 0 è la fase di design, che ha probabilità p di dover essere ripetuta causa errori. La fase 1 rappreenta il completamento del processo software, e quindi time(1) = 0.
Il tempo di una istanza del processo software descritto sopra è la somma dei tempi degli stati (fasi) attraversati (tenendo presente che si parte sempre dallo stato 0.
Quindi il costo Time(X) della sequenza di stati X = x(0), x(1), x(2), .... è Time(X) = time(x(0)) + time(x(1)) + time(x(2)) + ...
Ad esempio se X = 0, 1 abbiamo Time(X) = time(0) + time(1) = time(0)  (poichè time(1) = 0).
Quale delle seguenti formule calcola il valore atteso del costo per completare il processo software di cui sopra

                                                         


La risposta corretta è: time(0)/(1 - p)

#########################################################
Un processo software può essere rappesentato con uno state diagram in cui gli stati rappresentano le fasi (e loro iterazioni) del prcoesso software e gli archi le transizioni da una fase all'altra. Gli archi sono etichettati con le probabilità della transizione e gli stati sono etichettati con il costo  per lasciare lo stato. 
Ad esempio lo state diagram in figura



Rappresenta un processo software con 2 fasi F1 ed F2. F1 ha costo 10000 EUR ed F2 ha costo 1000 EUR. F1 ha una probabilita dello 0.3 di dover essere ripetuta (a causa di errori) ed F2 ha una probabilità 0.2 di dover essere ripetuta (a causa di errori).
Uno scenario è una sequenza di stati.
Qual'e' la probabilità dello scenario: 1, 3 ? In altri terminti, qual'è la probabilità che non sia necessario ripetere nessuna fase?


La risposta corretta è: 0.56

#########################################################
Si consideri la Markov chain in figura con stato iniziale 0 e p in (0, 1). Quale delle seguenti formule calcola il valore atteso del numero di transizioni necessarie per lasciare lo stato 0.

                                                         


La risposta corretta è: 1/(1 - p)

#########################################################
 La state coverage di un insieme di test cases (cioè sequenze di inputs) per uno state diagram è la percentuale di stati (inclusi START ed END) raggiunti almeno una volta.
Si consideri lo state diagram in figura 




Si consideri il seguente insieme di test cases:

Test case 1: act2 act2 act2 act1 act2 act1 act2 act2 act1 
Test case 2: act2 act2 act0 act1 act1 act2 act0 act0 act2 act0 act2 act2 act2 act0 act0 act0 act2 act2 act0 act2 act2 act2 act1 act2 act2 act1 
Test case 3: act2 act0 act2 act1 act2 act1 act0 act2 act2 act0 act0 act2 act1 

Quale delle seguenti è la migliore stima della state coverage per i test cases di cui sopra


La risposta corretta è: State coverage: 90%

#########################################################
Un test oracle per un programma P è una funzione booleana che ha come inputs gli inputs  ed outputs  di P e ritorna true se e solo se il valore di output di P (con i dati inputs) è quello atteso dalle specifiche.
Si consideri la seguente specifica funzionale per la funzione f.
La funzione f(int *A, int *B)  prende come input un vettore A di dimensione n  ritorna come output un vettore B ottenuto ordinando gli elementi di A in ordine crescente.
Quale delle seguenti funzioni è un test oracle per la funzione f ?



La risposta corretta è: #define n 1000int TestOracle1(int *A, int *B){int i, j, D[n];//initfor (i = 0; i < n; i++) D[i] = -1;// B is orderedfor (i = 0; i < n; i++) {  for (j = i+1; j < n; j++) {if (B[j] < B[i]) {retun (0);}}}// B is a permutation of Afor (i = 0; i < n; i++) {  for (j = 0; j < n; j++) {if ((A[i] == B[j]) && (D[j] == -1)) {C[i][j] = 1; D[j] = 1; break;}for (i = 0; i < n; i++) {if (D[i] == -1) return (0);}// B okreturn (1);}

#########################################################
La transition coverage di un insieme di test cases (cioè sequenze di inputs) per uno state diagram è la percentuale di transizioni (archi nel grafo dello state diagram) percorsi almeno una volta.
Si consideri lo state diagram in figura 


ed il seguente insieme di test cases:

Test case 1: act2 act2 
Test case 2: act0 act1 act1 act1 act2 act2 act1 act0 act1 
Test case 3: act0 act0 

Quale delle seguenti è la migliore stima della transition coverage per i test cases di cui sopra?


La risposta corretta è: 50%

#########################################################
 La state coverage di un insieme di test cases (cioè sequeze di inputs) per uno state diagram è la percentuale di stati (inclusi START ed END) raggiunti almeno una volta.
Si consideri lo state diagram in figura 




Si consideri il seguente insieme di test cases:
Test case 1: act1 act1 act0 act1 act1 act2 act0 
Test case 2: act2 act0 act0 
Test case 3: act1 act1 act2 act0 act0 
Quale delle seguenti è la migliore stima della state coverage per i test cases di cui sopra


La risposta corretta è: State coverage: 90%

#########################################################
Il branch coverage di un insieme di test cases è la percentuale di branch del programma che sono attraversati da almeno un test case.
Si consideri la seguente funzione C:
-----------
int f(int x, int y)  {   
 if (x - y <= 0)   { if (x + y >= 2)  return (1); else return (2); }
  else {if (2*x + y >= 1)  return (3); else return (4); }
 }  /* f()  */
Si considerino i seguenti test cases:  {x=1, y=1}, {x=0, y=0}, {x=1, y=0}, {x=0, y=-1}.
Quale delle seguenti è la branch coverage conseguita?



La risposta corretta è: 100%

#########################################################
Un processo software può essere rappesentato con uno state diagram in cui gli stati rappresentano le fasi (e loro iterazioni) del prcoesso software e gli archi le transizioni da una fase all'altra. Gli archi sono etichettati con le probabilità della transizione e gli stati sono etichettati con il costo  per lasciare lo stato. 
Ad esempio lo state diagram in figura



Rappresenta un processo software con 2 fasi F1 ed F2. F1 ha costo 10000 EUR ed F2 ha costo 1000 EUR. F1 ha una probabilita dello 0.4 di dover essere ripetuta (a causa di errori) ed F2 ha una probabilità 0.2 di dover essere ripetuta (a causa di errori).
Uno scenario è una sequenza di stati.
Qual'e' la probabilità dello scenario: 1, 3, 4? In altri terminti, qual'è la probabilità che non sia necessario ripetere la seconda fase (ma non la prima) ?


La risposta corretta è: 0.12

#########################################################
 La state coverage di un insieme di test cases (cioè sequenze di inputs) per uno state diagram è la percentuale di stati (inclusi START ed END) raggiunti almeno una volta.
Si consideri lo state diagram in figura 




Si consideri il seguente insieme di test cases:

Test case 1: act0 act2 act2 act1 act2 act1 act2 act0 act1 
Test case 2: act0 act2 act0 
Test case 3: act1 act1 act2 

Quale delle seguenti è la migliore stima della state coverage per i test cases di cui sopra


La risposta corretta è: State coverage: 60%

#########################################################
Il team di sviluppo di un azienda consiste di un senior software engineer e due sviluppatori junior. Usando un approccio plan-driven (ad esempio, water-fall) la fase di design impegna solo il membro senior per tre mesi e la fase di sviluppo e testing solo i due membri junior per tre mesi. Si assuma che non ci siano "change requests" e che il membro senior costi A Eur/mese ed i membri junior B Eur/mese. Qual'e' il costo dello sviluppo usando un approccio plan-driven come sopra ?


La risposta corretta è: 3*A + 6*B

#########################################################
 La state coverage di un insieme di test cases (cioè sequenze di inputs) per uno state diagram è la percentuale di stati (inclusi START ed END) raggiunti almeno una volta.
Si consideri lo state diagram in figura 




Si consideri il seguente insieme di test cases:
Test case 1: act0 act1 act2 act2 act2 act1 act1 act0 act0 act0 act0 act0 act1 
Test case 2: act1 
Test case 3: act0 act1 act2 act0 act2 act2 act2 act2 act0 act1 
Quale delle seguenti è la migliore stima della state coverage per i test cases di cui sopra


La risposta corretta è: State coverage: 75%

#########################################################
La transition coverage di un insieme di test cases (cioè sequenze di inputs) per uno state diagram è la percentuale di transizioni (archi nel grafo dello state diagram) percorsi almeno una volta.
Si consideri lo state diagram in figura 




ed il seguente insieme di test cases:
Test case 1: act0 act1 act0 act2 act2 act1 act2 act2 act2 act2 act2 act0 act0 
Test case 2: act2 

Test case 3: act2 

Quale delle seguenti è la migliore stima della transition coverage per i test cases di cui sopra?


La risposta corretta è: 45%

#########################################################
Un test oracle per un programma P è una funzione booleana che ha come inputs gli inputs  ed outputs  di P e ritorna true se e solo se il valore di output di P (con i dati inputs) è quello atteso dalle specifiche.
Si consideri la seguente funzione C:
-----------
int f(int x, int y)  {   
int z, k;
z = 1;   k = 0;
while (k < x)  { z = y*z;  k = k + 1; }
return (z);
}
Siano x, y, gli inputs del programma (f nel nostro caso) e z l'output. Assumendo il programma corretto, quale delle seguenti funzioni booleane F(x, y, z) è un test oracle per la funzione f.



La risposta corretta è: F(x, y, z) = if (x >= 0) then (z == pow(y, x)) else (z == 1)

#########################################################
Il branch coverage di un insieme di test cases è la percentuale di branch del programma che sono attraversati da almeno un test case.
Si consideri la seguente funzione C:
-----------
int f(int x, int y)  {   
 if (x - y <= 0)   { if (x + y >= 1)  return (1); else return (2); }
  else {if (2*x + y >= 5)  return (3); else return (4); }
 }  /* f()  */
Quale dei seguenti test sets consegue una branch coverage del 100% ?


La risposta corretta è: Test set: {x=1, y=1}, {x=0, y=0}, {x=2, y=1}, {x=2, y=0}.

#########################################################
 La transition coverage di un insieme di test cases (cioè sequenze di inputs) per uno state diagram è la percentuale di transizioni (archi nel grafo dello state diagram) percorsi almeno una volta.
Si consideri lo state diagram in figura 


ed il seguente insieme di test cases:
Test case 1: act0 act2 act1 act2 
Test case 2: act2 act2 act1 act2 act2 

Test case 3: act2 act1 act0 act2 
Quale delle seguenti è la migliore stima della transition coverage per i test cases di cui sopra?


La risposta corretta è: Transition coverage: 50%

#########################################################
La transition coverage di un insieme di test cases (cioè sequenze di inputs) per uno state diagram è la percentuale di transizioni (archi nel grafo dello state diagram) percorsi almeno una volta.
Si consideri lo state diagram in figura 




ed il seguente insieme di test cases:
Test case 1:  act1 act1 act1 
Test case 2: act1 act2 act1 act1 act0 act0 act0 act1 act2 act1 act2 act1 act2 act2 act0 act2 act0 act1 act2 act2 act0 act2 act2 act2 
Test case 3: act0 act1 act1 act0 act2 act2 act0 act2 act0 act2 act0 act2 act0 act0 act0 act0 act0 act0 act1 act1 act2 
Quale delle seguenti è la migliore stima della transition coverage per i test cases di cui sopra?


La risposta corretta è: 80%

#########################################################
Il rischio R può essere calcolato come R = P*C, dove P è la probabilità dell'evento avverso (software failure nel nostro contesto) e C è il costo dell'occorrenza dell'evento avverso. 
Assumiamo che la probabilità P sia legata al costo di sviluppo S dalla formula 
P = 10^{(-b*S)}    (cioè 10 elevato alla (-b*S))
dove b è una opportuna costante note da dati storici aziendali. Si assuma che b = 0.0001,  C = 1000000, ed il rischio ammesso è R = 1000. Quale dei seguenti valori meglio approssima il costo S per lo sviluppo del software in questione. 


La risposta corretta è: 300000 EUR

#########################################################
Un test oracle per un programma P è una funzione booleana che ha come inputs gli inputs  ed outputs  di P e ritorna true se e solo se il valore di output di P (con i dati inputs) è quello atteso dalle specifiche.
Si consideri la seguente funzione C:
-----------
int f(int x, int y)  {   
int z = x;
while ( (x  <= z)  &&  (z <= y) )  { z = z + 1; }
return (z);
}
Siano x, y, gli inputs del programma (f nel nostro caso) e z l'output. Assumendo il programma corretto, quale delle seguenti funzioni booleane F(x, y, z) è un test oracle per la funzione f.



La risposta corretta è: F(x, y, z) = if (x > y) then (z == x) else (z == y + 1)

#########################################################
L'input ad un sistema è costituito da un utente (umano) che preme due pulsanti etichettati con 0 ed 1.
Con probabilità 0.6 l'utente preme il pulsante 0, con probabilità 0.4 l'utente preme il pulsante 1.


La risposta corretta è: model EnvInteger x;  // Pulsante premuto dall'utenteReal r1024;Integer state1024[Modelica.Math.Random.Generators.Xorshift1024star.nState];algorithmwhen initial() then   state1024 := Modelica.Math.Random.Generators.Xorshift1024star.initialState(614657, 30020);   x := 0;   r1024 := 0;elsewhen sample(0,1) then  (r1024,state1024) := Modelica.Math.Random.Generators.Xorshift1024star.random(pre(state1024));  if (r1024 <= 0.6) then x := 0; else x := 1;  end if;end when;end Env;

#########################################################
Si consideri un software sviluppato seguendo un approccio iterativo implementato con due fasi: F1 seguita da F2. Ciascuna fase ha costo A e deve essere ripetuta una seconda volta con probabilità p. Qual'e' il costo atteso dello sviluppo dell'intero software?


La risposta corretta è: 2*A*(p +1)

#########################################################
L'input di un sistema software è costituito da un sensore che ogni unità di tempo (ad esempio, un secondo) invia un numero reale. Con probabilità 0.63 il valore inviato in una unità di tempo è maggiore del 10% rispetto quello inviato nell'unità di tempo precedente. Con probabilità 0.1 è inferiore del 27% rispetto al valore inviato nell'unità di tempo precedente. Con probabilità 0.27 è inferiore del 10% rispetto quello inviato nell'unità di tempo precedente.
Quale dei seguenti modelli Modelica modella correttamente l'environment descritto sopra.



La risposta corretta è: block MarkovChain//external function myrandom() returns a random real number in [0, 1]parameter Real x0 = 1;OutputReal x;algorithmwhen initial() thenx := x0;elsewhen sample(0, 1) thenif (myrandom() <= 0.9)then    if (myrandom() <= 0.7)    then     x := 1.1*x;        else     x := 0.9*x;       end if;else   x := 0.73*x;  end if;end when;end MarkovChain;

#########################################################
L'environment di un sistema software è costituito da uno user che, ogni untià di tempo (ad esempio, un secondo) invia al sistema tre numeri: -1, 0, 1, con probabilità, rispettivamente, 0.2, 0.56, 0.24.
Quale dei seguenti modelli Modelica modella correttamente l'environment descritto sopra.



La risposta corretta è: block MarkovChain//external function myrandom() returns a random real number in [0, 1]parameter Integer x0 = 0;OutputInteger x;algorithmwhen initial() thenx := x0;elsewhen sample(0, 1) then     if (myrandom() <= 0.8)     then     if (myrandom() <= 0.7)            then            x := 0;                else            x := 1;              end if;     else     x := -1;       end if;end when;end MarkovChain;

#########################################################
Si consideri un software sviluppato seguendo un approccio plan-driven implementato con tre fasi: F1, F2, F3 ciascuna con costo A. Le "change request" possono arrivare solo al fine di una fase e provocano la ripetizione (con relativo costo) di tutte le fasi che precedono. Si assuma che dopo la fase F3 (cioè al termine dello sviluppo) arriva una change request. Qual'e' il costo totale per lo sviluppo del software in questione.


La risposta corretta è: 6*A

#########################################################
Una azienda manifatturiera desidera costruire un sistema software per monitorare (attraverso sensori) la produzione al fine di ridurre gli scarti. Quali delle seguenti attività contribuisce a validare i requisiti del sistema.


La risposta corretta è: Costruire un prototipo, eseguirlo usando dati storici dai log di produzione e valutare la capacità del prototipo di ridurre gli scarti.

#########################################################
Si consideri il seguente requisito: "Il sistema fornisce l'elenco dei clienti in ordine alfabetico". Di che tipo di requisito si tratta?



La risposta corretta è: Requisito utente.

#########################################################
Il system testing si concentra su:



La risposta corretta è: Testare l'interazione tra  le componenti del sistema (cioè, integrazione di molte unità di sistema).

#########################################################
Un'azienda decide di organizzare il processo di sviluppo di un grosso software in 101 phasi sequenziali, numerate da 0 a 100. La phase 0 è quella iniziale. La phase 100 è quella finale in cui lo sviluppo è completato. Tutte le fasi hanno circa la stessa durata.
Si decide di realizzare un approccio incrementale in cui, alla fine di ogni fase, si passa alla fase successiva solo nel caso in cui tutti i test per la fase vengono superati. In caso contrario bisogna ripetere la phase. Dai dati storici è noto che la probabilità che il team di sviluppo passi da una fase a quella successiva è 0.8. 
Allo scopo di stimare attraverso una simulazione MonteCarlo il valore atteso del tempo di completamento del progetto viene realizzato un modello Modelica  delo processo di sviluppo descritto sopra. 
Quale dei seguenti modelli Modelica modella correttamente il processo di sviluppo descritto sopra?



La risposta corretta è: block MarkovChain//external function myrandom() returns a random real number in [0, 1]parameter Integer x0 = 0;parameter Integer xmax = 100;OutputInteger x;      // Connectoralgorithmwhen initial() thenx := x0;elsewhen sample(0, 1) thenif (x < xmax)then      if (myrandom() <= 0.8)     then    x := x + 1;     end if;end if;end when;end MarkovChain;

#########################################################
Verification answers the following question:


La risposta corretta è: Are we building the system right?’

#########################################################
Si pianifica lo sviluppo di un sistema software per controllare il sistema di anti-lock braking in un automobile. Quale dei seguenti è il tipico processo software usato per questo tipo di sistema software ?



La risposta corretta è: Sviluppo Plan-driven.

#########################################################
Il component testing si concentra su:


La risposta corretta è: Testare le interfacce per ciascun componente.

#########################################################
Lo State Diagram in figura descrive (in modo semplificato) una macchina distributrice di bevande. Quale delle seguenti frasi è corretta riguardo allo State Diagram in figura ?


La risposta corretta è: Una volta selezionata la bevanda non è possibile cancellare l'operazione.

#########################################################
Unit testing si concentra su:


La risposta corretta è: Testare funzionalità di unità software individuali, oggetti, classi o metodi.

#########################################################
Quale pattern architetturale meglio descrive  l'architettura in figura ?


La risposta corretta è: Layred architecture.

#########################################################
La validazione risponde alla seguenete domanda:


La risposta corretta è: Stiamo costruendo il sistema giusto ?

#########################################################
 Quale delle seguenti frasi è corretta riguardo all'ctivity diagram in figura ?





La risposta corretta è: Una volta selezionato il piatto di mare da preparare, la preparazione del pesce e del contorno procedono in parallelo.

#########################################################
Si consideri il monitor seguente che ritorna true appena i requisiti per il sistema monitorato sono violati.
block Monitor
input Real x;  
output Boolean y;
Boolean w;
initial equation
y = false;
equation
w = ((x < 0) or (x > 5));
algorithm
when edge(w) then
y := true;
end when;
end Monitor;
Quale delle seguenti affermazioni meglio descrive il requisito monitorato.


La risposta corretta è: La variabile x è nell'intervallo [0, 5].

#########################################################
Quale delle seguenti affermazioni è vera riguardo al performance testing?



La risposta corretta è: Il performance testing è tipicamente eseguito una volta che il sistema è stato completamento integrato.

#########################################################
Si consideri il monitor seguente che ritorna true appena il sistema viola il requisito monitorato.
block Monitor
input Real x;  
output Boolean y;
Boolean w;
initial equation
y = false;
equation
w = ((x < 1) or (x > 4)) and ((x < 15) or (x > 20));
algorithm
when edge(w) then
y := true;
end when;

end Monitor;
Quale delle seguenti affermazioni meglio descrive il requisito monitorato?


La risposta corretta è: La variabile x è nell'intervallo [1, 4] oppure nell'intervallo [15, 20].

#########################################################
Lo State Diagram in figura descrive (in modo semplificato) una macchina distributrice di bevande. Quale dei seguenti Sequence Diagram è consistente con lo State Diagram in figura ?


La risposta corretta è: 

#########################################################
Quale delle seguenti frasi è corretta riguardo al Sequence Diagram in figura ?



La risposta corretta è: Il paziente richiede al client una visita con uno specifico medico e, dopo una verifica sul database, riceve conferma dal client della disponibilità o meno del medico richiesto.

#########################################################
Si consideri un software sviluppato seguendo un approccio plan-driven implementato con due fasi: F1, F2. La fase F1 ha costo A e la fase F2 ha costo il 50% di A. Qual'e' il costo dello sviluppo del software?


La risposta corretta è: 1.5*A

#########################################################
Lo state diagram in figura descrive (in modo semplificato) una macchina distributrice di bevande. Quale dei seguenti modelli Modelica è plausibile per lo state diagram in figura?


La risposta corretta è: block CoffeeMachineparameter Real T = 1;    // clockInputInteger Customer2Machine;OutputInteger Machine2Customer;/*0: nop1: enough coins inserted2: drink dispensed3: done*/Integer state;/*0: waiting for coins1: waiting for selection2: dispensing 3: refund/change*/algorithmwhen initial() thenstate := 0;Machine2Customer := 0; elsewhen sample(0, T) thenif    (pre(state) == 0) and (Customer2Machine == 1)       then // customer has inserted enough coins           state := 1;           Machine2Customer := 1;  elseif (pre(state) == 1) and (Customer2Machine == 2)  // drink selected       then // drink selected            state := 2;  //  dispensing drink            Machine2Customer := 0;  elseif (pre(state) == 1) and (Customer2Machine == 3)  // cancel transaction       then // refund            state := 3;  // refund/change            Machine2Customer := 0;  elseif (pre(state) == 2)   // drink dispensed       then // drink dispensed            state := 3;              Machine2Customer := 2;elseif (pre(state) == 3)   // refund/change       then // refund            state := 0;            Machine2Customer := 3;  // done     else   state := pre(state);       Machine2Customer := pre(Machine2Customer);       end if;end when;end CoffeeMachine;

#########################################################
Si consideri il Test-Driven Development (TDD). Quale delle seguenti affermazioni è vera?


La risposta corretta è: Per ciascun incremento di funzionalità, scrivi test automatizzati, implementa la funzionalità, esegui i test e rivedi l'implementazione come necessario.

#########################################################
 La state coverage di un insieme di test cases (cioè sequeze di inputs) per uno state diagram è la percentuale di stati (inclusi START ed END) rggiunti almeno una volta.
Si consideri lo state diagram in figura 


ed il seguente insieme di test cases:

1) Start PIN validation, card inserted, PIN Entered, Valid PIN, Cancel 3, End PIN Validation 2
2) Start PIN validation, card inserted, PIN Entered, Valid PIN, Cancel 2, End PIN Validation 2
3) Start PIN validation, card inserted, PIN Entered, Invalid PIN, PIN Entered, Invalid PIN, PIN Entered, Invalid PIN, PIN Entered, Invalid PIN, More than 3 failed..., END PIN validation 1;

Quale delle seguenti è la migliore stima della state coverage per i test cases di cui sopra


La risposta corretta è: 100%

#########################################################
 La transition coverage di un insieme di test cases (cioè sequeze di inputs) per uno state diagram è la percentuale di transizioni (archi nel grafo dello state diagram) percorsi almeno una volta.
Si consideri lo state diagram in figura 


ed il seguente insieme di test cases:
1) Start PIN validation, card inserted, PIN Entered, Valid PIN, Cancel 3, End PIN Validation 2
2) Start PIN validation, card inserted, PIN Entered, Cancel 2, End PIN Validation 2

Quale delle seguenti è la migliore stima della transition coverage per i test cases di cui sopra


La risposta corretta è: 60%

#########################################################
 La transition coverage di un insieme di test cases (cioè sequeze di inputs) per uno state diagram è la percentuale di transizioni (archi nel grafo dello state diagram) percorsi almeno una volta.
Si consideri lo state diagram in figura 


ed il seguente insieme di test cases:
1) Start PIN validation, card inserted, PIN Entered, Valid PIN, Cancel 3, End PIN Validation 2;
2) Start PIN validation, card inserted, PIN Entered, Invalid PIN, PIN Entered, Valid PIN, Cancel 3, End PIN Validation 2;
3) Start PIN validation, card inserted, PIN Entered, Invalid PIN, PIN Entered, Invalid PIN, PIN Entered, Valid PIN, Cancel 3, End PIN Validation 2.

Quale delle seguenti è la migliore stima della transition coverage per i test cases di cui sopra


La risposta corretta è: 60%

#########################################################
 La state coverage di un insieme di test cases (cioè sequeze di inputs) per uno state diagram è la percentuale di stati (inclusi START ed END) rggiunti almeno una volta.
Si consideri lo state diagram in figura 


ed il seguente insieme di test cases:
1) Start PIN validation, card inserted, PIN Entered, Valid PIN, Cancel 3, End PIN Validation 2
2) Start PIN validation, card inserted, PIN Entered, Cancel 2, End PIN Validation 2

Quale delle seguenti è la migliore stima della state coverage per i test cases di cui sopra


La risposta corretta è: 90%

#########################################################
 La state coverage di un insieme di test cases (cioè sequeze di inputs) per uno state diagram è la percentuale di stati (inclusi START ed END) rggiunti almeno una volta.
Si consideri lo state diagram in figura 


ed il seguente insieme di test cases:
1) Start PIN validation, card inserted, PIN Entered, Valid PIN, Cancel 3, End PIN Validation 2;
2) Start PIN validation, card inserted, PIN Entered, Invalid PIN, PIN Entered, Valid PIN, Cancel 3, End PIN Validation 2;
3) Start PIN validation, card inserted, PIN Entered, Invalid PIN, PIN Entered, Invalid PIN, PIN Entered, Valid PIN, Cancel 3, End PIN Validation 2.

Quale delle seguenti è la migliore stima della state coverage per i test cases di cui sopra


La risposta corretta è: 90%

#########################################################
 La transition coverage di un insieme di test cases (cioè sequeze di inputs) per uno state diagram è la percentuale di transizioni (archi nel grafo dello state diagram) percorsi almeno una volta.
Si consideri lo state diagram in figura 


ed il seguente insieme di test cases:


1) Start PIN validation, card inserted, PIN Entered, Valid PIN, Cancel 3, End PIN Validation 2
2) Start PIN validation, card inserted, PIN Entered, Valid PIN, Cancel 2, End PIN Validation 2
3) Start PIN validation, card inserted, PIN Entered, Invalid PIN, PIN Entered, Invalid PIN, PIN Entered, Invalid PIN, PIN Entered, Invalid PIN, More than 3 failed..., END PIN validation 1;

Quale delle seguenti è la migliore stima della transition coverage per i test cases di cui sopra


La risposta corretta è: 90%

#########################################################
Si consideri un software sviluppato seguendo un approccio iterativo implementato con due fasi: F1 seguita da F2. Ciascuna fase ha costo 10000 Eur e deve essere ripetuta una seconda volta con probabilità 0.1. Qual'e' il costo atteso dello sviluppo dell'intero software?


La risposta corretta è: 22000

#########################################################
Si consideri un processo software costituito da due fasi F1 ed F2 ciascuna di costo 10000. Con probabilità p = 0.1 la fase F1 deve essere ripetuta (a causa di change requests) e con probabilità (1 - p) si passa alla fase F2 e poi al completamento (End) dello sviluppo. Qual'è il costo atteso per lo sviluppo del software seguendo il processo sopra descritto ?



La risposta corretta è: 21000

#########################################################
Il rischio R può essere calcolato come R = P*C, dove P è la probabilità dell'evento avverso (software failure nel nostro contesto) e C è il costo dell'occorrenza dell'evento avverso. Assumiamo che la probabilità P sia legata al costo di sviluppo S dalla formula P = exp(-b*S), dove b è una opportuna costante note da dati storici aziendali. Si assuma che b = 0.00001,  C = 1000000, ed il rischio ammesso è R = 100. Quale delle seguenti opzioni meglio approssima il costo S per lo sviluppo del software in questione. 


La risposta corretta è: 950000 EUR

#########################################################
Si consideri un processo software costituito da due fasi F1 ed F2 ciascuna di costo 10000. Con probabilità p = 0.4 la fase F1 deve essere ripetuta (a causa di change requests) e con probabilità (1 - p) si passa alla fase F2 e poi al completamento (End) dello sviluppo. Qual'è il costo atteso per lo sviluppo del software seguendo il processo sopra descritto ?



La risposta corretta è: 24000

#########################################################
Si consideri un software sviluppato seguendo un approccio iterativo implementato con due fasi: F1 seguita da F2. Ciascuna fase ha costo 1000 Eur e deve essere ripetuta una seconda volta con probabilità 0.5. Qual'e' il costo atteso dello sviluppo dell'intero software?


La risposta corretta è: 3000

#########################################################
Il rischio R può essere calcolato come R = P*C, dove P è la probabilità dell'evento avverso (software failure nel nostro contesto) e C è il costo dell'occorrenza dell'evento avverso. Assumiamo che la probabilità P sia legata al costo di sviluppo S dalla formula P = exp(-b*S), dove b è una opportuna costante note da dati storici aziendali. Si assuma che b = 0.00001,  C = 1000000, ed il rischio ammesso è R = 1000. Quale delle seguenti opzioni meglio approssima il costo S per lo sviluppo del software in questione. 


La risposta corretta è: 700000 EUR

#########################################################
Si consideri un software sviluppato seguendo un approccio iterativo implementato con due fasi: F1 seguita da F2. Ciascuna fase ha costo 1000. Con probabilità 0.5 potrebbe essere necessario ripetere F1 una seconda volta.  Con probabilità 0.2 potrebbe essere necessario ripetere F2 una seconda volta. Qual'e' il costo atteso dello sviluppo dell'intero software?


La risposta corretta è: 2700

#########################################################
Si consideri un software sviluppato seguendo un approccio iterativo implementato con due fasi: F1 seguita da F2. Ciascuna fase ha costo 10000. Con probabilità 0.1 potrebbe essere necessario ripetere F1 una seconda volta.  Con probabilità 0.2 potrebbe essere necessario ripetere F2 una seconda volta. Qual'e' il costo atteso dello sviluppo dell'intero software?


La risposta corretta è: 23000

#########################################################
Quale delle seguenti affermazione è vera riguardo al beta testing ?



La risposta corretta è: Una release del software è resa disponibile agli utenti (beta users) per permettergli di sperimentare e quindi segnalare eventuali problemi rilevati agli sviluppatori.

#########################################################
Quale delle seguenti affermazioni è vera riguardo all'alpha testing ?



La risposta corretta è: Gli utenti del sistema lavorano insieme al team di sviluppo per testare il software nel sito di sviluppo.

#########################################################
Component testing focuses on:


La risposta corretta è: Testing interfaces for each component (i.e., integration of several units).

#########################################################
