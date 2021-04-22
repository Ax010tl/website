// WUUUUUUUU xd
const express = require('express');
const app = express();
const mysql = require('mysql');
const cors = require('cors');

const PORT = process.env.PORT || 5000;

const DB_SETTINGS = {
    host     : 'us-cdbr-east-03.cleardb.com',
    user     : 'b5d3a39da1737e',
    password : 'f62e1752',
    database : 'heroku_e5db01dce17010c',
    connectionLimit: 10
}

// Connect to database
var connection = mysql.createPool(DB_SETTINGS);

connection.on('connection', (conn)=>{
    console.log('Conexión exitosa a la base de datos');
    conn.on('error', err => {
        console.error('Oucrrió un error en la base de datos', err.code);
    });
    conn.on('close', err => {
        console.error('Se cerró la conexión a la base de datos', err)
    })
})

/* connection.connect(error => {
    if (error) throw error;
    console.log("Conexión exitosa a la base de datos");
}); */

app.use(express.json());
app.use(express.urlencoded({ extended: true }));
app.use(cors());

app.use(express.static('static'));


// CREAR UN NUEVO USUARIO
app.post('/new', (req, res)=>{
    const data = req.body;
    connection.query("INSERT INTO `users` (`alias`, `age`, `state`, `gender`, `schoolLevel`, `biology`, `chemistry`, `physics`, `engineering`, `tech`, `math`, `score`) VALUES ('"+data.alias+"', "+data.age+", '"+data.state+"', '"+data.gender+"', '"+data.schoolLevel+"', "+data.biology+", "+data.chemistry+", "+data.physics+", "+data.engineering+", "+data.tech+", "+data.math+", "+data.score+");", 
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
    let data = req.body;
    let userID = data.userID;
    delete data.userID;
    connection.query("UPDATE users SET ? WHERE userID="+userID, data, 
    (err, results, fields)=>{
        if(err){
            console.log(err);
            return;
        }
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
            res.json({error: 'An error occurred'})
            return;
        }
        res.json(results);
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
    connection.query("SELECT * FROM schoollevel_subject", (err, results, fields)=>{
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
    connection.query("SELECT * FROM schoollevel_view", (err, results, fields)=>{
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

app.get('/views/state_schoolLevel', (req, res)=>{
    connection.query("SELECT * FROM state_schoollevel", (err, results, fields)=>{
        if(err) console.log(err);
        else res.send(results);
    });
});
app.get('/views/state_gender', (req, res)=>{
    connection.query("SELECT * FROM state_gender", (err, results, fields)=>{
        if(err) console.log(err);
        else res.send(results);
    });
});
app.get('/api/highscore', (req, res)=>{
    connection.query("SELECT MAX(score) FROM users", (err, results, fields)=>{
        if(err) console.log(err);
        else res.send(results[0]["MAX(score)"]);
    });
});

app.post('/api/gamedata', (request, response)=>{
    // Insert data
    try{
        const query = connection.query('insert into users set ?', request.body ,(error, results, fields)=>{
            if(error) {
                response.json({'message': 'An error ocurred'})
                console.log(error);
                return;
            }
            let userID = result.insertId;
        
            // add school level
            connection.query('insert into schoolLevel(' + request.body.schoolLevel + ') VALUES (' + userID + ');', (e, r, f)=>{
                if(e){
                    response.json({message: 'An error ocurred'});
                    console.log(error)
                } else {
                    // add gender
                    connection.query('insert into gender(' + request.body.gender + ') VALUES (' + userID + ');', (e, r, f)=>{
                        if(e){
                            response.json({message: 'An error ocurred'});
                            console.log(error);
                        } else {
                            // If there are no errors, we send a message back to Unity that the data was inserted correctly.
                            response.json({'message': "Data inserted correctly."})
                        }
                    })
                }
            })
        });


        // Log everything in the server console.
        console.log(query.sql);
    }
    catch(error){
        console.log(error);
        // response.json(error);
        res.end()
    }
});

app.listen(PORT, ()=>{
    console.log(`Aplicación escuchando en el puerto ${PORT}`);
});