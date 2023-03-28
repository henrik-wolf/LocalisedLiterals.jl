using LocalisedLiterals
using Test

@testset "LocalisedLiterals.jl" begin
    @test fr"Bonjour" == "Bonjour"
    
    @test fr"Hello World" == "Bonjour le monde"
    
    @test da"How much is the fish?" == "Hvor meget koster fisken?"
    
    @test it"Wer, wie, was, wieso weshalb, warum?" == "Chi, come, cosa, perché, perché, perché?"
    
    @test es"Hvofor flyttede du til spanien?" == "¿Por qué te mudaste a España?"
    
    @test mni_Mtei"I can only hope this translation is correct." == "ꯍꯟꯗꯣꯀꯄꯥ ꯑꯁꯤ ꯑꯆꯨꯝꯕꯅꯤ ꯍꯥꯌꯅꯥ ꯑꯩꯅꯥ ꯑꯥꯁꯥ ꯇꯧꯕꯥ ꯉꯝꯃꯤ꯫"

    @test en"gift" == "gift"
    
    @test en"gift"de == "poison"
    
    @test en"gift"da == "married"
end
