# Build hl on Modern Systems

## Code Adjustments

Overview of adjustments done to the original source code.

-   Minor changes concerning usage of `fabs()` and `abs()`

## Compatibility

The code compiles with

-   VS 2010 `projects.sln` (hl only): [/projects/vs2010_hlonly](../projects/vs2010_hlonly)
-   VS 2022 `projects.sln` (hl only): [/projects/vs2022_hlonly](../projects/vs2022_hlonly)
-   gcc 4.9 on Ubuntu 16.04: [/Dockerfile](../Dockerfile)

## Windows

There are solutions for VS 2010 and VS 2022. Follow the configuration steps below to conveniently develop and debug in VS (optional).

### Visual Studio configuration

-   Project **hl_cdll**
    -   Properties -> General -> Output Directory -> Set `<path-to-hl>\valve\cl_dlls`
    -   Properties -> Debugging -> Command -> Set  `<path-to-hl>\hl.exe`
    -   Properties -> Debugging -> Command Arguments -> Set `-windowed -dev`
-   Project **hldll**
    -   Properties -> General -> Output Directory -> Set `<path-to-hl>\valve\dlls`

The client dll project (`hl_cdll`) is configured to depend on the corresponding server dll project (VS 2022 only). This way, starting a debug session of the client project, cause the server project to rebuild automatically if needed.

## Linux

Build with provided Makefiles, using Docker.

-   Build docker image:

    ```bash
    docker build -t hlbuild .
    ```
-   Run build through Docker

    ```powershell
    # Powershell
    docker run --rm -v ${PWD}:/code -w /code/linux hlbuild make CFG=debug
                                                           # or CFG=release
    ```

    ```bash
    # bash
    docker run --rm -v $(pwd):/code -w /code/linux hlbuild make CFG=debug
                                                           # or CFG=release
    ```
