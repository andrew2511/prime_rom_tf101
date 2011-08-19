.class Lcom/android/vending/SimilarAssetListActivity$1;
.super Ljava/lang/Object;
.source "SimilarAssetListActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/vending/SimilarAssetListActivity;->onLookupAssetsComplete()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/vending/SimilarAssetListActivity;


# direct methods
.method constructor <init>(Lcom/android/vending/SimilarAssetListActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 121
    iput-object p1, p0, Lcom/android/vending/SimilarAssetListActivity$1;->this$0:Lcom/android/vending/SimilarAssetListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 124
    iget-object v0, p0, Lcom/android/vending/SimilarAssetListActivity$1;->this$0:Lcom/android/vending/SimilarAssetListActivity;

    const v1, 0x7f080041

    invoke-virtual {v0, v1}, Lcom/android/vending/SimilarAssetListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 125
    return-void
.end method
