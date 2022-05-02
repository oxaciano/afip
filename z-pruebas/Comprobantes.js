const addcc = document.getElementById('addcc');

window.addEventListener('load', function() {
if (localStorage.getItem(0)){ id = Number(localStorage.getItem(0))}
else{
let id = 1;
localStorage.setItem(0,id)
}

addcc.addEventListener('submit', e => {
            e.preventDefault();
    const contentToStorage = { 
        'cc01':cc01.value,
        'cc02':cc02.value,
        'cc03':cc03.value,
        'cc04':cc04.value,
        'cc05':cc05.value,
        'cc06':cc06.value,
        'cc07':cc07.value,
        'cc08':cc08.value,
        'cc09':cc09.value,
        'cc10':cc10.value,
        'cc11':cc11.value,
        'cc12':cc12.value,
        'cc13':cc13.value,
        'cc14':cc14.value,
        'cc15':cc15.value,
        'cc16':cc16.value,
        'cc17':cc17.value,
        'cc19':cc19.value,
        'cc20':cc20.value,
        'cc21':cc21.value,
        'cc22':cc22.value,
        'cc23':cc23.value,
        'cc24':cc24.value,
        'cc25':cc25.value,
    }
    contentReady = JSON.stringify(contentToStorage);
    localStorage.setItem(id, contentReady);
    id = id+1;
    localStorage.setItem(0, id);
})
})