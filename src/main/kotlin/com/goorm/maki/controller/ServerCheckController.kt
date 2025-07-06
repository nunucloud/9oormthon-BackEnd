package com.goorm.maki.controller

import org.springframework.http.HttpStatus
import org.springframework.http.ResponseEntity
import org.springframework.web.bind.annotation.GetMapping
import org.springframework.web.bind.annotation.RequestMapping
import org.springframework.web.bind.annotation.RestController

@RestController
@RequestMapping("")
class ServerCheckController {

    @GetMapping
    fun serverCheck() = ResponseEntity.status(HttpStatus.OK).body("server check")
}