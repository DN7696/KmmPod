package com.example.submodule

import androidx.compose.runtime.Composable
import com.datnguyen.mealideal.resources.SharedRes
import dev.icerock.moko.resources.StringResource
import dev.icerock.moko.resources.compose.stringResource

object SubModuleFeature {
    @Composable
    fun getText() = "My sub module - ${appString(SharedRes.strings.location_description)}"
}


@Composable
fun appString(id: StringResource): String {
    return stringResource(id)
}
