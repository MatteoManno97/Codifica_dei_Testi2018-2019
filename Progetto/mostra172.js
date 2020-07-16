var stringa="blocco";

function mostra(N){
    for(i=1; i<14; i++){
        if(i !=N){
            document.getElementById(stringa+i).style.display="none";
        }
    }
    document.getElementById(stringa+N).style.display="block";
}