.class public abstract Lcom/android/vending/AssetListActivity$PaginationAwareAction;
.super Lcom/android/vending/BaseActivity$BaseAction;
.source "AssetListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/vending/AssetListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x404
    name = "PaginationAwareAction"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/vending/AssetListActivity;


# direct methods
.method public constructor <init>(Lcom/android/vending/AssetListActivity;Lcom/android/vending/BaseActivity;)V
    .locals 0
    .parameter
    .parameter "baseActivity"

    .prologue
    .line 305
    iput-object p1, p0, Lcom/android/vending/AssetListActivity$PaginationAwareAction;->this$0:Lcom/android/vending/AssetListActivity;

    .line 306
    invoke-direct {p0, p2}, Lcom/android/vending/BaseActivity$BaseAction;-><init>(Lcom/android/vending/BaseActivity;)V

    .line 307
    return-void
.end method


# virtual methods
.method public abstract loadMore()V
.end method
