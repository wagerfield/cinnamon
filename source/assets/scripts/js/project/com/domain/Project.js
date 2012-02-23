/**
 * Create namespaces.
 */
var com = {
    domain: {

    }
};

/**
 * @class Description of the class.
 * @author firstname.surname@domain.com (Firstname Surname)
 * @this {com.domain.Project}
 */
com.domain.Project = (function() {

    /**
     * Initialises the project.
     */
    function initialise() {

        console.log('Initialise Project');
    }

    /**
     * Return the API.
     */
    return {
        initialise: initialise
    };

}());