import mysql from 'mysql2';

const pool = mysql.createPool({
    host:'localhost',
    prot:3306,
    user:'root',
    password:'1234',
    database:'ICE_4016',
})


const promisePool = pool.promise();

const sql = {
    getEmployee: async()=>{
        const result = await promisePool.query(`
        select * from employee
        `)
        return result;
    },
};
export default sql;

