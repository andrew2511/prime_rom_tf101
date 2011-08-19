.class public Lcom/google/android/music/albumwall/AlbumWallView;
.super Lcom/google/android/opengl/glview/GLSurfaceView;
.source "AlbumWallView.java"

# interfaces
.implements Landroid/view/GestureDetector$OnGestureListener;
.implements Landroid/view/ScaleGestureDetector$OnScaleGestureListener;
.implements Lcom/google/android/music/albumwall/AlbumWallReplies;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/music/albumwall/AlbumWallView$ViewState;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "AlbumWallView"


# instance fields
.field private mCallbackHelper:Lcom/google/android/music/albumwall/AlbumWallCallbackHelper;

.field private mCurrentScaleTouchEvent:Landroid/view/MotionEvent;

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mRenderer:Lcom/google/android/music/albumwall/AlbumWallRenderer;

.field private mScaleGestureDetector:Landroid/view/ScaleGestureDetector;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 3
    .parameter "context"
    .parameter "surfacePixelFormat"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 103
    invoke-direct {p0, p1}, Lcom/google/android/opengl/glview/GLSurfaceView;-><init>(Landroid/content/Context;)V

    .line 104
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/google/android/music/albumwall/AlbumWallView;->setEGLContextClientVersion(I)V

    .line 105
    if-nez p2, :cond_0

    .line 106
    invoke-virtual {p0, v1}, Lcom/google/android/music/albumwall/AlbumWallView;->setEGLConfigChooser(Z)V

    .line 111
    :goto_0
    invoke-virtual {p0, v2}, Lcom/google/android/music/albumwall/AlbumWallView;->setPreserveEGLContextOnPause(Z)V

    .line 113
    new-instance v0, Landroid/view/GestureDetector;

    invoke-direct {v0, p1, p0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/google/android/music/albumwall/AlbumWallView;->mGestureDetector:Landroid/view/GestureDetector;

    .line 114
    iget-object v0, p0, Lcom/google/android/music/albumwall/AlbumWallView;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, v2}, Landroid/view/GestureDetector;->setIsLongpressEnabled(Z)V

    .line 115
    new-instance v0, Landroid/view/ScaleGestureDetector;

    invoke-direct {v0, p1, p0}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object v0, p0, Lcom/google/android/music/albumwall/AlbumWallView;->mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    .line 116
    return-void

    .line 108
    :cond_0
    new-instance v0, Lcom/google/android/opengl/carousel/PixelFormatConfigChooser;

    invoke-direct {v0, p2, v1, v1}, Lcom/google/android/opengl/carousel/PixelFormatConfigChooser;-><init>(III)V

    invoke-virtual {p0, v0}, Lcom/google/android/music/albumwall/AlbumWallView;->setEGLConfigChooser(Lcom/google/android/opengl/glview/GLSurfaceView$EGLConfigChooser;)V

    .line 109
    invoke-virtual {p0}, Lcom/google/android/music/albumwall/AlbumWallView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-interface {v0, p2}, Landroid/view/SurfaceHolder;->setFormat(I)V

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/google/android/music/albumwall/AlbumWallView;)Lcom/google/android/music/albumwall/AlbumWallCallbackHelper;
    .locals 1
    .parameter "x0"

    .prologue
    .line 22
    iget-object v0, p0, Lcom/google/android/music/albumwall/AlbumWallView;->mCallbackHelper:Lcom/google/android/music/albumwall/AlbumWallCallbackHelper;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/music/albumwall/AlbumWallView;)Lcom/google/android/music/albumwall/AlbumWallRenderer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 22
    iget-object v0, p0, Lcom/google/android/music/albumwall/AlbumWallView;->mRenderer:Lcom/google/android/music/albumwall/AlbumWallRenderer;

    return-object v0
.end method

