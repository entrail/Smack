//
//  Constants.swift
//  Smack
//
//  Created by Adrian horstmann on 28.08.17.
//  Copyright © 2017 Adrian Horstmann. All rights reserved.
//

import Foundation

typealias CompletionHandler = (_ Success: Bool) -> ()

// URL CONSTANTS
let BASE_URL = "https://smack-de-horstmann.herokuapp.com/v1/"
let URL_REGISTER = "\(BASE_URL)account/register"


//SEGUES
let TO_LOGIN = "toLogin"
let TO_CREATE_ACCOUNT = "toCreateAccount"
let UNWIND_CREATE_ACCOUNT = "unwindToChannel"

//USER DEFAULTSFoundation
let TOKEN_KEY = "token"
let LOGGED_IN_KEY = "loggedIn"
let USER_EMAIL = "userEmail"
