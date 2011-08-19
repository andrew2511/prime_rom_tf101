.class public Lcom/splashtop/remote/JNILib;
.super Ljava/lang/Object;
.source "JNILib.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "IRISMain"


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    .line 104
    invoke-static {}, Lcom/splashtop/remote/JNILib;->getCPUInfo()Z

    move-result v0

    .line 107
    .local v0, bHaveNeon:Z
    if-eqz v0, :cond_0

    .line 108
    :try_start_0
    const-string v3, "avutil_neon"

    invoke-static {v3}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 109
    const-string v3, "avcodec_neon"

    invoke-static {v3}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 110
    const-string v3, "swscale_neon"

    invoke-static {v3}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 111
    const-string v3, "iris-jni_neon"

    invoke-static {v3}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 128
    :goto_0
    return-void

    .line 113
    :cond_0
    const-string v3, "avutil_vfp"

    invoke-static {v3}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 114
    const-string v3, "avcodec_vfp"

    invoke-static {v3}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 115
    const-string v3, "swscale_vfp"

    invoke-static {v3}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 116
    const-string v3, "iris-jni_vfp"

    invoke-static {v3}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 118
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 120
    .local v1, e:Ljava/lang/UnsatisfiedLinkError;
    :try_start_1
    const-string v3, "avutil"

    invoke-static {v3}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 121
    const-string v3, "avcodec"

    invoke-static {v3}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 122
    const-string v3, "swscale"

    invoke-static {v3}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 123
    const-string v3, "iris-jni"

    invoke-static {v3}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 124
    :catch_1
    move-exception v3

    move-object v2, v3

    .line 125
    .local v2, ex:Ljava/lang/UnsatisfiedLinkError;
    const-string v3, "IRISMain"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Couldn\'t load lib: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/UnsatisfiedLinkError;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getCPUInfo()Z
    .locals 13

    .prologue
    const/4 v12, -0x1

    .line 71
    const/4 v7, 0x0

    .line 73
    .local v7, status:Z
    const/4 v10, 0x2

    :try_start_0
    new-array v0, v10, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string v11, "/system/bin/cat"

    aput-object v11, v0, v10

    const/4 v10, 0x1

    const-string v11, "/proc/cpuinfo"

    aput-object v11, v0, v10

    .line 74
    .local v0, args:[Ljava/lang/String;
    new-instance v2, Ljava/lang/ProcessBuilder;

    invoke-direct {v2, v0}, Ljava/lang/ProcessBuilder;-><init>([Ljava/lang/String;)V

    .line 75
    .local v2, cmd:Ljava/lang/ProcessBuilder;
    invoke-virtual {v2}, Ljava/lang/ProcessBuilder;->start()Ljava/lang/Process;

    move-result-object v5

    .line 77
    .local v5, process:Ljava/lang/Process;
    new-instance v6, Ljava/io/InputStreamReader;

    invoke-virtual {v5}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v10

    invoke-direct {v6, v10}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 78
    .local v6, reader:Ljava/io/Reader;
    new-instance v1, Ljava/io/BufferedReader;

    invoke-direct {v1, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 83
    .local v1, buffReader:Ljava/io/BufferedReader;
    :cond_0
    :goto_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    .local v4, line:Ljava/lang/String;
    if-eqz v4, :cond_2

    .line 84
    const-string v10, ":"

    invoke-virtual {v4, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    .line 85
    .local v9, tokenIndex:I
    if-eq v9, v12, :cond_0

    .line 86
    const/4 v10, 0x0

    invoke-virtual {v4, v10, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 87
    .local v8, token:Ljava/lang/String;
    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    const-string v11, "Features"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 88
    add-int/lit8 v10, v9, 0x1

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v11

    invoke-virtual {v4, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 89
    const-string v10, "neon"

    invoke-virtual {v8, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v10

    if-eq v10, v12, :cond_1

    .line 90
    const/4 v7, 0x1

    goto :goto_0

    .line 91
    :cond_1
    const-string v10, "vfp"

    invoke-virtual {v8, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v10

    if-eq v10, v12, :cond_0

    .line 92
    const/4 v7, 0x0

    goto :goto_0

    .line 97
    .end local v0           #args:[Ljava/lang/String;
    .end local v1           #buffReader:Ljava/io/BufferedReader;
    .end local v2           #cmd:Ljava/lang/ProcessBuilder;
    .end local v4           #line:Ljava/lang/String;
    .end local v5           #process:Ljava/lang/Process;
    .end local v6           #reader:Ljava/io/Reader;
    .end local v8           #token:Ljava/lang/String;
    .end local v9           #tokenIndex:I
    :catch_0
    move-exception v10

    move-object v3, v10

    .line 98
    .local v3, ex:Ljava/lang/Exception;
    const-string v10, "IRISMain"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "JNILib::getCPUInfo "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    .end local v3           #ex:Ljava/lang/Exception;
    :cond_2
    return v7
.end method

.method public static native nativeChangeScreenMode(I)V
.end method

.method public static native nativeCloseAudio()V
.end method

.method public static native nativeCloseClient(Z)V
.end method

.method public static native nativeConnectToServer(Ljava/lang/String;[BIII)I
.end method

.method public static native nativeDrawBitmap(Landroid/graphics/Bitmap;)I
.end method

.method public static native nativeDrawShortArray([SJ)I
.end method

.method public static native nativeEventLoop(III)V
.end method

.method public static native nativeGLDrawFrame()Z
.end method

.method public static native nativeGetAudioBuffer([SJ)Z
.end method

.method public static native nativeGetServerInfo()Lcom/splashtop/remote/bean/ServerInfoBean;
.end method

.method public static native nativeGetServerItem()Lcom/splashtop/remote/bean/MacBean;
.end method

.method public static native nativeHandshakeServer([Lcom/splashtop/remote/bean/MacBean;I)[Lcom/splashtop/remote/bean/MacBean;
.end method

.method public static native nativeInitAudio()Lcom/splashtop/remote/bean/AudioFormatBean;
.end method

.method public static native nativeInitClient(II)V
.end method

.method public static native nativeInitVideo(II)V
.end method

.method public static native nativeOnPan(FF)V
.end method

.method public static native nativeOnZoom(FFF)V
.end method

.method public static native nativeProbeServer(JI)V
.end method

.method public static native nativeSendKeyboardEvent(II)V
.end method

.method public static native nativeSetRealVideoSize(IIII)V
.end method

.method public static native nativeSetRenderType(I)V
.end method

.method public static native nativeStartClient()V
.end method

.method public static native nativeWaitClient()I
.end method
