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
        // 
        // table = d3 find table   
        // for each_record in res.rows: 
        //      t_row=table.insert(tr)
        //      for each_col in col: 
        //          t_row.insert(td).(each_col) change td text to value of each_col
    } else {
        console.log(err.message);
    }
    client.end;
})
