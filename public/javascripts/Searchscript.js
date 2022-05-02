window.addEventListener('load', function() {
    /* PREVENT DEFAULT SELECTOR*/
    let but = document.getElementById('btnsubform')
    /* INPUT FIELDS SELECTOR*/
    let cc02 = document.getElementById('cc02')
    let cc03 = document.getElementById('cc03')
    let cc07 = document.getElementById('cc07')
    let cc08 = document.getElementById('cc08')
    let cc19 = document.getElementById('cc19')
    let cc20 = document.getElementById('cc20')
    let cc23 = document.getElementById('cc23')
    let cc24 = document.getElementById('cc24')
    let aa02 = document.getElementById('aa02')
    let aa03 = document.getElementById('aa03')
    /* INPUT FIELDS DEFAULT VALUES*/

    /* INPUT FIELDS CHANGE VALUES*/
    cc03.addEventListener('change', () => {
      if (cc02.value !== cc03.value) cc02.value = cc03.value;
    });
    cc02.addEventListener('change', () => {
      if (cc03.value !== cc02.value) cc03.value = cc02.value;
    });
    cc08.addEventListener('change', () => {
        if (cc07.value !== cc08.value) cc07.value = cc08.value;
      });
    cc07.addEventListener('change', () => {
        if (cc08.value !== cc07.value) cc08.value = cc07.value;
      });
    cc20.addEventListener('change', () => {
        if (cc19.value !== cc20.value) cc19.value = cc20.value;
      });
    cc19.addEventListener('change', () => {
        if (cc20.value !== cc19.value) cc20.value = cc19.value;
      });
    cc24.addEventListener('change', () => {
        if (cc23.value !== cc24.value) cc23.value = cc24.value;
      });
    cc23.addEventListener('change', () => {
        if (cc24.value !== cc23.value) cc24.value = cc23.value;
      });
    aa03.addEventListener('change', () => {
        if (aa02.value !== aa03.value) aa02.value = aa03.value;
      });
    aa02.addEventListener('change', () => {
        if (aa03.value !== aa02.value) aa03.value = aa02.value;
      });
    /* PREVENT DEFAULT RESOLUTION*/  
    but.addEventListener('click', (e) =>{
    })
})