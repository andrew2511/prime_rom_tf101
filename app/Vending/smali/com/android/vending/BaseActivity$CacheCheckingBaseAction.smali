.class public abstract Lcom/android/vending/BaseActivity$CacheCheckingBaseAction;
.super Lcom/android/vending/BaseActivity$BaseAction;
.source "BaseActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/vending/BaseActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "CacheCheckingBaseAction"
.end annotation


# direct methods
.method public constructor <init>(Lcom/android/vending/BaseActivity;)V
    .locals 0
    .parameter "baseActivity"

    .prologue
    .line 1924
    invoke-direct {p0, p1}, Lcom/android/vending/BaseActivity$BaseAction;-><init>(Lcom/android/vending/BaseActivity;)V

    .line 1925
    return-void
.end method


# virtual methods
.method public abstract isLoadedFromCache()Z
.end method

.method public tryLoadFromCacheAndDisplay()V
    .locals 3

    .prologue
    .line 1932
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/vending/BaseActivity$CacheCheckingBaseAction;->setTriedLoadFromCache(Z)V

    .line 1933
    invoke-virtual {p0}, Lcom/android/vending/BaseActivity$CacheCheckingBaseAction;->prepare()V

    .line 1934
    iget-object v1, p0, Lcom/android/vending/BaseActivity$CacheCheckingBaseAction;->mActionRequestManager:Lcom/android/vending/api/RequestManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/vending/api/RequestManager;->doRequestsFromCache(Z)Z

    .line 1935
    invoke-virtual {p0}, Lcom/android/vending/BaseActivity$CacheCheckingBaseAction;->isLoadedFromCache()Z

    move-result v0

    .line 1936
    .local v0, isLoadedFromCache:Z
    invoke-virtual {p0, v0}, Lcom/android/vending/BaseActivity$CacheCheckingBaseAction;->setLoadedFromCache(Z)V

    .line 1937
    if-eqz v0, :cond_0

    .line 1938
    invoke-virtual {p0}, Lcom/android/vending/BaseActivity$CacheCheckingBaseAction;->displayResults()V

    .line 1940
    :cond_0
    return-void
.end method