.method private routeEvent(ILandroid/view/MotionEvent;Landroid/view/MotionEvent;FF)V
    .locals 7
    .parameter "tag"
    .parameter "e1"
    .parameter "e2"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    const/4 v1, 0x0

    .line 212
    if-eqz p2, :cond_0

    invoke-static {p2}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    move-object v3, v0

    .line 213
    .local v3, copy1:Landroid/view/MotionEvent;
    :goto_0
    if-eqz p3, :cond_1

    invoke-static {p3}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    move-object v4, v0

    .line 214
    .local v4, copy2:Landroid/view/MotionEvent;
    :goto_1
    new-instance v0, Lcom/google/android/music/albumwall/AlbumWallView$4;

    move-object v1, p0

    move v2, p1

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/google/android/music/albumwall/AlbumWallView$4;-><init>(Lcom/google/android/music/albumwall/AlbumWallView;ILandroid/view/MotionEvent;Landroid/view/MotionEvent;FF)V

    invoke-virtual {p0, v0}, Lcom/google/android/music/albumwall/AlbumWallView;->queueEvent(Ljava/lang/Runnable;)V

    .line 224
    return-void

    .end local v3           #copy1:Landroid/view/MotionEvent;
    .end local v4           #copy2:Landroid/view/MotionEvent;
    :cond_0
    move-object v3, v1

    .line 212
    goto :goto_0

    .restart local v3       #copy1:Landroid/view/MotionEvent;
    :cond_1
    move-object v4, v1

    .line 213
    goto :goto_1
.end method

.method private final runInDrawFrame(Ljava/lang/Runnable;)V
    .locals 1
    .parameter "runnable"

    .prologue
    .line 309
    iget-object v0, p0, Lcom/google/android/music/albumwall/AlbumWallView;->mRenderer:Lcom/google/android/music/albumwall/AlbumWallRenderer;

    invoke-virtual {v0, p1}, Lcom/google/android/music/albumwall/AlbumWallRenderer;->runInDrawFrame(Ljava/lang/Runnable;)V

    .line 310
    invoke-virtual {p0}, Lcom/google/android/music/albumwall/AlbumWallView;->requestRender()V

    .line 311
    return-void
.end method


# virtual methods
.method public getLabelsVisible()Z
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lcom/google/android/music/albumwall/AlbumWallView;->mRenderer:Lcom/google/android/music/albumwall/AlbumWallRenderer;

    invoke-virtual {v0}, Lcom/google/android/music/albumwall/AlbumWallRenderer;->getLabelsVisible()Z

    move-result v0

    return v0
.end method

.method public getViewState()Lcom/google/android/music/albumwall/AlbumWallView$ViewState;
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lcom/google/android/music/albumwall/AlbumWallView;->mRenderer:Lcom/google/android/music/albumwall/AlbumWallRenderer;

    invoke-virtual {v0}, Lcom/google/android/music/albumwall/AlbumWallRenderer;->getViewState()Lcom/google/android/music/albumwall/AlbumWallView$ViewState;

    move-result-object v0

    return-object v0
.end method

.method public invalidateItemTexture(Lcom/google/android/music/albumwall/AlbumWallCallback$Item;I)V
    .locals 1
    .parameter "item"
    .parameter "type"

    .prologue
    .line 356
    new-instance v0, Lcom/google/android/music/albumwall/AlbumWallView$15;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/music/albumwall/AlbumWallView$15;-><init>(Lcom/google/android/music/albumwall/AlbumWallView;Lcom/google/android/music/albumwall/AlbumWallCallback$Item;I)V

    invoke-virtual {p0, v0}, Lcom/google/android/music/albumwall/AlbumWallView;->queueEvent(Ljava/lang/Runnable;)V

    .line 360
    return-void
.end method

