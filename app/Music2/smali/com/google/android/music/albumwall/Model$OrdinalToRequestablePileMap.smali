.class Lcom/google/android/music/albumwall/Model$OrdinalToRequestablePileMap;
.super Lcom/google/android/music/albumwall/LRUCache;
.source "Model.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/albumwall/Model;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OrdinalToRequestablePileMap"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/music/albumwall/LRUCache",
        "<",
        "Ljava/lang/Integer;",
        "Lcom/google/android/music/albumwall/Model$RequestablePile;",
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
    .line 421
    iput-object p1, p0, Lcom/google/android/music/albumwall/Model$OrdinalToRequestablePileMap;->this$0:Lcom/google/android/music/albumwall/Model;

    .line 422
    invoke-direct {p0, p2}, Lcom/google/android/music/albumwall/LRUCache;-><init>(I)V

    .line 423
    return-void
.end method

.method private handleRemoval(Lcom/google/android/music/albumwall/Model$RequestablePile;)V
    .locals 0
    .parameter "pile"

    .prologue
    .line 439
    return-void
.end method


# virtual methods
.method public dump(Ljava/lang/String;)V
    .locals 5
    .parameter "indent"

    .prologue
    .line 449
    invoke-virtual {p0}, Lcom/google/android/music/albumwall/Model$OrdinalToRequestablePileMap;->entrySet()Ljava/util/Set;

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

    .line 450
    .local v0, e:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/google/android/music/albumwall/Model$RequestablePile;>;"
    const-string v2, "Model"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

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

    .line 452
    .end local v0           #e:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/google/android/music/albumwall/Model$RequestablePile;>;"
    :cond_0
    return-void
.end method

.method public invalidate(Lcom/google/android/music/albumwall/AlbumWallCallbackHelper;)V
    .locals 3
    .parameter "helper"

    .prologue
    .line 442
    invoke-virtual {p0}, Lcom/google/android/music/albumwall/Model$OrdinalToRequestablePileMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/music/albumwall/Model$RequestablePile;

    .line 443
    .local v1, pile:Lcom/google/android/music/albumwall/Model$RequestablePile;
    invoke-virtual {v1}, Lcom/google/android/music/albumwall/Model$RequestablePile;->invalidate()V

    .line 444
    const/4 v2, 0x0

    iput-object v2, v1, Lcom/google/android/music/albumwall/Model$RequestablePile;->mPile:Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;

    goto :goto_0

    .line 446
    .end local v1           #pile:Lcom/google/android/music/albumwall/Model$RequestablePile;
    :cond_0
    return-void
.end method

.method public remove(Ljava/lang/Object;)Lcom/google/android/music/albumwall/Model$RequestablePile;
    .locals 1
    .parameter "key"

    .prologue
    .line 427
    invoke-super {p0, p1}, Lcom/google/android/music/albumwall/LRUCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/music/albumwall/Model$RequestablePile;

    .line 428
    .local v0, pile:Lcom/google/android/music/albumwall/Model$RequestablePile;
    if-eqz v0, :cond_0

    .line 432
    invoke-direct {p0, v0}, Lcom/google/android/music/albumwall/Model$OrdinalToRequestablePileMap;->handleRemoval(Lcom/google/android/music/albumwall/Model$RequestablePile;)V

    .line 434
    :cond_0
    return-object v0
.end method

.method public bridge synthetic remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 419
    invoke-virtual {p0, p1}, Lcom/google/android/music/albumwall/Model$OrdinalToRequestablePileMap;->remove(Ljava/lang/Object;)Lcom/google/android/music/albumwall/Model$RequestablePile;

    move-result-object v0

    return-object v0
.end method
