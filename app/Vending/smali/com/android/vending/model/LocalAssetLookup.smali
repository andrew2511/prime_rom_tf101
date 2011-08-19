.class public Lcom/android/vending/model/LocalAssetLookup;
.super Ljava/lang/Object;
.source "LocalAssetLookup.java"


# instance fields
.field private final mIdLookup:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/vending/model/LocalAsset;",
            ">;"
        }
    .end annotation
.end field

.field private final mPackageLookup:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/vending/model/LocalAsset;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/vending/model/LocalAssetLookup;->mIdLookup:Ljava/util/HashMap;

    .line 21
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/vending/model/LocalAssetLookup;->mPackageLookup:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/vending/model/LocalAssetLookup;->mIdLookup:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 57
    iget-object v0, p0, Lcom/android/vending/model/LocalAssetLookup;->mPackageLookup:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 58
    return-void
.end method

.method public get(Ljava/lang/String;)Lcom/android/vending/model/LocalAsset;
    .locals 1
    .parameter "serverId"

    .prologue
    .line 133
    invoke-virtual {p0, p1}, Lcom/android/vending/model/LocalAssetLookup;->getByServerId(Ljava/lang/String;)Lcom/android/vending/model/LocalAsset;

    move-result-object v0

    return-object v0
.end method

.method public getAll(Lcom/android/vending/model/LocalAssetInfo$AssetState;)Ljava/util/Collection;
    .locals 4
    .parameter "state"
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

    .prologue
    .line 66
    new-instance v2, Ljava/util/HashSet;

    iget-object v3, p0, Lcom/android/vending/model/LocalAssetLookup;->mIdLookup:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(I)V

    .line 67
    .local v2, result:Ljava/util/Set;,"Ljava/util/Set<Lcom/android/vending/model/LocalAsset;>;"
    iget-object v3, p0, Lcom/android/vending/model/LocalAssetLookup;->mIdLookup:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/vending/model/LocalAsset;

    .line 68
    .local v0, asset:Lcom/android/vending/model/LocalAsset;
    invoke-virtual {v0}, Lcom/android/vending/model/LocalAsset;->getState()Lcom/android/vending/model/LocalAssetInfo$AssetState;

    move-result-object v3

    if-ne v3, p1, :cond_0

    .line 69
    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 72
    .end local v0           #asset:Lcom/android/vending/model/LocalAsset;
    :cond_1
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v3

    return-object v3
.end method

.method public getAllByAccount(Ljava/lang/String;)Ljava/util/Collection;
    .locals 4
    .parameter "account"
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

    .prologue
    .line 76
    new-instance v2, Ljava/util/HashSet;

    iget-object v3, p0, Lcom/android/vending/model/LocalAssetLookup;->mIdLookup:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(I)V

    .line 77
    .local v2, result:Ljava/util/Set;,"Ljava/util/Set<Lcom/android/vending/model/LocalAsset;>;"
    iget-object v3, p0, Lcom/android/vending/model/LocalAssetLookup;->mIdLookup:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/vending/model/LocalAsset;

    .line 78
    .local v0, asset:Lcom/android/vending/model/LocalAsset;
    invoke-virtual {v0}, Lcom/android/vending/model/LocalAsset;->getAccount()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 79
    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 82
    .end local v0           #asset:Lcom/android/vending/model/LocalAsset;
    :cond_1
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v3

    return-object v3
.end method

