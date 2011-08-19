.class Lcom/android/vending/AssetInfoActivity$SimilarAssetSection$LoadSimilarAssetsAction$1;
.super Ljava/lang/Object;
.source "AssetInfoActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/vending/AssetInfoActivity$SimilarAssetSection$LoadSimilarAssetsAction;->displayResults()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/android/vending/AssetInfoActivity$SimilarAssetSection$LoadSimilarAssetsAction;


# direct methods
.method constructor <init>(Lcom/android/vending/AssetInfoActivity$SimilarAssetSection$LoadSimilarAssetsAction;)V
    .locals 0
    .parameter

    .prologue
    .line 2181
    iput-object p1, p0, Lcom/android/vending/AssetInfoActivity$SimilarAssetSection$LoadSimilarAssetsAction$1;->this$2:Lcom/android/vending/AssetInfoActivity$SimilarAssetSection$LoadSimilarAssetsAction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 2183
    iget-object v0, p0, Lcom/android/vending/AssetInfoActivity$SimilarAssetSection$LoadSimilarAssetsAction$1;->this$2:Lcom/android/vending/AssetInfoActivity$SimilarAssetSection$LoadSimilarAssetsAction;

    iget-object v0, v0, Lcom/android/vending/AssetInfoActivity$SimilarAssetSection$LoadSimilarAssetsAction;->this$1:Lcom/android/vending/AssetInfoActivity$SimilarAssetSection;

    iget-object v0, v0, Lcom/android/vending/AssetInfoActivity$SimilarAssetSection;->this$0:Lcom/android/vending/AssetInfoActivity;

    invoke-virtual {v0}, Lcom/android/vending/AssetInfoActivity;->handleDeferredResultIfNecessary()V

    .line 2185
    iget-object v0, p0, Lcom/android/vending/AssetInfoActivity$SimilarAssetSection$LoadSimilarAssetsAction$1;->this$2:Lcom/android/vending/AssetInfoActivity$SimilarAssetSection$LoadSimilarAssetsAction;

    iget-object v0, v0, Lcom/android/vending/AssetInfoActivity$SimilarAssetSection$LoadSimilarAssetsAction;->this$1:Lcom/android/vending/AssetInfoActivity$SimilarAssetSection;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/vending/AssetInfoActivity$SimilarAssetSection;->access$5402(Lcom/android/vending/AssetInfoActivity$SimilarAssetSection;Z)Z

    .line 2186
    iget-object v0, p0, Lcom/android/vending/AssetInfoActivity$SimilarAssetSection$LoadSimilarAssetsAction$1;->this$2:Lcom/android/vending/AssetInfoActivity$SimilarAssetSection$LoadSimilarAssetsAction;

    iget-object v0, v0, Lcom/android/vending/AssetInfoActivity$SimilarAssetSection$LoadSimilarAssetsAction;->this$1:Lcom/android/vending/AssetInfoActivity$SimilarAssetSection;

    iget-object v0, v0, Lcom/android/vending/AssetInfoActivity$SimilarAssetSection;->this$0:Lcom/android/vending/AssetInfoActivity;

    invoke-static {v0}, Lcom/android/vending/AssetInfoActivity;->access$2500(Lcom/android/vending/AssetInfoActivity;)Lcom/android/vending/AssetInfoActivity$SimilarAssetSection;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/vending/AssetInfoActivity$SimilarAssetSection;->refresh()V

    .line 2187
    return-void
.end method
