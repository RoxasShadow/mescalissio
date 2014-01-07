class Show < Lissio::Model
  property :name,         as: String, primary: true
  property :tot_episodes, as: String
  property :fansub,       as: String
  property :translator,   as: String
  property :editor,       as: String
  property :checker,      as: String
  property :timer,        as: String
  property :typesetter,   as: String
  property :encoder,      as: String
  property :qchecker,     as: String

  def self.parse(data)
    show = {}
      show[:name        ] = data[:name        ]
      show[:tot_episodes] = data[:tot_episodes]
      show[:fansub      ] = data[:fansub      ]
      show[:translator  ] = data[:translator  ]
      show[:editor      ] = data[:editor      ]
      show[:checker     ] = data[:checker     ]
      show[:timer       ] = data[:timer       ]
      show[:typesetter  ] = data[:typesetter  ]
      show[:encoder     ] = data[:encoder     ]
      show[:qchecker    ] = data[:qchecker    ]
    new show
  end
end