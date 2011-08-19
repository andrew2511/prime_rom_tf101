.class public Lcom/splashtop/remote/zoom/AspectQuotient;
.super Ljava/util/Observable;
.source "AspectQuotient.java"


# instance fields
.field private mAspectQuotient:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/util/Observable;-><init>()V

    return-void
.end method


# virtual methods
.method public get()F
    .locals 1

    .prologue
    .line 51
    iget v0, p0, Lcom/splashtop/remote/zoom/AspectQuotient;->mAspectQuotient:F

    return v0
.end method

.method public updateAspectQuotient(FFFF)V
    .locals 3
    .parameter "viewWidth"
    .parameter "viewHeight"
    .parameter "contentWidth"
    .parameter "contentHeight"

    .prologue
    .line 66
    div-float v1, p3, p4

    div-float v2, p1, p2

    div-float v0, v1, v2

    .line 67
    .local v0, aspectQuotient:F
    iget v1, p0, Lcom/splashtop/remote/zoom/AspectQuotient;->mAspectQuotient:F

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_0

    .line 68
    iput v0, p0, Lcom/splashtop/remote/zoom/AspectQuotient;->mAspectQuotient:F

    .line 69
    invoke-virtual {p0}, Lcom/splashtop/remote/zoom/AspectQuotient;->setChanged()V

    .line 71
    :cond_0
    return-void
.end method
