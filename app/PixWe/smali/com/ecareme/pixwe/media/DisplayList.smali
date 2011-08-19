.class public final Lcom/ecareme/pixwe/media/DisplayList;
.super Ljava/lang/Object;
.source "DisplayList.java"


# instance fields
.field private mAnimatables:Lcom/ecareme/pixwe/media/DirectLinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/ecareme/pixwe/media/DirectLinkedList",
            "<",
            "Lcom/ecareme/pixwe/media/DisplayItem;",
            ">;"
        }
    .end annotation
.end field

.field private mDisplayMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/ecareme/pixwe/media/MediaItem;",
            "Lcom/ecareme/pixwe/media/DisplayItem;",
            ">;"
        }
    .end annotation
.end field

.field private mItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/ecareme/pixwe/media/DisplayItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/16 v1, 0x400

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Lcom/ecareme/pixwe/media/DirectLinkedList;

    invoke-direct {v0}, Lcom/ecareme/pixwe/media/DirectLinkedList;-><init>()V

    iput-object v0, p0, Lcom/ecareme/pixwe/media/DisplayList;->mAnimatables:Lcom/ecareme/pixwe/media/DirectLinkedList;

    .line 26
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/ecareme/pixwe/media/DisplayList;->mDisplayMap:Ljava/util/HashMap;

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/ecareme/pixwe/media/DisplayList;->mItems:Ljava/util/ArrayList;

    .line 24
    return-void
.end method

.method private markIfDirty(Lcom/ecareme/pixwe/media/DisplayItem;)V
    .locals 1
    .parameter "item"

    .prologue
    .line 120
    invoke-virtual {p1}, Lcom/ecareme/pixwe/media/DisplayItem;->isAnimating()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 121
    invoke-virtual {p0, p1}, Lcom/ecareme/pixwe/media/DisplayList;->addToAnimatables(Lcom/ecareme/pixwe/media/DisplayItem;)V

    .line 123
    :cond_0
    return-void
.end method