.method public invalidateTexture(I)V
    .locals 1
    .parameter "type"

    .prologue
    .line 363
    new-instance v0, Lcom/google/android/music/albumwall/AlbumWallView$16;

    invoke-direct {v0, p0, p1}, Lcom/google/android/music/albumwall/AlbumWallView$16;-><init>(Lcom/google/android/music/albumwall/AlbumWallView;I)V

    invoke-virtual {p0, v0}, Lcom/google/android/music/albumwall/AlbumWallView;->queueEvent(Ljava/lang/Runnable;)V

    .line 367
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 257
    iget-object v0, p0, Lcom/google/android/music/albumwall/AlbumWallView;->mCallbackHelper:Lcom/google/android/music/albumwall/AlbumWallCallbackHelper;

    if-eqz v0, :cond_0

    .line 258
    iget-object v0, p0, Lcom/google/android/music/albumwall/AlbumWallView;->mCallbackHelper:Lcom/google/android/music/albumwall/AlbumWallCallbackHelper;

    invoke-virtual {v0}, Lcom/google/android/music/albumwall/AlbumWallCallbackHelper;->onDestroy()V

    .line 260
    :cond_0
    return-void
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 6
    .parameter "e"

    .prologue
    const/4 v4, 0x0

    .line 227
    const/4 v1, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v2, p1

    move v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/music/albumwall/AlbumWallView;->routeEvent(ILandroid/view/MotionEvent;Landroid/view/MotionEvent;FF)V

    .line 228
    const/4 v0, 0x1

    return v0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 6
    .parameter "e1"
    .parameter "e2"
    .parameter "velocityX"
    .parameter "velocityY"

    .prologue
    .line 252
    const/4 v1, 0x5

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/music/albumwall/AlbumWallView;->routeEvent(ILandroid/view/MotionEvent;Landroid/view/MotionEvent;FF)V

    .line 253
    const/4 v0, 0x1

    return v0
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 6
    .parameter "e"

    .prologue
    const/4 v4, 0x0

    .line 247
    const/4 v1, 0x3

    const/4 v3, 0x0

    move-object v0, p0

    move-object v2, p1

    move v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/music/albumwall/AlbumWallView;->routeEvent(ILandroid/view/MotionEvent;Landroid/view/MotionEvent;FF)V

    .line 248
    return-void
.end method

.method public onScale(Landroid/view/ScaleGestureDetector;)Z
    .locals 3
    .parameter "detector"

    .prologue
    .line 314
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result v1

    .line 315
    .local v1, scale:F
    iget-object v2, p0, Lcom/google/android/music/albumwall/AlbumWallView;->mCurrentScaleTouchEvent:Landroid/view/MotionEvent;

    invoke-static {v2}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    .line 316
    .local v0, copy:Landroid/view/MotionEvent;
    new-instance v2, Lcom/google/android/music/albumwall/AlbumWallView$11;

    invoke-direct {v2, p0, v0, v1}, Lcom/google/android/music/albumwall/AlbumWallView$11;-><init>(Lcom/google/android/music/albumwall/AlbumWallView;Landroid/view/MotionEvent;F)V

    invoke-virtual {p0, v2}, Lcom/google/android/music/albumwall/AlbumWallView;->queueEvent(Ljava/lang/Runnable;)V

    .line 321
    const/4 v2, 0x1

    return v2
.end method