.method public getAllByPackageName(Ljava/lang/String;)Ljava/util/Collection;
    .locals 5
    .parameter "packageName"
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

    .prologue
    .line 86
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 87
    .local v3, result:Ljava/util/Set;,"Ljava/util/Set<Lcom/android/vending/model/LocalAsset;>;"
    iget-object v4, p0, Lcom/android/vending/model/LocalAssetLookup;->mPackageLookup:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    .line 88
    .local v1, assets:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/android/vending/model/LocalAsset;>;"
    if-eqz v1, :cond_0

    .line 89
    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/vending/model/LocalAsset;

    .line 90
    .local v0, asset:Lcom/android/vending/model/LocalAsset;
    invoke-interface {v3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 93
    .end local v0           #asset:Lcom/android/vending/model/LocalAsset;
    .end local v2           #i$:Ljava/util/Iterator;
    :cond_0
    invoke-static {v3}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v4

    return-object v4
.end method

.method public getByPackageName(Ljava/lang/String;Lcom/android/vending/model/LocalAssetInfo$AssetState;)Lcom/android/vending/model/LocalAsset;
    .locals 1
    .parameter "packageName"
    .parameter "state"

    .prologue
    .line 41
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/vending/model/LocalAssetLookup;->getByPackageNameAndAccount(Ljava/lang/String;Lcom/android/vending/model/LocalAssetInfo$AssetState;Ljava/lang/String;)Lcom/android/vending/model/LocalAsset;

    move-result-object v0

    return-object v0
.end method

.method public getByPackageNameAndAccount(Ljava/lang/String;Lcom/android/vending/model/LocalAssetInfo$AssetState;Ljava/lang/String;)Lcom/android/vending/model/LocalAsset;
    .locals 2
    .parameter "packageName"
    .parameter "state"
    .parameter "account"

    .prologue
    .line 47
    iget-object v1, p0, Lcom/android/vending/model/LocalAssetLookup;->mPackageLookup:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 48
    .local v0, localAssets:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/android/vending/model/LocalAsset;>;"
    if-nez v0, :cond_0

    .line 49
    const/4 v1, 0x0

    .line 52
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-static {p3, v1, p2}, Lcom/android/vending/model/LocalAsset;->getMatchingLocalAsset(Ljava/lang/String;Ljava/util/Collection;Lcom/android/vending/model/LocalAssetInfo$AssetState;)Lcom/android/vending/model/LocalAsset;

    move-result-object v1

    goto :goto_0
.end method

.method public getByServerId(Ljava/lang/String;)Lcom/android/vending/model/LocalAsset;
    .locals 1
    .parameter "serverId"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/vending/model/LocalAssetLookup;->mIdLookup:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/vending/model/LocalAsset;

    return-object p0
.end method

.method public getByUri(Landroid/net/Uri;)Lcom/android/vending/model/LocalAsset;
    .locals 3
    .parameter "uri"

    .prologue
    .line 97
    iget-object v2, p0, Lcom/android/vending/model/LocalAssetLookup;->mIdLookup:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/vending/model/LocalAsset;

    .line 98
    .local v0, asset:Lcom/android/vending/model/LocalAsset;
    invoke-virtual {v0}, Lcom/android/vending/model/LocalAsset;->getLocalInfo()Lcom/android/vending/model/LocalAssetInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/vending/model/LocalAssetInfo;->getContentUri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v2, v0

    .line 102
    .end local v0           #asset:Lcom/android/vending/model/LocalAsset;
    :goto_0
    return-object v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public keySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 125
    iget-object v0, p0, Lcom/android/vending/model/LocalAssetLookup;->mIdLookup:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public put(Ljava/lang/String;Lcom/android/vending/model/LocalAsset;)V
    .locals 3
    .parameter "serverId"
    .parameter "localAsset"

    .prologue
    .line 25
    iget-object v2, p0, Lcom/android/vending/model/LocalAssetLookup;->mIdLookup:Ljava/util/HashMap;

    invoke-virtual {v2, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    invoke-virtual {p2}, Lcom/android/vending/model/LocalAsset;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 28
    .local v1, packageName:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/vending/model/LocalAssetLookup;->mPackageLookup:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 29
    .local v0, containerMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/android/vending/model/LocalAsset;>;"
    if-nez v0, :cond_0

    .line 30
    new-instance v0, Ljava/util/HashMap;

    .end local v0           #containerMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/android/vending/model/LocalAsset;>;"
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 32
    .restart local v0       #containerMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/android/vending/model/LocalAsset;>;"
    :cond_0
    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    iget-object v2, p0, Lcom/android/vending/model/LocalAssetLookup;->mPackageLookup:Ljava/util/HashMap;

    invoke-virtual {v2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    return-void
.end method

.method public remove(Ljava/lang/String;)Lcom/android/vending/model/LocalAsset;
    .locals 4
    .parameter "serverId"

    .prologue
    .line 106
    iget-object v2, p0, Lcom/android/vending/model/LocalAssetLookup;->mIdLookup:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/vending/model/LocalAsset;

    .line 107
    .local v0, asset:Lcom/android/vending/model/LocalAsset;
    if-eqz v0, :cond_1

    .line 108
    iget-object v2, p0, Lcom/android/vending/model/LocalAssetLookup;->mPackageLookup:Ljava/util/HashMap;

    invoke-virtual {v0}, Lcom/android/vending/model/LocalAsset;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    .line 109
    .local v1, packages:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/android/vending/model/LocalAsset;>;"
    if-eqz v1, :cond_0

    .line 110
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    :cond_0
    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 114
    iget-object v2, p0, Lcom/android/vending/model/LocalAssetLookup;->mPackageLookup:Ljava/util/HashMap;

    invoke-virtual {v0}, Lcom/android/vending/model/LocalAsset;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    .end local v1           #packages:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/android/vending/model/LocalAsset;>;"
    :cond_1
    return-object v0
.end method
