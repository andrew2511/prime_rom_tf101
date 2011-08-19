.class Lcom/google/android/opengl/glview/GLSurfaceView$SimpleEGLConfigChooser;
.super Lcom/google/android/opengl/glview/GLSurfaceView$ComponentSizeChooser;
.source "GLSurfaceView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/opengl/glview/GLSurfaceView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SimpleEGLConfigChooser"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/opengl/glview/GLSurfaceView;


# direct methods
.method public constructor <init>(Lcom/google/android/opengl/glview/GLSurfaceView;Z)V
    .locals 8
    .parameter
    .parameter "withDepthBuffer"

    .prologue
    const/4 v2, 0x5

    const/4 v5, 0x0

    .line 926
    iput-object p1, p0, Lcom/google/android/opengl/glview/GLSurfaceView$SimpleEGLConfigChooser;->this$0:Lcom/google/android/opengl/glview/GLSurfaceView;

    .line 927
    const/4 v3, 0x6

    if-eqz p2, :cond_0

    const/16 v0, 0x10

    move v6, v0

    :goto_0
    move-object v0, p0

    move-object v1, p1

    move v4, v2

    move v7, v5

    invoke-direct/range {v0 .. v7}, Lcom/google/android/opengl/glview/GLSurfaceView$ComponentSizeChooser;-><init>(Lcom/google/android/opengl/glview/GLSurfaceView;IIIIII)V

    .line 928
    return-void

    :cond_0
    move v6, v5

    .line 927
    goto :goto_0
.end method
