; ModuleID = 'test.bc'
target datalayout = "e-p:32:32-i64:64-v128:32:128-n32-S128"
target triple = "asmjs-unknown-emscripten"

%mytype = type { i32, i32 }

@AB = common global i32 0, align 4
@CD = common global i32 0, align 4
@EF = common global i32 0, align 4
@GH = common global i32 0, align 4
@IJ = common global i32 0, align 4
@KL = common global i32 0, align 4
@MN = common global i32 0, align 4



@OP = hidden constant [20 x i8*] [i8* bitcast (i32 * @CD to i8*), i8* bitcast (i32* @EF to i8*), i8* bitcast (i32* @GH to i8*), i8* bitcast (i32* @CD to i8*), i8* bitcast (i32* @CD to i8*), i8* bitcast (i32* @EF to i8*), i8* bitcast (i32* @EF to i8*), i8* bitcast (i32* @EF to i8*), i8* bitcast (i32* @EF to i8*), i8* bitcast (i32* @EF to i8*), i8* bitcast (i32* @EF to i8*), i8* bitcast (i32* @GH to i8*), i8* bitcast (i32* @EF to i8*), i8* bitcast (i32* @CD to i8*), i8* bitcast (i32* @IJ to i8*), i8* bitcast (i32* @KL to i8*), i8* bitcast (i32* @KL to i8*), i8* null, i8* null, i8* null], align 4

@0 = private constant [24 x i8] c"xxxxxxxxxxxxxxxxxxxxxxx\00"
@1 = private constant [1 x i8] zeroinitializer

@QR = hidden constant <{ i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }> <{ i32 sub (i32 ptrtoint ([24 x i8]* @0 to i32), i32 ptrtoint (<{ i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }>* @QR to i32)), i32 0, i32 3, i32 sub (i32 ptrtoint ([1 x i8]* @1 to i32), i32 add (i32 ptrtoint (<{ i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }>* @QR to i32), i32 12)), i32 sub (i32 ptrtoint (i32* @AB to i32), i32 add (i32 ptrtoint (<{ i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }>* @QR to i32), i32 16)), i32 1, i32 sub (i32 ptrtoint (i32* @MN to i32), i32 add (i32 ptrtoint (<{ i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }>* @QR to i32), i32 24)), i32 3, i32 0, i32 0, i32 0 }>, align 4

@ST = internal constant <{ i8**, i32, i32, i32* }> <{ i8** getelementptr inbounds ([20 x i8*], [20 x i8*]* @OP, i32 0, i32 0), i32 1, i32 sub (i32 ptrtoint (<{ i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }>* @QR to i32), i32 add (i32 ptrtoint (<{ i8**, i32, i32, i32* }>* @ST to i32), i32 8)), i32* null }>, align 4

@"\WX" = private constant [1 x %mytype] [%mytype { i32 sub (i32 ptrtoint (i32* getelementptr inbounds (<{ i8**, i32, i32, i32* }>, <{ i8**, i32, i32, i32* }>* @ST, i32 0, i32 1) to i32), i32 ptrtoint ([1 x %mytype]* @"\WX" to i32)), i32 1 }], section "123", align 4

@UV = private constant [0 x i8] zeroinitializer, section "123", align 4
@llvm.used = appending global [2 x i8*] [i8* bitcast ([1 x %mytype]* @"\WX" to i8*), i8* getelementptr inbounds ([0 x i8], [0 x i8]* @UV, i32 0, i32 0)], section "123", align 4

