document.querySelector('#como-jugar').addEventListener('mousemove', ({clientX, clientY})=>{
    const rocket = document.querySelector('#como-jugar-cohete').getBoundingClientRect();
    const rocketX = rocket.x + rocket.width/2;
    const rocketY = rocket.y + rocket.height/2;

    const vector = {
        x: rocketX - clientX, 
        y: rocketY - clientY,
    }

    const width = 0.5*Math.sqrt( Math.pow(vector.x, 2) + Math.pow(vector.y, 2) ) ;

    const angle = Math.atan2(vector.y, vector.x) + Math.PI;

    document.querySelector('#como-jugar-vector').style.width = `${width}px`;
    document.querySelector('#como-jugar-cohete-cont').style.transform = `rotate(${angle}rad)`;

})
