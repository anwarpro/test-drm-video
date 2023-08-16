#!/usr/bin/env kscript

@file:DependsOn("org.jetbrains.kotlinx:kotlinx-coroutines-core:1.6.4")
@file:DependsOn("com.github.pgreze:kotlin-process:1.4.1")

import com.github.pgreze.process.Redirect
import com.github.pgreze.process.process
import kotlinx.coroutines.*
import kotlin.system.*

val shells = listOf(
    "./360p.sh",
    "./480p.sh",
    "./720p.sh",
    "./1080p.sh",
)

suspend fun convertVideo(name: String): Long {
    return measureTimeMillis {
        val res = process(
            name,

            // Both streams will be captured,
            // preserving their orders but mixing them in the given output.
            stdout = Redirect.CAPTURE,
            stderr = Redirect.CAPTURE,

            // Allows to consume line by line without delay the provided output.
            consumer = { line -> TODO("process $line") },
        )

        println("Script finished with result=${res.resultCode}")
        println("stdout+stderr:\n" + res.output.joinToString("\n"))
    }
}

runBlocking {
    val time = measureTimeMillis {
        val one = async {
            convertVideo("./360p.sh")
        }
        val two = async {
            convertVideo("./480p.sh")
        }
        val three = async {
            convertVideo("./720p.sh")
        }
        val four = async {
            convertVideo("./1080p.sh")
        }

        println("The answer is ${one.await() + two.await() + three.await() + four.await()}")
    }

    println("Completed in $time ms")
}