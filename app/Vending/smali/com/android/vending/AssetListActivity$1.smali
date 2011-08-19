.class Lcom/android/vending/AssetListActivity$1;
.super Landroid/database/DataSetObserver;
.source "AssetListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/vending/AssetListActivity;->finishSetup()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/vending/AssetListActivity;


# direct methods
.method constructor <init>(Lcom/android/vending/AssetListActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 130
    iput-object p1, p0, Lcom/android/vending/AssetListActivity$1;->this$0:Lcom/android/vending/AssetListActivity;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 2

    .prologue
    .line 133
    iget-object v0, p0, Lcom/android/vending/AssetListActivity$1;->this$0:Lcom/android/vending/AssetListActivity;

    iget-object v0, v0, Lcom/android/vending/AssetListActivity;->mAssetAdapter:Lcom/android/vending/AssetItemAdapter;

    invoke-virtual {v0}, Lcom/android/vending/AssetItemAdapter;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 134
    iget-object v0, p0, Lcom/android/vending/AssetListActivity$1;->this$0:Lcom/android/vending/AssetListActivity;

    iget-object v0, v0, Lcom/android/vending/AssetListActivity;->mNoAssetsView:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 138
    :goto_0
    return-void

    .line 136
    :cond_0
    iget-object v0, p0, Lcom/android/vending/AssetListActivity$1;->this$0:Lcom/android/vending/AssetListActivity;

    iget-object v0, v0, Lcom/android/vending/AssetListActivity;->mNoAssetsView:Landroid/widget/FrameLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_0
.end method
