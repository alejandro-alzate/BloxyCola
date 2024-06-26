local Enum
do
  local _class_0
  local _base_0 = {
    Technology = {
      Legacy = 0,
      Voxel = 1,
      Compatibility = 2,
      ShadowMap = 3,
      Future = 4
    },
    VolumetricAudio = {
      Disabled = 0,
      Automatic = 1,
      Enabled = 2
    },
    ListenerType = {
      Camera = 0,
      CFrame = 1,
      ObjectPosition = 2,
      ObjectCFrame = 3
    },
    ReverbType = {
      NoReverb = 0,
      GenericReverb = 1,
      PaddedCell = 2,
      Room = 3,
      Bathroom = 4,
      LivingRoom = 5,
      StoneRoom = 6,
      Auditorium = 7,
      ConcertHall = 8,
      Cave = 9,
      Arena = 10,
      Hangar = 11,
      CarpettedHallway = 12,
      Hallway = 13,
      StoneCorridor = 14,
      Alley = 15,
      Forest = 16,
      City = 17,
      Mountains = 18,
      Quarry = 19,
      Plain = 20,
      ParkingLot = 21,
      SewerPipe = 22,
      UnderWater = 23
    },
    FieldOfViewMode = {
      Vertical = 0,
      Diagonal = 1,
      MaxAxis = 2
    },
    CameraType = {
      Fixed = 0,
      Attach = 1,
      Watch = 2,
      Track = 3,
      Follow = 4,
      Custom = 5,
      Scriptable = 6,
      Orbital = 7
    },
    HumanoidHealthDisplayType = {
      DisplayWhenDamaged = 0,
      AlwaysOn = 1,
      AlwaysOff = 2
    },
    HumanoidRigType = {
      R6 = 0,
      R15 = 1
    },
    HumanoidStateType = {
      FallingDown = 0,
      Ragdoll = 1,
      GettingUp = 2,
      Jumping = 3,
      Swimming = 4,
      Freefall = 5,
      Flying = 6,
      Landed = 7,
      Running = 8,
      RunningNoPhysics = 10,
      StrafingNoPhysics = 11,
      Climbing = 12,
      Seated = 13,
      PlatformStanding = 14,
      Dead = 15,
      Physics = 16,
      None = 18
    },
    ModelLevelOfDetail = {
      Automatic = 0,
      StreamingMesh = 1,
      Disabled = 2
    },
    NameOcclusion = {
      NoOcclusion = 0,
      EnemyOcclusion = 1,
      OccludeAll = 2
    },
    PartType = {
      Ball = "parts/Ball.stl",
      Cylinder = "parts/Cylinder.stl",
      Block = "parts/Block.stl",
      Wedge = "parts/Wedge.stl",
      CornerWedge = "parts/CornerWedge.stl"
    },
    NormalId = {
      Right = 0,
      Top = 1,
      Back = 2,
      Left = 3,
      Bottom = 4,
      Front = 5
    },
    SurfaceType = {
      Smooth = 0,
      Glue = 1,
      Weld = 2,
      Studs = 3,
      Inlet = 4,
      Universal = 5,
      Hinge = 6,
      Motor = 7,
      SteppingMotor = 8,
      SmoothNoOutlines = 10
    },
    AvatarUnificationMode = {
      Default = 0,
      Disabled = 1,
      Enabled = 2
    },
    BrickColor = {
      ["White"] = {
        "#F2F3F3",
        1
      },
      ["Grey"] = {
        "#A1A5A2",
        2
      },
      ["Light yellow"] = {
        "#F9E999",
        3
      },
      ["Brick yellow"] = {
        "#D7C59A",
        5
      },
      ["Light green (Mint)"] = {
        "#C2DAB8",
        6
      },
      ["Light reddish violet"] = {
        "#E8BAC8",
        9
      },
      ["Pastel blue"] = {
        "#80BBDE",
        11
      },
      ["Light orange brown"] = {
        "#CB8442",
        12
      },
      ["Nougat"] = {
        "#CC8E69",
        18
      },
      ["Bright red"] = {
        "#C4281C",
        21
      },
      ["Med. reddish violet"] = {
        "#C470A0",
        22
      },
      ["Bright blue"] = {
        "#0D69AC",
        23
      },
      ["Bright yellow"] = {
        "#F5CD30",
        24
      },
      ["Earth orange"] = {
        "#624732",
        25
      },
      ["Black"] = {
        "#1B2A35",
        26
      },
      ["Dark grey"] = {
        "#6D6E6C",
        27
      },
      ["Dark green"] = {
        "#287F47",
        28
      },
      ["Medium green"] = {
        "#A1C48C",
        29
      },
      ["Lig. Yellowich orange"] = {
        "#F3CF9B",
        36
      },
      ["Bright green"] = {
        "#4B974B",
        37
      },
      ["Dark orange"] = {
        "#A05F35",
        38
      },
      ["Light bluish violet"] = {
        "#C1CADE",
        39
      },
      ["Transparent"] = {
        "#ECECEC",
        40
      },
      ["Tr. Red"] = {
        "#CD544B",
        41
      },
      ["Tr. Lg blue"] = {
        "#CADFF0",
        42
      },
      ["Tr. Blue"] = {
        "#7BB6E8",
        43
      },
      ["Tr. Yellow"] = {
        "#F7F18D",
        45
      },
      ["Light blue"] = {
        "#B4D2E4",
        46
      },
      ["Tr. Flu. Reddish orange"] = {
        "#D9856C",
        47
      },
      ["Tr. Green"] = {
        "#84B68D",
        48
      },
      ["Tr. Flu. Green"] = {
        "#F8F184",
        49
      },
      ["Phosph. White"] = {
        "#ECE8DE",
        50
      },
      ["Light red"] = {
        "#EEC4B6",
        100
      },
      ["Medium red"] = {
        "#DA867A",
        101
      },
      ["Medium blue"] = {
        "#6E99CA",
        102
      },
      ["Light grey"] = {
        "#C7C1B7",
        103
      },
      ["Bright violet"] = {
        "#6B327C",
        104
      },
      ["Br. yellowish orange"] = {
        "#E29B40",
        105
      },
      ["Bright orange"] = {
        "#DA8541",
        106
      },
      ["Bright bluish green"] = {
        "#008F9C",
        107
      },
      ["Earth yellow"] = {
        "#685C43",
        108
      },
      ["Bright bluish violet"] = {
        "#435493",
        110
      },
      ["Tr. Brown"] = {
        "#BFB7B1",
        111
      },
      ["Medium bluish violet"] = {
        "#6874AC",
        112
      },
      ["Tr. Medi. reddish violet"] = {
        "#E5ADC8",
        113
      },
      ["Med. yellowish green"] = {
        "#C7D23C",
        115
      },
      ["Med. bluish green"] = {
        "#55A5AF",
        116
      },
      ["Light bluish green"] = {
        "#B7D7D5",
        118
      },
      ["Br. yellowish green"] = {
        "#A4BD47",
        119
      },
      ["Lig. yellowish green"] = {
        "#D9E4A7",
        120
      },
      ["Med. yellowish orange"] = {
        "#E7AC58",
        121
      },
      ["Br. reddish orange"] = {
        "#D36F4C",
        123
      },
      ["Bright reddish violet"] = {
        "#923978",
        124
      },
      ["Light orange"] = {
        "#EAB892",
        125
      },
      ["Tr. Bright bluish violet"] = {
        "#A5A5CB",
        126
      },
      ["Gold"] = {
        "#DCBC81",
        127
      },
      ["Dark nougat"] = {
        "#AE7A59",
        128
      },
      ["Silver"] = {
        "#9CA3A8",
        131
      },
      ["Neon orange"] = {
        "#D5733D",
        133
      },
      ["Neon green"] = {
        "#D8DD56",
        134
      },
      ["Sand blue"] = {
        "#74869D",
        135
      },
      ["Sand violet"] = {
        "#877C90",
        136
      },
      ["Medium orange"] = {
        "#E09864",
        137
      },
      ["Sand yellow"] = {
        "#958A73",
        138
      },
      ["Earth blue"] = {
        "#203A56",
        140
      },
      ["Earth green"] = {
        "#27462D",
        141
      },
      ["Tr. Flu. Blue"] = {
        "#CFE2F7",
        143
      },
      ["Sand blue metallic"] = {
        "#7988A1",
        145
      },
      ["Sand violet metallic"] = {
        "#958EA3",
        146
      },
      ["Sand yellow metallic"] = {
        "#938767",
        147
      },
      ["Dark grey metallic"] = {
        "#575857",
        148
      },
      ["Black metallic"] = {
        "#161D32",
        149
      },
      ["Light grey metallic"] = {
        "#ABADAC",
        150
      },
      ["Sand green"] = {
        "#789082",
        151
      },
      ["Sand red"] = {
        "#957977",
        153
      },
      ["Dark red"] = {
        "#7B2E2F",
        154
      },
      ["Tr. Flu. Yellow"] = {
        "#FFF67B",
        157
      },
      ["Tr. Flu. Red"] = {
        "#E1A4C2",
        158
      },
      ["Gun metallic"] = {
        "#756C62",
        168
      },
      ["Red flip/flop"] = {
        "#97695B",
        176
      },
      ["Yellow flip/flop"] = {
        "#B48455",
        178
      },
      ["Silver flip/flop"] = {
        "#898788",
        179
      },
      ["Curry"] = {
        "#D7A94B",
        180
      },
      ["Fire Yellow"] = {
        "#F9D62E",
        190
      },
      ["Flame yellowish orange"] = {
        "#E8AB2D",
        191
      },
      ["Reddish brown"] = {
        "#694028",
        192
      },
      ["Flame reddish orange"] = {
        "#CF6024",
        193
      },
      ["Medium stone grey"] = {
        "#A3A2A5",
        194
      },
      ["Royal blue"] = {
        "#4667A4",
        195
      },
      ["Dark Royal blue"] = {
        "#23478B",
        196
      },
      ["Bright reddish lilac"] = {
        "#8E4285",
        198
      },
      ["Dark stone grey"] = {
        "#635F62",
        199
      },
      ["Lemon metalic"] = {
        "#828A5D",
        200
      },
      ["Light stone grey"] = {
        "#E5E4DF",
        208
      },
      ["Dark Curry"] = {
        "#B08E44",
        209
      },
      ["Faded green"] = {
        "#709578",
        210
      },
      ["Turquoise"] = {
        "#79B5B5",
        211
      },
      ["Light Royal blue"] = {
        "#9FC3E9",
        212
      },
      ["Medium Royal blue"] = {
        "#6C81B7",
        213
      },
      ["Rust"] = {
        "#904C2A",
        216
      },
      ["Brown"] = {
        "#7C5C46",
        217
      },
      ["Reddish lilac"] = {
        "#96709F",
        218
      },
      ["Lilac"] = {
        "#6B629B",
        219
      },
      ["Light lilac"] = {
        "#A7A9CE",
        220
      },
      ["Bright purple"] = {
        "#CD6298",
        221
      },
      ["Light purple"] = {
        "#E4ADC8",
        222
      },
      ["Light pink"] = {
        "#DC9095",
        223
      },
      ["Light brick yellow"] = {
        "#F0D5A0",
        224
      },
      ["Warm yellowish orange"] = {
        "#EBB87F",
        225
      },
      ["Cool yellow"] = {
        "#FDEA8D",
        226
      },
      ["Dove blue"] = {
        "#7DBBDD",
        232
      },
      ["Medium lilac"] = {
        "#342B75",
        268
      },
      ["Slime green"] = {
        "#506D54",
        301
      },
      ["Smoky grey"] = {
        "#5B5D69",
        302
      },
      ["Dark blue"] = {
        "#0010B0",
        303
      },
      ["Parsley green"] = {
        "#2C651D",
        304
      },
      ["Steel blue"] = {
        "#527CAE",
        305
      },
      ["Storm blue"] = {
        "#335882",
        306
      },
      ["Lapis"] = {
        "#102ADC",
        307
      },
      ["Dark indigo"] = {
        "#3D1585",
        308
      },
      ["Sea green"] = {
        "#348E40",
        309
      },
      ["Shamrock"] = {
        "#5B9A4C",
        310
      },
      ["Fossil"] = {
        "#9FA1AC",
        311
      },
      ["Mulberry"] = {
        "#592259",
        312
      },
      ["Forest green"] = {
        "#1F801D",
        313
      },
      ["Cadet blue"] = {
        "#9FADC0",
        314
      },
      ["Electric blue"] = {
        "#0989CF",
        315
      },
      ["Eggplant"] = {
        "#7B007B",
        316
      },
      ["Moss"] = {
        "#7C9C6B",
        317
      },
      ["Artichoke"] = {
        "#8AAB85",
        318
      },
      ["Sage green"] = {
        "#B9C4B1",
        319
      },
      ["Ghost grey"] = {
        "#CACBD1",
        320
      },
      ["Lilac"] = {
        "#A75E9B",
        321
      },
      ["Plum"] = {
        "#7B2F7B",
        322
      },
      ["Olivine"] = {
        "#94BE81",
        323
      },
      ["Laurel green"] = {
        "#A8BD99",
        324
      },
      ["Quill grey"] = {
        "#DFDFDE",
        325
      },
      ["Crimson"] = {
        "#970000",
        327
      },
      ["Mint"] = {
        "#B1E5A6",
        328
      },
      ["Baby blue"] = {
        "#98C2DB",
        329
      },
      ["Carnation pink"] = {
        "#FF98DC",
        330
      },
      ["Persimmon"] = {
        "#FF5959",
        331
      },
      ["Maroon"] = {
        "#750000",
        332
      },
      ["Gold"] = {
        "#EFB838",
        333
      },
      ["Daisy orange"] = {
        "#F8D96D",
        334
      },
      ["Pearl"] = {
        "#E7E7EC",
        335
      },
      ["Fog"] = {
        "#C7D4E4",
        336
      },
      ["Salmon"] = {
        "#FF9494",
        337
      },
      ["Terra Cotta"] = {
        "#BE6862",
        338
      },
      ["Cocoa"] = {
        "#562424",
        339
      },
      ["Wheat"] = {
        "#F1E7C7",
        340
      },
      ["Buttermilk"] = {
        "#FEF3BB",
        341
      },
      ["Mauve"] = {
        "#E0B2D0",
        342
      },
      ["Sunrise"] = {
        "#D490BD",
        343
      },
      ["Tawny"] = {
        "#965555",
        344
      },
      ["Rust"] = {
        "#8F4C2A",
        345
      },
      ["Cashmere"] = {
        "#D3BE96",
        346
      },
      ["Khaki"] = {
        "#E2DCBC",
        347
      },
      ["Lily white"] = {
        "#EDEAEA",
        348
      },
      ["Seashell"] = {
        "#E9DADA",
        349
      },
      ["Burgundy"] = {
        "#883E3E",
        350
      },
      ["Cork"] = {
        "#BC9B5D",
        351
      },
      ["Burlap"] = {
        "#C7AC78",
        352
      },
      ["Beige"] = {
        "#CABFA3",
        353
      },
      ["Oyster"] = {
        "#BBB3B2",
        354
      },
      ["Pine Cone"] = {
        "#6C584B",
        355
      },
      ["Fawn brown"] = {
        "#A0844F",
        356
      },
      ["Hurricane grey"] = {
        "#958988",
        357
      },
      ["Cloudy grey"] = {
        "#ABA89E",
        358
      },
      ["Linen"] = {
        "#AF9483",
        359
      },
      ["Copper"] = {
        "#966766",
        360
      },
      ["Medium brown"] = {
        "#564236",
        361
      },
      ["Bronze"] = {
        "#7E683F",
        362
      },
      ["Flint"] = {
        "#69665C",
        363
      },
      ["Dark taupe"] = {
        "#5A4C42",
        364
      },
      ["Burnt Sienna"] = {
        "#6A3909",
        365
      },
      ["Institutional white"] = {
        "#F8F8F8",
        1001
      },
      ["Mid gray"] = {
        "#CDCDCD",
        1002
      },
      ["Really black"] = {
        "#111111",
        1003
      },
      ["Really red"] = {
        "#FF0000",
        1004
      },
      ["Deep orange"] = {
        "#FFB000",
        1005
      },
      ["Alder"] = {
        "#B480FF",
        1006
      },
      ["Dusty Rose"] = {
        "#A34B4B",
        1007
      },
      ["Olive"] = {
        "#C1BE42",
        1008
      },
      ["New Yeller"] = {
        "#FFFF00",
        1009
      },
      ["Really blue"] = {
        "#0000FF",
        1010
      },
      ["Navy blue"] = {
        "#002060",
        1011
      },
      ["Deep blue"] = {
        "#2154B9",
        1012
      },
      ["Cyan"] = {
        "#04AFEC",
        1013
      },
      ["CGA brown"] = {
        "#AA5500",
        1014
      },
      ["Magenta"] = {
        "#AA00AA",
        1017
      },
      ["Pink"] = {
        "#FF66CC",
        1016
      },
      ["Deep orange"] = {
        "#FFAF00",
        1017
      },
      ["Teal"] = {
        "#12EED4",
        1018
      },
      ["Toothpaste"] = {
        "#00FFFF",
        1019
      },
      ["Lime green"] = {
        "#00FF00",
        1020
      },
      ["Camo"] = {
        "#3A7D15",
        1021
      },
      ["Grime"] = {
        "#7F8E64",
        1022
      },
      ["Lavender"] = {
        "#8C5B9F",
        1023
      },
      ["Pastel light blue"] = {
        "#AFDDFF",
        1024
      },
      ["Pastel orange"] = {
        "#FFC9C9",
        1025
      },
      ["Pastel violet"] = {
        "#B1A7FF",
        1026
      },
      ["Pastel blue-green"] = {
        "#9FF3E9",
        1027
      },
      ["Pastel green"] = {
        "#CCFFCC",
        1028
      },
      ["Pastel yellow"] = {
        "#FFFFCC",
        1029
      },
      ["Pastel brown"] = {
        "#FFCC99",
        1030
      },
      ["Royal purple"] = {
        "#6225D1",
        1031
      },
      ["Hot pink"] = {
        "#FF00BF",
        1032
      }
    },
    RunContext = {
      Legacy = 0,
      Server = 1,
      Client = 2,
      Plugin = 3
    },
    CSGAsyncDynamicCollision = {
      Default = 0,
      Disabled = 1,
      Experimental = 2
    },
    DecreaseMinimumPartDensityMode = {
      Default = 0,
      Disabled = 1,
      Enabled = 2
    },
    ClientAnimatorThrottlingMode = {
      Default = 0,
      Disabled = 1,
      Enabled = 2
    },
    EditorLiveScripting = {
      Default = 0,
      Disabled = 1,
      Enabled = 2
    },
    FluidForces = {
      Default = 0,
      Experimental = 1
    },
    IKControlConstraintSupport = {
      Default = 0,
      Disabled = 1,
      Enabled = 2
    },
    MeshPartHeadsAndAccessories = {
      Default = 0,
      Disabled = 1,
      Enabled = 2
    },
    ModelStreamingBehavior = {
      Default = 0,
      Legacy = 1,
      Improved = 2
    },
    PhysicsSteppingMethod = {
      Default = 0,
      Fixed = 1,
      Adaptive = 2
    },
    PlayerCharacterDestroyBehavior = {
      Default = 0,
      Disabled = 1,
      Enabled = 2
    },
    PrimalPhysicsSolver = {
      Default = 0,
      Experimental = 1,
      Disabled = 2
    },
    RejectCharacterDeletions = {
      Default = 0,
      Disabled = 1,
      Enabled = 2
    },
    ReplicateInstanceDestroySetting = {
      Default = 0,
      Disabled = 1,
      Enabled = 2
    },
    AnimatorRetargetingMode = {
      Default = 0,
      Disabled = 1,
      Enabled = 2
    },
    SignalBehavior = {
      Default = 0,
      Immediate = 1,
      Deferred = 2,
      AncestryDeferred = 3
    },
    StreamOutBehavior = {
      Default = 0,
      LowMemory = 1,
      Opportunstic = 2
    },
    StreamingIntegrityMode = {
      Default = 0,
      Disabled = 1,
      MinimumRadiusPause = 2,
      PauseOustideLoadedArea = 3
    },
    ModelStreamingMode = {
      Default = 0,
      Atomic = 1,
      Persistent = 2,
      PersistentPerPlayer = 3,
      Nonatomic = 4
    },
    CameraMode = {
      Classic = 0,
      LockFirstPerson = 1
    },
    DevCameraOcclusionMode = {
      Zoom = 0,
      Invisicam = 1
    },
    DevComputerCameraMovementMode = {
      UserChoice = 0,
      Classic = 1,
      Follow = 2,
      Orbital = 3,
      CameraToggle = 4
    },
    DevComputerMovementMode = {
      UserChoice = 0,
      KeyboardMouse = 1,
      ClickToMove = 2,
      Scriptable = 3
    },
    DevTouchCameraMovementMode = {
      UserChoice = 0,
      Classic = 1,
      Follow = 2,
      Orbital = 3
    },
    DevTouchCameraMovementMode = {
      UserChoice = 0,
      Thumbstick = 1,
      DPad = 2,
      ThumbPad = 3,
      ClickToMove = 4,
      Scriptable = 5,
      DynamicThumbstick = 6
    },
    DevTouchMovementMode = {
      UserChoice = 0,
      Thumbstick = 1,
      DPad = 2,
      ThumbPad = 3,
      ClickToMove = 4,
      Scriptable = 5,
      DynamicThumbstick = 6
    },
    MembershipType = {
      None = 0,
      BuildersClub = 1,
      TurboBuildersClub = 2,
      OutrageousBuildersClub = 3,
      Premium = 4
    },
    IKControlConstraintSupport = {
      Default = 0,
      Disabled = 1,
      Enabled = 2
    },
    Material = {
      Plastic = 256,
      SmoothPlastic = 272,
      Neon = 288,
      Wood = 512,
      WoodPlanks = 528,
      Marble = 784,
      Basalt = 788,
      Slate = 800,
      CrackedLava = 804,
      Concrete = 816,
      Limestone = 820,
      Granite = 832,
      Pavement = 836,
      Brick = 848,
      Pebble = 864,
      Cobblestone = 880,
      Rock = 896,
      Sandstone = 912,
      CorrodedMetal = 1040,
      DiamondPlate = 1056,
      Foil = 1072,
      Metal = 1088,
      Grass = 1280,
      LeafyGrass = 1284,
      Sand = 1296,
      Fabric = 1312,
      Snow = 1328,
      Mud = 1344,
      Ground = 1360,
      Asphalt = 1376,
      Salt = 1392,
      Ice = 1536,
      Glacier = 1552,
      Glass = 1568,
      ForceField = 1584,
      Air = 1792,
      Water = 2048,
      Cardboard = 2304,
      Carpet = 2305,
      CeramicTiles = 2306,
      ClayRoofTiles = 2307,
      RoofShingles = 2308,
      Leather = 2309,
      Plaster = 2310,
      Rubber = 2311
    }
  }
  _base_0.__index = _base_0
  _class_0 = setmetatable({
    __init = function() end,
    __base = _base_0,
    __name = "Enum"
  }, {
    __index = _base_0,
    __call = function(cls, ...)
      local _self_0 = setmetatable({}, _base_0)
      cls.__init(_self_0, ...)
      return _self_0
    end
  })
  _base_0.__class = _class_0
  Enum = _class_0
end
return {
  Enum
}
