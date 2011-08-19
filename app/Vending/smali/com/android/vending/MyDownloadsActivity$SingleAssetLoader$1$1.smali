.class Lcom/android/vending/MyDownloadsActivity$SingleAssetLoader$1$1;
.super Ljava/lang/Object;
.source "MyDownloadsActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/vending/MyDownloadsActivity$SingleAssetLoader$1;->onGetAssetsResponse(Ljava/util/List;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/android/vending/MyDownloadsActivity$SingleAssetLoader$1;

.field final synthetic val$asset:Lcom/android/vending/model/Asset;


# direct methods
.method constructor <init>(Lcom/android/vending/MyDownloadsActivity$SingleAssetLoader$1;Lcom/android/vending/model/Asset;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 860
    iput-object p1, p0, Lcom/android/vending/MyDownloadsActivity$SingleAssetLoader$1$1;->this$2:Lcom/android/vending/MyDownloadsActivity$SingleAssetLoader$1;

    iput-object p2, p0, Lcom/android/vending/MyDownloadsActivity$SingleAssetLoader$1$1;->val$asset:Lcom/android/vending/model/Asset;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 862
    iget-object v0, p0, Lcom/android/vending/MyDownloadsActivity$SingleAssetLoader$1$1;->this$2:Lcom/android/vending/MyDownloadsActivity$SingleAssetLoader$1;

    iget-object v0, v0, Lcom/android/vending/MyDownloadsActivity$SingleAssetLoader$1;->this$1:Lcom/android/vending/MyDownloadsActivity$SingleAssetLoader;

    iget-object v0, v0, Lcom/android/vending/MyDownloadsActivity$SingleAssetLoader;->this$0:Lcom/android/vending/MyDownloadsActivity;

    iget-object v1, p0, Lcom/android/vending/MyDownloadsActivity$SingleAssetLoader$1$1;->val$asset:Lcom/android/vending/model/Asset;

    invoke-static {v0, v1}, Lcom/android/vending/MyDownloadsActivity;->access$1100(Lcom/android/vending/MyDownloadsActivity;Lcom/android/vending/model/Asset;)V

    .line 863
    return-void
.end method
