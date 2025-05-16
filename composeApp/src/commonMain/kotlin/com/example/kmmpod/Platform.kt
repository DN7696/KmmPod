package com.example.kmmpod

interface Platform {
    val name: String
}

expect fun getPlatform(): Platform