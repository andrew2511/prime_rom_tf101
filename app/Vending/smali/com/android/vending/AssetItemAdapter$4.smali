.class Lcom/android/vending/AssetItemAdapter$4;
.super Ljava/lang/Object;
.source "AssetItemAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/vending/AssetItemAdapter;->notifyImagesLoadError(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/vending/AssetItemAdapter;

.field final synthetic val$imageRequestParameters:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/android/vending/AssetItemAdapter;Ljava/util/List;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 673
    iput-object p1, p0, Lcom/android/vending/AssetItemAdapter$4;->this$0:Lcom/android/vending/AssetItemAdapter;

    iput-object p2, p0, Lcom/android/vending/AssetItemAdapter$4;->val$imageRequestParameters:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    .line 675
    iget-object v5, p0, Lcom/android/vending/AssetItemAdapter$4;->this$0:Lcom/android/vending/AssetItemAdapter;

    invoke-static {v5}, Lcom/android/vending/AssetItemAdapter;->access$000(Lcom/android/vending/AssetItemAdapter;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/vending/AssetItemAdapter$OnImagesLoadedListener;

    .line 676
    .local v3, listener:Lcom/android/vending/AssetItemAdapter$OnImagesLoadedListener;
    instance-of v5, v3, Lcom/android/vending/AssetItemAdapter$OnImagesLoadErrorListener;

    if-eqz v5, :cond_0

    .line 677
    iget-object v5, p0, Lcom/android/vending/AssetItemAdapter$4;->val$imageRequestParameters:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/vending/AssetItemAdapter$ImageRequestParameters;

    .line 678
    .local v4, request:Lcom/android/vending/AssetItemAdapter$ImageRequestParameters;
    move-object v0, v3

    check-cast v0, Lcom/android/vending/AssetItemAdapter$OnImagesLoadErrorListener;

    move-object v5, v0

    invoke-virtual {v4}, Lcom/android/vending/AssetItemAdapter$ImageRequestParameters;->getPosition()I

    move-result v6

    invoke-virtual {v4}, Lcom/android/vending/AssetItemAdapter$ImageRequestParameters;->getImageUsage()Lcom/android/vending/model/Asset$AppImageUsage;

    move-result-object v7

    invoke-virtual {v4}, Lcom/android/vending/AssetItemAdapter$ImageRequestParameters;->getImageId()I

    move-result v8

    invoke-interface {v5, v6, v7, v8}, Lcom/android/vending/AssetItemAdapter$OnImagesLoadErrorListener;->onImageLoadError(ILcom/android/vending/model/Asset$AppImageUsage;I)V

    goto :goto_0

    .line 687
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #listener:Lcom/android/vending/AssetItemAdapter$OnImagesLoadedListener;
    .end local v4           #request:Lcom/android/vending/AssetItemAdapter$ImageRequestParameters;
    :cond_1
    iget-object v5, p0, Lcom/android/vending/AssetItemAdapter$4;->this$0:Lcom/android/vending/AssetItemAdapter;

    invoke-static {v5}, Lcom/android/vending/AssetItemAdapter;->access$100(Lcom/android/vending/AssetItemAdapter;)Landroid/widget/ListView;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 688
    iget-object v5, p0, Lcom/android/vending/AssetItemAdapter$4;->this$0:Lcom/android/vending/AssetItemAdapter;

    invoke-static {v5}, Lcom/android/vending/AssetItemAdapter;->access$100(Lcom/android/vending/AssetItemAdapter;)Landroid/widget/ListView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/ListView;->requestLayout()V

    .line 690
    :cond_2
    iget-object v5, p0, Lcom/android/vending/AssetItemAdapter$4;->this$0:Lcom/android/vending/AssetItemAdapter;

    invoke-virtual {v5}, Lcom/android/vending/AssetItemAdapter;->notifyDataSetChanged()V

    .line 691
    return-void
.end method