.method public onScaleBegin(Landroid/view/ScaleGestureDetector;)Z
    .locals 2
    .parameter "detector"

    .prologue
    .line 325
    iget-object v1, p0, Lcom/google/android/music/albumwall/AlbumWallView;->mCurrentScaleTouchEvent:Landroid/view/MotionEvent;

    invoke-static {v1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    .line 326
    .local v0, copy:Landroid/view/MotionEvent;
    new-instance v1, Lcom/google/android/music/albumwall/AlbumWallView$12;

    invoke-direct {v1, p0, v0}, Lcom/google/android/music/albumwall/AlbumWallView$12;-><init>(Lcom/google/android/music/albumwall/AlbumWallView;Landroid/view/MotionEvent;)V

    invoke-virtual {p0, v1}, Lcom/google/android/music/albumwall/AlbumWallView;->queueEvent(Ljava/lang/Runnable;)V

    .line 331
    const/4 v1, 0x1

    return v1
.end method

.method public onScaleEnd(Landroid/view/ScaleGestureDetector;)V
    .locals 3
    .parameter "detector"

    .prologue
    .line 335
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result v1

    .line 336
    .local v1, scale:F
    iget-object v2, p0, Lcom/google/android/music/albumwall/AlbumWallView;->mCurrentScaleTouchEvent:Landroid/view/MotionEvent;

    invoke-static {v2}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    .line 337
    .local v0, copy:Landroid/view/MotionEvent;
    new-instance v2, Lcom/google/android/music/albumwall/AlbumWallView$13;

    invoke-direct {v2, p0, v0, v1}, Lcom/google/android/music/albumwall/AlbumWallView$13;-><init>(Lcom/google/android/music/albumwall/AlbumWallView;Landroid/view/MotionEvent;F)V

    invoke-virtual {p0, v2}, Lcom/google/android/music/albumwall/AlbumWallView;->queueEvent(Ljava/lang/Runnable;)V

    .line 342
    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 6
    .parameter "e1"
    .parameter "e2"
    .parameter "distanceX"
    .parameter "distanceY"

    .prologue
    .line 242
    const/4 v1, 0x4

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/music/albumwall/AlbumWallView;->routeEvent(ILandroid/view/MotionEvent;Landroid/view/MotionEvent;FF)V

    .line 243
    const/4 v0, 0x1

    return v0
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 6
    .parameter "e"

    .prologue
    const/4 v4, 0x0

    .line 232
    const/4 v1, 0x1

    const/4 v3, 0x0

    move-object v0, p0

    move-object v2, p1

    move v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/music/albumwall/AlbumWallView;->routeEvent(ILandroid/view/MotionEvent;Landroid/view/MotionEvent;FF)V

    .line 233
    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 6
    .parameter "e"

    .prologue
    const/4 v4, 0x0

    .line 236
    const/4 v1, 0x2

    const/4 v3, 0x0

    move-object v0, p0

    move-object v2, p1

    move v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/music/albumwall/AlbumWallView;->routeEvent(ILandroid/view/MotionEvent;Landroid/view/MotionEvent;FF)V

    .line 237
    const/4 v0, 0x1

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9
    .parameter "event"

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 185
    iput-object p1, p0, Lcom/google/android/music/albumwall/AlbumWallView;->mCurrentScaleTouchEvent:Landroid/view/MotionEvent;

    .line 186
    iget-object v0, p0, Lcom/google/android/music/albumwall/AlbumWallView;->mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v0}, Landroid/view/ScaleGestureDetector;->isInProgress()Z

    move-result v7

    .line 187
    .local v7, scaleGestureInProgress:Z
    iget-object v0, p0, Lcom/google/android/music/albumwall/AlbumWallView;->mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v8

    .line 188
    .local v8, scaleHandled:Z
    iput-object v3, p0, Lcom/google/android/music/albumwall/AlbumWallView;->mCurrentScaleTouchEvent:Landroid/view/MotionEvent;

    .line 189
    if-eqz v7, :cond_0

    move v0, v8

    .line 207
    :goto_0
    return v0

    .line 193
    :cond_0
    iget-object v0, p0, Lcom/google/android/music/albumwall/AlbumWallView;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v6

    .line 202
    .local v6, result:Z
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_1
    move v0, v6

    .line 207
    goto :goto_0

    .line 204
    :pswitch_0
    const/4 v1, 0x6

    move-object v0, p0

    move-object v2, p1

    move v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/music/albumwall/AlbumWallView;->routeEvent(ILandroid/view/MotionEvent;Landroid/view/MotionEvent;FF)V

    goto :goto_1

    .line 202
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public requestRefresh(Lcom/google/android/music/albumwall/AlbumWallView$ViewState;)V
    .locals 1
    .parameter "newViewState"

    .prologue
    .line 152
    new-instance v0, Lcom/google/android/music/albumwall/AlbumWallView$2;

    invoke-direct {v0, p0, p1}, Lcom/google/android/music/albumwall/AlbumWallView$2;-><init>(Lcom/google/android/music/albumwall/AlbumWallView;Lcom/google/android/music/albumwall/AlbumWallView$ViewState;)V

    invoke-virtual {p0, v0}, Lcom/google/android/music/albumwall/AlbumWallView;->queueEvent(Ljava/lang/Runnable;)V

    .line 156
    return-void
.end method

