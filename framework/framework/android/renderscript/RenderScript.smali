.class public Landroid/renderscript/RenderScript;
.super Ljava/lang/Object;
.source "RenderScript.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/renderscript/RenderScript$MessageThread;,
        Landroid/renderscript/RenderScript$Priority;,
        Landroid/renderscript/RenderScript$RSErrorHandler;,
        Landroid/renderscript/RenderScript$RSMessageHandler;
    }
.end annotation


# static fields
.field static final DEBUG:Z = false

.field static final LOG_ENABLED:Z = false

.field static final LOG_TAG:Ljava/lang/String; = "RenderScript_jni"

.field static sInitialized:Z


# instance fields
.field private mApplicationContext:Landroid/content/Context;

.field mContext:I

.field mDev:I

.field mElement_ALLOCATION:Landroid/renderscript/Element;

.field mElement_A_8:Landroid/renderscript/Element;

.field mElement_BOOLEAN:Landroid/renderscript/Element;

.field mElement_ELEMENT:Landroid/renderscript/Element;

.field mElement_F32:Landroid/renderscript/Element;

.field mElement_F64:Landroid/renderscript/Element;

.field mElement_FLOAT_2:Landroid/renderscript/Element;

.field mElement_FLOAT_3:Landroid/renderscript/Element;

.field mElement_FLOAT_4:Landroid/renderscript/Element;

.field mElement_I16:Landroid/renderscript/Element;

.field mElement_I32:Landroid/renderscript/Element;

.field mElement_I64:Landroid/renderscript/Element;

.field mElement_I8:Landroid/renderscript/Element;

.field mElement_MATRIX_2X2:Landroid/renderscript/Element;

.field mElement_MATRIX_3X3:Landroid/renderscript/Element;

.field mElement_MATRIX_4X4:Landroid/renderscript/Element;

.field mElement_MESH:Landroid/renderscript/Element;

.field mElement_PROGRAM_FRAGMENT:Landroid/renderscript/Element;

.field mElement_PROGRAM_RASTER:Landroid/renderscript/Element;

.field mElement_PROGRAM_STORE:Landroid/renderscript/Element;

.field mElement_PROGRAM_VERTEX:Landroid/renderscript/Element;

.field mElement_RGBA_4444:Landroid/renderscript/Element;

.field mElement_RGBA_5551:Landroid/renderscript/Element;

.field mElement_RGBA_8888:Landroid/renderscript/Element;

.field mElement_RGB_565:Landroid/renderscript/Element;

.field mElement_RGB_888:Landroid/renderscript/Element;

.field mElement_SAMPLER:Landroid/renderscript/Element;

.field mElement_SCRIPT:Landroid/renderscript/Element;

.field mElement_TYPE:Landroid/renderscript/Element;

.field mElement_U16:Landroid/renderscript/Element;

.field mElement_U32:Landroid/renderscript/Element;

.field mElement_U64:Landroid/renderscript/Element;

.field mElement_U8:Landroid/renderscript/Element;

.field mElement_UCHAR_4:Landroid/renderscript/Element;

.field mErrorCallback:Landroid/renderscript/RenderScript$RSErrorHandler;

.field mMessageCallback:Landroid/renderscript/RenderScript$RSMessageHandler;

.field mMessageThread:Landroid/renderscript/RenderScript$MessageThread;

.field mProgramRaster_CULL_BACK:Landroid/renderscript/ProgramRaster;

.field mProgramRaster_CULL_FRONT:Landroid/renderscript/ProgramRaster;

.field mProgramRaster_CULL_NONE:Landroid/renderscript/ProgramRaster;

.field mProgramStore_BLEND_ALPHA_DEPTH_NO_DEPTH:Landroid/renderscript/ProgramStore;

.field mProgramStore_BLEND_ALPHA_DEPTH_TEST:Landroid/renderscript/ProgramStore;

.field mProgramStore_BLEND_NONE_DEPTH_NO_DEPTH:Landroid/renderscript/ProgramStore;

.field mProgramStore_BLEND_NONE_DEPTH_TEST:Landroid/renderscript/ProgramStore;

.field mSampler_CLAMP_LINEAR:Landroid/renderscript/Sampler;

.field mSampler_CLAMP_LINEAR_MIP_LINEAR:Landroid/renderscript/Sampler;

.field mSampler_CLAMP_NEAREST:Landroid/renderscript/Sampler;

.field mSampler_WRAP_LINEAR:Landroid/renderscript/Sampler;

.field mSampler_WRAP_LINEAR_MIP_LINEAR:Landroid/renderscript/Sampler;

.field mSampler_WRAP_NEAREST:Landroid/renderscript/Sampler;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    .line 57
    const/4 v1, 0x0

    sput-boolean v1, Landroid/renderscript/RenderScript;->sInitialized:Z

    .line 59
    :try_start_3
    const-string/jumbo v1, "rs_jni"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 60
    invoke-static {}, Landroid/renderscript/RenderScript;->_nInit()V

    .line 61
    const/4 v1, 0x1

    sput-boolean v1, Landroid/renderscript/RenderScript;->sInitialized:Z
    :try_end_f
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_3 .. :try_end_f} :catch_10

    .line 66
    return-void

    .line 62
    :catch_10
    move-exception v1

    move-object v0, v1

    .line 63
    .local v0, e:Ljava/lang/UnsatisfiedLinkError;
    const-string v1, "RenderScript_jni"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error loading RS jni library: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    new-instance v1, Landroid/renderscript/RSRuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error loading RS jni library: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "ctx"

    .prologue
    const/4 v0, 0x0

    .line 850
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 701
    iput-object v0, p0, Landroid/renderscript/RenderScript;->mMessageCallback:Landroid/renderscript/RenderScript$RSMessageHandler;

    .line 730
    iput-object v0, p0, Landroid/renderscript/RenderScript;->mErrorCallback:Landroid/renderscript/RenderScript$RSErrorHandler;

    .line 851
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/RenderScript;->mApplicationContext:Landroid/content/Context;

    .line 852
    return-void
.end method

.method static native _nInit()V
.end method

.method public static create(Landroid/content/Context;)Landroid/renderscript/RenderScript;
    .registers 4
    .parameter "ctx"

    .prologue
    .line 870
    new-instance v0, Landroid/renderscript/RenderScript;

    invoke-direct {v0, p0}, Landroid/renderscript/RenderScript;-><init>(Landroid/content/Context;)V

    .line 872
    .local v0, rs:Landroid/renderscript/RenderScript;
    invoke-virtual {v0}, Landroid/renderscript/RenderScript;->nDeviceCreate()I

    move-result v1

    iput v1, v0, Landroid/renderscript/RenderScript;->mDev:I

    .line 873
    iget v1, v0, Landroid/renderscript/RenderScript;->mDev:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/renderscript/RenderScript;->nContextCreate(II)I

    move-result v1

    iput v1, v0, Landroid/renderscript/RenderScript;->mContext:I

    .line 874
    new-instance v1, Landroid/renderscript/RenderScript$MessageThread;

    invoke-direct {v1, v0}, Landroid/renderscript/RenderScript$MessageThread;-><init>(Landroid/renderscript/RenderScript;)V

    iput-object v1, v0, Landroid/renderscript/RenderScript;->mMessageThread:Landroid/renderscript/RenderScript$MessageThread;

    .line 875
    iget-object v1, v0, Landroid/renderscript/RenderScript;->mMessageThread:Landroid/renderscript/RenderScript$MessageThread;

    invoke-virtual {v1}, Landroid/renderscript/RenderScript$MessageThread;->start()V

    .line 876
    return-object v0
.end method


# virtual methods
.method public contextDump()V
    .registers 2

    .prologue
    .line 885
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 886
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/renderscript/RenderScript;->nContextDump(I)V

    .line 887
    return-void
.end method

