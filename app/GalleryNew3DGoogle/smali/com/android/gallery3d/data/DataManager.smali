.class public Lcom/android/gallery3d/data/DataManager;
.super Ljava/lang/Object;
.source "DataManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery3d/data/DataManager$1;,
        Lcom/android/gallery3d/data/DataManager$NotifyBroker;,
        Lcom/android/gallery3d/data/DataManager$DateTakenComparator;
    }
.end annotation


# static fields
.field public static final sDateTakenComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/android/gallery3d/data/MediaItem;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mActiveCount:I

.field private mApplication:Lcom/android/gallery3d/app/GalleryApp;

.field private final mDataThread:Landroid/os/HandlerThread;

.field private final mDefaultDataHandler:Landroid/os/Handler;

.field private final mDefaultMainHandler:Landroid/os/Handler;

.field private mNotifierMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/net/Uri;",
            "Lcom/android/gallery3d/data/DataManager$NotifyBroker;",
            ">;"
        }
    .end annotation
.end field

.field private mSourceMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/gallery3d/data/MediaSource;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 79
    new-instance v0, Lcom/android/gallery3d/data/DataManager$DateTakenComparator;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/gallery3d/data/DataManager$DateTakenComparator;-><init>(Lcom/android/gallery3d/data/DataManager$1;)V

    sput-object v0, Lcom/android/gallery3d/data/DataManager;->sDateTakenComparator:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(Lcom/android/gallery3d/app/GalleryApp;)V
    .locals 3
    .parameter "application"

    .prologue
    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/gallery3d/data/DataManager;->mActiveCount:I

    .line 95
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/data/DataManager;->mNotifierMap:Ljava/util/HashMap;

    .line 99
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/data/DataManager;->mSourceMap:Ljava/util/HashMap;

    .line 103
    iput-object p1, p0, Lcom/android/gallery3d/data/DataManager;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    .line 105
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "DataThread"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/android/gallery3d/data/DataManager;->mDataThread:Landroid/os/HandlerThread;

    .line 107
    iget-object v0, p0, Lcom/android/gallery3d/data/DataManager;->mDataThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 108
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/gallery3d/data/DataManager;->mDataThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/gallery3d/data/DataManager;->mDefaultDataHandler:Landroid/os/Handler;

    .line 109
    new-instance v0, Landroid/os/Handler;

    invoke-interface {p1}, Lcom/android/gallery3d/app/GalleryApp;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/gallery3d/data/DataManager;->mDefaultMainHandler:Landroid/os/Handler;

    .line 110
    return-void
.end method


# virtual methods
.method addSource(Lcom/android/gallery3d/data/MediaSource;)V
    .locals 2
    .parameter "source"

    .prologue
    .line 154
    iget-object v0, p0, Lcom/android/gallery3d/data/DataManager;->mSourceMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/android/gallery3d/data/MediaSource;->getPrefix()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    return-void
.end method

.method public delete(Lcom/android/gallery3d/data/Path;)V
    .locals 1
    .parameter "path"

    .prologue
    .line 241
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/data/DataManager;->getMediaObject(Lcom/android/gallery3d/data/Path;)Lcom/android/gallery3d/data/MediaObject;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/data/MediaObject;->delete()V

    .line 242
    return-void
.end method

.method public findPathByUri(Landroid/net/Uri;)Lcom/android/gallery3d/data/Path;
    .locals 5
    .parameter "uri"

    .prologue
    const/4 v4, 0x0

    .line 265
    if-nez p1, :cond_0

    move-object v3, v4

    .line 270
    :goto_0
    return-object v3

    .line 266
    :cond_0
    iget-object v3, p0, Lcom/android/gallery3d/data/DataManager;->mSourceMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/gallery3d/data/MediaSource;

    .line 267
    .local v2, source:Lcom/android/gallery3d/data/MediaSource;
    invoke-virtual {v2, p1}, Lcom/android/gallery3d/data/MediaSource;->findPathByUri(Landroid/net/Uri;)Lcom/android/gallery3d/data/Path;

    move-result-object v1

    .line 268
    .local v1, path:Lcom/android/gallery3d/data/Path;
    if-eqz v1, :cond_1

    move-object v3, v1

    goto :goto_0

    .end local v1           #path:Lcom/android/gallery3d/data/Path;
    .end local v2           #source:Lcom/android/gallery3d/data/MediaSource;
    :cond_2
    move-object v3, v4

    .line 270
    goto :goto_0
