module.exports = {
  apps: [
    {
      name: 'theia',
      script: 'cd ~/theia && yarn start /my-workspace --hostname 0.0.0.0 --port 8080',
      env: {
        NODE_ENV: 'development',
      },
    },
  ],
}
