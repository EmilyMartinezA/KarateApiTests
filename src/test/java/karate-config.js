function fn() {
  var env = karate.env; // get system property 'karate.env'
  karate.log('karate.env system property was:', env);

  if (!env) {
    env = 'dev';
  }
  var config = {
    env: env,
    baseUrl: 'https://jsonplaceholder.typicode.com'
  }

  config.headers = {
    Accept: 'application/json',
    'Content-Type': 'application/json'
  };

  return config;
}