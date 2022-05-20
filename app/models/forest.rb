class Forest < ApplicationRecord
    has_many :trails
    #associação 1 para muitos;
    #1 floresta contém varios trilhos
end