.method public destroy()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 904
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 905
    iget v0, p0, Landroid/renderscript/RenderScript;->mContext:I

    invoke-virtual {p0, v0}, Landroid/renderscript/RenderScript;->nContextDeinitToClient(I)V

    .line 906
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mMessageThread:Landroid/renderscript/RenderScript$MessageThread;

    iput-boolean v1, v0, Landroid/renderscript/RenderScript$MessageThread;->mRun:Z

    .line 908
    :try_start_d
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mMessageThread:Landroid/renderscript/RenderScript$MessageThread;

    invoke-virtual {v0}, Landroid/renderscript/RenderScript$MessageThread;->join()V
    :try_end_12
    .catch Ljava/lang/InterruptedException; {:try_start_d .. :try_end_12} :catch_1f

    .line 912
    :goto_12
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->nContextDestroy()V

    .line 913
    iput v1, p0, Landroid/renderscript/RenderScript;->mContext:I

    .line 915
    iget v0, p0, Landroid/renderscript/RenderScript;->mDev:I

    invoke-virtual {p0, v0}, Landroid/renderscript/RenderScript;->nDeviceDestroy(I)V

    .line 916
    iput v1, p0, Landroid/renderscript/RenderScript;->mDev:I

    .line 917
    return-void

    .line 909
    :catch_1f
    move-exception v0

    goto :goto_12
.end method

.method public finish()V
    .registers 1

    .prologue
    .line 895
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->nContextFinish()V

    .line 896
    return-void
.end method

.method public final getApplicationContext()Landroid/content/Context;
    .registers 2

    .prologue
    .line 860
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mApplicationContext:Landroid/content/Context;

    return-object v0
.end method

.method public getErrorHandler()Landroid/renderscript/RenderScript$RSErrorHandler;
    .registers 2

    .prologue
    .line 736
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mErrorCallback:Landroid/renderscript/RenderScript$RSErrorHandler;

    return-object v0
.end method

.method public getMessageHandler()Landroid/renderscript/RenderScript$RSMessageHandler;
    .registers 2

    .prologue
    .line 707
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mMessageCallback:Landroid/renderscript/RenderScript$RSMessageHandler;

    return-object v0
.end method

