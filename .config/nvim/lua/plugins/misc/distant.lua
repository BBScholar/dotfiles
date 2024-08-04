return {
    "chipsenkbeil/distant.nvim",
    cmd = {
      "DistantCancelSearch",
      "DistantCheckHealth",
      "DistantClientVersion",
      "DistantConnect",
      "DistantLaunch",
      "DistantCopy",
      "DistantInstall",
      "DistantMetadata",
      "DistantMkdir",
      "DistantOpen",
      "DistantRemove",
      "DistantRename",
      "DistantSearch",
      "DistantSessionInfo",
      "DistantShell",
      "DistantSpawn",
      "DistantSystemInfo"
    },
    branch = "v0.3",
    config = function()
        require('distant'):setup()
    end
}
