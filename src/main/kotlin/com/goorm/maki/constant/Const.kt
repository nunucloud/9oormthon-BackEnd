package com.goorm.maki.constant

object Const {
    val PUBLIC_URL_PATTERNS = arrayOf(
        "/", "/login", "/logout",
        "/internal/**", "/papi/**",
        "/js/**", "/css/**",
        "/actuator/health",
        "/swagger-ui.html",
        "/swagger-ui/**",
        "/v3/api-docs/**",
        "/swagger-resources/**",
        "/webjars/**"              
    )
}