.method isAlive()Z
    .registers 2

    .prologue
    .line 920
    iget v0, p0, Landroid/renderscript/RenderScript;->mContext:I

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method declared-synchronized nAllocationCopyFromBitmap(ILandroid/graphics/Bitmap;)V
    .registers 4
    .parameter "alloc"
    .parameter "bmp"

    .prologue
    .line 266
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 267
    iget v0, p0, Landroid/renderscript/RenderScript;->mContext:I

    invoke-virtual {p0, v0, p1, p2}, Landroid/renderscript/RenderScript;->rsnAllocationCopyFromBitmap(IILandroid/graphics/Bitmap;)V
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    .line 268
    monitor-exit p0

    return-void

    .line 266
    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nAllocationCopyToBitmap(ILandroid/graphics/Bitmap;)V
    .registers 4
    .parameter "alloc"
    .parameter "bmp"

    .prologue
    .line 249
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 250
    iget v0, p0, Landroid/renderscript/RenderScript;->mContext:I

    invoke-virtual {p0, v0, p1, p2}, Landroid/renderscript/RenderScript;->rsnAllocationCopyToBitmap(IILandroid/graphics/Bitmap;)V
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    .line 251
    monitor-exit p0

    return-void

    .line 249
    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nAllocationCreateBitmapRef(ILandroid/graphics/Bitmap;)I
    .registers 4
    .parameter "type"
    .parameter "bmp"

    .prologue
    .line 238
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 239
    iget v0, p0, Landroid/renderscript/RenderScript;->mContext:I

    invoke-virtual {p0, v0, p1, p2}, Landroid/renderscript/RenderScript;->rsnAllocationCreateBitmapRef(IILandroid/graphics/Bitmap;)I
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_c

    move-result v0

    monitor-exit p0

    return v0

    .line 238
    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nAllocationCreateFromAssetStream(III)I
    .registers 5
    .parameter "mips"
    .parameter "assetStream"
    .parameter "usage"

    .prologue
    .line 243
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 244
    iget v0, p0, Landroid/renderscript/RenderScript;->mContext:I

    invoke-virtual {p0, v0, p1, p2, p3}, Landroid/renderscript/RenderScript;->rsnAllocationCreateFromAssetStream(IIII)I
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_c

    move-result v0

    monitor-exit p0

    return v0

    .line 243
    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nAllocationCreateFromBitmap(IILandroid/graphics/Bitmap;I)I
    .registers 11
    .parameter "type"
    .parameter "mip"
    .parameter "bmp"
    .parameter "usage"

    .prologue
    .line 228
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 229
    iget v1, p0, Landroid/renderscript/RenderScript;->mContext:I

    move-object v0, p0

    move v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Landroid/renderscript/RenderScript;->rsnAllocationCreateFromBitmap(IIILandroid/graphics/Bitmap;I)I
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_11

    move-result v0

    monitor-exit p0

    return v0

    .line 228
    :catchall_11
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nAllocationCreateTyped(III)I
    .registers 5
    .parameter "type"
    .parameter "mip"
    .parameter "usage"

    .prologue
    .line 223
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 224
    iget v0, p0, Landroid/renderscript/RenderScript;->mContext:I

    invoke-virtual {p0, v0, p1, p2, p3}, Landroid/renderscript/RenderScript;->rsnAllocationCreateTyped(IIII)I
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_c

    move-result v0

    monitor-exit p0

    return v0

    .line 223
    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nAllocationCubeCreateFromBitmap(IILandroid/graphics/Bitmap;I)I
    .registers 11
    .parameter "type"
    .parameter "mip"
    .parameter "bmp"
    .parameter "usage"

    .prologue
    .line 233
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 234
    iget v1, p0, Landroid/renderscript/RenderScript;->mContext:I

    move-object v0, p0

    move v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Landroid/renderscript/RenderScript;->rsnAllocationCubeCreateFromBitmap(IIILandroid/graphics/Bitmap;I)I
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_11

    move-result v0

    monitor-exit p0

    return v0

    .line 233
    :catchall_11
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nAllocationData1D(IIII[BI)V
    .registers 15
    .parameter "id"
    .parameter "off"
    .parameter "mip"
    .parameter "count"
    .parameter "d"
    .parameter "sizeBytes"

    .prologue
    .line 283
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 284
    iget v1, p0, Landroid/renderscript/RenderScript;->mContext:I

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    move v7, p6

    invoke-virtual/range {v0 .. v7}, Landroid/renderscript/RenderScript;->rsnAllocationData1D(IIIII[BI)V
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_12

    .line 285
    monitor-exit p0

    return-void

    .line 283
    :catchall_12
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nAllocationData1D(IIII[FI)V
    .registers 15
    .parameter "id"
    .parameter "off"
    .parameter "mip"
    .parameter "count"
    .parameter "d"
    .parameter "sizeBytes"

    .prologue
    .line 288
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 289
    iget v1, p0, Landroid/renderscript/RenderScript;->mContext:I

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    move v7, p6

    invoke-virtual/range {v0 .. v7}, Landroid/renderscript/RenderScript;->rsnAllocationData1D(IIIII[FI)V
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_12

    .line 290
    monitor-exit p0

    return-void

    .line 288
    :catchall_12
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nAllocationData1D(IIII[II)V
    .registers 15
    .parameter "id"
    .parameter "off"
    .parameter "mip"
    .parameter "count"
    .parameter "d"
    .parameter "sizeBytes"

    .prologue
    .line 273
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 274
    iget v1, p0, Landroid/renderscript/RenderScript;->mContext:I

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    move v7, p6

    invoke-virtual/range {v0 .. v7}, Landroid/renderscript/RenderScript;->rsnAllocationData1D(IIIII[II)V
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_12

    .line 275
    monitor-exit p0

    return-void

    .line 273
    :catchall_12
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nAllocationData1D(IIII[SI)V
    .registers 15
    .parameter "id"
    .parameter "off"
    .parameter "mip"
    .parameter "count"
    .parameter "d"
    .parameter "sizeBytes"

    .prologue
    .line 278
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 279
    iget v1, p0, Landroid/renderscript/RenderScript;->mContext:I

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    move v7, p6

    invoke-virtual/range {v0 .. v7}, Landroid/renderscript/RenderScript;->rsnAllocationData1D(IIIII[SI)V
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_12

    .line 280
    monitor-exit p0

    return-void

    .line 278
    :catchall_12
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nAllocationData2D(IIIIIII[BI)V
    .registers 21
    .parameter "id"
    .parameter "xoff"
    .parameter "yoff"
    .parameter "mip"
    .parameter "face"
    .parameter "w"
    .parameter "h"
    .parameter "d"
    .parameter "sizeBytes"

    .prologue
    .line 300
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 301
    iget v1, p0, Landroid/renderscript/RenderScript;->mContext:I

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move-object/from16 v9, p8

    move/from16 v10, p9

    invoke-virtual/range {v0 .. v10}, Landroid/renderscript/RenderScript;->rsnAllocationData2D(IIIIIIII[BI)V
    :try_end_18
    .catchall {:try_start_1 .. :try_end_18} :catchall_1a

    .line 302
    monitor-exit p0

    return-void

    .line 300
    :catchall_1a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nAllocationData2D(IIIIIII[FI)V
    .registers 21
    .parameter "id"
    .parameter "xoff"
    .parameter "yoff"
    .parameter "mip"
    .parameter "face"
    .parameter "w"
    .parameter "h"
    .parameter "d"
    .parameter "sizeBytes"

    .prologue
    .line 315
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 316
    iget v1, p0, Landroid/renderscript/RenderScript;->mContext:I

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move-object/from16 v9, p8

    move/from16 v10, p9

    invoke-virtual/range {v0 .. v10}, Landroid/renderscript/RenderScript;->rsnAllocationData2D(IIIIIIII[FI)V
    :try_end_18
    .catchall {:try_start_1 .. :try_end_18} :catchall_1a

    .line 317
    monitor-exit p0

    return-void

    .line 315
    :catchall_1a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nAllocationData2D(IIIIIII[II)V
    .registers 21
    .parameter "id"
    .parameter "xoff"
    .parameter "yoff"
    .parameter "mip"
    .parameter "face"
    .parameter "w"
    .parameter "h"
    .parameter "d"
    .parameter "sizeBytes"

    .prologue
    .line 310
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 311
    iget v1, p0, Landroid/renderscript/RenderScript;->mContext:I

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move-object/from16 v9, p8

    move/from16 v10, p9

    invoke-virtual/range {v0 .. v10}, Landroid/renderscript/RenderScript;->rsnAllocationData2D(IIIIIIII[II)V
    :try_end_18
    .catchall {:try_start_1 .. :try_end_18} :catchall_1a

    .line 312
    monitor-exit p0

    return-void

    .line 310
    :catchall_1a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nAllocationData2D(IIIIIII[SI)V
    .registers 21
    .parameter "id"
    .parameter "xoff"
    .parameter "yoff"
    .parameter "mip"
    .parameter "face"
    .parameter "w"
    .parameter "h"
    .parameter "d"
    .parameter "sizeBytes"

    .prologue
    .line 305
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 306
    iget v1, p0, Landroid/renderscript/RenderScript;->mContext:I

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move-object/from16 v9, p8

    move/from16 v10, p9

    invoke-virtual/range {v0 .. v10}, Landroid/renderscript/RenderScript;->rsnAllocationData2D(IIIIIIII[SI)V
    :try_end_18
    .catchall {:try_start_1 .. :try_end_18} :catchall_1a

    .line 307
    monitor-exit p0

    return-void

    .line 305
    :catchall_1a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nAllocationData2D(IIIIILandroid/graphics/Bitmap;)V
    .registers 15
    .parameter "id"
    .parameter "xoff"
    .parameter "yoff"
    .parameter "mip"
    .parameter "face"
    .parameter "b"

    .prologue
    .line 320
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 321
    iget v1, p0, Landroid/renderscript/RenderScript;->mContext:I

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move-object v7, p6

    invoke-virtual/range {v0 .. v7}, Landroid/renderscript/RenderScript;->rsnAllocationData2D(IIIIIILandroid/graphics/Bitmap;)V
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_12

    .line 322
    monitor-exit p0

    return-void

    .line 320
    :catchall_12
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nAllocationElementData1D(IIII[BI)V
    .registers 15
    .parameter "id"
    .parameter "xoff"
    .parameter "mip"
    .parameter "compIdx"
    .parameter "d"
    .parameter "sizeBytes"

    .prologue
    .line 294
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 295
    iget v1, p0, Landroid/renderscript/RenderScript;->mContext:I

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    move v7, p6

    invoke-virtual/range {v0 .. v7}, Landroid/renderscript/RenderScript;->rsnAllocationElementData1D(IIIII[BI)V
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_12

    .line 296
    monitor-exit p0

    return-void

    .line 294
    :catchall_12
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nAllocationGenerateMipmaps(I)V
    .registers 3
    .parameter "alloc"

    .prologue
    .line 261
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 262
    iget v0, p0, Landroid/renderscript/RenderScript;->mContext:I

    invoke-virtual {p0, v0, p1}, Landroid/renderscript/RenderScript;->rsnAllocationGenerateMipmaps(II)V
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    .line 263
    monitor-exit p0

    return-void

    .line 261
    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nAllocationGetType(I)I
    .registers 3
    .parameter "id"

    .prologue
    .line 346
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 347
    iget v0, p0, Landroid/renderscript/RenderScript;->mContext:I

    invoke-virtual {p0, v0, p1}, Landroid/renderscript/RenderScript;->rsnAllocationGetType(II)I
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_c

    move-result v0

    monitor-exit p0

    return v0

    .line 346
    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nAllocationRead(I[B)V
    .registers 4
    .parameter "id"
    .parameter "d"

    .prologue
    .line 326
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 327
    iget v0, p0, Landroid/renderscript/RenderScript;->mContext:I

    invoke-virtual {p0, v0, p1, p2}, Landroid/renderscript/RenderScript;->rsnAllocationRead(II[B)V
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    .line 328
    monitor-exit p0

    return-void

    .line 326
    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nAllocationRead(I[F)V
    .registers 4
    .parameter "id"
    .parameter "d"

    .prologue
    .line 341
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 342
    iget v0, p0, Landroid/renderscript/RenderScript;->mContext:I

    invoke-virtual {p0, v0, p1, p2}, Landroid/renderscript/RenderScript;->rsnAllocationRead(II[F)V
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    .line 343
    monitor-exit p0

    return-void

    .line 341
    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nAllocationRead(I[I)V
    .registers 4
    .parameter "id"
    .parameter "d"

    .prologue
    .line 336
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 337
    iget v0, p0, Landroid/renderscript/RenderScript;->mContext:I

    invoke-virtual {p0, v0, p1, p2}, Landroid/renderscript/RenderScript;->rsnAllocationRead(II[I)V
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    .line 338
    monitor-exit p0

    return-void

    .line 336
    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nAllocationRead(I[S)V
    .registers 4
    .parameter "id"
    .parameter "d"

    .prologue
    .line 331
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 332
    iget v0, p0, Landroid/renderscript/RenderScript;->mContext:I

    invoke-virtual {p0, v0, p1, p2}, Landroid/renderscript/RenderScript;->rsnAllocationRead(II[S)V
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    .line 333
    monitor-exit p0

    return-void

    .line 331
    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nAllocationResize1D(II)V
    .registers 4
    .parameter "id"
    .parameter "dimX"

    .prologue
    .line 352
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 353
    iget v0, p0, Landroid/renderscript/RenderScript;->mContext:I

    invoke-virtual {p0, v0, p1, p2}, Landroid/renderscript/RenderScript;->rsnAllocationResize1D(III)V
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    .line 354
    monitor-exit p0

    return-void

    .line 352
    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nAllocationResize2D(III)V
    .registers 5
    .parameter "id"
    .parameter "dimX"
    .parameter "dimY"

    .prologue
    .line 357
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 358
    iget v0, p0, Landroid/renderscript/RenderScript;->mContext:I

    invoke-virtual {p0, v0, p1, p2, p3}, Landroid/renderscript/RenderScript;->rsnAllocationResize2D(IIII)V
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    .line 359
    monitor-exit p0

    return-void

    .line 357
    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nAllocationSyncAll(II)V
    .registers 4
    .parameter "alloc"
    .parameter "src"

    .prologue
    .line 256
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 257
    iget v0, p0, Landroid/renderscript/RenderScript;->mContext:I

    invoke-virtual {p0, v0, p1, p2}, Landroid/renderscript/RenderScript;->rsnAllocationSyncAll(III)V
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    .line 258
    monitor-exit p0

    return-void

    .line 256
    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nAssignName(I[B)V
    .registers 4
    .parameter "obj"
    .parameter "name"

    .prologue
    .line 171
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 172
    iget v0, p0, Landroid/renderscript/RenderScript;->mContext:I

    invoke-virtual {p0, v0, p1, p2}, Landroid/renderscript/RenderScript;->rsnAssignName(II[B)V
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    .line 173
    monitor-exit p0

    return-void

    .line 171
    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nContextBindProgramFragment(I)V
    .registers 3
    .parameter "pf"

    .prologue
    .line 145
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 146
    iget v0, p0, Landroid/renderscript/RenderScript;->mContext:I

    invoke-virtual {p0, v0, p1}, Landroid/renderscript/RenderScript;->rsnContextBindProgramFragment(II)V
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    .line 147
    monitor-exit p0

    return-void

    .line 145
    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nContextBindProgramRaster(I)V
    .registers 3
    .parameter "pr"

    .prologue
    .line 155
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 156
    iget v0, p0, Landroid/renderscript/RenderScript;->mContext:I

    invoke-virtual {p0, v0, p1}, Landroid/renderscript/RenderScript;->rsnContextBindProgramRaster(II)V
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    .line 157
    monitor-exit p0

    return-void

    .line 155
    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nContextBindProgramStore(I)V
    .registers 3
    .parameter "pfs"

    .prologue
    .line 140
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 141
    iget v0, p0, Landroid/renderscript/RenderScript;->mContext:I

    invoke-virtual {p0, v0, p1}, Landroid/renderscript/RenderScript;->rsnContextBindProgramStore(II)V
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    .line 142
    monitor-exit p0

    return-void

    .line 140
    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nContextBindProgramVertex(I)V
    .registers 3
    .parameter "pv"

    .prologue
    .line 150
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 151
    iget v0, p0, Landroid/renderscript/RenderScript;->mContext:I

    invoke-virtual {p0, v0, p1}, Landroid/renderscript/RenderScript;->rsnContextBindProgramVertex(II)V
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    .line 152
    monitor-exit p0

    return-void

    .line 150
    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nContextBindRootScript(I)V
    .registers 3
    .parameter "script"

    .prologue
    .line 130
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 131
    iget v0, p0, Landroid/renderscript/RenderScript;->mContext:I

    invoke-virtual {p0, v0, p1}, Landroid/renderscript/RenderScript;->rsnContextBindRootScript(II)V
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    .line 132
    monitor-exit p0

    return-void

    .line 130
    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nContextBindSampler(II)V
    .registers 4
    .parameter "sampler"
    .parameter "slot"

    .prologue
    .line 135
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 136
    iget v0, p0, Landroid/renderscript/RenderScript;->mContext:I

    invoke-virtual {p0, v0, p1, p2}, Landroid/renderscript/RenderScript;->rsnContextBindSampler(III)V
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    .line 137
    monitor-exit p0

    return-void

    .line 135
    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nContextCreate(II)I
    .registers 4
    .parameter "dev"
    .parameter "ver"

    .prologue
    .line 100
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0, p1, p2}, Landroid/renderscript/RenderScript;->rsnContextCreate(II)I
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_7

    move-result v0

    monitor-exit p0

    return v0

    :catchall_7
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nContextCreateGL(IIIIIIIIIIIIFI)I
    .registers 16
    .parameter "dev"
    .parameter "ver"
    .parameter "colorMin"
    .parameter "colorPref"
    .parameter "alphaMin"
    .parameter "alphaPref"
    .parameter "depthMin"
    .parameter "depthPref"
    .parameter "stencilMin"
    .parameter "stencilPref"
    .parameter "samplesMin"
    .parameter "samplesPref"
    .parameter "samplesQ"
    .parameter "dpi"

    .prologue
    .line 93
    monitor-enter p0

    :try_start_1
    invoke-virtual/range {p0 .. p14}, Landroid/renderscript/RenderScript;->rsnContextCreateGL(IIIIIIIIIIIIFI)I
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_7

    move-result v0

    monitor-exit p0

    return v0

    :catchall_7
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method native nContextDeinitToClient(I)V
.end method

.method declared-synchronized nContextDestroy()V
    .registers 2

    .prologue
    .line 104
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 105
    iget v0, p0, Landroid/renderscript/RenderScript;->mContext:I

    invoke-virtual {p0, v0}, Landroid/renderscript/RenderScript;->rsnContextDestroy(I)V
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    .line 106
    monitor-exit p0

    return-void

    .line 104
    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nContextDump(I)V
    .registers 3
    .parameter "bits"

    .prologue
    .line 119
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 120
    iget v0, p0, Landroid/renderscript/RenderScript;->mContext:I

    invoke-virtual {p0, v0, p1}, Landroid/renderscript/RenderScript;->rsnContextDump(II)V
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    .line 121
    monitor-exit p0

    return-void

    .line 119
    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nContextFinish()V
    .registers 2

    .prologue
    .line 124
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 125
    iget v0, p0, Landroid/renderscript/RenderScript;->mContext:I

    invoke-virtual {p0, v0}, Landroid/renderscript/RenderScript;->rsnContextFinish(I)V
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    .line 126
    monitor-exit p0

    return-void

    .line 124
    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method native nContextGetErrorMessage(I)Ljava/lang/String;
.end method

.method native nContextGetUserMessage(I[I)V
.end method

.method native nContextInitToClient(I)V
.end method

.method declared-synchronized nContextPause()V
    .registers 2

    .prologue
    .line 160
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 161
    iget v0, p0, Landroid/renderscript/RenderScript;->mContext:I

    invoke-virtual {p0, v0}, Landroid/renderscript/RenderScript;->rsnContextPause(I)V
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    .line 162
    monitor-exit p0

    return-void

    .line 160
    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method native nContextPeekMessage(I[IZ)I
.end method

.method declared-synchronized nContextResume()V
    .registers 2

    .prologue
    .line 165
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 166
    iget v0, p0, Landroid/renderscript/RenderScript;->mContext:I

    invoke-virtual {p0, v0}, Landroid/renderscript/RenderScript;->rsnContextResume(I)V
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    .line 167
    monitor-exit p0

    return-void

    .line 165
    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nContextSetPriority(I)V
    .registers 3
    .parameter "p"

    .prologue
    .line 114
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 115
    iget v0, p0, Landroid/renderscript/RenderScript;->mContext:I

    invoke-virtual {p0, v0, p1}, Landroid/renderscript/RenderScript;->rsnContextSetPriority(II)V
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    .line 116
    monitor-exit p0

    return-void

    .line 114
    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nContextSetSurface(IILandroid/view/Surface;)V
    .registers 5
    .parameter "w"
    .parameter "h"
    .parameter "sur"

    .prologue
    .line 109
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 110
    iget v0, p0, Landroid/renderscript/RenderScript;->mContext:I

    invoke-virtual {p0, v0, p1, p2, p3}, Landroid/renderscript/RenderScript;->rsnContextSetSurface(IIILandroid/view/Surface;)V
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    .line 111
    monitor-exit p0

    return-void

    .line 109
    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method native nDeviceCreate()I
.end method

.method native nDeviceDestroy(I)V
.end method

.method native nDeviceSetConfig(III)V
.end method

.method declared-synchronized nElementCreate(IIZI)I
    .registers 11
    .parameter "type"
    .parameter "kind"
    .parameter "norm"
    .parameter "vecSize"

    .prologue
    .line 191
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 192
    iget v1, p0, Landroid/renderscript/RenderScript;->mContext:I

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Landroid/renderscript/RenderScript;->rsnElementCreate(IIIZI)I
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_11

    move-result v0

    monitor-exit p0

    return v0

    .line 191
    :catchall_11
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nElementCreate2([I[Ljava/lang/String;[I)I
    .registers 5
    .parameter "elements"
    .parameter "names"
    .parameter "arraySizes"

    .prologue
    .line 196
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 197
    iget v0, p0, Landroid/renderscript/RenderScript;->mContext:I

    invoke-virtual {p0, v0, p1, p2, p3}, Landroid/renderscript/RenderScript;->rsnElementCreate2(I[I[Ljava/lang/String;[I)I
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_c

    move-result v0

    monitor-exit p0

    return v0

    .line 196
    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nElementGetNativeData(I[I)V
    .registers 4
    .parameter "id"
    .parameter "elementData"

    .prologue
    .line 201
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 202
    iget v0, p0, Landroid/renderscript/RenderScript;->mContext:I

    invoke-virtual {p0, v0, p1, p2}, Landroid/renderscript/RenderScript;->rsnElementGetNativeData(II[I)V
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    .line 203
    monitor-exit p0

    return-void

    .line 201
    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nElementGetSubElements(I[I[Ljava/lang/String;)V
    .registers 5
    .parameter "id"
    .parameter "IDs"
    .parameter "names"

    .prologue
    .line 206
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 207
    iget v0, p0, Landroid/renderscript/RenderScript;->mContext:I

    invoke-virtual {p0, v0, p1, p2, p3}, Landroid/renderscript/RenderScript;->rsnElementGetSubElements(II[I[Ljava/lang/String;)V
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    .line 208
    monitor-exit p0

    return-void

    .line 206
    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nFileA3DCreateFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)I
    .registers 4
    .parameter "mgr"
    .parameter "path"

    .prologue
    .line 373
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 374
    iget v0, p0, Landroid/renderscript/RenderScript;->mContext:I

    invoke-virtual {p0, v0, p1, p2}, Landroid/renderscript/RenderScript;->rsnFileA3DCreateFromAsset(ILandroid/content/res/AssetManager;Ljava/lang/String;)I
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_c

    move-result v0

    monitor-exit p0

    return v0

    .line 373
    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nFileA3DCreateFromAssetStream(I)I
    .registers 3
    .parameter "assetStream"

    .prologue
    .line 363
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 364
    iget v0, p0, Landroid/renderscript/RenderScript;->mContext:I

    invoke-virtual {p0, v0, p1}, Landroid/renderscript/RenderScript;->rsnFileA3DCreateFromAssetStream(II)I
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_c

    move-result v0

    monitor-exit p0

    return v0

    .line 363
    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nFileA3DCreateFromFile(Ljava/lang/String;)I
    .registers 3
    .parameter "path"

    .prologue
    .line 368
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 369
    iget v0, p0, Landroid/renderscript/RenderScript;->mContext:I

    invoke-virtual {p0, v0, p1}, Landroid/renderscript/RenderScript;->rsnFileA3DCreateFromFile(ILjava/lang/String;)I
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_c

    move-result v0

    monitor-exit p0

    return v0

    .line 368
    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nFileA3DGetEntryByIndex(II)I
    .registers 4
    .parameter "fileA3D"
    .parameter "index"

    .prologue
    .line 388
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 389
    iget v0, p0, Landroid/renderscript/RenderScript;->mContext:I

    invoke-virtual {p0, v0, p1, p2}, Landroid/renderscript/RenderScript;->rsnFileA3DGetEntryByIndex(III)I
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_c

    move-result v0

    monitor-exit p0

    return v0

    .line 388
    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nFileA3DGetIndexEntries(II[I[Ljava/lang/String;)V
    .registers 11
    .parameter "fileA3D"
    .parameter "numEntries"
    .parameter "IDs"
    .parameter "names"

    .prologue
    .line 383
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 384
    iget v1, p0, Landroid/renderscript/RenderScript;->mContext:I

    move-object v0, p0

    move v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Landroid/renderscript/RenderScript;->rsnFileA3DGetIndexEntries(III[I[Ljava/lang/String;)V
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_10

    .line 385
    monitor-exit p0

    return-void

    .line 383
    :catchall_10
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nFileA3DGetNumIndexEntries(I)I
    .registers 3
    .parameter "fileA3D"

    .prologue
    .line 378
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 379
    iget v0, p0, Landroid/renderscript/RenderScript;->mContext:I

    invoke-virtual {p0, v0, p1}, Landroid/renderscript/RenderScript;->rsnFileA3DGetNumIndexEntries(II)I
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_c

    move-result v0

    monitor-exit p0

    return v0

    .line 378
    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nFontCreateFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;FI)I
    .registers 11
    .parameter "mgr"
    .parameter "path"
    .parameter "size"
    .parameter "dpi"

    .prologue
    .line 404
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 405
    iget v1, p0, Landroid/renderscript/RenderScript;->mContext:I

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Landroid/renderscript/RenderScript;->rsnFontCreateFromAsset(ILandroid/content/res/AssetManager;Ljava/lang/String;FI)I
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_11

    move-result v0

    monitor-exit p0

    return v0

    .line 404
    :catchall_11
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nFontCreateFromAssetStream(Ljava/lang/String;FII)I
    .registers 11
    .parameter "name"
    .parameter "size"
    .parameter "dpi"
    .parameter "assetStream"

    .prologue
    .line 399
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 400
    iget v1, p0, Landroid/renderscript/RenderScript;->mContext:I

    move-object v0, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Landroid/renderscript/RenderScript;->rsnFontCreateFromAssetStream(ILjava/lang/String;FII)I
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_11

    move-result v0

    monitor-exit p0

    return v0

    .line 399
    :catchall_11
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nFontCreateFromFile(Ljava/lang/String;FI)I
    .registers 5
    .parameter "fileName"
    .parameter "size"
    .parameter "dpi"

    .prologue
    .line 394
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 395
    iget v0, p0, Landroid/renderscript/RenderScript;->mContext:I

    invoke-virtual {p0, v0, p1, p2, p3}, Landroid/renderscript/RenderScript;->rsnFontCreateFromFile(ILjava/lang/String;FI)I
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_c

    move-result v0

    monitor-exit p0

    return v0

    .line 394
    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nGetName(I)Ljava/lang/String;
    .registers 3
    .parameter "obj"

    .prologue
    .line 176
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 177
    iget v0, p0, Landroid/renderscript/RenderScript;->mContext:I

    invoke-virtual {p0, v0, p1}, Landroid/renderscript/RenderScript;->rsnGetName(II)Ljava/lang/String;
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_c

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 176
    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nMeshBindIndex(IIII)V
    .registers 11
    .parameter "id"
    .parameter "alloc"
    .parameter "prim"
    .parameter "slot"

    .prologue
    .line 587
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 588
    iget v1, p0, Landroid/renderscript/RenderScript;->mContext:I

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Landroid/renderscript/RenderScript;->rsnMeshBindIndex(IIIII)V
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_10

    .line 589
    monitor-exit p0

    return-void

    .line 587
    :catchall_10
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nMeshBindVertex(III)V
    .registers 5
    .parameter "id"
    .parameter "alloc"
    .parameter "slot"

    .prologue
    .line 582
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 583
    iget v0, p0, Landroid/renderscript/RenderScript;->mContext:I

    invoke-virtual {p0, v0, p1, p2, p3}, Landroid/renderscript/RenderScript;->rsnMeshBindVertex(IIII)V
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    .line 584
    monitor-exit p0

    return-void

    .line 582
    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nMeshCreate(II)I
    .registers 4
    .parameter "vtxCount"
    .parameter "indexCount"

    .prologue
    .line 577
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 578
    iget v0, p0, Landroid/renderscript/RenderScript;->mContext:I

    invoke-virtual {p0, v0, p1, p2}, Landroid/renderscript/RenderScript;->rsnMeshCreate(III)I
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_c

    move-result v0

    monitor-exit p0

    return v0

    .line 577
    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nMeshGetIndexCount(I)I
    .registers 3
    .parameter "id"

    .prologue
    .line 602
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 603
    iget v0, p0, Landroid/renderscript/RenderScript;->mContext:I

    invoke-virtual {p0, v0, p1}, Landroid/renderscript/RenderScript;->rsnMeshGetIndexCount(II)I
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_c

    move-result v0

    monitor-exit p0

    return v0

    .line 602
    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nMeshGetIndices(I[I[II)V
    .registers 11
    .parameter "id"
    .parameter "idxIds"
    .parameter "primitives"
    .parameter "vtxIdCount"

    .prologue
    .line 612
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 613
    iget v1, p0, Landroid/renderscript/RenderScript;->mContext:I

    move-object v0, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Landroid/renderscript/RenderScript;->rsnMeshGetIndices(II[I[II)V
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_10

    .line 614
    monitor-exit p0

    return-void

    .line 612
    :catchall_10
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nMeshGetVertexBufferCount(I)I
    .registers 3
    .parameter "id"

    .prologue
    .line 597
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 598
    iget v0, p0, Landroid/renderscript/RenderScript;->mContext:I

    invoke-virtual {p0, v0, p1}, Landroid/renderscript/RenderScript;->rsnMeshGetVertexBufferCount(II)I
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_c

    move-result v0

    monitor-exit p0

    return v0

    .line 597
    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nMeshGetVertices(I[II)V
    .registers 5
    .parameter "id"
    .parameter "vtxIds"
    .parameter "vtxIdCount"

    .prologue
    .line 607
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 608
    iget v0, p0, Landroid/renderscript/RenderScript;->mContext:I

    invoke-virtual {p0, v0, p1, p2, p3}, Landroid/renderscript/RenderScript;->rsnMeshGetVertices(II[II)V
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    .line 609
    monitor-exit p0

    return-void

    .line 607
    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nMeshInitVertexAttribs(I)V
    .registers 3
    .parameter "id"

    .prologue
    .line 592
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 593
    iget v0, p0, Landroid/renderscript/RenderScript;->mContext:I

    invoke-virtual {p0, v0, p1}, Landroid/renderscript/RenderScript;->rsnMeshInitVertexAttribs(II)V
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    .line 594
    monitor-exit p0

    return-void

    .line 592
    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nObjDestroy(I)V
    .registers 3
    .parameter "id"

    .prologue
    .line 184
    monitor-enter p0

    :try_start_1
    iget v0, p0, Landroid/renderscript/RenderScript;->mContext:I

    if-eqz v0, :cond_a

    .line 185
    iget v0, p0, Landroid/renderscript/RenderScript;->mContext:I

    invoke-virtual {p0, v0, p1}, Landroid/renderscript/RenderScript;->rsnObjDestroy(II)V
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_c

    .line 187
    :cond_a
    monitor-exit p0

    return-void

    .line 184
    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nProgramBindConstants(III)V
    .registers 5
    .parameter "pv"
    .parameter "slot"
    .parameter "mID"

    .prologue
    .line 551
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 552
    iget v0, p0, Landroid/renderscript/RenderScript;->mContext:I

    invoke-virtual {p0, v0, p1, p2, p3}, Landroid/renderscript/RenderScript;->rsnProgramBindConstants(IIII)V
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    .line 553
    monitor-exit p0

    return-void

    .line 551
    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nProgramBindSampler(III)V
    .registers 5
    .parameter "vpf"
    .parameter "slot"
    .parameter "s"

    .prologue
    .line 561
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 562
    iget v0, p0, Landroid/renderscript/RenderScript;->mContext:I

    invoke-virtual {p0, v0, p1, p2, p3}, Landroid/renderscript/RenderScript;->rsnProgramBindSampler(IIII)V
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    .line 563
    monitor-exit p0

    return-void

    .line 561
    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nProgramBindTexture(III)V
    .registers 5
    .parameter "vpf"
    .parameter "slot"
    .parameter "a"

    .prologue
    .line 556
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 557
    iget v0, p0, Landroid/renderscript/RenderScript;->mContext:I

    invoke-virtual {p0, v0, p1, p2, p3}, Landroid/renderscript/RenderScript;->rsnProgramBindTexture(IIII)V
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    .line 558
    monitor-exit p0

    return-void

    .line 556
    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nProgramFragmentCreate(Ljava/lang/String;[I)I
    .registers 4
    .parameter "shader"
    .parameter "params"

    .prologue
    .line 566
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 567
    iget v0, p0, Landroid/renderscript/RenderScript;->mContext:I

    invoke-virtual {p0, v0, p1, p2}, Landroid/renderscript/RenderScript;->rsnProgramFragmentCreate(ILjava/lang/String;[I)I
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_c

    move-result v0

    monitor-exit p0

    return v0

    .line 566
    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nProgramRasterCreate(ZZZ)I
    .registers 5
    .parameter "pointSmooth"
    .parameter "lineSmooth"
    .parameter "pointSprite"

    .prologue
    .line 535
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 536
    iget v0, p0, Landroid/renderscript/RenderScript;->mContext:I

    invoke-virtual {p0, v0, p1, p2, p3}, Landroid/renderscript/RenderScript;->rsnProgramRasterCreate(IZZZ)I
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_c

    move-result v0

    monitor-exit p0

    return v0

    .line 535
    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nProgramRasterSetCullMode(II)V
    .registers 4
    .parameter "pr"
    .parameter "mode"

    .prologue
    .line 545
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 546
    iget v0, p0, Landroid/renderscript/RenderScript;->mContext:I

    invoke-virtual {p0, v0, p1, p2}, Landroid/renderscript/RenderScript;->rsnProgramRasterSetCullMode(III)V
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    .line 547
    monitor-exit p0

    return-void

    .line 545
    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nProgramRasterSetLineWidth(IF)V
    .registers 4
    .parameter "pr"
    .parameter "v"

    .prologue
    .line 540
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 541
    iget v0, p0, Landroid/renderscript/RenderScript;->mContext:I

    invoke-virtual {p0, v0, p1, p2}, Landroid/renderscript/RenderScript;->rsnProgramRasterSetLineWidth(IIF)V
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    .line 542
    monitor-exit p0

    return-void

    .line 540
    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nProgramStoreBegin(II)V
    .registers 4
    .parameter "in"
    .parameter "out"

    .prologue
    .line 499
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 500
    iget v0, p0, Landroid/renderscript/RenderScript;->mContext:I

    invoke-virtual {p0, v0, p1, p2}, Landroid/renderscript/RenderScript;->rsnProgramStoreBegin(III)V
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    .line 501
    monitor-exit p0

    return-void

    .line 499
    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nProgramStoreBlendFunc(II)V
    .registers 4
    .parameter "src"
    .parameter "dst"

    .prologue
    .line 519
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 520
    iget v0, p0, Landroid/renderscript/RenderScript;->mContext:I

    invoke-virtual {p0, v0, p1, p2}, Landroid/renderscript/RenderScript;->rsnProgramStoreBlendFunc(III)V
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    .line 521
    monitor-exit p0

    return-void

    .line 519
    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nProgramStoreColorMask(ZZZZ)V
    .registers 11
    .parameter "r"
    .parameter "g"
    .parameter "b"
    .parameter "a"

    .prologue
    .line 514
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 515
    iget v1, p0, Landroid/renderscript/RenderScript;->mContext:I

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Landroid/renderscript/RenderScript;->rsnProgramStoreColorMask(IZZZZ)V
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_10

    .line 516
    monitor-exit p0

    return-void

    .line 514
    :catchall_10
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nProgramStoreCreate()I
    .registers 2

    .prologue
    .line 529
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 530
    iget v0, p0, Landroid/renderscript/RenderScript;->mContext:I

    invoke-virtual {p0, v0}, Landroid/renderscript/RenderScript;->rsnProgramStoreCreate(I)I
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_c

    move-result v0

    monitor-exit p0

    return v0

    .line 529
    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nProgramStoreDepthFunc(I)V
    .registers 3
    .parameter "func"

    .prologue
    .line 504
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 505
    iget v0, p0, Landroid/renderscript/RenderScript;->mContext:I

    invoke-virtual {p0, v0, p1}, Landroid/renderscript/RenderScript;->rsnProgramStoreDepthFunc(II)V
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    .line 506
    monitor-exit p0

    return-void

    .line 504
    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nProgramStoreDepthMask(Z)V
    .registers 3
    .parameter "enable"

    .prologue
    .line 509
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 510
    iget v0, p0, Landroid/renderscript/RenderScript;->mContext:I

    invoke-virtual {p0, v0, p1}, Landroid/renderscript/RenderScript;->rsnProgramStoreDepthMask(IZ)V
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    .line 511
    monitor-exit p0

    return-void

    .line 509
    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nProgramStoreDither(Z)V
    .registers 3
    .parameter "enable"

    .prologue
    .line 524
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 525
    iget v0, p0, Landroid/renderscript/RenderScript;->mContext:I

    invoke-virtual {p0, v0, p1}, Landroid/renderscript/RenderScript;->rsnProgramStoreDither(IZ)V
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    .line 526
    monitor-exit p0

    return-void

    .line 524
    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nProgramVertexCreate(Ljava/lang/String;[I)I
    .registers 4
    .parameter "shader"
    .parameter "params"

    .prologue
    .line 571
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 572
    iget v0, p0, Landroid/renderscript/RenderScript;->mContext:I

    invoke-virtual {p0, v0, p1, p2}, Landroid/renderscript/RenderScript;->rsnProgramVertexCreate(ILjava/lang/String;[I)I
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_c

    move-result v0

    monitor-exit p0

    return v0

    .line 571
    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nSamplerBegin()V
    .registers 2

    .prologue
    .line 478
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 479
    iget v0, p0, Landroid/renderscript/RenderScript;->mContext:I

    invoke-virtual {p0, v0}, Landroid/renderscript/RenderScript;->rsnSamplerBegin(I)V
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    .line 480
    monitor-exit p0

    return-void

    .line 478
    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nSamplerCreate()I
    .registers 2

    .prologue
    .line 493
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 494
    iget v0, p0, Landroid/renderscript/RenderScript;->mContext:I

    invoke-virtual {p0, v0}, Landroid/renderscript/RenderScript;->rsnSamplerCreate(I)I
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_c

    move-result v0

    monitor-exit p0

    return v0

    .line 493
    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nSamplerSet(II)V
    .registers 4
    .parameter "param"
    .parameter "value"

    .prologue
    .line 483
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 484
    iget v0, p0, Landroid/renderscript/RenderScript;->mContext:I

    invoke-virtual {p0, v0, p1, p2}, Landroid/renderscript/RenderScript;->rsnSamplerSet(III)V
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    .line 485
    monitor-exit p0

    return-void

    .line 483
    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nSamplerSet2(IF)V
    .registers 4
    .parameter "param"
    .parameter "value"

    .prologue
    .line 488
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 489
    iget v0, p0, Landroid/renderscript/RenderScript;->mContext:I

    invoke-virtual {p0, v0, p1, p2}, Landroid/renderscript/RenderScript;->rsnSamplerSet2(IIF)V
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    .line 490
    monitor-exit p0

    return-void

    .line 488
    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nScriptBindAllocation(III)V
    .registers 5
    .parameter "script"
    .parameter "alloc"
    .parameter "slot"

    .prologue
    .line 411
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 412
    iget v0, p0, Landroid/renderscript/RenderScript;->mContext:I

    invoke-virtual {p0, v0, p1, p2, p3}, Landroid/renderscript/RenderScript;->rsnScriptBindAllocation(IIII)V
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    .line 413
    monitor-exit p0

    return-void

    .line 411
    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nScriptCBegin()V
    .registers 2

    .prologue
    .line 462
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 463
    iget v0, p0, Landroid/renderscript/RenderScript;->mContext:I

    invoke-virtual {p0, v0}, Landroid/renderscript/RenderScript;->rsnScriptCBegin(I)V
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    .line 464
    monitor-exit p0

    return-void

    .line 462
    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nScriptCCreate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .registers 5
    .parameter "packageName"
    .parameter "resName"
    .parameter "cacheDir"

    .prologue
    .line 472
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 473
    iget v0, p0, Landroid/renderscript/RenderScript;->mContext:I

    invoke-virtual {p0, v0, p1, p2, p3}, Landroid/renderscript/RenderScript;->rsnScriptCCreate(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_c

    move-result v0

    monitor-exit p0

    return v0

    .line 472
    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nScriptCSetScript([BII)V
    .registers 5
    .parameter "script"
    .parameter "offset"
    .parameter "length"

    .prologue
    .line 467
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 468
    iget v0, p0, Landroid/renderscript/RenderScript;->mContext:I

    invoke-virtual {p0, v0, p1, p2, p3}, Landroid/renderscript/RenderScript;->rsnScriptCSetScript(I[BII)V
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    .line 469
    monitor-exit p0

    return-void

    .line 467
    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nScriptInvoke(II)V
    .registers 4
    .parameter "id"
    .parameter "slot"

    .prologue
    .line 421
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 422
    iget v0, p0, Landroid/renderscript/RenderScript;->mContext:I

    invoke-virtual {p0, v0, p1, p2}, Landroid/renderscript/RenderScript;->rsnScriptInvoke(III)V
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    .line 423
    monitor-exit p0

    return-void

    .line 421
    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nScriptInvokeV(II[B)V
    .registers 5
    .parameter "id"
    .parameter "slot"
    .parameter "params"

    .prologue
    .line 426
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 427
    iget v0, p0, Landroid/renderscript/RenderScript;->mContext:I

    invoke-virtual {p0, v0, p1, p2, p3}, Landroid/renderscript/RenderScript;->rsnScriptInvokeV(III[B)V
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    .line 428
    monitor-exit p0

    return-void

    .line 426
    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nScriptSetTimeZone(I[B)V
    .registers 4
    .parameter "script"
    .parameter "timeZone"

    .prologue
    .line 416
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 417
    iget v0, p0, Landroid/renderscript/RenderScript;->mContext:I

    invoke-virtual {p0, v0, p1, p2}, Landroid/renderscript/RenderScript;->rsnScriptSetTimeZone(II[B)V
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    .line 418
    monitor-exit p0

    return-void

    .line 416
    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nScriptSetVarD(IID)V
    .registers 11
    .parameter "id"
    .parameter "slot"
    .parameter "val"

    .prologue
    .line 446
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 447
    iget v1, p0, Landroid/renderscript/RenderScript;->mContext:I

    move-object v0, p0

    move v2, p1

    move v3, p2

    move-wide v4, p3

    invoke-virtual/range {v0 .. v5}, Landroid/renderscript/RenderScript;->rsnScriptSetVarD(IIID)V
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_f

    .line 448
    monitor-exit p0

    return-void

    .line 446
    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nScriptSetVarF(IIF)V
    .registers 5
    .parameter "id"
    .parameter "slot"
    .parameter "val"

    .prologue
    .line 441
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 442
    iget v0, p0, Landroid/renderscript/RenderScript;->mContext:I

    invoke-virtual {p0, v0, p1, p2, p3}, Landroid/renderscript/RenderScript;->rsnScriptSetVarF(IIIF)V
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    .line 443
    monitor-exit p0

    return-void

    .line 441
    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nScriptSetVarI(III)V
    .registers 5
    .parameter "id"
    .parameter "slot"
    .parameter "val"

    .prologue
    .line 431
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 432
    iget v0, p0, Landroid/renderscript/RenderScript;->mContext:I

    invoke-virtual {p0, v0, p1, p2, p3}, Landroid/renderscript/RenderScript;->rsnScriptSetVarI(IIII)V
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    .line 433
    monitor-exit p0

    return-void

    .line 431
    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nScriptSetVarJ(IIJ)V
    .registers 11
    .parameter "id"
    .parameter "slot"
    .parameter "val"

    .prologue
    .line 436
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 437
    iget v1, p0, Landroid/renderscript/RenderScript;->mContext:I

    move-object v0, p0

    move v2, p1

    move v3, p2

    move-wide v4, p3

    invoke-virtual/range {v0 .. v5}, Landroid/renderscript/RenderScript;->rsnScriptSetVarJ(IIIJ)V
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_f

    .line 438
    monitor-exit p0

    return-void

    .line 436
    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nScriptSetVarObj(III)V
    .registers 5
    .parameter "id"
    .parameter "slot"
    .parameter "val"

    .prologue
    .line 456
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 457
    iget v0, p0, Landroid/renderscript/RenderScript;->mContext:I

    invoke-virtual {p0, v0, p1, p2, p3}, Landroid/renderscript/RenderScript;->rsnScriptSetVarObj(IIII)V
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    .line 458
    monitor-exit p0

    return-void

    .line 456
    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nScriptSetVarV(II[B)V
    .registers 5
    .parameter "id"
    .parameter "slot"
    .parameter "val"

    .prologue
    .line 451
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 452
    iget v0, p0, Landroid/renderscript/RenderScript;->mContext:I

    invoke-virtual {p0, v0, p1, p2, p3}, Landroid/renderscript/RenderScript;->rsnScriptSetVarV(III[B)V
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    .line 453
    monitor-exit p0

    return-void

    .line 451
    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nTypeCreate(IIIIZZ)I
    .registers 15
    .parameter "eid"
    .parameter "x"
    .parameter "y"
    .parameter "z"
    .parameter "mips"
    .parameter "faces"

    .prologue
    .line 212
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 213
    iget v1, p0, Landroid/renderscript/RenderScript;->mContext:I

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    invoke-virtual/range {v0 .. v7}, Landroid/renderscript/RenderScript;->rsnTypeCreate(IIIIIZZ)I
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_13

    move-result v0

    monitor-exit p0

    return v0

    .line 212
    :catchall_13
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nTypeGetNativeData(I[I)V
    .registers 4
    .parameter "id"
    .parameter "typeData"

    .prologue
    .line 217
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 218
    iget v0, p0, Landroid/renderscript/RenderScript;->mContext:I

    invoke-virtual {p0, v0, p1, p2}, Landroid/renderscript/RenderScript;->rsnTypeGetNativeData(II[I)V
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    .line 219
    monitor-exit p0

    return-void

    .line 217
    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method native rsnAllocationCopyFromBitmap(IILandroid/graphics/Bitmap;)V
.end method

.method native rsnAllocationCopyToBitmap(IILandroid/graphics/Bitmap;)V
.end method

.method native rsnAllocationCreateBitmapRef(IILandroid/graphics/Bitmap;)I
.end method

.method native rsnAllocationCreateFromAssetStream(IIII)I
.end method

.method native rsnAllocationCreateFromBitmap(IIILandroid/graphics/Bitmap;I)I
.end method

.method native rsnAllocationCreateTyped(IIII)I
.end method

.method native rsnAllocationCubeCreateFromBitmap(IIILandroid/graphics/Bitmap;I)I
.end method

.method native rsnAllocationData1D(IIIII[BI)V
.end method

.method native rsnAllocationData1D(IIIII[FI)V
.end method

.method native rsnAllocationData1D(IIIII[II)V
.end method

.method native rsnAllocationData1D(IIIII[SI)V
.end method

.method native rsnAllocationData2D(IIIIIIII[BI)V
.end method

.method native rsnAllocationData2D(IIIIIIII[FI)V
.end method

.method native rsnAllocationData2D(IIIIIIII[II)V
.end method

.method native rsnAllocationData2D(IIIIIIII[SI)V
.end method

.method native rsnAllocationData2D(IIIIIILandroid/graphics/Bitmap;)V
.end method

.method native rsnAllocationElementData1D(IIIII[BI)V
.end method

.method native rsnAllocationGenerateMipmaps(II)V
.end method

.method native rsnAllocationGetType(II)I
.end method

.method native rsnAllocationRead(II[B)V
.end method

.method native rsnAllocationRead(II[F)V
.end method

.method native rsnAllocationRead(II[I)V
.end method

.method native rsnAllocationRead(II[S)V
.end method

.method native rsnAllocationResize1D(III)V
.end method

.method native rsnAllocationResize2D(IIII)V
.end method

.method native rsnAllocationSyncAll(III)V
.end method

.method native rsnAssignName(II[B)V
.end method

.method native rsnContextBindProgramFragment(II)V
.end method

.method native rsnContextBindProgramRaster(II)V
.end method

.method native rsnContextBindProgramStore(II)V
.end method

.method native rsnContextBindProgramVertex(II)V
.end method

.method native rsnContextBindRootScript(II)V
.end method

.method native rsnContextBindSampler(III)V
.end method

.method native rsnContextCreate(II)I
.end method

.method native rsnContextCreateGL(IIIIIIIIIIIIFI)I
.end method

.method native rsnContextDestroy(I)V
.end method

.method native rsnContextDump(II)V
.end method

.method native rsnContextFinish(I)V
.end method

.method native rsnContextPause(I)V
.end method

.method native rsnContextResume(I)V
.end method

.method native rsnContextSetPriority(II)V
.end method

.method native rsnContextSetSurface(IIILandroid/view/Surface;)V
.end method

.method native rsnElementCreate(IIIZI)I
.end method

.method native rsnElementCreate2(I[I[Ljava/lang/String;[I)I
.end method

.method native rsnElementGetNativeData(II[I)V
.end method

.method native rsnElementGetSubElements(II[I[Ljava/lang/String;)V
.end method

.method native rsnFileA3DCreateFromAsset(ILandroid/content/res/AssetManager;Ljava/lang/String;)I
.end method

.method native rsnFileA3DCreateFromAssetStream(II)I
.end method

.method native rsnFileA3DCreateFromFile(ILjava/lang/String;)I
.end method

.method native rsnFileA3DGetEntryByIndex(III)I
.end method

.method native rsnFileA3DGetIndexEntries(III[I[Ljava/lang/String;)V
.end method

.method native rsnFileA3DGetNumIndexEntries(II)I
.end method

.method native rsnFontCreateFromAsset(ILandroid/content/res/AssetManager;Ljava/lang/String;FI)I
.end method

.method native rsnFontCreateFromAssetStream(ILjava/lang/String;FII)I
.end method

.method native rsnFontCreateFromFile(ILjava/lang/String;FI)I
.end method

.method native rsnGetName(II)Ljava/lang/String;
.end method

.method native rsnMeshBindIndex(IIIII)V
.end method

.method native rsnMeshBindVertex(IIII)V
.end method

.method native rsnMeshCreate(III)I
.end method

.method native rsnMeshGetIndexCount(II)I
.end method

.method native rsnMeshGetIndices(II[I[II)V
.end method

.method native rsnMeshGetVertexBufferCount(II)I
.end method

.method native rsnMeshGetVertices(II[II)V
.end method

.method native rsnMeshInitVertexAttribs(II)V
.end method

.method native rsnObjDestroy(II)V
.end method

.method native rsnProgramBindConstants(IIII)V
.end method

.method native rsnProgramBindSampler(IIII)V
.end method

.method native rsnProgramBindTexture(IIII)V
.end method

.method native rsnProgramFragmentCreate(ILjava/lang/String;[I)I
.end method

.method native rsnProgramRasterCreate(IZZZ)I
.end method

.method native rsnProgramRasterSetCullMode(III)V
.end method

.method native rsnProgramRasterSetLineWidth(IIF)V
.end method

.method native rsnProgramStoreBegin(III)V
.end method

.method native rsnProgramStoreBlendFunc(III)V
.end method

.method native rsnProgramStoreColorMask(IZZZZ)V
.end method

.method native rsnProgramStoreCreate(I)I
.end method

.method native rsnProgramStoreDepthFunc(II)V
.end method

.method native rsnProgramStoreDepthMask(IZ)V
.end method

.method native rsnProgramStoreDither(IZ)V
.end method

.method native rsnProgramVertexCreate(ILjava/lang/String;[I)I
.end method

.method native rsnSamplerBegin(I)V
.end method

.method native rsnSamplerCreate(I)I
.end method

.method native rsnSamplerSet(III)V
.end method

.method native rsnSamplerSet2(IIF)V
.end method

.method native rsnScriptBindAllocation(IIII)V
.end method

.method native rsnScriptCBegin(I)V
.end method

.method native rsnScriptCCreate(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
.end method

.method native rsnScriptCSetScript(I[BII)V
.end method

.method native rsnScriptInvoke(III)V
.end method

.method native rsnScriptInvokeV(III[B)V
.end method

.method native rsnScriptSetTimeZone(II[B)V
.end method

.method native rsnScriptSetVarD(IIID)V
.end method

.method native rsnScriptSetVarF(IIIF)V
.end method

.method native rsnScriptSetVarI(IIII)V
.end method

.method native rsnScriptSetVarJ(IIIJ)V
.end method

.method native rsnScriptSetVarObj(IIII)V
.end method

.method native rsnScriptSetVarV(III[B)V
.end method

.method native rsnTypeCreate(IIIIIZZ)I
.end method

.method native rsnTypeGetNativeData(II[I)V
.end method

.method safeID(Landroid/renderscript/BaseObj;)I
    .registers 3
    .parameter "o"

    .prologue
    .line 924
    if-eqz p1, :cond_7

    .line 925
    invoke-virtual {p1}, Landroid/renderscript/BaseObj;->getID()I

    move-result v0

    .line 927
    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public setErrorHandler(Landroid/renderscript/RenderScript$RSErrorHandler;)V
    .registers 2
    .parameter "msg"

    .prologue
    .line 733
    iput-object p1, p0, Landroid/renderscript/RenderScript;->mErrorCallback:Landroid/renderscript/RenderScript$RSErrorHandler;

    .line 734
    return-void
.end method

.method public setMessageHandler(Landroid/renderscript/RenderScript$RSMessageHandler;)V
    .registers 2
    .parameter "msg"

    .prologue
    .line 704
    iput-object p1, p0, Landroid/renderscript/RenderScript;->mMessageCallback:Landroid/renderscript/RenderScript$RSMessageHandler;

    .line 705
    return-void
.end method

.method public setPriority(Landroid/renderscript/RenderScript$Priority;)V
    .registers 3
    .parameter "p"

    .prologue
    .line 769
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 770
    iget v0, p1, Landroid/renderscript/RenderScript$Priority;->mID:I

    invoke-virtual {p0, v0}, Landroid/renderscript/RenderScript;->nContextSetPriority(I)V

    .line 771
    return-void
.end method

.method validate()V
    .registers 3

    .prologue
    .line 757
    iget v0, p0, Landroid/renderscript/RenderScript;->mContext:I

    if-nez v0, :cond_c

    .line 758
    new-instance v0, Landroid/renderscript/RSInvalidStateException;

    const-string v1, "Calling RS with no Context active."

    invoke-direct {v0, v1}, Landroid/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 760
    :cond_c
    return-void
.end method