.method public setCallback(Lcom/google/android/music/albumwall/AlbumWallCallback;)V
    .locals 2
    .parameter "callback"

    .prologue
    .line 134
    iget-object v0, p0, Lcom/google/android/music/albumwall/AlbumWallView;->mCallbackHelper:Lcom/google/android/music/albumwall/AlbumWallCallbackHelper;

    if-eqz v0, :cond_0

    .line 135
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Callback already set."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 138
    :cond_0
    new-instance v0, Lcom/google/android/music/albumwall/AlbumWallCallbackHelper;

    invoke-direct {v0}, Lcom/google/android/music/albumwall/AlbumWallCallbackHelper;-><init>()V

    iput-object v0, p0, Lcom/google/android/music/albumwall/AlbumWallView;->mCallbackHelper:Lcom/google/android/music/albumwall/AlbumWallCallbackHelper;

    .line 139
    new-instance v0, Lcom/google/android/music/albumwall/AlbumWallView$1;

    invoke-direct {v0, p0, p1}, Lcom/google/android/music/albumwall/AlbumWallView$1;-><init>(Lcom/google/android/music/albumwall/AlbumWallView;Lcom/google/android/music/albumwall/AlbumWallCallback;)V

    invoke-virtual {p0, v0}, Lcom/google/android/music/albumwall/AlbumWallView;->queueEvent(Ljava/lang/Runnable;)V

    .line 143
    return-void
.end method

.method public setChildCount(Lcom/google/android/music/albumwall/Model$Epoch;Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;ZI)V
    .locals 6
    .parameter "epoch"
    .parameter "pile"
    .parameter "expanded"
    .parameter "count"

    .prologue
    .line 277
    new-instance v0, Lcom/google/android/music/albumwall/AlbumWallView$7;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/music/albumwall/AlbumWallView$7;-><init>(Lcom/google/android/music/albumwall/AlbumWallView;Lcom/google/android/music/albumwall/Model$Epoch;Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;ZI)V

    invoke-virtual {p0, v0}, Lcom/google/android/music/albumwall/AlbumWallView;->queueEvent(Ljava/lang/Runnable;)V

    .line 281
    return-void
.end method

.method public setItem(Lcom/google/android/music/albumwall/Model$Epoch;Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;ZILcom/google/android/music/albumwall/AlbumWallCallback$Item;)V
    .locals 7
    .parameter "epoch"
    .parameter "pile"
    .parameter "expanded"
    .parameter "n"
    .parameter "item"

    .prologue
    .line 285
    new-instance v0, Lcom/google/android/music/albumwall/AlbumWallView$8;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/google/android/music/albumwall/AlbumWallView$8;-><init>(Lcom/google/android/music/albumwall/AlbumWallView;Lcom/google/android/music/albumwall/Model$Epoch;Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;ZILcom/google/android/music/albumwall/AlbumWallCallback$Item;)V

    invoke-virtual {p0, v0}, Lcom/google/android/music/albumwall/AlbumWallView;->queueEvent(Ljava/lang/Runnable;)V

    .line 289
    return-void
.end method

.method public setItemTexture(Lcom/google/android/music/albumwall/Model$Epoch;ILcom/google/android/music/albumwall/AlbumWallCallback$Item;Landroid/graphics/Bitmap;)V
    .locals 6
    .parameter "epoch"
    .parameter "type"
    .parameter "item"
    .parameter "bitmap"

    .prologue
    .line 302
    new-instance v0, Lcom/google/android/music/albumwall/AlbumWallView$10;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/music/albumwall/AlbumWallView$10;-><init>(Lcom/google/android/music/albumwall/AlbumWallView;Lcom/google/android/music/albumwall/Model$Epoch;ILcom/google/android/music/albumwall/AlbumWallCallback$Item;Landroid/graphics/Bitmap;)V

    invoke-direct {p0, v0}, Lcom/google/android/music/albumwall/AlbumWallView;->runInDrawFrame(Ljava/lang/Runnable;)V

    .line 306
    return-void
.end method

.method public setLabelsVisible(Z)V
    .locals 1
    .parameter "visible"

    .prologue
    .line 165
    new-instance v0, Lcom/google/android/music/albumwall/AlbumWallView$3;

    invoke-direct {v0, p0, p1}, Lcom/google/android/music/albumwall/AlbumWallView$3;-><init>(Lcom/google/android/music/albumwall/AlbumWallView;Z)V

    invoke-virtual {p0, v0}, Lcom/google/android/music/albumwall/AlbumWallView;->queueEvent(Ljava/lang/Runnable;)V

    .line 169
    return-void
.end method

