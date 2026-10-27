# EverSdk

Here is a collection of libraries that I use for my game. Instead of copying
them into that project's directory, I made them compile separately. This way,
CMake configuration times are significantly faster. Also, some libraries touch
their source files at configuration time, which causes my code to relink to them
after they are compiled again.

## Usage

1. Clone.
2. Run `tools/download.bat`.
3. Run `tools/build.bat`.
4. Add the directory to your environment variables as `EVER_SDK_ROOT`.
5. In your `CMakePresets.json`, include
   `$penv{EVER_SDK_ROOT}/CMakePresets.json`.
6. In your `CMakeLists.txt`, include `${EM_SETUP}`.

> NOTE: Use or inherit the SDK's presets.

## Libraries in the SDK

```CMake
target_link_libraries(${TARGET_NAME} PRIVATE
  Clipper2::Clipper2
  earcut_hpp::earcut_hpp
  EverSdk::greatest
  EverSdk::lua
  EverSdk::ok_color
  EverSdk::open_simplex_noise
  EverSdk::poly2tri
  EverSdk::tracy
  SDL3_image::SDL3_image
  SDL3_shadercross::SDL3_shadercross
  SDL3_ttf::SDL3_ttf
  SDL3::SDL3
  yyjson::yyjson
)
```

> NOTE: Libraries that do not support installing with CMake are fixed with a
> wrapper library. Thus, they use `EverSdk::` namespace instead of their own.
