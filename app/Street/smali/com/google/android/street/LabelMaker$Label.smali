.class Lcom/google/android/street/LabelMaker$Label;
.super Ljava/lang/Object;
.source "LabelMaker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/street/LabelMaker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Label"
.end annotation


# instance fields
.field public final baseline:F

.field public final grid:Lcom/google/android/street/Grid;

.field public final height:F

.field public final mCrop:[I

.field public final width:F


# direct methods
.method public constructor <init>(Lcom/google/android/street/Grid;FFFIIII)V
    .locals 2
    .parameter "grid"
    .parameter "width"
    .parameter "height"
    .parameter "baseLine"
    .parameter "cropU"
    .parameter "cropV"
    .parameter "cropW"
    .parameter "cropH"

    .prologue
    .line 452
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 453
    iput-object p1, p0, Lcom/google/android/street/LabelMaker$Label;->grid:Lcom/google/android/street/Grid;

    .line 454
    iput p2, p0, Lcom/google/android/street/LabelMaker$Label;->width:F

    .line 455
    iput p3, p0, Lcom/google/android/street/LabelMaker$Label;->height:F

    .line 456
    iput p4, p0, Lcom/google/android/street/LabelMaker$Label;->baseline:F

    .line 457
    const/4 v1, 0x4

    new-array v0, v1, [I

    .line 458
    .local v0, crop:[I
    const/4 v1, 0x0

    aput p5, v0, v1

    .line 459
    const/4 v1, 0x1

    aput p6, v0, v1

    .line 460
    const/4 v1, 0x2

    aput p7, v0, v1

    .line 461
    const/4 v1, 0x3

    aput p8, v0, v1

    .line 462
    iput-object v0, p0, Lcom/google/android/street/LabelMaker$Label;->mCrop:[I

    .line 463
    return-void
.end method