.end method

.method public getContentUri(Lcom/android/gallery3d/data/Path;)Landroid/net/Uri;
    .locals 1
    .parameter "path"

    .prologue
    .line 249
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/data/DataManager;->getMediaObject(Lcom/android/gallery3d/data/Path;)Lcom/android/gallery3d/data/MediaObject;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/data/MediaObject;->getContentUri()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public getDataLooper()Landroid/os/Looper;
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/android/gallery3d/data/DataManager;->mDataThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultDataHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/android/gallery3d/data/DataManager;->mDefaultDataHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public getDefaultSetOf(Lcom/android/gallery3d/data/Path;)Lcom/android/gallery3d/data/Path;
    .locals 3
    .parameter "item"

    .prologue
    .line 274
    iget-object v1, p0, Lcom/android/gallery3d/data/DataManager;->mSourceMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/android/gallery3d/data/Path;->getPrefix()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/data/MediaSource;

    .line 275
    .local v0, source:Lcom/android/gallery3d/data/MediaSource;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/gallery3d/data/MediaSource;->getDefaultSetOf(Lcom/android/gallery3d/data/Path;)Lcom/android/gallery3d/data/Path;

    move-result-object v1

    goto :goto_0
.end method

.method public getMediaObject(Lcom/android/gallery3d/data/Path;)Lcom/android/gallery3d/data/MediaObject;
    .locals 6
    .parameter "path"

    .prologue
    .line 166
    invoke-virtual {p1}, Lcom/android/gallery3d/data/Path;->getObject()Lcom/android/gallery3d/data/MediaObject;

    move-result-object v0

    .line 167
    .local v0, obj:Lcom/android/gallery3d/data/MediaObject;
    if-eqz v0, :cond_0

    move-object v3, v0

    .line 179
    :goto_0
    return-object v3

    .line 169
    :cond_0
    iget-object v3, p0, Lcom/android/gallery3d/data/DataManager;->mSourceMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/android/gallery3d/data/Path;->getPrefix()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/gallery3d/data/MediaSource;

    .line 170
    .local v2, source:Lcom/android/gallery3d/data/MediaSource;
    if-nez v2, :cond_1

    .line 171
    const-string v3, "DataManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "cannot find media source for path: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/gallery3d/data/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    const/4 v3, 0x0

    goto :goto_0

    .line 175
    :cond_1
    invoke-virtual {v2, p1}, Lcom/android/gallery3d/data/MediaSource;->createMediaObject(Lcom/android/gallery3d/data/Path;)Lcom/android/gallery3d/data/MediaObject;

    move-result-object v1

    .line 176
    .local v1, object:Lcom/android/gallery3d/data/MediaObject;
    if-nez v1, :cond_2

    .line 177
    const-string v3, "DataManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "cannot create media object: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/gallery3d/data/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    move-object v3, v1

    .line 179
    goto :goto_0
.end method

.method public getMediaObject(Ljava/lang/String;)Lcom/android/gallery3d/data/MediaObject;
    .locals 1
    .parameter "s"

    .prologue
    .line 183
    invoke-static {p1}, Lcom/android/gallery3d/data/Path;->fromString(Ljava/lang/String;)Lcom/android/gallery3d/data/Path;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/data/DataManager;->getMediaObject(Lcom/android/gallery3d/data/Path;)Lcom/android/gallery3d/data/MediaObject;

    move-result-object v0

    return-object v0
.end method

.method public getMediaSet(Lcom/android/gallery3d/data/Path;)Lcom/android/gallery3d/data/MediaSet;
    .locals 0
    .parameter "path"

    .prologue
    .line 187
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/data/DataManager;->getMediaObject(Lcom/android/gallery3d/data/Path;)Lcom/android/gallery3d/data/MediaObject;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/gallery3d/data/MediaSet;

    return-object p0
.end method

.method public getMediaSet(Ljava/lang/String;)Lcom/android/gallery3d/data/MediaSet;
    .locals 0
    .parameter "s"

    .prologue
    .line 191
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/data/DataManager;->getMediaObject(Ljava/lang/String;)Lcom/android/gallery3d/data/MediaObject;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/gallery3d/data/MediaSet;

    return-object p0
