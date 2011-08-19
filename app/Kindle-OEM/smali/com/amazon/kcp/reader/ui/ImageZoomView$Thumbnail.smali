.class Lcom/amazon/kcp/reader/ui/ImageZoomView$Thumbnail;
.super Ljava/lang/Object;
.source "ImageZoomView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/reader/ui/ImageZoomView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Thumbnail"
.end annotation


# instance fields
.field private scaleFactor:F

.field final synthetic this$0:Lcom/amazon/kcp/reader/ui/ImageZoomView;

.field private thumbnailHeight:I

.field private thumbnailWidth:I


# direct methods
.method public constructor <init>(Lcom/amazon/kcp/reader/ui/ImageZoomView;IIII)V
    .locals 7
    .parameter
    .parameter "screenWidth"
    .parameter "screenHeight"
    .parameter "bitmapWidth"
    .parameter "bitmapHeight"

    .prologue
    const/4 v6, 0x0

    const v5, 0x3e19999a

    .line 734
    iput-object p1, p0, Lcom/amazon/kcp/reader/ui/ImageZoomView$Thumbnail;->this$0:Lcom/amazon/kcp/reader/ui/ImageZoomView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 735
    if-eqz p4, :cond_0

    if-nez p5, :cond_1

    .line 737
    :cond_0
    const/4 v4, 0x0

    iput v4, p0, Lcom/amazon/kcp/reader/ui/ImageZoomView$Thumbnail;->scaleFactor:F

    .line 738
    iput v6, p0, Lcom/amazon/kcp/reader/ui/ImageZoomView$Thumbnail;->thumbnailWidth:I

    .line 739
    iput v6, p0, Lcom/amazon/kcp/reader/ui/ImageZoomView$Thumbnail;->thumbnailHeight:I

    .line 751
    :goto_0
    return-void

    .line 742
    :cond_1
    int-to-float v4, p2

    mul-float/2addr v4, v5

    float-to-int v2, v4

    .line 743
    .local v2, maxWidth:I
    int-to-float v4, p3

    mul-float/2addr v4, v5

    float-to-int v1, v4

    .line 745
    .local v1, maxHeight:I
    int-to-float v4, v2

    int-to-float v5, p4

    div-float v3, v4, v5

    .line 746
    .local v3, widthScaling:F
    int-to-float v4, v1

    int-to-float v5, p5

    div-float v0, v4, v5

    .line 747
    .local v0, heightScaling:F
    cmpg-float v4, v3, v0

    if-gez v4, :cond_2

    move v4, v3

    :goto_1
    iput v4, p0, Lcom/amazon/kcp/reader/ui/ImageZoomView$Thumbnail;->scaleFactor:F

    .line 749
    int-to-float v4, p4

    iget v5, p0, Lcom/amazon/kcp/reader/ui/ImageZoomView$Thumbnail;->scaleFactor:F

    mul-float/2addr v4, v5

    float-to-int v4, v4

    iput v4, p0, Lcom/amazon/kcp/reader/ui/ImageZoomView$Thumbnail;->thumbnailWidth:I

    .line 750
    int-to-float v4, p5

    iget v5, p0, Lcom/amazon/kcp/reader/ui/ImageZoomView$Thumbnail;->scaleFactor:F

    mul-float/2addr v4, v5

    float-to-int v4, v4

    iput v4, p0, Lcom/amazon/kcp/reader/ui/ImageZoomView$Thumbnail;->thumbnailHeight:I

    goto :goto_0

    :cond_2
    move v4, v0

    .line 747
    goto :goto_1
.end method


# virtual methods
.method public getHeight()I
    .locals 1

    .prologue
    .line 780
    iget v0, p0, Lcom/amazon/kcp/reader/ui/ImageZoomView$Thumbnail;->thumbnailHeight:I

    return v0
.end method

.method public getScaleFactor()F
    .locals 1

    .prologue
    .line 762
    iget v0, p0, Lcom/amazon/kcp/reader/ui/ImageZoomView$Thumbnail;->scaleFactor:F

    return v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 771
    iget v0, p0, Lcom/amazon/kcp/reader/ui/ImageZoomView$Thumbnail;->thumbnailWidth:I

    return v0
.end method
