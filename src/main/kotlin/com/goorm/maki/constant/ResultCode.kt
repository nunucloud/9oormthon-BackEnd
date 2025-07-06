package com.goorm.maki.constant

enum class ResultCode (val code: String, val msg: String) {
    // 공통
    OK("0000", "OK"),
    INVALID_REQUEST("400", "잘못된 요청입니다."),
    ACCESS_DENIED("403","접근이 거부되었습니다."),
    UNKNOWN_ERROR("9999", "알 수 없는 시스템 에러가 발생했습니다."),
}