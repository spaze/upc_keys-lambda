process.env['PATH'] = process.env['PATH'] + ':' + process.env['LAMBDA_TASK_ROOT'];

var execFile = require('child_process').execFile;

exports.handler = function(event, context) {
    child = execFile('upc_keys', [event.UPC0046219, event.prefixes], function(error, stdout) {
        context.done(error, stdout);
    });
};
