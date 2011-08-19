.class public Lcom/splashtop/remote/DesktopGLView;
.super Landroid/opengl/GLSurfaceView;
.source "DesktopGLView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/splashtop/remote/DesktopGLView$GLRenderer;,
        Lcom/splashtop/remote/DesktopGLView$ContextFactory;
    }
.end annotation


# static fields
.field public static final DEBUG:Z = false

.field public static final TAG:Ljava/lang/String; = "IRISView"


# instance fields
.field private bHotkeyPressed:Z

.field private hotkeyListener:Lcom/splashtop/remote/softkeyboard/Softkeyboard$HotkeyCallback;

.field private mAudioRunner:Lcom/splashtop/remote/AudioRunner;

.field private mFrameCount:I

.field private mIgnoreNativeClose:Z

.field private mRenderer:Landroid/opengl/GLSurfaceView$Renderer;

.field private mVideoHeight:I

.field private mVideoWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;II)V
    .locals 9
    .parameter "context"
    .parameter "width"
    .parameter "height"

    .prologue
    const/4 v8, 0x0

    .line 52
    invoke-direct {p0, p1}, Landroid/opengl/GLSurfaceView;-><init>(Landroid/content/Context;)V

    .line 45
    iput-boolean v8, p0, Lcom/splashtop/remote/DesktopGLView;->bHotkeyPressed:Z

    .line 46
    iput-boolean v8, p0, Lcom/splashtop/remote/DesktopGLView;->mIgnoreNativeClose:Z

    .line 53
    iput p2, p0, Lcom/splashtop/remote/DesktopGLView;->mVideoWidth:I

    .line 54
    iput p3, p0, Lcom/splashtop/remote/DesktopGLView;->mVideoHeight:I

    .line 55
    new-instance v0, Lcom/splashtop/remote/DesktopGLView$GLRenderer;

    invoke-direct {v0, p0}, Lcom/splashtop/remote/DesktopGLView$GLRenderer;-><init>(Lcom/splashtop/remote/DesktopGLView;)V

    iput-object v0, p0, Lcom/splashtop/remote/DesktopGLView;->mRenderer:Landroid/opengl/GLSurfaceView$Renderer;

    .line 56
    new-instance v0, Lcom/splashtop/remote/AudioRunner;

    invoke-direct {v0}, Lcom/splashtop/remote/AudioRunner;-><init>()V

    iput-object v0, p0, Lcom/splashtop/remote/DesktopGLView;->mAudioRunner:Lcom/splashtop/remote/AudioRunner;

    .line 57
    iput v8, p0, Lcom/splashtop/remote/DesktopGLView;->mFrameCount:I

    .line 58
    new-instance v0, Lcom/splashtop/remote/DesktopGLView$ContextFactory;

    const/4 v8, 0x0

    invoke-direct {v0, v8}, Lcom/splashtop/remote/DesktopGLView$ContextFactory;-><init>(Lcom/splashtop/remote/DesktopGLView$1;)V

    invoke-virtual {p0, v0}, Lcom/splashtop/remote/DesktopGLView;->setEGLContextFactory(Landroid/opengl/GLSurfaceView$EGLContextFactory;)V

    .line 60
    const/4 v7, 0x0

    .line 61
    .local v7, translucent:Z
    const/4 v1, 0x5

    .local v1, r:I
    const/4 v2, 0x6

    .local v2, g:I
    const/4 v3, 0x5

    .local v3, b:I
    const/4 v4, 0x0

    .line 62
    .local v4, alpha:I
    const/4 v5, 0x0

    .line 63
    .local v5, depth:I
    const/4 v6, 0x0

    .line 64
    .local v6, stencil:I
    if-eqz v7, :cond_0

    .line 65
    const/16 v1, 0x8

    const/16 v2, 0x8

    const/16 v3, 0x8

    const/16 v4, 0x8

    .line 67
    :cond_0
    new-instance v0, Lcom/splashtop/remote/GLConfigChooser;

    invoke-direct/range {v0 .. v6}, Lcom/splashtop/remote/GLConfigChooser;-><init>(IIIIII)V

    invoke-virtual {p0, v0}, Lcom/splashtop/remote/DesktopGLView;->setEGLConfigChooser(Landroid/opengl/GLSurfaceView$EGLConfigChooser;)V

    .line 70
    iget-object v0, p0, Lcom/splashtop/remote/DesktopGLView;->mRenderer:Landroid/opengl/GLSurfaceView$Renderer;

    invoke-virtual {p0, v0}, Lcom/splashtop/remote/DesktopGLView;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    .line 71
    return-void
.end method

