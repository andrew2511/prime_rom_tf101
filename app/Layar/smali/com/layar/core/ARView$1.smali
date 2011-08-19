.class Lcom/layar/core/ARView$1;
.super Ljava/lang/Object;
.source "ARView.java"

# interfaces
.implements Landroid/opengl/GLSurfaceView$GLWrapper;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/layar/core/ARView;-><init>(Landroid/content/Context;Landroid/opengl/GLSurfaceView$Renderer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/layar/core/ARView;


# direct methods
.method constructor <init>(Lcom/layar/core/ARView;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/layar/core/ARView$1;->this$0:Lcom/layar/core/ARView;

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public wrap(Ljavax/microedition/khronos/opengles/GL;)Ljavax/microedition/khronos/opengles/GL;
    .locals 1
    .parameter "gl"

    .prologue
    .line 26
    new-instance v0, Lcom/layar/core/MatrixTrackingGL;

    invoke-direct {v0, p1}, Lcom/layar/core/MatrixTrackingGL;-><init>(Ljavax/microedition/khronos/opengles/GL;)V

    return-object v0
.end method
