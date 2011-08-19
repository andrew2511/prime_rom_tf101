.class public abstract Lcom/nuance/xt9/input/Stroke;
.super Ljava/lang/Object;
.source "Stroke.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/xt9/input/Stroke$Arc;,
        Lcom/nuance/xt9/input/Stroke$DrawPath;,
        Lcom/nuance/xt9/input/Stroke$MultiStroke;,
        Lcom/nuance/xt9/input/Stroke$SingleStroke;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 237
    return-void
.end method

.method public static create()Lcom/nuance/xt9/input/Stroke;
    .locals 3

    .prologue
    .line 16
    const/4 v0, 0x0

    .line 19
    .local v0, stroke:Lcom/nuance/xt9/input/Stroke;
    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    const-string v2, "1.5"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    sget v1, Lcom/nuance/xt9/input/AndroidVersionWrapper;->SDK_INT:I

    const/4 v2, 0x5

    if-lt v1, v2, :cond_0

    .line 20
    new-instance v0, Lcom/nuance/xt9/input/Stroke$MultiStroke;

    .end local v0           #stroke:Lcom/nuance/xt9/input/Stroke;
    invoke-direct {v0}, Lcom/nuance/xt9/input/Stroke$MultiStroke;-><init>()V

    .line 26
    .restart local v0       #stroke:Lcom/nuance/xt9/input/Stroke;
    :goto_0
    return-object v0

    .line 23
    :cond_0
    new-instance v0, Lcom/nuance/xt9/input/Stroke$SingleStroke;

    .end local v0           #stroke:Lcom/nuance/xt9/input/Stroke;
    invoke-direct {v0}, Lcom/nuance/xt9/input/Stroke$SingleStroke;-><init>()V

    .restart local v0       #stroke:Lcom/nuance/xt9/input/Stroke;
    goto :goto_0
.end method


# virtual methods
.method public abstract clear()V
.end method

.method public abstract clearArcs()V
.end method

.method public abstract clearPaths()V
.end method

.method public abstract getArcs()[Lcom/nuance/xt9/input/Stroke$Arc;
.end method

.method public abstract getPaths()[Landroid/graphics/Path;
.end method

.method public abstract handleMotionEvent(Landroid/view/MotionEvent;)V
.end method
