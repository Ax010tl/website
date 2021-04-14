// WUUUUUUUU xd
const express = require('express');
const app = express();
const mysql = require('mysql');

// Connect to database
var connection = mysql.createConnection({
    host     : 'localhost',
    user     : 'root',
    password : 'mac_15_db',
    database : 'skience'
});

connection.connect(error => {
    if (error) throw error;
    console.log("Conexión exitosa a la base de datos");
});
app.use(express.json());
app.use(express.urlencoded({ extended: true }));

app.use(express.static('static'));


// CREAR UN NUEVO USUARIO
app.post('/new', (req, res)=>{
    const data = req.body;
    connection.query("INSERT INTO `skience`.`users` (`alias`, `age`, `state`, `gender`, `schoolLevel`, `biology`, `chemistry`, `physics`, `engineering`, `tech`, `math`, `score`) VALUES ('"+data.alias+"', "+data.age+", '"+data.state+"', '"+data.gender+"', '"+data.schoolLevel+"', "+data.biology+", "+data.chemistry+", "+data.physics+", "+data.engineering+", "+data.tech+", "+data.math+", "+data.score+");", 
    (err, results, fields)=>{
        if(err){
            console.log(err);
            return;
        }
        res.send("Yey! 🙌");
    })
});

// MODIFICAR UN USUARIO EXISTENTE
app.post('/modify', (req, res)=>{
    const data = req.body;
    let {userID, alias, age, state, gender, schoolLevel, biology, chemistry, physics, engineering, tech, math, score} = data;

    connection.query("UPDATE users ? WHERE userID="+userID, {alias, age, state, gender, schoolLevel, biology, chemistry, physics, engineering, tech, math, score}, 
    (err, results, fields)=>{
        if(err){
            console.log(err);
            return;
        }a
        res.send("Yey! 🙌");
    })
});

// ELIMINAR UN USUARIO  
app.post('/delete', (req, res)=>{
    const data = req.body;
    const id = req.body.userID;
    connection.query("DELETE from users WHERE userID="+id, (err, results, fields)=>{
        if(err){
            console.log(err);
            return;
        } 
        res.send("Yey!")
    })
});

// OBTENER TODOS LOS USUARIOS   
app.get('/all', (req, res)=>{
    connection.query('SELECT * FROM users', (err, results, fields)=>{
        if(err){
            console.log(err);
            return;
        }
        res.send(results);
    })
});

// OBTENER USUARIO POR ID   
app.get('/user', (req, res)=>{
    const id = req.body.userID;
    connection.query('SELECT * FROM users WHERE userID='+id, (err, results, fields)=>{
        if(err){
            console.log(err);
            return;
        }
        res.send(results);
    })
});

app.get('/views/subjectinterest', (req, res)=>{
    connection.query("SELECT * FROM subjectinterest", (err, results, fields)=>{
        if(err) console.log(err);
        else res.send(results);
    });
});

app.get('/views/schoolLevel_subject', (req, res)=>{
    connection.query("SELECT * FROM schoolLevel_subject", (err, results, fields)=>{
        if(err) console.log(err);
        else res.send(results);
    });
})

app.get('/views/gender_view', (req, res)=>{
    connection.query("SELECT * FROM gender_view", (err, results, fields)=>{
        if(err) console.log(err);
        else res.send(results);
    });
});

app.get('/views/schoolLevel_view', (req, res)=>{
    connection.query("SELECT * FROM schoolLevel_view", (err, results, fields)=>{
        if(err) console.log(err);
        else res.send(results);
    });
});

app.get('/views/ages_view', (req, res)=>{
    connection.query("SELECT * FROM ages_view", (err, results, fields)=>{
        if(err) console.log(err);
        else res.send(results);
    });
});

app.get('/views/gender_subject', (req, res)=>{
    connection.query("SELECT * FROM gender_subject", (err, results, fields)=>{
        if(err) console.log(err);
        else res.send(results);
    });
});

app.listen(8000, ()=>{
    console.log("Hola! Estoy corriendo de mis problemas 🏃‍♀️🏃‍♂️, en el puerto 8000")
})