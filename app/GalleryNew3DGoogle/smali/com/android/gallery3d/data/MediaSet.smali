.class public abstract Lcom/android/gallery3d/data/MediaSet;
.super Lcom/android/gallery3d/data/MediaObject;
.source "MediaSet.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery3d/data/MediaSet$ItemConsumer;
    }
.end annotation


# instance fields
.field private mListeners:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Lcom/android/gallery3d/data/ContentListener;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/gallery3d/data/Path;J)V
    .locals 1
    .parameter "path"
    .parameter "version"

    .prologue
    .line 36
    invoke-direct {p0, p1, p2, p3}, Lcom/android/gallery3d/data/MediaObject;-><init>(Lcom/android/gallery3d/data/Path;J)V

    .line 102
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/data/MediaSet;->mListeners:Ljava/util/WeakHashMap;

    .line 37
    return-void
.end method


# virtual methods
.method public addContentListener(Lcom/android/gallery3d/data/ContentListener;)V
    .locals 2
    .parameter "listener"

    .prologue
    .line 109
    iget-object v0, p0, Lcom/android/gallery3d/data/MediaSet;->mListeners:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 110
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 112
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/data/MediaSet;->mListeners:Ljava/util/WeakHashMap;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    return-void
.end method

.method protected enumerateMediaItems(Lcom/android/gallery3d/data/MediaSet$ItemConsumer;I)I
    .locals 9
    .parameter "consumer"
    .parameter "startIndex"

    .prologue
    .line 159
    invoke-virtual {p0}, Lcom/android/gallery3d/data/MediaSet;->getMediaItemCount()I

    move-result v6

    .line 160
    .local v6, total:I
    const/4 v5, 0x0

    .line 161
    .local v5, start:I
    :goto_0
    if-ge v5, v6, :cond_1

    .line 162
    const/16 v7, 0x1f4

    sub-int v8, v6, v5

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 163
    .local v0, count:I
    invoke-virtual {p0, v5, v0}, Lcom/android/gallery3d/data/MediaSet;->getMediaItem(II)Ljava/util/ArrayList;

    move-result-object v3

    .line 164
    .local v3, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/gallery3d/data/MediaItem;>;"
    const/4 v1, 0x0

    .local v1, i:I
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    .local v4, n:I
    :goto_1
    if-ge v1, v4, :cond_0

    .line 165
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/gallery3d/data/MediaItem;

    .line 166
    .local v2, item:Lcom/android/gallery3d/data/MediaItem;
    add-int v7, p2, v5

    add-int/2addr v7, v1

    invoke-interface {p1, v7, v2}, Lcom/android/gallery3d/data/MediaSet$ItemConsumer;->consume(ILcom/android/gallery3d/data/MediaItem;)V

    .line 164
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 168
    .end local v2           #item:Lcom/android/gallery3d/data/MediaItem;
    :cond_0
    add-int/2addr v5, v0

    .line 169
    goto :goto_0

    .line 170
    .end local v0           #count:I
    .end local v1           #i:I
    .end local v3           #items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/gallery3d/data/MediaItem;>;"
    .end local v4           #n:I
    :cond_1
    return v6
.end method

.method public enumerateMediaItems(Lcom/android/gallery3d/data/MediaSet$ItemConsumer;)V
    .locals 1
    .parameter "consumer"

    .prologue
    .line 144
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/gallery3d/data/MediaSet;->enumerateMediaItems(Lcom/android/gallery3d/data/MediaSet$ItemConsumer;I)I

    .line 145
    return-void
.end method

.method protected enumerateTotalMediaItems(Lcom/android/gallery3d/data/MediaSet$ItemConsumer;I)I
    .locals 5
    .parameter "consumer"
    .parameter "startIndex"

    .prologue
    .line 177
    const/4 v2, 0x0

    .line 178
    .local v2, start:I
    invoke-virtual {p0, p1, p2}, Lcom/android/gallery3d/data/MediaSet;->enumerateMediaItems(Lcom/android/gallery3d/data/MediaSet$ItemConsumer;I)I

    move-result v3

    add-int/2addr v2, v3

    .line 179
    invoke-virtual {p0}, Lcom/android/gallery3d/data/MediaSet;->getSubMediaSetCount()I

    move-result v1

    .line 180
    .local v1, m:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 181
    invoke-virtual {p0, v0}, Lcom/android/gallery3d/data/MediaSet;->getSubMediaSet(I)Lcom/android/gallery3d/data/MediaSet;

    move-result-object v3

    add-int v4, p2, v2

    invoke-virtual {v3, p1, v4}, Lcom/android/gallery3d/data/MediaSet;->enumerateTotalMediaItems(Lcom/android/gallery3d/data/MediaSet$ItemConsumer;I)I

    move-result v3

    add-int/2addr v2, v3

    .line 180
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 184
    :cond_0
    return v2
.end method

.method public enumerateTotalMediaItems(Lcom/android/gallery3d/data/MediaSet$ItemConsumer;)V
    .locals 1
    .parameter "consumer"

    .prologue
    .line 148
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/gallery3d/data/MediaSet;->enumerateTotalMediaItems(Lcom/android/gallery3d/data/MediaSet$ItemConsumer;I)I

    .line 149
    return-void
.end method

.method public getDetails()Lcom/android/gallery3d/data/MediaDetails;
    .locals 3

    .prologue
    .line 135
    invoke-super {p0}, Lcom/android/gallery3d/data/MediaObject;->getDetails()Lcom/android/gallery3d/data/MediaDetails;

    move-result-object v0

    .line 136
    .local v0, details:Lcom/android/gallery3d/data/MediaDetails;
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/android/gallery3d/data/MediaSet;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/gallery3d/data/MediaDetails;->addDetail(ILjava/lang/Object;)V

    .line 137
    return-object v0
