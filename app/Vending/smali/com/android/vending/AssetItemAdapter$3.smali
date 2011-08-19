.class Lcom/android/vending/AssetItemAdapter$3;
.super Ljava/lang/Object;
.source "AssetItemAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/vending/AssetItemAdapter;->notifyImagesLoaded(Ljava/util/List;)V
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
    .line 647
    iput-object p1, p0, Lcom/android/vending/AssetItemAdapter$3;->this$0:Lcom/android/vending/AssetItemAdapter;

    iput-object p2, p0, Lcom/android/vending/AssetItemAdapter$3;->val$imageRequestParameters:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 649
    iget-object v4, p0, Lcom/android/vending/AssetItemAdapter$3;->this$0:Lcom/android/vending/AssetItemAdapter;

    invoke-static {v4}, Lcom/android/vending/AssetItemAdapter;->access$000(Lcom/android/vending/AssetItemAdapter;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/vending/AssetItemAdapter$OnImagesLoadedListener;

    .line 650
    .local v2, listener:Lcom/android/vending/AssetItemAdapter$OnImagesLoadedListener;
    iget-object v4, p0, Lcom/android/vending/AssetItemAdapter$3;->val$imageRequestParameters:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/vending/AssetItemAdapter$ImageRequestParameters;

    .line 651
    .local v3, request:Lcom/android/vending/AssetItemAdapter$ImageRequestParameters;
    invoke-virtual {v3}, Lcom/android/vending/AssetItemAdapter$ImageRequestParameters;->getPosition()I

    move-result v4

    invoke-virtual {v3}, Lcom/android/vending/AssetItemAdapter$ImageRequestParameters;->getImageUsage()Lcom/android/vending/model/Asset$AppImageUsage;

    move-result-object v5

    invoke-virtual {v3}, Lcom/android/vending/AssetItemAdapter$ImageRequestParameters;->getImageId()I

    move-result v6

    invoke-interface {v2, v4, v5, v6}, Lcom/android/vending/AssetItemAdapter$OnImagesLoadedListener;->onImageLoaded(ILcom/android/vending/model/Asset$AppImageUsage;I)V

    goto :goto_0

    .line 658
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #listener:Lcom/android/vending/AssetItemAdapter$OnImagesLoadedListener;
    .end local v3           #request:Lcom/android/vending/AssetItemAdapter$ImageRequestParameters;
    :cond_1
    iget-object v4, p0, Lcom/android/vending/AssetItemAdapter$3;->this$0:Lcom/android/vending/AssetItemAdapter;

    invoke-static {v4}, Lcom/android/vending/AssetItemAdapter;->access$100(Lcom/android/vending/AssetItemAdapter;)Landroid/widget/ListView;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 659
    iget-object v4, p0, Lcom/android/vending/AssetItemAdapter$3;->this$0:Lcom/android/vending/AssetItemAdapter;

    invoke-static {v4}, Lcom/android/vending/AssetItemAdapter;->access$100(Lcom/android/vending/AssetItemAdapter;)Landroid/widget/ListView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/ListView;->requestLayout()V

    .line 661
    :cond_2
    iget-object v4, p0, Lcom/android/vending/AssetItemAdapter$3;->this$0:Lcom/android/vending/AssetItemAdapter;

    invoke-virtual {v4}, Lcom/android/vending/AssetItemAdapter;->notifyDataSetChanged()V

    .line 662
    return-void
.end method
