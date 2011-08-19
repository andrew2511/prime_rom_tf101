.class Lcom/splashtop/remote/DesktopGLView$GLRenderer;
.super Ljava/lang/Object;
.source "DesktopGLView.java"

# interfaces
.implements Landroid/opengl/GLSurfaceView$Renderer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/splashtop/remote/DesktopGLView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "GLRenderer"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/splashtop/remote/DesktopGLView;


# direct methods
.method constructor <init>(Lcom/splashtop/remote/DesktopGLView;)V
    .locals 0
    .parameter

    .prologue
    .line 126
    iput-object p1, p0, Lcom/splashtop/remote/DesktopGLView$GLRenderer;->this$0:Lcom/splashtop/remote/DesktopGLView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 1
    .parameter "gl"

    .prologue
    .line 150
    iget-object v0, p0, Lcom/splashtop/remote/DesktopGLView$GLRenderer;->this$0:Lcom/splashtop/remote/DesktopGLView;

    invoke-static {v0}, Lcom/splashtop/remote/DesktopGLView;->access$308(Lcom/splashtop/remote/DesktopGLView;)I

    .line 151
    invoke-static {}, Lcom/splashtop/remote/JNILib;->nativeGLDrawFrame()Z

    .line 153
    return-void
.end method

.method public onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .locals 6
    .parameter "gl"
    .parameter "w"
    .parameter "h"

    .prologue
    .line 137
    invoke-static {p2, p3}, Lcom/splashtop/remote/JNILib;->nativeInitVideo(II)V

    .line 138
    int-to-float v4, p2

    iget-object v5, p0, Lcom/splashtop/remote/DesktopGLView$GLRenderer;->this$0:Lcom/splashtop/remote/DesktopGLView;

    invoke-static {v5}, Lcom/splashtop/remote/DesktopGLView;->access$100(Lcom/splashtop/remote/DesktopGLView;)I

    move-result v5

    int-to-float v5, v5

    div-float v1, v4, v5

    .line 139
    .local v1, hRatio:F
    int-to-float v4, p3

    iget-object v5, p0, Lcom/splashtop/remote/DesktopGLView$GLRenderer;->this$0:Lcom/splashtop/remote/DesktopGLView;

    invoke-static {v5}, Lcom/splashtop/remote/DesktopGLView;->access$200(Lcom/splashtop/remote/DesktopGLView;)I

    move-result v5

    int-to-float v5, v5

    div-float v3, v4, v5

    .line 140
    .local v3, vRatio:F
    invoke-static {v1, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    .line 141
    .local v2, minZoom:F
    invoke-static {v1, v3}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 142
    .local v0, defZoom:F
    invoke-static {v2}, Lcom/splashtop/remote/zoom/OpenGLZoomState;->setMinZoom(F)V

    .line 143
    invoke-static {v0}, Lcom/splashtop/remote/zoom/OpenGLZoomState;->setmZoom(F)V

    .line 145
    return-void
.end method

.method public onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 0
    .parameter "gl"
    .parameter "config"

    .prologue
    .line 132
    return-void
.end method
