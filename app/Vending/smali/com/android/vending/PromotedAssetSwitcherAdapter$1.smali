.class Lcom/android/vending/PromotedAssetSwitcherAdapter$1;
.super Ljava/lang/Object;
.source "PromotedAssetSwitcherAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/vending/PromotedAssetSwitcherAdapter;->notifyInitialLoadCompleteOnUiThread(Lcom/android/vending/PromotedAssetSwitcherAdapter$PromotedAssetData;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/vending/PromotedAssetSwitcherAdapter;

.field final synthetic val$promotedAssetData:Lcom/android/vending/PromotedAssetSwitcherAdapter$PromotedAssetData;


# direct methods
.method constructor <init>(Lcom/android/vending/PromotedAssetSwitcherAdapter;Lcom/android/vending/PromotedAssetSwitcherAdapter$PromotedAssetData;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 203
    iput-object p1, p0, Lcom/android/vending/PromotedAssetSwitcherAdapter$1;->this$0:Lcom/android/vending/PromotedAssetSwitcherAdapter;

    iput-object p2, p0, Lcom/android/vending/PromotedAssetSwitcherAdapter$1;->val$promotedAssetData:Lcom/android/vending/PromotedAssetSwitcherAdapter$PromotedAssetData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 205
    iget-object v0, p0, Lcom/android/vending/PromotedAssetSwitcherAdapter$1;->this$0:Lcom/android/vending/PromotedAssetSwitcherAdapter;

    invoke-static {v0}, Lcom/android/vending/PromotedAssetSwitcherAdapter;->access$000(Lcom/android/vending/PromotedAssetSwitcherAdapter;)Lcom/android/vending/PromotedAssetSwitcherAdapter$InitialLoadListener;

    move-result-object v0

    iget-object v1, p0, Lcom/android/vending/PromotedAssetSwitcherAdapter$1;->val$promotedAssetData:Lcom/android/vending/PromotedAssetSwitcherAdapter$PromotedAssetData;

    invoke-interface {v0, v1}, Lcom/android/vending/PromotedAssetSwitcherAdapter$InitialLoadListener;->notifyInitialLoadComplete(Lcom/android/vending/PromotedAssetSwitcherAdapter$PromotedAssetData;)V

    .line 206
    return-void
.end method
