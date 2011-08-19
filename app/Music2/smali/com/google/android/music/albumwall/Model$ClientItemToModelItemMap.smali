.class Lcom/google/android/music/albumwall/Model$ClientItemToModelItemMap;
.super Lcom/google/android/music/albumwall/LRUCache;
.source "Model.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/albumwall/Model;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ClientItemToModelItemMap"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/music/albumwall/LRUCache",
        "<",
        "Lcom/google/android/music/albumwall/AlbumWallCallback$Item;",
        "Lcom/google/android/music/albumwall/Model$ModelItem;",
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
    .line 507
    iput-object p1, p0, Lcom/google/android/music/albumwall/Model$ClientItemToModelItemMap;->this$0:Lcom/google/android/music/albumwall/Model;

    .line 508
    invoke-direct {p0, p2}, Lcom/google/android/music/albumwall/LRUCache;-><init>(I)V

    .line 509
    return-void
.end method


# virtual methods
.method public dump(Ljava/lang/String;)V
    .locals 5
    .parameter "indent"

    .prologue
    .line 539
    invoke-virtual {p0}, Lcom/google/android/music/albumwall/Model$ClientItemToModelItemMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .end local p0
    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 540
    .local v0, e:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Lcom/google/android/music/albumwall/AlbumWallCallback$Item;Lcom/google/android/music/albumwall/Model$ModelItem;>;"
    const-string v2, "Model"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 541
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/music/albumwall/Model$ModelItem;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/music/albumwall/Model$ModelItem;->dump(Ljava/lang/String;)V

    goto :goto_0

    .line 543
    .end local v0           #e:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Lcom/google/android/music/albumwall/AlbumWallCallback$Item;Lcom/google/android/music/albumwall/Model$ModelItem;>;"
    :cond_0
    return-void
.end method

.method public eglContextCleared()V
    .locals 3

    .prologue
    .line 546
    invoke-virtual {p0}, Lcom/google/android/music/albumwall/Model$ClientItemToModelItemMap;->values()Ljava/util/Collection;

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

    check-cast v0, Lcom/google/android/music/albumwall/Model$ModelItem;

    .line 547
    .local v0, album:Lcom/google/android/music/albumwall/Model$ModelItem;
    invoke-virtual {v0}, Lcom/google/android/music/albumwall/Model$ModelItem;->eglContextCleared()V

    goto :goto_0

    .line 549
    .end local v0           #album:Lcom/google/android/music/albumwall/Model$ModelItem;
    :cond_0
    return-void
.end method

.method public invalidate(Lcom/google/android/music/albumwall/AlbumWallCallbackHelper;)V
    .locals 3
    .parameter "helper"

    .prologue
    .line 524
    invoke-virtual {p0}, Lcom/google/android/music/albumwall/Model$ClientItemToModelItemMap;->values()Ljava/util/Collection;

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

    check-cast v0, Lcom/google/android/music/albumwall/Model$ModelItem;

    .line 525
    .local v0, album:Lcom/google/android/music/albumwall/Model$ModelItem;
    invoke-virtual {v0}, Lcom/google/android/music/albumwall/Model$ModelItem;->invalidate()V

    goto :goto_0

    .line 527
    .end local v0           #album:Lcom/google/android/music/albumwall/Model$ModelItem;
    :cond_0
    return-void
.end method

.method public invalidate(Lcom/google/android/music/albumwall/AlbumWallCallbackHelper;I)V
    .locals 3
    .parameter "helper"
    .parameter "type"

    .prologue
    .line 533
    invoke-virtual {p0}, Lcom/google/android/music/albumwall/Model$ClientItemToModelItemMap;->values()Ljava/util/Collection;

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

    check-cast v0, Lcom/google/android/music/albumwall/Model$ModelItem;

    .line 534
    .local v0, album:Lcom/google/android/music/albumwall/Model$ModelItem;
    invoke-virtual {v0, p2}, Lcom/google/android/music/albumwall/Model$ModelItem;->invalidate(I)V

    goto :goto_0

    .line 536
    .end local v0           #album:Lcom/google/android/music/albumwall/Model$ModelItem;
    :cond_0
    return-void
.end method

.method public remove(Ljava/lang/Object;)Lcom/google/android/music/albumwall/Model$ModelItem;
    .locals 2
    .parameter "key"

    .prologue
    .line 513
    invoke-super {p0, p1}, Lcom/google/android/music/albumwall/LRUCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/music/albumwall/Model$ModelItem;

    .line 514
    .local v0, album:Lcom/google/android/music/albumwall/Model$ModelItem;
    if-eqz v0, :cond_0

    .line 518
    iget-object v1, p0, Lcom/google/android/music/albumwall/Model$ClientItemToModelItemMap;->this$0:Lcom/google/android/music/albumwall/Model;

    check-cast p1, Lcom/google/android/music/albumwall/AlbumWallCallback$Item;

    .end local p1
    invoke-static {v1, p1, v0}, Lcom/google/android/music/albumwall/Model;->access$400(Lcom/google/android/music/albumwall/Model;Lcom/google/android/music/albumwall/AlbumWallCallback$Item;Lcom/google/android/music/albumwall/Model$ModelItem;)V

    .line 520
    :cond_0
    return-object v0
.end method

.method public bridge synthetic remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 505
    invoke-virtual {p0, p1}, Lcom/google/android/music/albumwall/Model$ClientItemToModelItemMap;->remove(Ljava/lang/Object;)Lcom/google/android/music/albumwall/Model$ModelItem;

    move-result-object v0

    return-object v0
.end method