.method static synthetic access$100(Lcom/splashtop/remote/DesktopGLView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget v0, p0, Lcom/splashtop/remote/DesktopGLView;->mVideoWidth:I

    return v0
.end method

.method static synthetic access$200(Lcom/splashtop/remote/DesktopGLView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget v0, p0, Lcom/splashtop/remote/DesktopGLView;->mVideoHeight:I

    return v0
.end method

.method static synthetic access$308(Lcom/splashtop/remote/DesktopGLView;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 33
    iget v0, p0, Lcom/splashtop/remote/DesktopGLView;->mFrameCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/splashtop/remote/DesktopGLView;->mFrameCount:I

    return v0
.end method

.method static synthetic access$400(Lcom/splashtop/remote/DesktopGLView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-boolean v0, p0, Lcom/splashtop/remote/DesktopGLView;->bHotkeyPressed:Z

    return v0
.end method

.method static synthetic access$500(Lcom/splashtop/remote/DesktopGLView;)Lcom/splashtop/remote/softkeyboard/Softkeyboard$HotkeyCallback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/splashtop/remote/DesktopGLView;->hotkeyListener:Lcom/splashtop/remote/softkeyboard/Softkeyboard$HotkeyCallback;

    return-object v0
.end method


# virtual methods
.method public getFrameCount()I
    .locals 1

    .prologue
    .line 157
    iget v0, p0, Lcom/splashtop/remote/DesktopGLView;->mFrameCount:I

    return v0
.end method

.method public isbHotkeyPressed()Z
    .locals 1

    .prologue
    .line 325
    iget-boolean v0, p0, Lcom/splashtop/remote/DesktopGLView;->bHotkeyPressed:Z

    return v0
.end method

.method public onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .locals 3
    .parameter "outAttrs"

    .prologue
    const/4 v2, 0x1

    .line 246
    iput v2, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    .line 247
    const/high16 v1, 0x1000

    iput v1, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    .line 251
    new-instance v0, Lcom/splashtop/remote/DesktopGLView$1;

    invoke-direct {v0, p0, p0, v2}, Lcom/splashtop/remote/DesktopGLView$1;-><init>(Lcom/splashtop/remote/DesktopGLView;Landroid/view/View;Z)V

    .line 308
    .local v0, ic:Landroid/view/inputmethod/InputConnection;
    return-object v0
.end method

.method public onKeyPreIme(ILandroid/view/KeyEvent;)Z
    .locals 6
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 314
    const/4 v2, 0x4

    if-ne p1, v2, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-ne v2, v5, :cond_0

    iget-object v2, p0, Lcom/splashtop/remote/DesktopGLView;->hotkeyListener:Lcom/splashtop/remote/softkeyboard/Softkeyboard$HotkeyCallback;

    invoke-interface {v2}, Lcom/splashtop/remote/softkeyboard/Softkeyboard$HotkeyCallback;->isHotkeyShowing()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 315
    invoke-virtual {p0}, Lcom/splashtop/remote/DesktopGLView;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "input_method"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 316
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {p0}, Lcom/splashtop/remote/DesktopGLView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v0, v2, v4}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 317
    new-instance v1, Landroid/content/Intent;

    const-string v2, "HIDE_HOTKEY"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 318
    .local v1, intent:Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/splashtop/remote/DesktopGLView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    move v2, v5

    .line 321
    .end local v0           #imm:Landroid/view/inputmethod/InputMethodManager;
    .end local v1           #intent:Landroid/content/Intent;
    :goto_0
    return v2

    :cond_0
    move v2, v4

    goto :goto_0
.end method

.method public resetFrameCount()V
    .locals 1

    .prologue
    .line 161
    const/4 v0, 0x0

    iput v0, p0, Lcom/splashtop/remote/DesktopGLView;->mFrameCount:I

    .line 162
    return-void
.end method

.method public setIgnoreNativeClose(Z)V
    .locals 0
    .parameter "ignore"

    .prologue
    .line 165
    iput-boolean p1, p0, Lcom/splashtop/remote/DesktopGLView;->mIgnoreNativeClose:Z

    .line 166
    return-void
.end method

.method public setOnKeyDownListener(Lcom/splashtop/remote/softkeyboard/Softkeyboard$HotkeyCallback;)V
    .locals 0
    .parameter "hotkeyListener"

    .prologue
    .line 333
    iput-object p1, p0, Lcom/splashtop/remote/DesktopGLView;->hotkeyListener:Lcom/splashtop/remote/softkeyboard/Softkeyboard$HotkeyCallback;

    .line 334
    return-void
.end method

.method public setbHotkeyPressed(Z)V
    .locals 0
    .parameter "bHotkeyPressed"

    .prologue
    .line 329
    iput-boolean p1, p0, Lcom/splashtop/remote/DesktopGLView;->bHotkeyPressed:Z

    .line 330
    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0
    .parameter "holder"
    .parameter "format"
    .parameter "w"
    .parameter "h"

    .prologue
    .line 112
    invoke-static {}, Lcom/splashtop/remote/JNILib;->nativeStartClient()V

    .line 113
    invoke-super {p0, p1, p2, p3, p4}, Landroid/opengl/GLSurfaceView;->surfaceChanged(Landroid/view/SurfaceHolder;III)V

    .line 115
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 2
    .parameter "holder"

    .prologue
    .line 103
    iget v0, p0, Lcom/splashtop/remote/DesktopGLView;->mVideoWidth:I

    iget v1, p0, Lcom/splashtop/remote/DesktopGLView;->mVideoHeight:I

    invoke-static {v0, v1}, Lcom/splashtop/remote/JNILib;->nativeInitClient(II)V

    .line 104
    iget-object v0, p0, Lcom/splashtop/remote/DesktopGLView;->mAudioRunner:Lcom/splashtop/remote/AudioRunner;

    invoke-virtual {v0}, Lcom/splashtop/remote/AudioRunner;->start()V

    .line 105
    invoke-super {p0, p1}, Landroid/opengl/GLSurfaceView;->surfaceCreated(Landroid/view/SurfaceHolder;)V

    .line 107
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 1
    .parameter "holder"

    .prologue
    .line 120
    iget-boolean v0, p0, Lcom/splashtop/remote/DesktopGLView;->mIgnoreNativeClose:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/splashtop/remote/JNILib;->nativeCloseClient(Z)V

    .line 121
    :cond_0
    iget-object v0, p0, Lcom/splashtop/remote/DesktopGLView;->mAudioRunner:Lcom/splashtop/remote/AudioRunner;

    invoke-virtual {v0}, Lcom/splashtop/remote/AudioRunner;->close()V

    .line 122
    invoke-super {p0, p1}, Landroid/opengl/GLSurfaceView;->surfaceDestroyed(Landroid/view/SurfaceHolder;)V

    .line 124
    return-void
.end method
