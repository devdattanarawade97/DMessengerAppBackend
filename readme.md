* initiate truffle project in backend :  `truffle init`
* install dependencies in backend :

`npm install dotenv -S`

`npm install @truffle/hdwallet-provider -S`

* Truffle command:

1. `truffle init`: Initializes a new Truffle project.
2. `truffle compile`: Compiles smart contracts.
3. `truffle migrate`: Deploys contracts to a network.
4. `truffle test`: Runs contract tests.
5. `truffle console`: Opens an interactive console for contract interaction.
6. `truffle develop`: Launches a local blockchain and console for development.
7. `truffle networks`: Lists available networks.
8. `truffle create contract <ContractName>`: Creates a new contract file.
9. `truffle create migration <MigrationName>`: Creates a new migration file.
10. `truffle create test <TestName>`: Creates a new test file.
11. `truffle install <PackageName>`: Installs npm packages.
12. `truffle unbox <BoxName>`: Downloads and installs project templates.
13. `truffle watch`: Monitors contract files for changes and recompiles.


* to compile project : `truffle compile `
* add port in truffle.config : `port : 7545`
* to migrate and deploy contract on ganache blockchain  (make sure ganache is running) : `truffle migrate --network development`
* to migrate and deploy contract on live network (make sure env configured) : `truffle migrate --network live `

If your Truffle migration script is not deploying the contract and you're seeing the message "Network up to date," it typically means that Truffle believes there are no new migrations to run.

Here are some common reasons why this might happen:

1. **Migration Script Not Included**: Ensure that your migration script is included in the `migrations` directory and named with a numerical prefix (e.g., `1_initial_migration.js`, `2_deploy_contract.js`).
2. **Contract Not Specified for Deployment**: Check that your migration script specifies the contract for deployment using `deployer.deploy(MyContract)`.
3. **Previous Migrations Already Completed**: If Truffle believes that all migrations have already been run, it won't attempt to redeploy contracts. This might occur if you've previously deployed the contract successfully and then made changes to your migration script or contracts without incrementing the migration number.
4. **Migration Script Errors**: Check for errors in your migration scripts that might prevent deployment. Ensure that the contract being deployed is compiled and available.

To troubleshoot:

- Ensure that your contract is compiled successfully. You should see output similar to "Compiled successfully using solc: version" when running `truffle compile`.
- Verify that your migration script is written correctly and specifies the contract(s) to deploy.
- Double-check for any errors or exceptions in your migration scripts. Ensure that your migration script is structured correctly and that the contract is being deployed using `deployer.deploy(MyContract)`.

If you're still encountering issues, please share your migration script(s) and any error messages you're receiving for further assistance.