.end method

.method public getMediaSetsFromString(Ljava/lang/String;)[Lcom/android/gallery3d/data/MediaSet;
    .locals 5
    .parameter "segment"

    .prologue
    .line 195
    invoke-static {p1}, Lcom/android/gallery3d/data/Path;->splitSequence(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 196
    .local v2, seq:[Ljava/lang/String;
    array-length v1, v2

    .line 197
    .local v1, n:I
    new-array v3, v1, [Lcom/android/gallery3d/data/MediaSet;

    .line 198
    .local v3, sets:[Lcom/android/gallery3d/data/MediaSet;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 199
    aget-object v4, v2, v0

    invoke-virtual {p0, v4}, Lcom/android/gallery3d/data/DataManager;->getMediaSet(Ljava/lang/String;)Lcom/android/gallery3d/data/MediaSet;

    move-result-object v4

    aput-object v4, v3, v0

    .line 198
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 201
    :cond_0
    return-object v3
.end method

.method public getMediaType(Lcom/android/gallery3d/data/Path;)I
    .locals 1
    .parameter "path"

    .prologue
    .line 253
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/data/DataManager;->getMediaObject(Lcom/android/gallery3d/data/Path;)Lcom/android/gallery3d/data/MediaObject;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/data/MediaObject;->getMediaType()I

    move-result v0

    return v0
.end method

.method public getSupportedOperations(Lcom/android/gallery3d/data/Path;)I
    .locals 1
    .parameter "path"

    .prologue
    .line 237
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/data/DataManager;->getMediaObject(Lcom/android/gallery3d/data/Path;)Lcom/android/gallery3d/data/MediaObject;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/data/MediaObject;->getSupportedOperations()I

    move-result v0

    return v0
.end method

.method public getTopSetPath(I)Ljava/lang/String;
    .locals 1
    .parameter "typeBits"

    .prologue
    .line 141
    packed-switch p1, :pswitch_data_0

    .line 148
    :pswitch_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 142
    :pswitch_1
    const-string v0, "/combo/{/mtp,/local/image,/picasa/image}"

    .line 147
    :goto_0
    return-object v0

    .line 143
    :pswitch_2
    const-string v0, "/combo/{/local/video,/picasa/video}"

    goto :goto_0

    .line 144
    :pswitch_3
    const-string v0, "/combo/{/mtp,/local/all,/picasa/all}"

    goto :goto_0

    .line 145
    :pswitch_4
    const-string v0, "/local/image"

    goto :goto_0

    .line 146
    :pswitch_5
    const-string v0, "/local/video"

    goto :goto_0

    .line 147
    :pswitch_6
    const-string v0, "/local/all"

    goto :goto_0

    .line 141
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public getTotalTargetCacheSize()J
    .locals 6

    .prologue
    .line 290
    const-wide/16 v2, 0x0

    .line 291
    .local v2, sum:J
    iget-object v4, p0, Lcom/android/gallery3d/data/DataManager;->mSourceMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/gallery3d/data/MediaSource;

    .line 292
    .local v1, source:Lcom/android/gallery3d/data/MediaSource;
    invoke-virtual {v1}, Lcom/android/gallery3d/data/MediaSource;->getTotalTargetCacheSize()J

    move-result-wide v4

    add-long/2addr v2, v4

    goto :goto_0

    .line 294
    .end local v1           #source:Lcom/android/gallery3d/data/MediaSource;
    :cond_0
    return-wide v2
.end method

.method public getTotalUsedCacheSize()J
    .locals 6

    .prologue
    .line 280
    const-wide/16 v2, 0x0

    .line 281
    .local v2, sum:J
    iget-object v4, p0, Lcom/android/gallery3d/data/DataManager;->mSourceMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/gallery3d/data/MediaSource;

    .line 282
    .local v1, source:Lcom/android/gallery3d/data/MediaSource;
    invoke-virtual {v1}, Lcom/android/gallery3d/data/MediaSource;->getTotalUsedCacheSize()J

    move-result-wide v4

    add-long/2addr v2, v4

    goto :goto_0

    .line 284
    .end local v1           #source:Lcom/android/gallery3d/data/MediaSource;
    :cond_0
    return-wide v2
.end method

.method public declared-synchronized initializeSourceMap()V
    .locals 4

    .prologue
    .line 113
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/android/gallery3d/data/DataManager;->mSourceMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_1

    .line 129
    :cond_0
    monitor-exit p0

    return-void

    .line 116
    :cond_1
    :try_start_1
    new-instance v2, Lcom/android/gallery3d/data/LocalSource;

    iget-object v3, p0, Lcom/android/gallery3d/data/DataManager;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    invoke-direct {v2, v3}, Lcom/android/gallery3d/data/LocalSource;-><init>(Lcom/android/gallery3d/app/GalleryApp;)V

    invoke-virtual {p0, v2}, Lcom/android/gallery3d/data/DataManager;->addSource(Lcom/android/gallery3d/data/MediaSource;)V

    .line 117
    new-instance v2, Lcom/android/gallery3d/data/PicasaSource;

    iget-object v3, p0, Lcom/android/gallery3d/data/DataManager;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    invoke-direct {v2, v3}, Lcom/android/gallery3d/data/PicasaSource;-><init>(Lcom/android/gallery3d/app/GalleryApp;)V

    invoke-virtual {p0, v2}, Lcom/android/gallery3d/data/DataManager;->addSource(Lcom/android/gallery3d/data/MediaSource;)V

    .line 118
    new-instance v2, Lcom/android/gallery3d/data/MtpSource;

    iget-object v3, p0, Lcom/android/gallery3d/data/DataManager;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    invoke-direct {v2, v3}, Lcom/android/gallery3d/data/MtpSource;-><init>(Lcom/android/gallery3d/app/GalleryApp;)V

    invoke-virtual {p0, v2}, Lcom/android/gallery3d/data/DataManager;->addSource(Lcom/android/gallery3d/data/MediaSource;)V

    .line 119
    new-instance v2, Lcom/android/gallery3d/data/ComboSource;

    iget-object v3, p0, Lcom/android/gallery3d/data/DataManager;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    invoke-direct {v2, v3}, Lcom/android/gallery3d/data/ComboSource;-><init>(Lcom/android/gallery3d/app/GalleryApp;)V

    invoke-virtual {p0, v2}, Lcom/android/gallery3d/data/DataManager;->addSource(Lcom/android/gallery3d/data/MediaSource;)V

    .line 120
    new-instance v2, Lcom/android/gallery3d/data/ClusterSource;

    iget-object v3, p0, Lcom/android/gallery3d/data/DataManager;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    invoke-direct {v2, v3}, Lcom/android/gallery3d/data/ClusterSource;-><init>(Lcom/android/gallery3d/app/GalleryApp;)V

    invoke-virtual {p0, v2}, Lcom/android/gallery3d/data/DataManager;->addSource(Lcom/android/gallery3d/data/MediaSource;)V

    .line 121
    new-instance v2, Lcom/android/gallery3d/data/FilterSource;

    iget-object v3, p0, Lcom/android/gallery3d/data/DataManager;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    invoke-direct {v2, v3}, Lcom/android/gallery3d/data/FilterSource;-><init>(Lcom/android/gallery3d/app/GalleryApp;)V

    invoke-virtual {p0, v2}, Lcom/android/gallery3d/data/DataManager;->addSource(Lcom/android/gallery3d/data/MediaSource;)V

    .line 122
    new-instance v2, Lcom/android/gallery3d/data/UriSource;

    iget-object v3, p0, Lcom/android/gallery3d/data/DataManager;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    invoke-direct {v2, v3}, Lcom/android/gallery3d/data/UriSource;-><init>(Lcom/android/gallery3d/app/GalleryApp;)V

    invoke-virtual {p0, v2}, Lcom/android/gallery3d/data/DataManager;->addSource(Lcom/android/gallery3d/data/MediaSource;)V

    .line 124
    iget v2, p0, Lcom/android/gallery3d/data/DataManager;->mActiveCount:I

    if-lez v2, :cond_0

    .line 125
    iget-object v2, p0, Lcom/android/gallery3d/data/DataManager;->mSourceMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

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

    check-cast v1, Lcom/android/gallery3d/data/MediaSource;

    .line 126
    .local v1, source:Lcom/android/gallery3d/data/MediaSource;
    invoke-virtual {v1}, Lcom/android/gallery3d/data/MediaSource;->resume()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 113
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #source:Lcom/android/gallery3d/data/MediaSource;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public mapMediaItems(Ljava/util/ArrayList;Lcom/android/gallery3d/data/MediaSet$ItemConsumer;I)V
    .locals 11
    .parameter
    .parameter "consumer"
    .parameter "startIndex"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/gallery3d/data/Path;",
            ">;",
            "Lcom/android/gallery3d/data/MediaSet$ItemConsumer;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 211
    .local p1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/gallery3d/data/Path;>;"
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 215
    .local v4, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Lcom/android/gallery3d/data/MediaSource$PathId;>;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 216
    .local v5, n:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v5, :cond_1

    .line 217
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/gallery3d/data/Path;

    .line 218
    .local v6, path:Lcom/android/gallery3d/data/Path;
    invoke-virtual {v6}, Lcom/android/gallery3d/data/Path;->getPrefix()Ljava/lang/String;

    move-result-object v7

    .line 219
    .local v7, prefix:Ljava/lang/String;
    invoke-virtual {v4, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 220
    .local v1, group:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/gallery3d/data/MediaSource$PathId;>;"
    if-nez v1, :cond_0

    .line 221
    new-instance v1, Ljava/util/ArrayList;

    .end local v1           #group:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/gallery3d/data/MediaSource$PathId;>;"
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 222
    .restart local v1       #group:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/gallery3d/data/MediaSource$PathId;>;"
    invoke-virtual {v4, v7, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    :cond_0
    new-instance v9, Lcom/android/gallery3d/data/MediaSource$PathId;

    add-int v10, v2, p3

    invoke-direct {v9, v6, v10}, Lcom/android/gallery3d/data/MediaSource$PathId;-><init>(Lcom/android/gallery3d/data/Path;I)V

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 216
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 228
    .end local v1           #group:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/gallery3d/data/MediaSource$PathId;>;"
    .end local v6           #path:Lcom/android/gallery3d/data/Path;
    .end local v7           #prefix:Ljava/lang/String;
    :cond_1
    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 229
    .local v0, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/ArrayList<Lcom/android/gallery3d/data/MediaSource$PathId;>;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 230
    .restart local v7       #prefix:Ljava/lang/String;
    iget-object v9, p0, Lcom/android/gallery3d/data/DataManager;->mSourceMap:Ljava/util/HashMap;

    invoke-virtual {v9, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/gallery3d/data/MediaSource;

    .line 231
    .local v8, source:Lcom/android/gallery3d/data/MediaSource;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/ArrayList;

    invoke-virtual {v8, v9, p2}, Lcom/android/gallery3d/data/MediaSource;->mapMediaItems(Ljava/util/ArrayList;Lcom/android/gallery3d/data/MediaSet$ItemConsumer;)V

    goto :goto_1

    .line 233
    .end local v0           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/ArrayList<Lcom/android/gallery3d/data/MediaSource$PathId;>;>;"
    .end local v7           #prefix:Ljava/lang/String;
    .end local v8           #source:Lcom/android/gallery3d/data/MediaSource;
    :cond_2
    return-void
.end method

.method public pause()V
    .locals 4

    .prologue
    .line 320
    iget v2, p0, Lcom/android/gallery3d/data/DataManager;->mActiveCount:I

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/android/gallery3d/data/DataManager;->mActiveCount:I

    if-nez v2, :cond_0

    .line 321
    iget-object v2, p0, Lcom/android/gallery3d/data/DataManager;->mSourceMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

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

    check-cast v1, Lcom/android/gallery3d/data/MediaSource;

    .line 322
    .local v1, source:Lcom/android/gallery3d/data/MediaSource;
    invoke-virtual {v1}, Lcom/android/gallery3d/data/MediaSource;->pause()V

    goto :goto_0

    .line 325
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #source:Lcom/android/gallery3d/data/MediaSource;
    :cond_0
    return-void
.end method

.method public peekMediaObject(Lcom/android/gallery3d/data/Path;)Lcom/android/gallery3d/data/MediaObject;
    .locals 1
    .parameter "path"

    .prologue
    .line 158
    invoke-virtual {p1}, Lcom/android/gallery3d/data/Path;->getObject()Lcom/android/gallery3d/data/MediaObject;

    move-result-object v0

    return-object v0
.end method

.method public registerChangeNotifier(Landroid/net/Uri;Lcom/android/gallery3d/data/ChangeNotifier;)V
    .locals 6
    .parameter "uri"
    .parameter "notifier"

    .prologue
    .line 298
    const/4 v1, 0x0

    .line 299
    .local v1, broker:Lcom/android/gallery3d/data/DataManager$NotifyBroker;
    iget-object v4, p0, Lcom/android/gallery3d/data/DataManager;->mNotifierMap:Ljava/util/HashMap;

    monitor-enter v4

    .line 300
    :try_start_0
    iget-object v3, p0, Lcom/android/gallery3d/data/DataManager;->mNotifierMap:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/android/gallery3d/data/DataManager$NotifyBroker;

    move-object v1, v0

    .line 301
    if-nez v1, :cond_0

    .line 302
    new-instance v2, Lcom/android/gallery3d/data/DataManager$NotifyBroker;

    iget-object v3, p0, Lcom/android/gallery3d/data/DataManager;->mDefaultMainHandler:Landroid/os/Handler;

    invoke-direct {v2, v3}, Lcom/android/gallery3d/data/DataManager$NotifyBroker;-><init>(Landroid/os/Handler;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 303
    .end local v1           #broker:Lcom/android/gallery3d/data/DataManager$NotifyBroker;
    .local v2, broker:Lcom/android/gallery3d/data/DataManager$NotifyBroker;
    :try_start_1
    iget-object v3, p0, Lcom/android/gallery3d/data/DataManager;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    invoke-interface {v3}, Lcom/android/gallery3d/app/GalleryApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v5, 0x1

    invoke-virtual {v3, p1, v5, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 305
    iget-object v3, p0, Lcom/android/gallery3d/data/DataManager;->mNotifierMap:Ljava/util/HashMap;

    invoke-virtual {v3, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v1, v2

    .line 307
    .end local v2           #broker:Lcom/android/gallery3d/data/DataManager$NotifyBroker;
    .restart local v1       #broker:Lcom/android/gallery3d/data/DataManager$NotifyBroker;
    :cond_0
    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 308
    invoke-virtual {v1, p2}, Lcom/android/gallery3d/data/DataManager$NotifyBroker;->registerNotifier(Lcom/android/gallery3d/data/ChangeNotifier;)V

    .line 309
    return-void

    .line 307
    :catchall_0
    move-exception v3

    :goto_0
    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v3

    .end local v1           #broker:Lcom/android/gallery3d/data/DataManager$NotifyBroker;
    .restart local v2       #broker:Lcom/android/gallery3d/data/DataManager$NotifyBroker;
    :catchall_1
    move-exception v3

    move-object v1, v2

    .end local v2           #broker:Lcom/android/gallery3d/data/DataManager$NotifyBroker;
    .restart local v1       #broker:Lcom/android/gallery3d/data/DataManager$NotifyBroker;
    goto :goto_0
.end method

.method public resume()V
    .locals 4

    .prologue
    .line 312
    iget v2, p0, Lcom/android/gallery3d/data/DataManager;->mActiveCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/gallery3d/data/DataManager;->mActiveCount:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 313
    iget-object v2, p0, Lcom/android/gallery3d/data/DataManager;->mSourceMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

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

    check-cast v1, Lcom/android/gallery3d/data/MediaSource;

    .line 314
    .local v1, source:Lcom/android/gallery3d/data/MediaSource;
    invoke-virtual {v1}, Lcom/android/gallery3d/data/MediaSource;->resume()V

    goto :goto_0

    .line 317
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #source:Lcom/android/gallery3d/data/MediaSource;
    :cond_0
    return-void
.end method

.method public rotate(Lcom/android/gallery3d/data/Path;I)V
    .locals 1
    .parameter "path"
    .parameter "degrees"

    .prologue
    .line 245
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/data/DataManager;->getMediaObject(Lcom/android/gallery3d/data/Path;)Lcom/android/gallery3d/data/MediaObject;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/gallery3d/data/MediaObject;->rotate(I)V

    .line 246
    return-void
.end method
