; ModuleID = 'test.bc'
target datalayout = "e-p:32:32-i64:64-v128:32:128-n32-S128"
target triple = "asmjs-unknown-emscripten"

@AB = global i32 0
@CD = global i32 sub (i32 ptrtoint (i32* @AB to i32), i32 10 ), align 4

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 * @CD to i8*)], align 4

