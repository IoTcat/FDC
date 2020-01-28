const crongit = require('cron-git')();

crongit.schedule("*/30 * * * * *", (update)=>{
        console.log('new update');
    },
    (err)=>{
        console.log('confilt...');
    }
);