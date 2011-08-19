.class Lcom/android/vending/AssetInfoActivity$SimilarAssetSection$1;
.super Landroid/database/DataSetObserver;
.source "AssetInfoActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/vending/AssetInfoActivity$SimilarAssetSection;-><init>(Lcom/android/vending/AssetInfoActivity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/vending/AssetInfoActivity$SimilarAssetSection;

.field final synthetic val$this$0:Lcom/android/vending/AssetInfoActivity;


# direct methods
.method constructor <init>(Lcom/android/vending/AssetInfoActivity$SimilarAssetSection;Lcom/android/vending/AssetInfoActivity;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2208
    iput-object p1, p0, Lcom/android/vending/AssetInfoActivity$SimilarAssetSection$1;->this$1:Lcom/android/vending/AssetInfoActivity$SimilarAssetSection;

    iput-object p2, p0, Lcom/android/vending/AssetInfoActivity$SimilarAssetSection$1;->val$this$0:Lcom/android/vending/AssetInfoActivity;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    .prologue
    .line 2211
    iget-object v0, p0, Lcom/android/vending/AssetInfoActivity$SimilarAssetSection$1;->this$1:Lcom/android/vending/AssetInfoActivity$SimilarAssetSection;

    invoke-virtual {v0}, Lcom/android/vending/AssetInfoActivity$SimilarAssetSection;->refresh()V

    .line 2212
    return-void
.end method