# virtual methods
.method public addToAnimatables(Lcom/ecareme/pixwe/media/DisplayItem;)V
    .locals 3
    .parameter "item"

    .prologue
    .line 110
    invoke-virtual {p1}, Lcom/ecareme/pixwe/media/DisplayItem;->getAnimatablesEntry()Lcom/ecareme/pixwe/media/DirectLinkedList$Entry;

    move-result-object v1

    .line 111
    .local v1, entry:Lcom/ecareme/pixwe/media/DirectLinkedList$Entry;,"Lcom/ecareme/pixwe/media/DirectLinkedList$Entry<Lcom/ecareme/pixwe/media/DisplayItem;>;"
    iget-boolean v2, v1, Lcom/ecareme/pixwe/media/DirectLinkedList$Entry;->inserted:Z

    if-nez v2, :cond_0

    .line 112
    iget-object v0, p0, Lcom/ecareme/pixwe/media/DisplayList;->mAnimatables:Lcom/ecareme/pixwe/media/DirectLinkedList;

    .line 113
    .local v0, animatables:Lcom/ecareme/pixwe/media/DirectLinkedList;,"Lcom/ecareme/pixwe/media/DirectLinkedList<Lcom/ecareme/pixwe/media/DisplayItem;>;"
    monitor-enter v0

    .line 114
    :try_start_0
    invoke-virtual {v0, v1}, Lcom/ecareme/pixwe/media/DirectLinkedList;->add(Lcom/ecareme/pixwe/media/DirectLinkedList$Entry;)V

    .line 113
    monitor-exit v0

    .line 117
    .end local v0           #animatables:Lcom/ecareme/pixwe/media/DirectLinkedList;,"Lcom/ecareme/pixwe/media/DirectLinkedList<Lcom/ecareme/pixwe/media/DisplayItem;>;"
    :cond_0
    return-void

    .line 113
    .restart local v0       #animatables:Lcom/ecareme/pixwe/media/DirectLinkedList;,"Lcom/ecareme/pixwe/media/DirectLinkedList<Lcom/ecareme/pixwe/media/DisplayItem;>;"
    :catchall_0
    move-exception v2

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public clear()V
    .locals 2

    .prologue
    .line 126
    iget-object v0, p0, Lcom/ecareme/pixwe/media/DisplayList;->mDisplayMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 127
    iget-object v0, p0, Lcom/ecareme/pixwe/media/DisplayList;->mItems:Ljava/util/ArrayList;

    monitor-enter v0

    .line 128
    :try_start_0
    iget-object v1, p0, Lcom/ecareme/pixwe/media/DisplayList;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 127
    monitor-exit v0

    .line 130
    return-void

    .line 127
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public clearExcept([Lcom/ecareme/pixwe/media/DisplayItem;)V
    .locals 6
    .parameter "displayItems"

    .prologue
    .line 133
    iget-object v1, p0, Lcom/ecareme/pixwe/media/DisplayList;->mDisplayMap:Ljava/util/HashMap;

    .line 134
    .local v1, displayMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Lcom/ecareme/pixwe/media/MediaItem;Lcom/ecareme/pixwe/media/DisplayItem;>;"
    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 135
    iget-object v4, p0, Lcom/ecareme/pixwe/media/DisplayList;->mItems:Ljava/util/ArrayList;

    monitor-enter v4

    .line 136
    :try_start_0
    iget-object v5, p0, Lcom/ecareme/pixwe/media/DisplayList;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 137
    array-length v3, p1

    .line 138
    .local v3, numItems:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-lt v2, v3, :cond_0

    .line 135
    monitor-exit v4

    .line 146
    return-void

    .line 139
    :cond_0
    aget-object v0, p1, v2

    .line 140
    .local v0, displayItem:Lcom/ecareme/pixwe/media/DisplayItem;
    if-eqz v0, :cond_1

    .line 141
    iget-object v5, v0, Lcom/ecareme/pixwe/media/DisplayItem;->mItemRef:Lcom/ecareme/pixwe/media/MediaItem;

    invoke-virtual {v1, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    iget-object v5, p0, Lcom/ecareme/pixwe/media/DisplayList;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 138
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 135
    .end local v0           #displayItem:Lcom/ecareme/pixwe/media/DisplayItem;
    .end local v2           #i:I
    .end local v3           #numItems:I
    :catchall_0
    move-exception v5

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5
.end method

.method public commit(Lcom/ecareme/pixwe/media/DisplayItem;)V
    .locals 2
    .parameter "item"

    .prologue
    .line 102
    invoke-virtual {p1}, Lcom/ecareme/pixwe/media/DisplayItem;->commit()V

    .line 103
    iget-object v0, p0, Lcom/ecareme/pixwe/media/DisplayList;->mAnimatables:Lcom/ecareme/pixwe/media/DirectLinkedList;

    .line 104
    .local v0, animatables:Lcom/ecareme/pixwe/media/DirectLinkedList;,"Lcom/ecareme/pixwe/media/DirectLinkedList<Lcom/ecareme/pixwe/media/DisplayItem;>;"
    monitor-enter v0

    .line 105
    :try_start_0
    invoke-virtual {p1}, Lcom/ecareme/pixwe/media/DisplayItem;->getAnimatablesEntry()Lcom/ecareme/pixwe/media/DirectLinkedList$Entry;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ecareme/pixwe/media/DirectLinkedList;->remove(Lcom/ecareme/pixwe/media/DirectLinkedList$Entry;)Lcom/ecareme/pixwe/media/DirectLinkedList$Entry;

    .line 104
    monitor-exit v0

    .line 107
    return-void

    .line 104
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public get(Lcom/ecareme/pixwe/media/MediaItem;)Lcom/ecareme/pixwe/media/DisplayItem;
    .locals 3
    .parameter "item"

    .prologue
    .line 30
    iget-object v1, p0, Lcom/ecareme/pixwe/media/DisplayList;->mDisplayMap:Ljava/util/HashMap;

    .line 31
    .local v1, displayMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Lcom/ecareme/pixwe/media/MediaItem;Lcom/ecareme/pixwe/media/DisplayItem;>;"
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ecareme/pixwe/media/DisplayItem;

    .line 32
    .local v0, displayItem:Lcom/ecareme/pixwe/media/DisplayItem;
    if-nez v0, :cond_0

    .line 33
    new-instance v0, Lcom/ecareme/pixwe/media/DisplayItem;

    .end local v0           #displayItem:Lcom/ecareme/pixwe/media/DisplayItem;
    invoke-direct {v0, p1}, Lcom/ecareme/pixwe/media/DisplayItem;-><init>(Lcom/ecareme/pixwe/media/MediaItem;)V

    .line 34
    .restart local v0       #displayItem:Lcom/ecareme/pixwe/media/DisplayItem;
    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    iget-object v2, p0, Lcom/ecareme/pixwe/media/DisplayList;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 37
    :cond_0
    return-object v0
.end method

.method public getAllDisplayItems()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/ecareme/pixwe/media/DisplayItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 68
    iget-object v0, p0, Lcom/ecareme/pixwe/media/DisplayList;->mItems:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getNumAnimatables()I
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/ecareme/pixwe/media/DisplayList;->mAnimatables:Lcom/ecareme/pixwe/media/DirectLinkedList;

    invoke-virtual {v0}, Lcom/ecareme/pixwe/media/DirectLinkedList;->size()I

    move-result v0

    return v0
.end method

.method public setAlive(Lcom/ecareme/pixwe/media/DisplayItem;Z)V
    .locals 2
    .parameter "item"
    .parameter "alive"

    .prologue
    .line 92
    iput-boolean p2, p1, Lcom/ecareme/pixwe/media/DisplayItem;->mAlive:Z

    .line 93
    if-eqz p2, :cond_0

    invoke-virtual {p1}, Lcom/ecareme/pixwe/media/DisplayItem;->isAnimating()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 94
    invoke-virtual {p1}, Lcom/ecareme/pixwe/media/DisplayItem;->getAnimatablesEntry()Lcom/ecareme/pixwe/media/DirectLinkedList$Entry;

    move-result-object v0

    .line 95
    .local v0, entry:Lcom/ecareme/pixwe/media/DirectLinkedList$Entry;,"Lcom/ecareme/pixwe/media/DirectLinkedList$Entry<Lcom/ecareme/pixwe/media/DisplayItem;>;"
    iget-boolean v1, v0, Lcom/ecareme/pixwe/media/DirectLinkedList$Entry;->inserted:Z

    if-nez v1, :cond_0

    .line 96
    iget-object v1, p0, Lcom/ecareme/pixwe/media/DisplayList;->mAnimatables:Lcom/ecareme/pixwe/media/DirectLinkedList;

    invoke-virtual {v1, v0}, Lcom/ecareme/pixwe/media/DirectLinkedList;->add(Lcom/ecareme/pixwe/media/DirectLinkedList$Entry;)V

    .line 99
    .end local v0           #entry:Lcom/ecareme/pixwe/media/DirectLinkedList$Entry;,"Lcom/ecareme/pixwe/media/DirectLinkedList$Entry<Lcom/ecareme/pixwe/media/DisplayItem;>;"
    :cond_0
    return-void
.end method

.method public setHasFocus(Lcom/ecareme/pixwe/media/DisplayItem;ZZ)V
    .locals 1
    .parameter "item"
    .parameter "hasFocus"
    .parameter "pushDown"

    .prologue
    .line 50
    invoke-virtual {p1}, Lcom/ecareme/pixwe/media/DisplayItem;->getHasFocus()Z

    move-result v0

    .line 51
    .local v0, currentHasFocus:Z
    if-eq v0, p2, :cond_0

    .line 52
    invoke-virtual {p1, p2, p3}, Lcom/ecareme/pixwe/media/DisplayItem;->setHasFocus(ZZ)V

    .line 53
    invoke-direct {p0, p1}, Lcom/ecareme/pixwe/media/DisplayList;->markIfDirty(Lcom/ecareme/pixwe/media/DisplayItem;)V

    .line 55
    :cond_0
    return-void
.end method

.method public final setOffset(Lcom/ecareme/pixwe/media/DisplayItem;ZZFFFFF)V
    .locals 0
    .parameter "item"
    .parameter "useOffset"
    .parameter "pushDown"
    .parameter "span"
    .parameter "dx1"
    .parameter "dy1"
    .parameter "dx2"
    .parameter "dy2"

    .prologue
    .line 58
    invoke-virtual/range {p1 .. p8}, Lcom/ecareme/pixwe/media/DisplayItem;->setOffset(ZZFFFFF)V

    .line 59
    invoke-direct {p0, p1}, Lcom/ecareme/pixwe/media/DisplayList;->markIfDirty(Lcom/ecareme/pixwe/media/DisplayItem;)V

    .line 60
    return-void
.end method

.method public setPositionAndStackIndex(Lcom/ecareme/pixwe/media/DisplayItem;Lcom/ecareme/pixwe/media/Vector3f;IZ)V
    .locals 0
    .parameter "item"
    .parameter "position"
    .parameter "stackId"
    .parameter "performTransition"

    .prologue
    .line 41
    invoke-virtual {p1, p2, p3, p4}, Lcom/ecareme/pixwe/media/DisplayItem;->set(Lcom/ecareme/pixwe/media/Vector3f;IZ)V

    .line 42
    if-nez p4, :cond_0

    .line 43
    invoke-virtual {p1}, Lcom/ecareme/pixwe/media/DisplayItem;->commit()V

    .line 47
    :goto_0
    return-void

    .line 45
    :cond_0
    invoke-direct {p0, p1}, Lcom/ecareme/pixwe/media/DisplayList;->markIfDirty(Lcom/ecareme/pixwe/media/DisplayItem;)V

    goto :goto_0
.end method

.method public final setSingleOffset(Lcom/ecareme/pixwe/media/DisplayItem;ZZFFFF)V
    .locals 0
    .parameter "item"
    .parameter "useOffset"
    .parameter "pushAway"
    .parameter "x"
    .parameter "y"
    .parameter "z"
    .parameter "spreadValue"

    .prologue
    .line 63
    invoke-virtual/range {p1 .. p7}, Lcom/ecareme/pixwe/media/DisplayItem;->setSingleOffset(ZZFFFF)V

    .line 64
    invoke-direct {p0, p1}, Lcom/ecareme/pixwe/media/DisplayList;->markIfDirty(Lcom/ecareme/pixwe/media/DisplayItem;)V

    .line 65
    return-void
.end method

.method public update(F)V
    .locals 4
    .parameter "timeElapsed"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/ecareme/pixwe/media/DisplayList;->mAnimatables:Lcom/ecareme/pixwe/media/DirectLinkedList;

    .line 73
    .local v0, animatables:Lcom/ecareme/pixwe/media/DirectLinkedList;,"Lcom/ecareme/pixwe/media/DirectLinkedList<Lcom/ecareme/pixwe/media/DisplayItem;>;"
    monitor-enter v0

    .line 74
    :try_start_0
    invoke-virtual {v0}, Lcom/ecareme/pixwe/media/DirectLinkedList;->getHead()Lcom/ecareme/pixwe/media/DirectLinkedList$Entry;

    move-result-object v1

    .line 75
    .local v1, entry:Lcom/ecareme/pixwe/media/DirectLinkedList$Entry;,"Lcom/ecareme/pixwe/media/DirectLinkedList$Entry<Lcom/ecareme/pixwe/media/DisplayItem;>;"
    :goto_0
    if-nez v1, :cond_0

    .line 73
    monitor-exit v0

    .line 85
    return-void

    .line 76
    :cond_0
    iget-object v2, v1, Lcom/ecareme/pixwe/media/DirectLinkedList$Entry;->value:Ljava/lang/Object;

    check-cast v2, Lcom/ecareme/pixwe/media/DisplayItem;

    .line 77
    .local v2, item:Lcom/ecareme/pixwe/media/DisplayItem;
    invoke-virtual {v2, p1}, Lcom/ecareme/pixwe/media/DisplayItem;->update(F)V

    .line 78
    invoke-virtual {v2}, Lcom/ecareme/pixwe/media/DisplayItem;->isAnimating()Z

    move-result v3

    if-nez v3, :cond_1

    .line 79
    invoke-virtual {v0, v1}, Lcom/ecareme/pixwe/media/DirectLinkedList;->remove(Lcom/ecareme/pixwe/media/DirectLinkedList$Entry;)Lcom/ecareme/pixwe/media/DirectLinkedList$Entry;

    move-result-object v1

    goto :goto_0

    .line 81
    :cond_1
    iget-object v1, v1, Lcom/ecareme/pixwe/media/DirectLinkedList$Entry;->next:Lcom/ecareme/pixwe/media/DirectLinkedList$Entry;

    goto :goto_0

    .line 73
    .end local v1           #entry:Lcom/ecareme/pixwe/media/DirectLinkedList$Entry;,"Lcom/ecareme/pixwe/media/DirectLinkedList$Entry<Lcom/ecareme/pixwe/media/DisplayItem;>;"
    .end local v2           #item:Lcom/ecareme/pixwe/media/DisplayItem;
    :catchall_0
    move-exception v3

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method
