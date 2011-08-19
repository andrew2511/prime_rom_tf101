.class Lcom/layar/core/POIRenderer2D$1;
.super Ljava/lang/Object;
.source "POIRenderer2D.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/layar/core/POIRenderer2D;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/layar/core/POIRenderer2D;


# direct methods
.method constructor <init>(Lcom/layar/core/POIRenderer2D;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/layar/core/POIRenderer2D$1;->this$0:Lcom/layar/core/POIRenderer2D;

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const v7, 0x7f0900fb

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 54
    iget-object v2, p0, Lcom/layar/core/POIRenderer2D$1;->this$0:Lcom/layar/core/POIRenderer2D;

    iget-object v2, v2, Lcom/layar/core/POIRenderer2D;->mPoi:Lcom/layar/data/BasePOI;

    iget-object v2, v2, Lcom/layar/data/BasePOI;->object:Lcom/layar/data/BasePOI$POIObject;

    iget-object v2, v2, Lcom/layar/data/BasePOI$POIObject;->full:Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 55
    iget-object v2, p0, Lcom/layar/core/POIRenderer2D$1;->this$0:Lcom/layar/core/POIRenderer2D;

    iget-object v2, v2, Lcom/layar/core/POIRenderer2D;->mPoi:Lcom/layar/data/BasePOI;

    iget-object v2, v2, Lcom/layar/data/BasePOI;->object:Lcom/layar/data/BasePOI$POIObject;

    iget-object v0, v2, Lcom/layar/data/BasePOI$POIObject;->full:Ljava/lang/String;

    .line 57
    .local v0, imageUrl:Ljava/lang/String;
    iget-object v2, p0, Lcom/layar/core/POIRenderer2D$1;->this$0:Lcom/layar/core/POIRenderer2D;

    iget-object v3, p0, Lcom/layar/core/POIRenderer2D$1;->this$0:Lcom/layar/core/POIRenderer2D;

    iget-object v3, v3, Lcom/layar/core/POIRenderer2D;->mPoi:Lcom/layar/data/BasePOI;

    iget-object v3, v3, Lcom/layar/data/BasePOI;->object:Lcom/layar/data/BasePOI$POIObject;

    iget v3, v3, Lcom/layar/data/BasePOI$POIObject;->size:F

    invoke-static {v2, v3}, Lcom/layar/core/POIRenderer2D;->access$0(Lcom/layar/core/POIRenderer2D;F)V

    .line 59
    iget-object v2, p0, Lcom/layar/core/POIRenderer2D$1;->this$0:Lcom/layar/core/POIRenderer2D;

    iget-object v2, v2, Lcom/layar/core/POIRenderer2D;->mStatus:Lcom/layar/util/StatusHelper;

    iget-object v3, p0, Lcom/layar/core/POIRenderer2D$1;->this$0:Lcom/layar/core/POIRenderer2D;

    iget-object v3, v3, Lcom/layar/core/POIRenderer2D;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v7}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lcom/layar/util/StatusHelper;->addProgress(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 61
    invoke-static {v0}, Lcom/layar/data/ImageCache;->readPoiImage(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 62
    .local v1, newImage:Landroid/graphics/Bitmap;
    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/layar/data/ImageCache;->downloadPoiImage(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 63
    :cond_0
    iget-object v2, p0, Lcom/layar/core/POIRenderer2D$1;->this$0:Lcom/layar/core/POIRenderer2D;

    if-nez v1, :cond_7

    move v3, v6

    :goto_0
    invoke-static {v2, v3}, Lcom/layar/core/POIRenderer2D;->access$1(Lcom/layar/core/POIRenderer2D;Z)V

    .line 64
    iget-object v2, p0, Lcom/layar/core/POIRenderer2D$1;->this$0:Lcom/layar/core/POIRenderer2D;

    invoke-static {v2}, Lcom/layar/core/POIRenderer2D;->access$2(Lcom/layar/core/POIRenderer2D;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 65
    iget-object v2, p0, Lcom/layar/core/POIRenderer2D$1;->this$0:Lcom/layar/core/POIRenderer2D;

    iget-object v3, p0, Lcom/layar/core/POIRenderer2D$1;->this$0:Lcom/layar/core/POIRenderer2D;

    iget-object v3, v3, Lcom/layar/core/POIRenderer2D;->mPoi:Lcom/layar/data/BasePOI;

    iget-object v3, v3, Lcom/layar/data/BasePOI;->object:Lcom/layar/data/BasePOI$POIObject;

    iget v3, v3, Lcom/layar/data/BasePOI$POIObject;->size:F

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v3, v4

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    invoke-static {v2, v3}, Lcom/layar/core/POIRenderer2D;->access$3(Lcom/layar/core/POIRenderer2D;F)V

    .line 67
    iget-object v2, p0, Lcom/layar/core/POIRenderer2D$1;->this$0:Lcom/layar/core/POIRenderer2D;

    .line 68
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-static {v3}, Lcom/layar/core/POIRenderer2D;->access$4(I)I

    move-result v3

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-static {v4}, Lcom/layar/core/POIRenderer2D;->access$4(I)I

    move-result v4

    .line 67
    invoke-static {v1, v3, v4, v6}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/layar/core/POIRenderer2D;->access$5(Lcom/layar/core/POIRenderer2D;Landroid/graphics/Bitmap;)V

    .line 70
    iget-object v2, p0, Lcom/layar/core/POIRenderer2D$1;->this$0:Lcom/layar/core/POIRenderer2D;

    iget-object v2, v2, Lcom/layar/core/POIRenderer2D;->mPoi:Lcom/layar/data/BasePOI;

    iget-object v2, v2, Lcom/layar/data/BasePOI;->animations:Lcom/layar/core/animation/AnimationsContainer;

    invoke-virtual {v2, v5}, Lcom/layar/core/animation/AnimationsContainer;->startAnimations(I)V

    .line 77
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 81
    :cond_1
    iget-object v2, p0, Lcom/layar/core/POIRenderer2D$1;->this$0:Lcom/layar/core/POIRenderer2D;

    iget-object v2, v2, Lcom/layar/core/POIRenderer2D;->mStatus:Lcom/layar/util/StatusHelper;

    invoke-virtual {v2, v0}, Lcom/layar/util/StatusHelper;->finishProgress(Ljava/lang/String;)V

    .line 84
    .end local v0           #imageUrl:Ljava/lang/String;
    .end local v1           #newImage:Landroid/graphics/Bitmap;
    :cond_2
    iget-object v2, p0, Lcom/layar/core/POIRenderer2D$1;->this$0:Lcom/layar/core/POIRenderer2D;

    iget-object v2, v2, Lcom/layar/core/POIRenderer2D;->mPoi:Lcom/layar/data/BasePOI;

    iget-object v2, v2, Lcom/layar/data/BasePOI;->object:Lcom/layar/data/BasePOI$POIObject;

    iget-object v2, v2, Lcom/layar/data/BasePOI$POIObject;->reduced:Ljava/lang/String;

    if-eqz v2, :cond_6

    .line 85
    iget-object v2, p0, Lcom/layar/core/POIRenderer2D$1;->this$0:Lcom/layar/core/POIRenderer2D;

    iget-object v2, v2, Lcom/layar/core/POIRenderer2D;->mPoi:Lcom/layar/data/BasePOI;

    iget-object v2, v2, Lcom/layar/data/BasePOI;->object:Lcom/layar/data/BasePOI$POIObject;

    iget-object v0, v2, Lcom/layar/data/BasePOI$POIObject;->reduced:Ljava/lang/String;

    .line 87
    .restart local v0       #imageUrl:Ljava/lang/String;
    iget-object v2, p0, Lcom/layar/core/POIRenderer2D$1;->this$0:Lcom/layar/core/POIRenderer2D;

    iget-object v2, v2, Lcom/layar/core/POIRenderer2D;->mStatus:Lcom/layar/util/StatusHelper;

    iget-object v3, p0, Lcom/layar/core/POIRenderer2D$1;->this$0:Lcom/layar/core/POIRenderer2D;

    iget-object v3, v3, Lcom/layar/core/POIRenderer2D;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v7}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lcom/layar/util/StatusHelper;->addProgress(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 89
    invoke-static {v0}, Lcom/layar/data/ImageCache;->readPoiImage(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 90
    .restart local v1       #newImage:Landroid/graphics/Bitmap;
    if-nez v1, :cond_3

    invoke-static {v0}, Lcom/layar/data/ImageCache;->downloadPoiImage(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 91
    :cond_3
    iget-object v2, p0, Lcom/layar/core/POIRenderer2D$1;->this$0:Lcom/layar/core/POIRenderer2D;

    if-nez v1, :cond_8

    move v3, v6

    :goto_1
    invoke-static {v2, v3}, Lcom/layar/core/POIRenderer2D;->access$6(Lcom/layar/core/POIRenderer2D;Z)V

    .line 92
    iget-object v2, p0, Lcom/layar/core/POIRenderer2D$1;->this$0:Lcom/layar/core/POIRenderer2D;

    invoke-static {v2}, Lcom/layar/core/POIRenderer2D;->access$7(Lcom/layar/core/POIRenderer2D;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 93
    iget-object v2, p0, Lcom/layar/core/POIRenderer2D$1;->this$0:Lcom/layar/core/POIRenderer2D;

    iget-object v3, p0, Lcom/layar/core/POIRenderer2D$1;->this$0:Lcom/layar/core/POIRenderer2D;

    iget-object v3, v3, Lcom/layar/core/POIRenderer2D;->mPoi:Lcom/layar/data/BasePOI;

    iget-object v3, v3, Lcom/layar/data/BasePOI;->object:Lcom/layar/data/BasePOI$POIObject;

    iget v3, v3, Lcom/layar/data/BasePOI$POIObject;->size:F

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v3, v4

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    invoke-static {v2, v3}, Lcom/layar/core/POIRenderer2D;->access$8(Lcom/layar/core/POIRenderer2D;F)V

    .line 95
    iget-object v2, p0, Lcom/layar/core/POIRenderer2D$1;->this$0:Lcom/layar/core/POIRenderer2D;

    .line 96
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-static {v3}, Lcom/layar/core/POIRenderer2D;->access$4(I)I

    move-result v3

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-static {v4}, Lcom/layar/core/POIRenderer2D;->access$4(I)I

    move-result v4

    .line 95
    invoke-static {v1, v3, v4, v6}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/layar/core/POIRenderer2D;->access$9(Lcom/layar/core/POIRenderer2D;Landroid/graphics/Bitmap;)V

    .line 98
    iget-object v2, p0, Lcom/layar/core/POIRenderer2D$1;->this$0:Lcom/layar/core/POIRenderer2D;

    invoke-static {v2}, Lcom/layar/core/POIRenderer2D;->access$10(Lcom/layar/core/POIRenderer2D;)Landroid/graphics/Bitmap;

    move-result-object v2

    if-nez v2, :cond_4

    .line 99
    iget-object v2, p0, Lcom/layar/core/POIRenderer2D$1;->this$0:Lcom/layar/core/POIRenderer2D;

    iget-object v2, v2, Lcom/layar/core/POIRenderer2D;->mPoi:Lcom/layar/data/BasePOI;

    iget-object v2, v2, Lcom/layar/data/BasePOI;->animations:Lcom/layar/core/animation/AnimationsContainer;

    invoke-virtual {v2, v5}, Lcom/layar/core/animation/AnimationsContainer;->startAnimations(I)V

    .line 101
    :cond_4
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 105
    :cond_5
    iget-object v2, p0, Lcom/layar/core/POIRenderer2D$1;->this$0:Lcom/layar/core/POIRenderer2D;

    iget-object v2, v2, Lcom/layar/core/POIRenderer2D;->mStatus:Lcom/layar/util/StatusHelper;

    invoke-virtual {v2, v0}, Lcom/layar/util/StatusHelper;->finishProgress(Ljava/lang/String;)V

    .line 107
    .end local v0           #imageUrl:Ljava/lang/String;
    .end local v1           #newImage:Landroid/graphics/Bitmap;
    :cond_6
    iget-object v2, p0, Lcom/layar/core/POIRenderer2D$1;->this$0:Lcom/layar/core/POIRenderer2D;

    invoke-static {v2, v6}, Lcom/layar/core/POIRenderer2D;->access$11(Lcom/layar/core/POIRenderer2D;Z)V

    .line 108
    iget-object v2, p0, Lcom/layar/core/POIRenderer2D$1;->this$0:Lcom/layar/core/POIRenderer2D;

    iput-boolean v5, v2, Lcom/layar/core/POIRenderer2D;->showThrobber:Z

    .line 109
    return-void

    .restart local v0       #imageUrl:Ljava/lang/String;
    .restart local v1       #newImage:Landroid/graphics/Bitmap;
    :cond_7
    move v3, v5

    .line 63
    goto/16 :goto_0

    :cond_8
    move v3, v5

    .line 91
    goto :goto_1
.end method
