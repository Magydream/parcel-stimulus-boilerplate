import { Application } from "@hotwired/stimulus";

// Import SCSS
import './../scss/app.scss';

// Import Stimulus controllers
import Hello from './controllers/hello_controller';

// Start Stimulus
const application = Application.start();

// Declaration Stimulus controllers
application.register('hello', Hello);
