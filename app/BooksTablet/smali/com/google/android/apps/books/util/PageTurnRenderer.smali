.class public Lcom/google/android/apps/books/util/PageTurnRenderer;
.super Ljava/lang/Object;
.source "PageTurnRenderer.java"

# interfaces
.implements Landroid/opengl/GLSurfaceView$Renderer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/books/util/PageTurnRenderer$Texture;,
        Lcom/google/android/apps/books/util/PageTurnRenderer$Rectangle;,
        Lcom/google/android/apps/books/util/PageTurnRenderer$Callback;
    }
.end annotation


# static fields
.field private static final ANIMATION_LENGTH:J = 0xbb8L


# instance fields
.field private mAnimateStart:J

.field private mCallback:Lcom/google/android/apps/books/util/PageTurnRenderer$Callback;

.field private mEven:Lcom/google/android/apps/books/util/PageTurnRenderer$Texture;

.field private mOdd:Lcom/google/android/apps/books/util/PageTurnRenderer$Texture;

.field private mRectangle:Lcom/google/android/apps/books/util/PageTurnRenderer$Rectangle;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/books/util/PageTurnRenderer$Callback;)V
    .locals 2
    .parameter "callback"

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/apps/books/util/PageTurnRenderer;->mAnimateStart:J

    .line 41
    new-instance v0, Lcom/google/android/apps/books/util/PageTurnRenderer$Rectangle;

    invoke-direct {v0}, Lcom/google/android/apps/books/util/PageTurnRenderer$Rectangle;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/books/util/PageTurnRenderer;->mRectangle:Lcom/google/android/apps/books/util/PageTurnRenderer$Rectangle;

    .line 42
    iput-object p1, p0, Lcom/google/android/apps/books/util/PageTurnRenderer;->mCallback:Lcom/google/android/apps/books/util/PageTurnRenderer$Callback;

    .line 43
    return-void
.end method


