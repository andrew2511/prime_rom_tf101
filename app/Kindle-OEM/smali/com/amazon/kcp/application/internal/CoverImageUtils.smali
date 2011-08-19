.class public Lcom/amazon/kcp/application/internal/CoverImageUtils;
.super Ljava/lang/Object;
.source "CoverImageUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isCoverValid(Lcom/amazon/system/drawing/Image;)Z
    .locals 2
    .parameter "cover"

    .prologue
    const/4 v1, 0x0

    .line 20
    if-nez p0, :cond_0

    move v0, v1

    .line 29
    :goto_0
    return v0

    .line 24
    :cond_0
    invoke-interface {p0}, Lcom/amazon/system/drawing/Image;->getHeight()I

    move-result v0

    if-lez v0, :cond_1

    invoke-interface {p0}, Lcom/amazon/system/drawing/Image;->getWidth()I

    move-result v0

    if-gtz v0, :cond_2

    :cond_1
    move v0, v1

    .line 26
    goto :goto_0

    .line 29
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method
