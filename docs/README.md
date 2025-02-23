# Half-Life Lab (Mod Template based on HL25)

This project is a Half-Life mod template and playground based on the official Half-life 25 anniversary update.

### Project Setup

Open [mod_filecopy.bat](../mod_filecopy.bat) and edit the `mod_dir` path to point to your Half-Life installation and mod subdirectory. The default mod name is `hllab`.

Open the solution [projects/vs2019/projects.sln](../projects/vs2019/projects.sln) in Visual Studio 2019 (or later). The project **hldll** is configured as the Startup Project and depends on **hl_cdll**, so they are always built together. The `dmc` and `ricochet` projects are disabled and not built in this solution.

Configure these settings for the **hldll** project to enable launching the mod for debugging. These are user settings and saved in a file, which is not part of the repository by default.

-   Properties -> Debugging -> Command -> Set  `<path-to-hl>\hl.exe`
-   Properties -> Debugging -> Command Arguments -> Set `-windowed -w 1024 -dev -game hllab`

## Linux

Build with provided Makefiles, using Docker.

ToDo: Use the advertised SteamOS "scout" containers.