.end method

.method protected getIndexOf(Lcom/android/gallery3d/data/Path;Ljava/util/ArrayList;)I
    .locals 3
    .parameter "path"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/gallery3d/data/Path;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/gallery3d/data/MediaItem;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 94
    .local p2, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/gallery3d/data/MediaItem;>;"
    const/4 v0, 0x0

    .local v0, i:I
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .end local p0
    .local v1, n:I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 95
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/gallery3d/data/MediaItem;

    iget-object v2, p0, Lcom/android/gallery3d/data/MediaItem;->mPath:Lcom/android/gallery3d/data/Path;

    if-ne v2, p1, :cond_0

    move v2, v0

    .line 97
    :goto_1
    return v2

    .line 94
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 97
    :cond_1
    const/4 v2, -0x1

    goto :goto_1
.end method

.method public getIndexOfItem(Lcom/android/gallery3d/data/Path;I)I
    .locals 7
    .parameter "path"
    .parameter "hint"

    .prologue
    const/4 v6, 0x0

    const/4 v5, -0x1

    const/16 v4, 0x1f4

    .line 74
    const/16 v3, 0xfa

    sub-int v3, p2, v3

    invoke-static {v6, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 76
    .local v2, start:I
    invoke-virtual {p0, v2, v4}, Lcom/android/gallery3d/data/MediaSet;->getMediaItem(II)Ljava/util/ArrayList;

    move-result-object v1

    .line 78
    .local v1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/gallery3d/data/MediaItem;>;"
    invoke-virtual {p0, p1, v1}, Lcom/android/gallery3d/data/MediaSet;->getIndexOf(Lcom/android/gallery3d/data/Path;Ljava/util/ArrayList;)I

    move-result v0

    .line 79
    .local v0, index:I
    if-eq v0, v5, :cond_0

    add-int v3, v2, v0

    .line 87
    :goto_0
    return v3

    .line 82
    :cond_0
    if-nez v2, :cond_1

    move v2, v4

    .line 83
    :goto_1
    invoke-virtual {p0, v2, v4}, Lcom/android/gallery3d/data/MediaSet;->getMediaItem(II)Ljava/util/ArrayList;

    move-result-object v1

    .line 85
    :goto_2
    invoke-virtual {p0, p1, v1}, Lcom/android/gallery3d/data/MediaSet;->getIndexOf(Lcom/android/gallery3d/data/Path;Ljava/util/ArrayList;)I

    move-result v0

    .line 86
    if-eq v0, v5, :cond_2

    add-int v3, v2, v0

    goto :goto_0

    :cond_1
    move v2, v6

    .line 82
    goto :goto_1

    .line 87
    :cond_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v3, v4, :cond_3

    move v3, v5

    goto :goto_0

    .line 88
    :cond_3
    add-int/lit16 v2, v2, 0x1f4

    .line 89
    invoke-virtual {p0, v2, v4}, Lcom/android/gallery3d/data/MediaSet;->getMediaItem(II)Ljava/util/ArrayList;

    move-result-object v1

    goto :goto_2
.end method

.method public getMediaItem(II)Ljava/util/ArrayList;
    .locals 1
    .parameter "start"
    .parameter "count"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/gallery3d/data/MediaItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public getMediaItemCount()I
    .locals 1

    .prologue
    .line 40
    const/4 v0, 0x0

    return v0
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public getSubMediaSet(I)Lcom/android/gallery3d/data/MediaSet;
    .locals 1
    .parameter "index"

    .prologue
    .line 59
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method public getSubMediaSetCount()I
    .locals 1

    .prologue
    .line 55
    const/4 v0, 0x0

    return v0
.end method

.method public getTotalMediaItemCount()I
    .locals 4

    .prologue
    .line 63
    invoke-virtual {p0}, Lcom/android/gallery3d/data/MediaSet;->getMediaItemCount()I

    move-result v2

    .line 64
    .local v2, total:I
    const/4 v0, 0x0

    .local v0, i:I
    invoke-virtual {p0}, Lcom/android/gallery3d/data/MediaSet;->getSubMediaSetCount()I

    move-result v1

    .local v1, n:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 65
    invoke-virtual {p0, v0}, Lcom/android/gallery3d/data/MediaSet;->getSubMediaSet(I)Lcom/android/gallery3d/data/MediaSet;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/gallery3d/data/MediaSet;->getTotalMediaItemCount()I

    move-result v3

    add-int/2addr v2, v3

    .line 64
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 67
    :cond_0
    return v2
.end method

.method public notifyContentChanged()V
    .locals 3

    .prologue
    .line 124
    iget-object v2, p0, Lcom/android/gallery3d/data/MediaSet;->mListeners:Ljava/util/WeakHashMap;

    invoke-virtual {v2}, Ljava/util/WeakHashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/gallery3d/data/ContentListener;

    .line 125
    .local v1, listener:Lcom/android/gallery3d/data/ContentListener;
    invoke-interface {v1}, Lcom/android/gallery3d/data/ContentListener;->onContentDirty()V

    goto :goto_0

    .line 127
    .end local v1           #listener:Lcom/android/gallery3d/data/ContentListener;
    :cond_0
    return-void
.end method

.method public abstract reload()J
.end method

.method public removeContentListener(Lcom/android/gallery3d/data/ContentListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 116
    iget-object v0, p0, Lcom/android/gallery3d/data/MediaSet;->mListeners:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 117
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 119
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/data/MediaSet;->mListeners:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    return-void
.end method