.method public setManageAlbumMode(Z)V
    .locals 1
    .parameter "enable"

    .prologue
    .line 349
    new-instance v0, Lcom/google/android/music/albumwall/AlbumWallView$14;

    invoke-direct {v0, p0, p1}, Lcom/google/android/music/albumwall/AlbumWallView$14;-><init>(Lcom/google/android/music/albumwall/AlbumWallView;Z)V

    invoke-virtual {p0, v0}, Lcom/google/android/music/albumwall/AlbumWallView;->queueEvent(Ljava/lang/Runnable;)V

    .line 353
    return-void
.end method

.method public setPile(Lcom/google/android/music/albumwall/Model$Epoch;ILcom/google/android/music/albumwall/AlbumWallCallback$Pile;)V
    .locals 1
    .parameter "epoch"
    .parameter "pileIndex"
    .parameter "pile"

    .prologue
    .line 270
    new-instance v0, Lcom/google/android/music/albumwall/AlbumWallView$6;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/android/music/albumwall/AlbumWallView$6;-><init>(Lcom/google/android/music/albumwall/AlbumWallView;Lcom/google/android/music/albumwall/Model$Epoch;ILcom/google/android/music/albumwall/AlbumWallCallback$Pile;)V

    invoke-virtual {p0, v0}, Lcom/google/android/music/albumwall/AlbumWallView;->queueEvent(Ljava/lang/Runnable;)V

    .line 274
    return-void
.end method

.method public setPileCount(Lcom/google/android/music/albumwall/Model$Epoch;I)V
    .locals 1
    .parameter "epoch"
    .parameter "n"

    .prologue
    .line 263
    new-instance v0, Lcom/google/android/music/albumwall/AlbumWallView$5;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/music/albumwall/AlbumWallView$5;-><init>(Lcom/google/android/music/albumwall/AlbumWallView;Lcom/google/android/music/albumwall/Model$Epoch;I)V

    invoke-virtual {p0, v0}, Lcom/google/android/music/albumwall/AlbumWallView;->queueEvent(Ljava/lang/Runnable;)V

    .line 267
    return-void
.end method

.method public setPileLabelTexture(Lcom/google/android/music/albumwall/Model$Epoch;ILcom/google/android/music/albumwall/AlbumWallCallback$Pile;ZLandroid/graphics/Bitmap;)V
    .locals 7
    .parameter "epoch"
    .parameter "type"
    .parameter "pile"
    .parameter "expanded"
    .parameter "bitmap"

    .prologue
    .line 294
    new-instance v0, Lcom/google/android/music/albumwall/AlbumWallView$9;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/google/android/music/albumwall/AlbumWallView$9;-><init>(Lcom/google/android/music/albumwall/AlbumWallView;Lcom/google/android/music/albumwall/Model$Epoch;ILcom/google/android/music/albumwall/AlbumWallCallback$Pile;ZLandroid/graphics/Bitmap;)V

    invoke-direct {p0, v0}, Lcom/google/android/music/albumwall/AlbumWallView;->runInDrawFrame(Ljava/lang/Runnable;)V

    .line 298
    return-void
.end method

.method public setRenderer(Lcom/google/android/opengl/glview/GLSurfaceView$Renderer;)V
    .locals 4
    .parameter "renderer"

    .prologue
    .line 120
    invoke-super {p0, p1}, Lcom/google/android/opengl/glview/GLSurfaceView;->setRenderer(Lcom/google/android/opengl/glview/GLSurfaceView$Renderer;)V

    .line 121
    instance-of v2, p1, Lcom/google/android/music/albumwall/AlbumWallRenderer;

    if-eqz v2, :cond_0

    .line 122
    move-object v0, p1

    check-cast v0, Lcom/google/android/music/albumwall/AlbumWallRenderer;

    move-object v1, v0

    .line 123
    .local v1, albumWallRenderer:Lcom/google/android/music/albumwall/AlbumWallRenderer;
    iput-object v1, p0, Lcom/google/android/music/albumwall/AlbumWallView;->mRenderer:Lcom/google/android/music/albumwall/AlbumWallRenderer;

    .line 127
    .end local v1           #albumWallRenderer:Lcom/google/android/music/albumwall/AlbumWallRenderer;
    :goto_0
    return-void

    .line 125
    :cond_0
    const-string v2, "AlbumWallView"

    const-string v3, "Invalid Renderer for AlbumWallView type"

    invoke-static {v2, v3}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
