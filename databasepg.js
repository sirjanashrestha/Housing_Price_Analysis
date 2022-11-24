const {Client} = require('pg')

const client = new Client({
    host: "localhost",
    user: "postgres",
    port: 5432,
    password: "Canada123",
    database: "Housing_Price_Analysis"
})

client.connect();

client.query(`Select * from final_db`, (err, res)=>{
    if(!err){
        console.log(res.rows);       
    } else {
        console.log(err.message);
    }
    client.end;
})
