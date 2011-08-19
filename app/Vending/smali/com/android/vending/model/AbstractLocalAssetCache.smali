.class public interface abstract Lcom/android/vending/model/AbstractLocalAssetCache;
.super Ljava/lang/Object;
.source "AbstractLocalAssetCache.java"


# virtual methods
.method public abstract addListener(Lcom/android/vending/model/LocalAssetCache$AssetStateListener;)V
.end method

.method public abstract getAll(Lcom/android/vending/model/LocalAssetInfo$AssetState;)Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/vending/model/LocalAssetInfo$AssetState;",
            ")",
            "Ljava/util/Collection",
            "<",
            "Lcom/android/vending/model/LocalAsset;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getAllByAccount(Ljava/lang/String;)Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Collection",
            "<",
            "Lcom/android/vending/model/LocalAsset;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getAllByPackageName(Ljava/lang/String;)Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Collection",
            "<",
            "Lcom/android/vending/model/LocalAsset;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getAppInfo(Ljava/lang/String;)Landroid/content/pm/ApplicationInfo;
.end method

.method public abstract getById(Ljava/lang/String;)Lcom/android/vending/model/LocalAsset;
.end method

.method public abstract getByPackageName(Ljava/lang/String;Lcom/android/vending/model/LocalAssetInfo$AssetState;)Lcom/android/vending/model/LocalAsset;
.end method

.method public abstract getByPackageNameAndAccount(Ljava/lang/String;Lcom/android/vending/model/LocalAssetInfo$AssetState;Ljava/lang/String;)Lcom/android/vending/model/LocalAsset;
.end method

.method public abstract getByUri(Landroid/net/Uri;)Lcom/android/vending/model/LocalAsset;
.end method

.method public abstract invalidate(Ljava/lang/String;)V
.end method

.method public abstract localDbUpdate(Ljava/lang/String;Lcom/android/vending/model/LocalAssetInfo$AssetState;)V
.end method

.method public abstract removeListener(Lcom/android/vending/model/LocalAssetCache$AssetStateListener;)V
.end method
