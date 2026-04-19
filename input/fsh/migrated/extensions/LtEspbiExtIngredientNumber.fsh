Extension: LtEspbiExtIngredientNumber
Id: LtEspbiExtIngredientNumber
Context: Ingredient
* ^url = "http://esveikata.lt/Profile/ltnhr-ingredient/ingredient.ingredientNumber"
* ^status = #draft
* . 1..1
* . ^short = "Veikliosios medžiagos Eil. Nr. / Ingredient number"
* . ^comment = "Vaistinio preparato komponento medžiagos stiprumas išreikštas kiekiu ir matavimo vienetais tekstine išraiška."
* url = "http://esveikata.lt/Profile/ltnhr-ingredient/ingredient.ingredientNumber" (exactly)
* value[x] 1..
* value[x] only integer