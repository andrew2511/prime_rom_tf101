.class Lcom/google/android/music/albumwall/Model$PileMemberToRequestableItemMap;
.super Lcom/google/android/music/albumwall/LRUCache;
.source "Model.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/albumwall/Model;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PileMemberToRequestableItemMap"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/music/albumwall/LRUCache",
        "<",
        "Lcom/google/android/music/albumwall/Model$PileMemberHandle;",
        "Lcom/google/android/music/albumwall/Model$RequestableItem;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/music/albumwall/Model;


# direct methods
.method public constructor <init>(Lcom/google/android/music/albumwall/Model;I)V
    .locals 0
    .parameter
    .parameter "size"

    .prologue
    .line 603
    iput-object p1, p0, Lcom/google/android/music/albumwall/Model$PileMemberToRequestableItemMap;->this$0:Lcom/google/android/music/albumwall/Model;

    .line 604
    invoke-direct {p0, p2}, Lcom/google/android/music/albumwall/LRUCache;-><init>(I)V

    .line 605
    return-void
.end method

.method private handleRemove(Lcom/google/android/music/albumwall/Model$PileMemberHandle;Lcom/google/android/music/albumwall/Model$RequestableItem;)V
    .locals 0
    .parameter "key"
    .parameter "item"

    .prologue
    .line 621
    return-void
.end method


# virtual methods
.method public dump()V
    .locals 5

    .prologue
    .line 633
    invoke-virtual {p0}, Lcom/google/android/music/albumwall/Model$PileMemberToRequestableItemMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 634
    .local v0, e:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Lcom/google/android/music/albumwall/Model$PileMemberHandle;Lcom/google/android/music/albumwall/Model$RequestableItem;>;"
    const-string v2, "Model"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 636
    .end local v0           #e:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Lcom/google/android/music/albumwall/Model$PileMemberHandle;Lcom/google/android/music/albumwall/Model$RequestableItem;>;"
    :cond_0
    return-void
.end method

.method public invalidate(Lcom/google/android/music/albumwall/AlbumWallCallbackHelper;)V
    .locals 3
    .parameter "helper"

    .prologue
    .line 624
    invoke-virtual {p0}, Lcom/google/android/music/albumwall/Model$PileMemberToRequestableItemMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/music/albumwall/Model$RequestableItem;

    .line 625
    .local v0, albumItem:Lcom/google/android/music/albumwall/Model$RequestableItem;
    invoke-virtual {v0}, Lcom/google/android/music/albumwall/Model$RequestableItem;->invalidate()V

    .line 628
    const/4 v2, 0x0

    iput-object v2, v0, Lcom/google/android/music/albumwall/Model$RequestableItem;->mItem:Lcom/google/android/music/albumwall/AlbumWallCallback$Item;

    goto :goto_0

    .line 630
    .end local v0           #albumItem:Lcom/google/android/music/albumwall/Model$RequestableItem;
    :cond_0
    return-void
.end method

.method public remove(Ljava/lang/Object;)Lcom/google/android/music/albumwall/Model$RequestableItem;
    .locals 1
    .parameter "key"

    .prologue
    .line 609
    invoke-super {p0, p1}, Lcom/google/android/music/albumwall/LRUCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/music/albumwall/Model$RequestableItem;

    .line 610
    .local v0, item:Lcom/google/android/music/albumwall/Model$RequestableItem;
    if-eqz v0, :cond_0

    .line 614
    check-cast p1, Lcom/google/android/music/albumwall/Model$PileMemberHandle;

    .end local p1
    invoke-direct {p0, p1, v0}, Lcom/google/android/music/albumwall/Model$PileMemberToRequestableItemMap;->handleRemove(Lcom/google/android/music/albumwall/Model$PileMemberHandle;Lcom/google/android/music/albumwall/Model$RequestableItem;)V

    .line 616
    :cond_0
    return-object v0
.end method

.method public bridge synthetic remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 600
    invoke-virtual {p0, p1}, Lcom/google/android/music/albumwall/Model$PileMemberToRequestableItemMap;->remove(Ljava/lang/Object;)Lcom/google/android/music/albumwall/Model$RequestableItem;

    move-result-object v0

    return-object v0
.end method
