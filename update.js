const crongit = require('cron-git')();

crongit.schedule("0 * * * * *", (update)=>{
        console.log('new update');
    },
    (err)=>{
        console.log('confilt...');
    }
);
