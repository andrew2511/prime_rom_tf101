// Copyright 2010 Google Inc.  All Rights Reserved.


/**
 * @fileoverview JavaScript utility functions.
 *
 * @author attila@google.com (Attila Bodis)
 */


/**
 * Array of task IDs.  Calling {@link scheduleTask} pushes timeout IDs onto this array.
 *
 * @type {Array.<number>}
 */
var taskIds = [];


/**
 * Enum of standard task delay durations.
 *
 * @enum {number}
 */
var Delay = {
    NONE: 0, // Schedule task as soon as the UI thread is ready.
    SHORT: 100, // Schedule task 100ms after the UI thread is ready.
    LONG: 3000 // Schedule task 3s after the UI thread is ready.
};


/**
 * Clears out any pending asynchronous tasks.
 */
function clearPendingTasks() {
    if (taskIds.length != 0) {
        bridge.d('Canceling pending asynchronous tasks.');
        for (var i = 0, taskId; taskId = taskIds[i]; i++) {
            window.clearTimeout(taskId);
        }
        taskIds.length = 0;
    }
}


/**
 * Schedules a task to be executed asynchronously, optionally after a delay.
 *
 * @param {Function} fn Function to be called asynchronously.
 * @param {Delay} delay Delay in after which the function is to be called.
 */
function scheduleTask(fn, delay) {
    taskIds.push(window.setTimeout(fn, delay));
}


/**
 * Checks whether the argument is defined or undefined.
 *
 * @param {*} obj Object to test.
 * @return {boolean} Whether the argument is defined.
 */
function isDef(obj) {
    return typeof obj != 'undefined';
}


/**
 * Checks whether the argument is a string or not.
 *
 * @param {*} obj Object to test.
 * @return {boolean} Whether the argument is a string.
 */
function isString(obj) {
    return typeof obj == 'string';
}


/**
 * Returns the DOM element with the given ID.
 *
 * @param {string} id DOM ID.
 * @return {?Element} DOM element with the given ID (null if none).
 */
function $(id) {
    return document.getElementById(id) || null;
}


/**
 * Creates a new DOM element with the given tag name and (optional) class name and ID.
 *
 * @param {string} tagName HTML tag name.
 * @param {string=} opt_className Optional space-separated list of CSS class names.
 * @param {string=} opt_id Optional DOM ID.
 */
function $dom(tagName, opt_className, opt_id) {
    var element = document.createElement(tagName);

    if (isDef(opt_className)) {
        element.className = opt_className;
    }

    if (isDef(opt_id)) {
        element.id = opt_id;
    }

    return element;
}


/**
 * Creates a function closure by binding zero or more arguments to a function.  Straight copy of
 * {@code goog.partial} from the Closure JS library.
 *
 * @param {Function} fn Function to bind.
 * @param {*} var_args Zero or more arguments to bind to the function.
 * @return {Function} A bound closure.
 */
function bind(fn, var_args) {
    var args = Array.prototype.slice.call(arguments, 1);
    return function() {
        // Prepend the bound arguments to the current arguments.
        var newArgs = Array.prototype.slice.call(arguments);
        newArgs.unshift.apply(newArgs, args);
        return fn.apply(this, newArgs);
    };
}
