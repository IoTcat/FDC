# cron-git
crontab git task by nodejs

## preparation

 - make sure Git was installed
 - at __dir exec the following command
 ```shell
git config user.name "YOUR USER NAME"
git config user.email "YOUR EMAIL"
 ```
 - execute ./ini.sh


## usage
```js
	var o = {
		dir: __dirname,
		debug: false,
		allowNotice: true,
		pull: (params, callback, err_callback) => pull(params, callback, err_callback),
		push: (params, callback) => push(params, callback),
		sync: (callback, err_callback, params_pull, params_push) => sync(callback, err_callback, params_pull, params_push),
		schedule: (time, callback, err_callback, params_pull, params_push) => schedule(time, callback, err_callback, params_pull, params_push)
	}
```

## params_pull
```js
	var params = {
		remote: {
			repo: 'origin',
			branch: 'master'
		},
		add: {
			path: './*'
		},
		commit: {
			message: "Committed by cron-git from "+ require('os').hostname()
		},
		pull_params: {}
	}
```

## params_push
```js
	var params = {
		add: {
			path: './*'
		},
		commit: {
			message: "Committed by cron-git from "+ require('os').hostname()
		},
		push_params: ['-u', 'origin', 'master']
	}
````


## License
Apache-2.0
