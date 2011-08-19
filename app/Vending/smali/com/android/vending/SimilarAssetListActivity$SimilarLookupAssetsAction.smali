.class public Lcom/android/vending/SimilarAssetListActivity$SimilarLookupAssetsAction;
.super Lcom/android/vending/AssetListActivity$LookupAssetsAction;
.source "SimilarAssetListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/vending/SimilarAssetListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "SimilarLookupAssetsAction"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/vending/SimilarAssetListActivity;


# direct methods
.method protected constructor <init>(Lcom/android/vending/SimilarAssetListActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 150
    iput-object p1, p0, Lcom/android/vending/SimilarAssetListActivity$SimilarLookupAssetsAction;->this$0:Lcom/android/vending/SimilarAssetListActivity;

    invoke-direct {p0, p1}, Lcom/android/vending/AssetListActivity$LookupAssetsAction;-><init>(Lcom/android/vending/AssetListActivity;)V

    return-void
.end method


# virtual methods
.method public prepare()V
    .locals 2

    .prologue
    .line 153
    invoke-super {p0}, Lcom/android/vending/AssetListActivity$LookupAssetsAction;->prepare()V

    .line 154
    iget-object v0, p0, Lcom/android/vending/SimilarAssetListActivity$SimilarLookupAssetsAction;->this$0:Lcom/android/vending/SimilarAssetListActivity;

    invoke-static {v0}, Lcom/android/vending/SimilarAssetListActivity;->access$100(Lcom/android/vending/SimilarAssetListActivity;)Lcom/android/vending/BaseActivity$SnippetInitializer;

    move-result-object v0

    iget-object v1, p0, Lcom/android/vending/SimilarAssetListActivity$SimilarLookupAssetsAction;->this$0:Lcom/android/vending/SimilarAssetListActivity;

    invoke-static {v1}, Lcom/android/vending/SimilarAssetListActivity;->access$000(Lcom/android/vending/SimilarAssetListActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/vending/BaseActivity$SnippetInitializer;->sendRequest(Ljava/lang/String;)V

    .line 155
    return-void
.end method
