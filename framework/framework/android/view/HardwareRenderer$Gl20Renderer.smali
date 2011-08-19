.class Landroid/view/HardwareRenderer$Gl20Renderer;
.super Landroid/view/HardwareRenderer$GlRenderer;
.source "HardwareRenderer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/HardwareRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Gl20Renderer"
.end annotation


# instance fields
.field private mGlCanvas:Landroid/view/GLES20Canvas;


# direct methods
.method constructor <init>(Z)V
    .registers 3
    .parameter "translucent"

    .prologue
    .line 807
    const/4 v0, 0x2

    invoke-direct {p0, v0, p1}, Landroid/view/HardwareRenderer$GlRenderer;-><init>(IZ)V

    .line 808
    return-void
.end method

.method static create(Z)Landroid/view/HardwareRenderer;
    .registers 2
    .parameter "translucent"

    .prologue
    .line 852
    invoke-static {}, Landroid/view/GLES20Canvas;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 853
    new-instance v0, Landroid/view/HardwareRenderer$Gl20Renderer;

    invoke-direct {v0, p0}, Landroid/view/HardwareRenderer$Gl20Renderer;-><init>(Z)V

    .line 855
    :goto_b
    return-object v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method


# virtual methods
.method canDraw()Z
    .registers 2

    .prologue
    .line 817
    invoke-super {p0}, Landroid/view/HardwareRenderer$GlRenderer;->canDraw()Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Landroid/view/HardwareRenderer$Gl20Renderer;->mGlCanvas:Landroid/view/GLES20Canvas;

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method createCanvas()Landroid/view/GLES20Canvas;
    .registers 3

    .prologue
    .line 812
    new-instance v0, Landroid/view/GLES20Canvas;

    iget-boolean v1, p0, Landroid/view/HardwareRenderer$Gl20Renderer;->mTranslucent:Z

    invoke-direct {v0, v1}, Landroid/view/GLES20Canvas;-><init>(Z)V

    iput-object v0, p0, Landroid/view/HardwareRenderer$Gl20Renderer;->mGlCanvas:Landroid/view/GLES20Canvas;

    return-object v0
.end method

.method createDisplayList(Landroid/view/View;)Landroid/view/DisplayList;
    .registers 3
    .parameter "v"

    .prologue
    .line 843
    new-instance v0, Landroid/view/GLES20DisplayList;

    invoke-direct {v0, p1}, Landroid/view/GLES20DisplayList;-><init>(Landroid/view/View;)V

    return-object v0
.end method

.method createHardwareLayer(IIZ)Landroid/view/HardwareLayer;
    .registers 5
    .parameter "width"
    .parameter "height"
    .parameter "isOpaque"

    .prologue
    .line 848
    new-instance v0, Landroid/view/GLES20Layer;

    invoke-direct {v0, p1, p2, p3}, Landroid/view/GLES20Layer;-><init>(IIZ)V

    return-object v0
.end method

.method destroy(Z)V
    .registers 5
    .parameter "full"

    .prologue
    const/4 v2, 0x0

    .line 833
    :try_start_1
    invoke-super {p0, p1}, Landroid/view/HardwareRenderer$GlRenderer;->destroy(Z)V
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_d

    .line 835
    if-eqz p1, :cond_c

    iget-object v0, p0, Landroid/view/HardwareRenderer$Gl20Renderer;->mGlCanvas:Landroid/view/GLES20Canvas;

    if-eqz v0, :cond_c

    .line 836
    iput-object v2, p0, Landroid/view/HardwareRenderer$Gl20Renderer;->mGlCanvas:Landroid/view/GLES20Canvas;

    .line 839
    :cond_c
    return-void

    .line 835
    :catchall_d
    move-exception v0

    if-eqz p1, :cond_16

    iget-object v1, p0, Landroid/view/HardwareRenderer$Gl20Renderer;->mGlCanvas:Landroid/view/GLES20Canvas;

    if-eqz v1, :cond_16

    .line 836
    iput-object v2, p0, Landroid/view/HardwareRenderer$Gl20Renderer;->mGlCanvas:Landroid/view/GLES20Canvas;

    :cond_16
    throw v0
.end method

.method onPostDraw()V
    .registers 2

    .prologue
    .line 827
    iget-object v0, p0, Landroid/view/HardwareRenderer$Gl20Renderer;->mGlCanvas:Landroid/view/GLES20Canvas;

    invoke-virtual {v0}, Landroid/view/GLES20Canvas;->onPostDraw()V

    .line 828
    return-void
.end method

.method onPreDraw(Landroid/graphics/Rect;)V
    .registers 3
    .parameter "dirty"

    .prologue
    .line 822
    iget-object v0, p0, Landroid/view/HardwareRenderer$Gl20Renderer;->mGlCanvas:Landroid/view/GLES20Canvas;

    invoke-virtual {v0, p1}, Landroid/view/GLES20Canvas;->onPreDraw(Landroid/graphics/Rect;)V

    .line 823
    return-void
.end method
