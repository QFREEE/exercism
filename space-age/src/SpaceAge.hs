module SpaceAge (Planet(..), ageOn) where

data Planet = Mercury
            | Venus
            | Earth
            | Mars
            | Jupiter
            | Saturn
            | Uranus
            | Neptune

ageOn :: Planet -> Float -> Float
ageOn planet seconds = seconds / getTime planet / 31557600
    where getTime Mercury =  0.2408467
          getTime Venus = 0.61519726
          getTime Earth = 1
          getTime Mars = 1.8808158
          getTime Jupiter = 11.862615
          getTime Saturn = 29.447498
          getTime Uranus = 84.016846
          getTime Neptune = 164.79132