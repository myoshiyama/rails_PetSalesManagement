// Place your application-specific JavaScript here

// Import any CSS you want to add
import '../stylesheets/application';

// Import dependencies from node_modules
import 'bootstrap/dist/js/bootstrap';

// Import your controllers for Stimulus
import { Application } from "stimulus";
import { definitionsFromContext } from "stimulus/webpack-helpers";

// Initialize Stimulus
const application = Application.start();
const context = require.context("controllers", true, /\.js$/);
application.load(definitionsFromContext(context));

// Other JavaScript code specific to your application