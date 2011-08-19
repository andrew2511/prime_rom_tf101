.class Lcom/android/vending/GetPromotedBitmapsAction$2;
.super Ljava/lang/Object;
.source "GetPromotedBitmapsAction.java"

# interfaces
.implements Lcom/android/vending/api/GetImageService$GetImageReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/vending/GetPromotedBitmapsAction;->prepare()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/vending/GetPromotedBitmapsAction;


# direct methods
.method constructor <init>(Lcom/android/vending/GetPromotedBitmapsAction;)V
    .locals 0
    .parameter

    .prologue
    .line 106
    iput-object p1, p0, Lcom/android/vending/GetPromotedBitmapsAction$2;->this$0:Lcom/android/vending/GetPromotedBitmapsAction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGetImageResponse(Lcom/android/vending/model/GetImageRequest;Lcom/android/vending/model/GetImageResponse;)V
    .locals 5
    .parameter "request"
    .parameter "response"

    .prologue
    .line 109
    iget-object v2, p0, Lcom/android/vending/GetPromotedBitmapsAction$2;->this$0:Lcom/android/vending/GetPromotedBitmapsAction;

    iget-object v2, v2, Lcom/android/vending/GetPromotedBitmapsAction;->mPromotedList:Ljava/util/List;

    invoke-virtual {p1}, Lcom/android/vending/model/GetImageRequest;->getAssetId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 110
    .local v0, assetIndex:Ljava/lang/Integer;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v3, p0, Lcom/android/vending/GetPromotedBitmapsAction$2;->this$0:Lcom/android/vending/GetPromotedBitmapsAction;

    iget v3, v3, Lcom/android/vending/GetPromotedBitmapsAction;->mStartIndex:I

    if-ge v2, v3, :cond_1

    .line 118
    :cond_0
    :goto_0
    return-void

    .line 113
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v3, p0, Lcom/android/vending/GetPromotedBitmapsAction$2;->this$0:Lcom/android/vending/GetPromotedBitmapsAction;

    iget v3, v3, Lcom/android/vending/GetPromotedBitmapsAction;->mEndIndex:I

    if-ge v2, v3, :cond_0

    .line 116
    iget-object v2, p0, Lcom/android/vending/GetPromotedBitmapsAction$2;->this$0:Lcom/android/vending/GetPromotedBitmapsAction;

    iget-object v2, v2, Lcom/android/vending/GetPromotedBitmapsAction;->mPromotedDatas:[Lcom/android/vending/velvet/CarouselView$ThumbnailAssetData;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v4, p0, Lcom/android/vending/GetPromotedBitmapsAction$2;->this$0:Lcom/android/vending/GetPromotedBitmapsAction;

    iget v4, v4, Lcom/android/vending/GetPromotedBitmapsAction;->mStartIndex:I

    sub-int/2addr v3, v4

    aget-object v1, v2, v3

    .line 117
    .local v1, data:Lcom/android/vending/velvet/CarouselView$ThumbnailAssetData;
    new-instance v2, Ljava/lang/ref/SoftReference;

    invoke-virtual {p2}, Lcom/android/vending/model/GetImageResponse;->getImage()Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v2, v1, Lcom/android/vending/velvet/CarouselView$ThumbnailAssetData;->mBitmapRef:Ljava/lang/ref/SoftReference;

    goto :goto_0
.end method
