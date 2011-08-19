.class Lcom/android/vending/AssetItemAdapter$2;
.super Ljava/lang/Object;
.source "AssetItemAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/vending/AssetItemAdapter;->onGetAssetsResponse(Ljava/util/List;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/vending/AssetItemAdapter;

.field final synthetic val$assets:Ljava/util/List;

.field final synthetic val$correctedAssets:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/android/vending/AssetItemAdapter;Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 209
    iput-object p1, p0, Lcom/android/vending/AssetItemAdapter$2;->this$0:Lcom/android/vending/AssetItemAdapter;

    iput-object p2, p0, Lcom/android/vending/AssetItemAdapter$2;->val$assets:Ljava/util/List;

    iput-object p3, p0, Lcom/android/vending/AssetItemAdapter$2;->val$correctedAssets:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 211
    iget-object v0, p0, Lcom/android/vending/AssetItemAdapter$2;->this$0:Lcom/android/vending/AssetItemAdapter;

    iget-object v1, p0, Lcom/android/vending/AssetItemAdapter$2;->val$assets:Ljava/util/List;

    iget-object v2, p0, Lcom/android/vending/AssetItemAdapter$2;->val$correctedAssets:Ljava/util/List;

    invoke-virtual {v0, v1, v2}, Lcom/android/vending/AssetItemAdapter;->addAssets(Ljava/util/List;Ljava/util/List;)V

    .line 212
    return-void
.end method
