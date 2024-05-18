const express = require('express');
const router = express.Router();
const userController = require('../controllers/userController');
const { loginRequired } = require('../utils/auth');

router.get('/details', loginRequired, userController.getUserDetails);

router.patch('/details', loginRequired, userController.updateUserDetails);

module.exports = { router };