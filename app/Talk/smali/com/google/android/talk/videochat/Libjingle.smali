.class public Lcom/google/android/talk/videochat/Libjingle;
.super Ljava/lang/Object;
.source "Libjingle.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mInitialized:Z

.field private mNativeContext:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 52
    const-string v1, "talk_jni"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 53
    invoke-static {}, Lcom/google/android/talk/videochat/Libjingle;->nativeInit()V

    .line 63
    invoke-static {}, Lcom/google/android/talk/TalkApp;->refreshTalkLogLevel()I

    move-result v0

    .line 64
    .local v0, logLevelForTalk:I
    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 65
    const/4 v0, 0x5

    .line 67
    :cond_0
    invoke-static {v0}, Lcom/google/android/talk/videochat/Libjingle;->nativeSetLoggingLevel(I)V

    .line 68
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 0
    .parameter "context"
    .parameter "handler"

    .prologue
    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    iput-object p1, p0, Lcom/google/android/talk/videochat/Libjingle;->mContext:Landroid/content/Context;

    .line 99
    iput-object p2, p0, Lcom/google/android/talk/videochat/Libjingle;->mHandler:Landroid/os/Handler;

    .line 100
    return-void
.end method

.method private static dispatchNativeEvent(Ljava/lang/Object;IIILjava/lang/Object;Ljava/lang/Object;)V
    .locals 4
    .parameter "object"
    .parameter "what"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "obj1"
    .parameter "obj2"

    .prologue
    .line 372
    check-cast p0, Ljava/lang/ref/WeakReference;

    .end local p0
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/talk/videochat/Libjingle;

    .line 378
    .local v1, instance:Lcom/google/android/talk/videochat/Libjingle;
    if-eqz v1, :cond_0

    iget v3, v1, Lcom/google/android/talk/videochat/Libjingle;->mNativeContext:I

    if-eqz v3, :cond_0

    .line 380
    iget-object v3, v1, Lcom/google/android/talk/videochat/Libjingle;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, p1, p2, p3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    .line 381
    .local v2, msg:Landroid/os/Message;
    new-instance v0, Landroid/os/Bundle;

    const/4 v3, 0x2

    invoke-direct {v0, v3}, Landroid/os/Bundle;-><init>(I)V

    .line 382
    .local v0, b:Landroid/os/Bundle;
    const-string v3, "str1"

    check-cast p4, Ljava/lang/String;

    .end local p4
    invoke-virtual {v0, v3, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 383
    const-string v3, "str2"

    check-cast p5, Ljava/lang/String;

    .end local p5
    invoke-virtual {v0, v3, p5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 384
    invoke-virtual {v2, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 387
    iget-object v3, v1, Lcom/google/android/talk/videochat/Libjingle;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 389
    .end local v0           #b:Landroid/os/Bundle;
    .end local v2           #msg:Landroid/os/Message;
    :cond_0
    return-void
.end method

.method private getLibjingleLogLevel(Ljava/lang/String;)I
    .locals 4
    .parameter "tag"

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x3

    const/4 v1, 0x2

    .line 108
    invoke-static {p1, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 109
    const/4 v0, 0x1

    .line 117
    :goto_0
    return v0

    .line 111
    :cond_0
    invoke-static {p1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    .line 112
    goto :goto_0

    .line 114
    :cond_1
    invoke-static {p1, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v2

    .line 115
    goto :goto_0

    :cond_2
    move v0, v3

    .line 117
    goto :goto_0
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 392
    const-string v0, "Talk:Libjingle"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    return-void
.end method

.method private final native nativeAcceptCall(Ljava/lang/String;)V
.end method

.method private final native nativeCall(Ljava/lang/String;Z)V
.end method

.method private final native nativeDeclineCall(Ljava/lang/String;)V
.end method

.method private final native nativeEndCall(Ljava/lang/String;)V
.end method

.method private final native nativeFinalize()V
.end method

.method private final native nativeGetImageStabilizationLevel()I
.end method

.method private static native nativeInit()V
.end method

.method private final native nativeInitializeRenderer()V
.end method

.method private final native nativeIsSecure(Ljava/lang/String;)Z
.end method

.method private final native nativeIsVideo(Ljava/lang/String;)Z
.end method

.method private final native nativePrepareEngine(Ljava/lang/String;)V
.end method

.method private final native nativeProcessSessionStanza(Ljava/lang/String;)V
.end method

.method private final native nativeProcessSessionStanzaResponse(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method private final native nativeRelease()V
.end method

.method private final native nativeReleaseEngine()V
.end method

.method private final native nativeRendererRenderFrame(Lcom/google/android/talk/videochat/GlVideoView$RendererRenderFrameInputData;Lcom/google/android/talk/videochat/GlVideoView$RendererRenderFrameOutputData;)V
.end method

.method private final native nativeRendererSurfaceChanged(Lcom/google/android/talk/videochat/GlVideoView$RendererSetupInputData;Lcom/google/android/talk/videochat/GlVideoView$RendererSetupOutputData;)Z
.end method

.method private final native nativeSetImageStabilizationLevel(I)V
.end method

.method private final native nativeSetJingleInfoStanza(Ljava/lang/String;)V
.end method

.method private static final native nativeSetLoggingLevel(I)V
.end method

.method private final native nativeSetSelfViewFrameParameters(ZIII)V
.end method

.method private final native nativeSetup(Ljava/lang/Object;Ljava/lang/Object;II)V
.end method

.method private final native nativeUpdateRemoteJidForSession(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method private final native nativeUseFakeFrames(III)V
.end method


# virtual methods
.method public acceptCall(Ljava/lang/String;)V
    .locals 0
    .parameter "remoteJid"

    .prologue
    .line 222
    invoke-direct {p0, p1}, Lcom/google/android/talk/videochat/Libjingle;->nativeAcceptCall(Ljava/lang/String;)V

    .line 223
    return-void
.end method

.method public declineCall(Ljava/lang/String;)V
    .locals 0
    .parameter "remoteJid"

    .prologue
    .line 226
    invoke-direct {p0, p1}, Lcom/google/android/talk/videochat/Libjingle;->nativeDeclineCall(Ljava/lang/String;)V

    .line 227
    return-void
.end method

.method protected finalize()V
    .locals 0

    .prologue
    .line 169
    invoke-direct {p0}, Lcom/google/android/talk/videochat/Libjingle;->nativeFinalize()V

    .line 170
    return-void
.end method

.method public init()V
    .locals 4

    .prologue
    .line 121
    iget-boolean v2, p0, Lcom/google/android/talk/videochat/Libjingle;->mInitialized:Z

    if-eqz v2, :cond_0

    .line 122
    const-string v2, "init: already initialized"

    invoke-direct {p0, v2}, Lcom/google/android/talk/videochat/Libjingle;->log(Ljava/lang/String;)V

    .line 136
    :goto_0
    return-void

    .line 126
    :cond_0
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/google/android/talk/videochat/Libjingle;->mInitialized:Z

    .line 130
    const-string v2, "init: call nativeSetup"

    invoke-direct {p0, v2}, Lcom/google/android/talk/videochat/Libjingle;->log(Ljava/lang/String;)V

    .line 132
    const-string v2, "Talk.videoLogging"

    invoke-direct {p0, v2}, Lcom/google/android/talk/videochat/Libjingle;->getLibjingleLogLevel(Ljava/lang/String;)I

    move-result v1

    .line 133
    .local v1, videoLogging:I
    const-string v2, "Talk.audioLogging"

    invoke-direct {p0, v2}, Lcom/google/android/talk/videochat/Libjingle;->getLibjingleLogLevel(Ljava/lang/String;)I

    move-result v0

    .line 135
    .local v0, audioLogging:I
    iget-object v2, p0, Lcom/google/android/talk/videochat/Libjingle;->mContext:Landroid/content/Context;

    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-direct {p0, v2, v3, v1, v0}, Lcom/google/android/talk/videochat/Libjingle;->nativeSetup(Ljava/lang/Object;Ljava/lang/Object;II)V

    goto :goto_0
.end method

.method public initializeRenderer()V
    .locals 2

    .prologue
    .line 262
    const-string v0, "Talk:Libjingle"

    const-string v1, "initializeRenderer"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    invoke-direct {p0}, Lcom/google/android/talk/videochat/Libjingle;->nativeInitializeRenderer()V

    .line 264
    return-void
.end method

.method public initiateCall(Ljava/lang/String;Z)V
    .locals 0
    .parameter "remoteJid"
    .parameter "audioOnly"

    .prologue
    .line 199
    invoke-direct {p0, p1, p2}, Lcom/google/android/talk/videochat/Libjingle;->nativeCall(Ljava/lang/String;Z)V

    .line 200
    return-void
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 152
    iget-boolean v0, p0, Lcom/google/android/talk/videochat/Libjingle;->mInitialized:Z

    return v0
.end method

.method public isSecure(Ljava/lang/String;)Z
    .locals 1
    .parameter "remoteJid"

    .prologue
    .line 163
    invoke-direct {p0, p1}, Lcom/google/android/talk/videochat/Libjingle;->nativeIsSecure(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isVideo(Ljava/lang/String;)Z
    .locals 1
    .parameter "remoteJid"

    .prologue
    .line 156
    invoke-direct {p0, p1}, Lcom/google/android/talk/videochat/Libjingle;->nativeIsVideo(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public prepareEngine(Ljava/lang/String;)V
    .locals 1
    .parameter "localJid"

    .prologue
    .line 179
    const-string v0, "prepare engine"

    invoke-direct {p0, v0}, Lcom/google/android/talk/videochat/Libjingle;->log(Ljava/lang/String;)V

    .line 180
    invoke-direct {p0, p1}, Lcom/google/android/talk/videochat/Libjingle;->nativePrepareEngine(Ljava/lang/String;)V

    .line 181
    return-void
.end method

.method public processSessionStanza(Ljava/lang/String;)V
    .locals 0
    .parameter "stanza"

    .prologue
    .line 239
    invoke-direct {p0, p1}, Lcom/google/android/talk/videochat/Libjingle;->nativeProcessSessionStanza(Ljava/lang/String;)V

    .line 240
    return-void
.end method

.method public processSessionStanzaResponse(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "original"
    .parameter "response"

    .prologue
    .line 243
    invoke-direct {p0, p1, p2}, Lcom/google/android/talk/videochat/Libjingle;->nativeProcessSessionStanzaResponse(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    return-void
.end method

.method public release()V
    .locals 1

    .prologue
    .line 140
    iget-boolean v0, p0, Lcom/google/android/talk/videochat/Libjingle;->mInitialized:Z

    if-nez v0, :cond_0

    .line 141
    const-string v0, "release: already released"

    invoke-direct {p0, v0}, Lcom/google/android/talk/videochat/Libjingle;->log(Ljava/lang/String;)V

    .line 149
    :goto_0
    return-void

    .line 145
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/talk/videochat/Libjingle;->mInitialized:Z

    .line 147
    const-string v0, "Release: call nativeRelease"

    invoke-direct {p0, v0}, Lcom/google/android/talk/videochat/Libjingle;->log(Ljava/lang/String;)V

    .line 148
    invoke-direct {p0}, Lcom/google/android/talk/videochat/Libjingle;->nativeRelease()V

    goto :goto_0
.end method

.method public releaseEngine()V
    .locals 1

    .prologue
    .line 187
    const-string v0, "release engine"

    invoke-direct {p0, v0}, Lcom/google/android/talk/videochat/Libjingle;->log(Ljava/lang/String;)V

    .line 188
    invoke-direct {p0}, Lcom/google/android/talk/videochat/Libjingle;->nativeReleaseEngine()V

    .line 189
    return-void
.end method

.method public rendererRenderFrame(Lcom/google/android/talk/videochat/GlVideoView$RendererRenderFrameInputData;Lcom/google/android/talk/videochat/GlVideoView$RendererRenderFrameOutputData;)V
    .locals 0
    .parameter "inputParams"
    .parameter "outputParams"

    .prologue
    .line 258
    invoke-direct {p0, p1, p2}, Lcom/google/android/talk/videochat/Libjingle;->nativeRendererRenderFrame(Lcom/google/android/talk/videochat/GlVideoView$RendererRenderFrameInputData;Lcom/google/android/talk/videochat/GlVideoView$RendererRenderFrameOutputData;)V

    .line 259
    return-void
.end method

.method public rendererSurfaceChanged(Lcom/google/android/talk/videochat/GlVideoView$RendererSetupInputData;Lcom/google/android/talk/videochat/GlVideoView$RendererSetupOutputData;)Z
    .locals 3
    .parameter "inputData"
    .parameter "outputData"

    .prologue
    .line 248
    const-string v0, "Talk:Libjingle"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "rendererSurfaceChanged "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/google/android/talk/videochat/GlVideoView$RendererSetupInputData;->width:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/google/android/talk/videochat/GlVideoView$RendererSetupInputData;->height:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    invoke-direct {p0, p1, p2}, Lcom/google/android/talk/videochat/Libjingle;->nativeRendererSurfaceChanged(Lcom/google/android/talk/videochat/GlVideoView$RendererSetupInputData;Lcom/google/android/talk/videochat/GlVideoView$RendererSetupOutputData;)Z

    move-result v0

    return v0
.end method

.method public setImageStabilizationLevel(I)V
    .locals 0
    .parameter "level"

    .prologue
    .line 276
    invoke-direct {p0, p1}, Lcom/google/android/talk/videochat/Libjingle;->nativeSetImageStabilizationLevel(I)V

    .line 277
    return-void
.end method

.method public setJingleInfoStanza(Ljava/lang/String;)V
    .locals 2
    .parameter "jingleInfoStanza"

    .prologue
    .line 267
    const-string v0, "Talk:Libjingle"

    const-string v1, "setJingleInfoStanza"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    invoke-direct {p0, p1}, Lcom/google/android/talk/videochat/Libjingle;->nativeSetJingleInfoStanza(Ljava/lang/String;)V

    .line 269
    return-void
.end method

.method public setSelfViewFrameParameters(ZIII)V
    .locals 0
    .parameter "flip"
    .parameter "width"
    .parameter "height"
    .parameter "rotation"

    .prologue
    .line 253
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/talk/videochat/Libjingle;->nativeSetSelfViewFrameParameters(ZIII)V

    .line 254
    return-void
.end method

.method public terminateCall(Ljava/lang/String;)V
    .locals 0
    .parameter "jid"

    .prologue
    .line 235
    invoke-direct {p0, p1}, Lcom/google/android/talk/videochat/Libjingle;->nativeEndCall(Ljava/lang/String;)V

    .line 236
    return-void
.end method

.method public updateRemoteJidForSession(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "remoteJid"
    .parameter "sessionid"

    .prologue
    .line 218
    invoke-direct {p0, p1, p2}, Lcom/google/android/talk/videochat/Libjingle;->nativeUpdateRemoteJidForSession(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    return-void
.end method

.method public useFakeFrames(III)V
    .locals 0
    .parameter "stream"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 272
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/talk/videochat/Libjingle;->nativeUseFakeFrames(III)V

    .line 273
    return-void
.end method