# virtual methods
.method public declared-synchronized clearEvenOdd()V
    .locals 1

    .prologue
    .line 67
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/google/android/apps/books/util/PageTurnRenderer;->mEven:Lcom/google/android/apps/books/util/PageTurnRenderer$Texture;

    .line 68
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/books/util/PageTurnRenderer;->mOdd:Lcom/google/android/apps/books/util/PageTurnRenderer$Texture;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 69
    monitor-exit p0

    return-void

    .line 67
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 14
    .parameter "gl"

    .prologue
    .line 72
    monitor-enter p0

    const/16 v0, 0xbd0

    :try_start_0
    invoke-static {v0}, Landroid/opengl/GLES10;->glDisable(I)V

    .line 74
    const/16 v0, 0x2300

    const/16 v1, 0x2200

    const/16 v2, 0x2100

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES10;->glTexEnvx(III)V

    .line 75
    const/16 v0, 0x4100

    invoke-static {v0}, Landroid/opengl/GLES10;->glClear(I)V

    .line 77
    const/16 v0, 0x1700

    invoke-static {v0}, Landroid/opengl/GLES10;->glMatrixMode(I)V

    .line 78
    invoke-static {}, Landroid/opengl/GLES10;->glLoadIdentity()V

    .line 80
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/high16 v3, -0x3f60

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/high16 v8, 0x3f80

    const/4 v9, 0x0

    move-object v0, p1

    invoke-static/range {v0 .. v9}, Landroid/opengl/GLU;->gluLookAt(Ljavax/microedition/khronos/opengles/GL10;FFFFFFFFF)V

    .line 82
    const v0, 0x8074

    invoke-static {v0}, Landroid/opengl/GLES10;->glEnableClientState(I)V

    .line 83
    const v0, 0x8078

    invoke-static {v0}, Landroid/opengl/GLES10;->glEnableClientState(I)V

    .line 85
    iget-object v0, p0, Lcom/google/android/apps/books/util/PageTurnRenderer;->mEven:Lcom/google/android/apps/books/util/PageTurnRenderer$Texture;

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    move v11, v0

    .line 86
    .local v11, hasEven:Z
    :goto_0
    iget-object v0, p0, Lcom/google/android/apps/books/util/PageTurnRenderer;->mOdd:Lcom/google/android/apps/books/util/PageTurnRenderer$Texture;

    if-eqz v0, :cond_5

    const/4 v0, 0x1

    move v12, v0

    .line 88
    .local v12, hasOdd:Z
    :goto_1
    if-eqz v11, :cond_0

    .line 89
    iget-object v13, p0, Lcom/google/android/apps/books/util/PageTurnRenderer;->mEven:Lcom/google/android/apps/books/util/PageTurnRenderer$Texture;

    .line 91
    .local v13, texture:Lcom/google/android/apps/books/util/PageTurnRenderer$Texture;
    invoke-virtual {v13, p1}, Lcom/google/android/apps/books/util/PageTurnRenderer$Texture;->ensureBindTexture(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 93
    const v0, 0x84c0

    invoke-static {v0}, Landroid/opengl/GLES10;->glActiveTexture(I)V

    .line 94
    const/16 v0, 0xde1

    invoke-virtual {v13}, Lcom/google/android/apps/books/util/PageTurnRenderer$Texture;->getTextureId()I

    move-result v1

    invoke-static {v0, v1}, Landroid/opengl/GLES10;->glBindTexture(II)V

    .line 95
    const/16 v0, 0xde1

    const/16 v1, 0x2802

    const v2, 0x812f

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES10;->glTexParameterx(III)V

    .line 96
    const/16 v0, 0xde1

    const/16 v1, 0x2803

    const v2, 0x812f

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES10;->glTexParameterx(III)V

    .line 98
    const/4 v0, 0x0

    const/high16 v1, 0x3f80

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES10;->glTranslatef(FFF)V

    .line 100
    iget-object v0, p0, Lcom/google/android/apps/books/util/PageTurnRenderer;->mRectangle:Lcom/google/android/apps/books/util/PageTurnRenderer$Rectangle;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/books/util/PageTurnRenderer$Rectangle;->draw(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 103
    .end local v13           #texture:Lcom/google/android/apps/books/util/PageTurnRenderer$Texture;
    :cond_0
    if-eqz v12, :cond_1

    .line 104
    iget-object v13, p0, Lcom/google/android/apps/books/util/PageTurnRenderer;->mOdd:Lcom/google/android/apps/books/util/PageTurnRenderer$Texture;

    .line 106
    .restart local v13       #texture:Lcom/google/android/apps/books/util/PageTurnRenderer$Texture;
    invoke-virtual {v13, p1}, Lcom/google/android/apps/books/util/PageTurnRenderer$Texture;->ensureBindTexture(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 108
    const v0, 0x84c0

    invoke-static {v0}, Landroid/opengl/GLES10;->glActiveTexture(I)V

    .line 109
    const/16 v0, 0xde1

    invoke-virtual {v13}, Lcom/google/android/apps/books/util/PageTurnRenderer$Texture;->getTextureId()I

    move-result v1

    invoke-static {v0, v1}, Landroid/opengl/GLES10;->glBindTexture(II)V

    .line 110
    const/16 v0, 0xde1

    const/16 v1, 0x2802

    const v2, 0x812f

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES10;->glTexParameterx(III)V

    .line 111
    const/16 v0, 0xde1

    const/16 v1, 0x2803

    const v2, 0x812f

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES10;->glTexParameterx(III)V

    .line 113
    const/4 v0, 0x0

    const/high16 v1, -0x4000

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES10;->glTranslatef(FFF)V

    .line 115
    iget-object v0, p0, Lcom/google/android/apps/books/util/PageTurnRenderer;->mRectangle:Lcom/google/android/apps/books/util/PageTurnRenderer$Rectangle;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/books/util/PageTurnRenderer$Rectangle;->draw(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 119
    .end local v13           #texture:Lcom/google/android/apps/books/util/PageTurnRenderer$Texture;
    :cond_1
    iget-wide v0, p0, Lcom/google/android/apps/books/util/PageTurnRenderer;->mAnimateStart:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_6

    const/4 v0, 0x1

    move v10, v0

    .line 120
    .local v10, animStarted:Z
    :goto_2
    if-nez v10, :cond_2

    if-eqz v11, :cond_2

    if-eqz v12, :cond_2

    .line 123
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/apps/books/util/PageTurnRenderer;->mAnimateStart:J

    .line 126
    :cond_2
    if-eqz v10, :cond_3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/apps/books/util/PageTurnRenderer;->mAnimateStart:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0xbb8

    cmp-long v0, v0, v2

    if-lez v0, :cond_3

    .line 127
    const-string v0, "anim"

    const-string v1, "animation is finished, hiding"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    iget-object v0, p0, Lcom/google/android/apps/books/util/PageTurnRenderer;->mCallback:Lcom/google/android/apps/books/util/PageTurnRenderer$Callback;

    invoke-interface {v0}, Lcom/google/android/apps/books/util/PageTurnRenderer$Callback;->onAnimationDone()V

    .line 132
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/books/util/PageTurnRenderer;->mEven:Lcom/google/android/apps/books/util/PageTurnRenderer$Texture;

    .line 133
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/books/util/PageTurnRenderer;->mOdd:Lcom/google/android/apps/books/util/PageTurnRenderer$Texture;

    .line 135
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/apps/books/util/PageTurnRenderer;->mAnimateStart:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 137
    :cond_3
    monitor-exit p0

    return-void

    .line 85
    .end local v10           #animStarted:Z
    .end local v11           #hasEven:Z
    .end local v12           #hasOdd:Z
    :cond_4
    const/4 v0, 0x0

    move v11, v0

    goto/16 :goto_0

    .line 86
    .restart local v11       #hasEven:Z
    :cond_5
    const/4 v0, 0x0

    move v12, v0

    goto/16 :goto_1

    .line 119
    .restart local v12       #hasOdd:Z
    :cond_6
    const/4 v0, 0x0

    move v10, v0

    goto :goto_2

    .line 72
    .end local v11           #hasEven:Z
    .end local v12           #hasOdd:Z
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .locals 6
    .parameter "gl"
    .parameter "w"
    .parameter "h"

    .prologue
    const/4 v0, 0x0

    .line 140
    invoke-static {v0, v0, p2, p3}, Landroid/opengl/GLES10;->glViewport(IIII)V

    .line 142
    int-to-float v0, p2

    int-to-float v2, p3

    div-float v1, v0, v2

    .line 143
    .local v1, ratio:F
    const/16 v0, 0x1701

    invoke-static {v0}, Landroid/opengl/GLES10;->glMatrixMode(I)V

    .line 144
    invoke-static {}, Landroid/opengl/GLES10;->glLoadIdentity()V

    .line 145
    neg-float v0, v1

    const/high16 v2, -0x4080

    const/high16 v3, 0x3f80

    const/high16 v4, 0x4040

    const/high16 v5, 0x40e0

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES10;->glFrustumf(FFFFFF)V

    .line 146
    return-void
.end method

.method public onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 3
    .parameter "gl"
    .parameter "config"

    .prologue
    const/high16 v2, 0x3f00

    .line 46
    const/16 v0, 0xbd0

    invoke-static {v0}, Landroid/opengl/GLES10;->glDisable(I)V

    .line 47
    const/16 v0, 0xc50

    const/16 v1, 0x1101

    invoke-static {v0, v1}, Landroid/opengl/GLES10;->glHint(II)V

    .line 49
    const/high16 v0, 0x3f80

    invoke-static {v2, v2, v2, v0}, Landroid/opengl/GLES10;->glClearColor(FFFF)V

    .line 51
    const/16 v0, 0x1d01

    invoke-static {v0}, Landroid/opengl/GLES10;->glShadeModel(I)V

    .line 52
    const/16 v0, 0xb71

    invoke-static {v0}, Landroid/opengl/GLES10;->glEnable(I)V

    .line 53
    const/16 v0, 0xde1

    invoke-static {v0}, Landroid/opengl/GLES10;->glEnable(I)V

    .line 55
    return-void
.end method

.method public declared-synchronized setEvenClearOdd(Lcom/google/android/apps/books/util/PageTurnRenderer$Texture;)V
    .locals 1
    .parameter "texture"

    .prologue
    .line 58
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/google/android/apps/books/util/PageTurnRenderer;->mEven:Lcom/google/android/apps/books/util/PageTurnRenderer$Texture;

    .line 59
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/books/util/PageTurnRenderer;->mOdd:Lcom/google/android/apps/books/util/PageTurnRenderer$Texture;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 60
    monitor-exit p0

    return-void

    .line 58
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setOdd(Lcom/google/android/apps/books/util/PageTurnRenderer$Texture;)V
    .locals 1
    .parameter "texture"

    .prologue
    .line 63
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/google/android/apps/books/util/PageTurnRenderer;->mOdd:Lcom/google/android/apps/books/util/PageTurnRenderer$Texture;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 64
    monitor-exit p0

    return-void

    .line 63
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
