const crongit = require('cron-git')();

crongit.schedule("0 */3 * * * *", (update)=>{
        console.log('new update');
    },
    (err)=>{
        console.log('confilt...');
    }
);