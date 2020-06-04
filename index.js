exports.createConnection = function createConnection(config) {
  var Connection       = loadClass('Connection');
  var ConnectionConfig = loadClass('ConnectionConfig');

  return new Connection({config: new ConnectionConfig(config)});
};