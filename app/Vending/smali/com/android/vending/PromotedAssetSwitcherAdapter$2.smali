.class Lcom/android/vending/PromotedAssetSwitcherAdapter$2;
.super Ljava/lang/Object;
.source "PromotedAssetSwitcherAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/vending/PromotedAssetSwitcherAdapter;->notifyFullLoadCompleteOnUiThread(Lcom/android/vending/PromotedAssetSwitcherAdapter$PromotedAssetData;Z)V
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
    .line 220
    iput-object p1, p0, Lcom/android/vending/PromotedAssetSwitcherAdapter$2;->this$0:Lcom/android/vending/PromotedAssetSwitcherAdapter;

    iput-object p2, p0, Lcom/android/vending/PromotedAssetSwitcherAdapter$2;->val$promotedAssetData:Lcom/android/vending/PromotedAssetSwitcherAdapter$PromotedAssetData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 222
    iget-object v0, p0, Lcom/android/vending/PromotedAssetSwitcherAdapter$2;->this$0:Lcom/android/vending/PromotedAssetSwitcherAdapter;

    invoke-static {v0}, Lcom/android/vending/PromotedAssetSwitcherAdapter;->access$100(Lcom/android/vending/PromotedAssetSwitcherAdapter;)Lcom/android/vending/PromotedAssetSwitcherAdapter$FullLoadListener;

    move-result-object v0

    iget-object v1, p0, Lcom/android/vending/PromotedAssetSwitcherAdapter$2;->val$promotedAssetData:Lcom/android/vending/PromotedAssetSwitcherAdapter$PromotedAssetData;

    invoke-interface {v0, v1}, Lcom/android/vending/PromotedAssetSwitcherAdapter$FullLoadListener;->notifyFullLoadComplete(Lcom/android/vending/PromotedAssetSwitcherAdapter$PromotedAssetData;)V

    .line 223
    return-void
.end method
