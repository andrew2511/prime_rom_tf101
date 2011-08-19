.class Lcom/layar/core/POIRenderer$1;
.super Ljava/lang/Object;
.source "POIRenderer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/layar/core/POIRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/layar/core/POIRenderer;


# direct methods
.method constructor <init>(Lcom/layar/core/POIRenderer;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/layar/core/POIRenderer$1;->this$0:Lcom/layar/core/POIRenderer;

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/16 v5, 0x40

    const/4 v4, 0x1

    .line 60
    iget-object v1, p0, Lcom/layar/core/POIRenderer$1;->this$0:Lcom/layar/core/POIRenderer;

    iget-object v1, v1, Lcom/layar/core/POIRenderer;->mPoi:Lcom/layar/data/BasePOI;

    iget-object v1, v1, Lcom/layar/data/BasePOI;->object:Lcom/layar/data/BasePOI$POIObject;

    if-nez v1, :cond_1

    .line 76
    :cond_0
    :goto_0
    return-void

    .line 62
    :cond_1
    iget-object v1, p0, Lcom/layar/core/POIRenderer$1;->this$0:Lcom/layar/core/POIRenderer;

    iget-object v1, v1, Lcom/layar/core/POIRenderer;->mPoi:Lcom/layar/data/BasePOI;

    iget-object v1, v1, Lcom/layar/data/BasePOI;->object:Lcom/layar/data/BasePOI$POIObject;

    iget-object v1, v1, Lcom/layar/data/BasePOI$POIObject;->icon:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 67
    iget-object v1, p0, Lcom/layar/core/POIRenderer$1;->this$0:Lcom/layar/core/POIRenderer;

    iget-object v1, v1, Lcom/layar/core/POIRenderer;->mPoi:Lcom/layar/data/BasePOI;

    iget-object v1, v1, Lcom/layar/data/BasePOI;->object:Lcom/layar/data/BasePOI$POIObject;

    iget-object v1, v1, Lcom/layar/data/BasePOI$POIObject;->icon:Ljava/lang/String;

    invoke-static {v1}, Lcom/layar/data/ImageCache;->readPoiImage(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 68
    .local v0, newIcon:Landroid/graphics/Bitmap;
    if-nez v0, :cond_2

    iget-object v1, p0, Lcom/layar/core/POIRenderer$1;->this$0:Lcom/layar/core/POIRenderer;

    iget-object v1, v1, Lcom/layar/core/POIRenderer;->mPoi:Lcom/layar/data/BasePOI;

    iget-object v1, v1, Lcom/layar/data/BasePOI;->object:Lcom/layar/data/BasePOI$POIObject;

    iget-object v1, v1, Lcom/layar/data/BasePOI$POIObject;->icon:Ljava/lang/String;

    invoke-static {v1}, Lcom/layar/data/ImageCache;->downloadPoiImage(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 69
    :cond_2
    iget-object v1, p0, Lcom/layar/core/POIRenderer$1;->this$0:Lcom/layar/core/POIRenderer;

    if-nez v0, :cond_3

    move v2, v4

    :goto_1
    invoke-static {v1, v2}, Lcom/layar/core/POIRenderer;->access$0(Lcom/layar/core/POIRenderer;Z)V

    .line 70
    iget-object v1, p0, Lcom/layar/core/POIRenderer$1;->this$0:Lcom/layar/core/POIRenderer;

    invoke-static {v1}, Lcom/layar/core/POIRenderer;->access$1(Lcom/layar/core/POIRenderer;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 71
    iget-object v1, p0, Lcom/layar/core/POIRenderer$1;->this$0:Lcom/layar/core/POIRenderer;

    iget-object v2, p0, Lcom/layar/core/POIRenderer$1;->this$0:Lcom/layar/core/POIRenderer;

    iget-object v2, v2, Lcom/layar/core/POIRenderer;->mPoi:Lcom/layar/data/BasePOI;

    iget-object v2, v2, Lcom/layar/data/BasePOI;->object:Lcom/layar/data/BasePOI$POIObject;

    iget v2, v2, Lcom/layar/data/BasePOI$POIObject;->size:F

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v2, v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    iput v2, v1, Lcom/layar/core/POIRenderer;->iconWidthReduced:F

    .line 72
    iget-object v1, p0, Lcom/layar/core/POIRenderer$1;->this$0:Lcom/layar/core/POIRenderer;

    invoke-static {v0, v5, v5, v4}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/layar/core/POIRenderer;->access$2(Lcom/layar/core/POIRenderer;Landroid/graphics/Bitmap;)V

    .line 73
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0

    .line 69
    :cond_3
    const/4 v2, 0x0

    goto :goto_1
.end method
