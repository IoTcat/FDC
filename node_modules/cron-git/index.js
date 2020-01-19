/*
 * @Author: IoTcat (https://iotcat.me) 
 * @Date: 2019-12-31 11:59:49 
 * @Last Modified by: IoTcat
 * @Last Modified time: 2019-12-31 18:28:21
 */
module.exports = function(o_params){

	/* factory mode */
	var o = {
		dir: process.cwd(),
		debug: false,
		allowNotice: true,
		pull: (params, callback, err_callback) => pull(params, callback, err_callback),
		push: (params, callback) => push(params, callback),
		sync: (callback, err_callback, params_pull, params_push) => sync(callback, err_callback, params_pull, params_push),
		schedule: (time, callback, err_callback, params_pull, params_push) => schedule(time, callback, err_callback, params_pull, params_push)
	}


	/* merge params */
	Object.assign(o, o_params);

	/* log dir */
	console.log(new Date() + ' - cron-git: At dir::' + o.dir);

	/* modules import */
	const cron = require('node-schedule');
	const git = require('simple-git')(o.dir);

	/* Git pull action */
	var pull = function(params_user, callback, err_callback){
		var params = {
			remote: {
				repo: 'origin',
				branch: 'master'
			},
			add: {
				path: o.dir
			},
			commit: {
				message: "Committed by cron-git from "+ require('os').hostname()
			},
			pull_params: {}
		}
		Object.assign(params, params_user);

		git.add(params.add.path)
   			.commit(params.commit.message)
   			.pull(params.remote.repo, 
			params.remote.branch, 
			params.pull_params,
			function(err, update){
				if(!err){
					if(update && (update.summary.changes || update.summary.deletions || update.summary.insertions)){
						if(o.allowNotice){
							console.log(new Date() + ' - cron-git: git pull done::');
							console.log('---------------------------');
							console.log(update);
							console.log('---------------------------');
						}
		   				if(callback !== undefined){
		   					callback(update);
		   				}
					}else{
						if(o.allowNotice){
							console.log(new Date() + ' - cron-git: git pull done. Nothing changed!!');
						}
					}
				}else{
					if(o.allowNotice){
						console.log(new Date() + ' - cron-git: git pull Failure.');
					}
	   				if(err_callback !== undefined){
	   					err_callback(err);
	   				}
				}
			});
	}

	/* Git push action */
	var push = function(params_user, callback){
		var params = {
			add: {
				path: o.dir
			},
			commit: {
				message: "Committed by cron-git from "+ require('os').hostname()
			},
			push_params: ['-u', 'origin', 'master']
		}
		Object.assign(params, params_user);

		git.add(params.add.path)
   			.commit(params.commit.message)
   			.push(params.push_params, function(){
				if(o.allowNotice){
					console.log(new Date() + ' - cron-git: git push done.');
				}
   				if(callback !== undefined){
   					callback();
   				}
   			});
	}

	/* sync action */
	var sync = function(callback, err_callback, params_pull, params_push){
		pull(params_pull, callback, err_callback);
		push(params_push);
	}

	/* cron sync */
	var schedule = function(time, callback, err_callback, params_pull, params_push){
		cron.scheduleJob(time, function(){
			console.log(new Date() + ' - cron-git: Scheduled sync begin.');
			sync(callback, err_callback, params_pull, params_push);
		});
	}

	return o;
}
