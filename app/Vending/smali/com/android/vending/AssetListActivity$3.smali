.class Lcom/android/vending/AssetListActivity$3;
.super Ljava/lang/Object;
.source "AssetListActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/vending/AssetListActivity;
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
    .line 389
    iput-object p1, p0, Lcom/android/vending/AssetListActivity$3;->this$0:Lcom/android/vending/AssetListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 391
    iget-object v0, p0, Lcom/android/vending/AssetListActivity$3;->this$0:Lcom/android/vending/AssetListActivity;

    invoke-virtual {v0}, Lcom/android/vending/AssetListActivity;->retryExecutingAction()V

    .line 392
    return-void
.end method
