.class public abstract Landroid/view/HardwareRenderer;
.super Ljava/lang/Object;
.source "HardwareRenderer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/HardwareRenderer$Gl20Renderer;,
        Landroid/view/HardwareRenderer$GlRenderer;,
        Landroid/view/HardwareRenderer$HardwareDrawCallbacks;
    }
.end annotation


# static fields
.field private static final DEBUG_DIRTY_REGION:Z = false

.field static final LOG_TAG:Ljava/lang/String; = "HardwareRenderer"

.field public static final RENDER_DIRTY_REGIONS:Z = true

.field static final RENDER_DIRTY_REGIONS_PROPERTY:Ljava/lang/String; = "hwui.render_dirty_regions"

.field public static sRendererDisabled:Z


# instance fields
.field private mEnabled:Z

.field private mRequested:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 72
    const/4 v0, 0x0

    sput-boolean v0, Landroid/view/HardwareRenderer;->sRendererDisabled:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/HardwareRenderer;->mRequested:Z

    .line 803
    return-void
.end method

.method static createGlRenderer(IZ)Landroid/view/HardwareRenderer;
    .registers 5
    .parameter "glVersion"
    .parameter "translucent"

    .prologue
    .line 212
    packed-switch p0, :pswitch_data_22

    .line 216
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown GL version: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 214
    :pswitch_1c
    invoke-static {p1}, Landroid/view/HardwareRenderer$Gl20Renderer;->create(Z)Landroid/view/HardwareRenderer;

    move-result-object v0

    return-object v0

    .line 212
    nop

    :pswitch_data_22
    .packed-switch 0x2
        :pswitch_1c
    .end packed-switch
.end method

.method public static disable()V
    .registers 1

    .prologue
    .line 83
    const/4 v0, 0x1

    sput-boolean v0, Landroid/view/HardwareRenderer;->sRendererDisabled:Z

    .line 84
    return-void
.end method

.method public static isAvailable()Z
    .registers 1

    .prologue
    .line 94
    invoke-static {}, Landroid/view/GLES20Canvas;->isAvailable()Z

    move-result v0

    return v0
.end method


# virtual methods
.method abstract createDisplayList(Landroid/view/View;)Landroid/view/DisplayList;
.end method

.method abstract createHardwareLayer(IIZ)Landroid/view/HardwareLayer;
.end method

.method abstract destroy(Z)V
.end method

.method abstract draw(Landroid/view/View;Landroid/view/View$AttachInfo;Landroid/view/HardwareRenderer$HardwareDrawCallbacks;Landroid/graphics/Rect;)V
.end method

.method abstract initialize(Landroid/view/SurfaceHolder;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/view/Surface$OutOfResourcesException;
        }
    .end annotation
.end method

.method initializeIfNeeded(IILandroid/view/View$AttachInfo;Landroid/view/SurfaceHolder;)V
    .registers 6
    .parameter "width"
    .parameter "height"
    .parameter "attachInfo"
    .parameter "holder"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/view/Surface$OutOfResourcesException;
        }
    .end annotation

    .prologue
    .line 193
    invoke-virtual {p0}, Landroid/view/HardwareRenderer;->isRequested()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 195
    invoke-virtual {p0}, Landroid/view/HardwareRenderer;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_15

    .line 196
    invoke-virtual {p0, p4}, Landroid/view/HardwareRenderer;->initialize(Landroid/view/SurfaceHolder;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 197
    invoke-virtual {p0, p1, p2}, Landroid/view/HardwareRenderer;->setup(II)V

    .line 201
    :cond_15
    return-void
.end method

.method isEnabled()Z
    .registers 2

    .prologue
    .line 225
    iget-boolean v0, p0, Landroid/view/HardwareRenderer;->mEnabled:Z

    return v0
.end method

.method isRequested()Z
    .registers 2

    .prologue
    .line 244
    iget-boolean v0, p0, Landroid/view/HardwareRenderer;->mRequested:Z

    return v0
.end method

.method setEnabled(Z)V
    .registers 2
    .parameter "enabled"

    .prologue
    .line 234
    iput-boolean p1, p0, Landroid/view/HardwareRenderer;->mEnabled:Z

    .line 235
    return-void
.end method

.method setRequested(Z)V
    .registers 2
    .parameter "requested"

    .prologue
    .line 254
    iput-boolean p1, p0, Landroid/view/HardwareRenderer;->mRequested:Z

    .line 255
    return-void
.end method

.method abstract setup(II)V
.end method

.method abstract updateSurface(Landroid/view/SurfaceHolder;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/view/Surface$OutOfResourcesException;
        }
    .end annotation
.end method
