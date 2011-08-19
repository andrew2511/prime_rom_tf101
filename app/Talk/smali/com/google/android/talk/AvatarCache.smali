.class public Lcom/google/android/talk/AvatarCache;
.super Ljava/lang/Object;
.source "AvatarCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/talk/AvatarCache$WorkItem;,
        Lcom/google/android/talk/AvatarCache$BitmapCache;
    }
.end annotation


# static fields
.field private static volatile sDone:Z

.field private static sInstances:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/google/android/talk/AvatarCache;",
            ">;"
        }
    .end annotation
.end field

.field private static sQueryThread:Ljava/lang/Thread;

.field private static sQueue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/talk/AvatarCache$WorkItem;",
            ">;"
        }
    .end annotation
.end field

.field private static sResolver:Landroid/content/ContentResolver;


# instance fields
.field private mAccountId:J

.field private mAvatarUri:Landroid/net/Uri;

.field private mCache:Lcom/google/android/talk/AvatarCache$BitmapCache;

.field private mNoAvatarList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 58
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/google/android/talk/AvatarCache;->sQueue:Ljava/util/ArrayList;

    .line 59
    const/4 v0, 0x0

    sput-boolean v0, Lcom/google/android/talk/AvatarCache;->sDone:Z

    return-void
.end method

.method private constructor <init>(J)V
    .locals 1
    .parameter "accountId"

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    new-instance v0, Lcom/google/android/talk/AvatarCache$BitmapCache;

    invoke-direct {v0, p0}, Lcom/google/android/talk/AvatarCache$BitmapCache;-><init>(Lcom/google/android/talk/AvatarCache;)V

    iput-object v0, p0, Lcom/google/android/talk/AvatarCache;->mCache:Lcom/google/android/talk/AvatarCache$BitmapCache;

    .line 70
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/talk/AvatarCache;->mNoAvatarList:Ljava/util/ArrayList;

    .line 78
    sget-object v0, Lcom/google/android/gsf/TalkContract$Avatars;->CONTENT_URI_AVATARS_BY:Landroid/net/Uri;

    invoke-direct {p0, v0, p1, p2}, Lcom/google/android/talk/AvatarCache;->computeAvatarUri(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/talk/AvatarCache;->mAvatarUri:Landroid/net/Uri;

    .line 79
    iput-wide p1, p0, Lcom/google/android/talk/AvatarCache;->mAccountId:J

    .line 80
    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 39
    sget-boolean v0, Lcom/google/android/talk/AvatarCache;->sDone:Z

    return v0
.end method

.method static synthetic access$100()Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 39
    sget-object v0, Lcom/google/android/talk/AvatarCache;->sQueue:Ljava/util/ArrayList;

    return-object v0
.end method

.method private computeAvatarUri(Landroid/net/Uri;J)Landroid/net/Uri;
    .locals 3
    .parameter "baseUri"
    .parameter "accountId"

    .prologue
    .line 83
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v2, 0x2f

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 85
    .local v0, buf:Ljava/lang/StringBuilder;
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    return-object v1
.end method

.method public static destroyAll(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 103
    sget-object v2, Lcom/google/android/talk/AvatarCache;->sInstances:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

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

    .line 104
    .local v0, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Long;Lcom/google/android/talk/AvatarCache;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/talk/AvatarCache;

    invoke-virtual {p0}, Lcom/google/android/talk/AvatarCache;->destroy()V

    goto :goto_0

    .line 107
    .end local v0           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Long;Lcom/google/android/talk/AvatarCache;>;"
    :cond_0
    const/4 v2, 0x0

    sput-object v2, Lcom/google/android/talk/AvatarCache;->sInstances:Ljava/util/HashMap;

    .line 108
    const/4 v2, 0x0

    sput-boolean v2, Lcom/google/android/talk/AvatarCache;->sDone:Z

    .line 109
    return-void
.end method

.method private findAvatarInCache(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;
    .locals 4
    .parameter "username"
    .parameter "hash"

    .prologue
    .line 205
    const/4 v0, 0x0

    .line 207
    .local v0, bd:Landroid/graphics/drawable/BitmapDrawable;
    iget-object v2, p0, Lcom/google/android/talk/AvatarCache;->mCache:Lcom/google/android/talk/AvatarCache$BitmapCache;

    monitor-enter v2

    .line 208
    :try_start_0
    iget-object v3, p0, Lcom/google/android/talk/AvatarCache;->mCache:Lcom/google/android/talk/AvatarCache$BitmapCache;

    invoke-virtual {v3, p1}, Lcom/google/android/talk/AvatarCache$BitmapCache;->get(Ljava/lang/String;)Lcom/google/android/talk/AvatarCache$BitmapCache$CacheItem;

    move-result-object v1

    .line 209
    .local v1, cacheItem:Lcom/google/android/talk/AvatarCache$BitmapCache$CacheItem;
    if-eqz v1, :cond_0

    .line 210
    if-eqz p2, :cond_1

    invoke-virtual {v1}, Lcom/google/android/talk/AvatarCache$BitmapCache$CacheItem;->getHash()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 212
    invoke-virtual {v1}, Lcom/google/android/talk/AvatarCache$BitmapCache$CacheItem;->getDrawable()Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    .line 218
    :cond_0
    :goto_0
    monitor-exit v2

    .line 220
    return-object v0

    .line 215
    :cond_1
    iget-object v3, p0, Lcom/google/android/talk/AvatarCache;->mCache:Lcom/google/android/talk/AvatarCache$BitmapCache;

    invoke-virtual {v3, p1}, Lcom/google/android/talk/AvatarCache$BitmapCache;->clear(Ljava/lang/String;)V

    goto :goto_0

    .line 218
    .end local v1           #cacheItem:Lcom/google/android/talk/AvatarCache$BitmapCache$CacheItem;
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public static getInstance(JZ)Lcom/google/android/talk/AvatarCache;
    .locals 3
    .parameter "accountId"
    .parameter "createIfNotExist"

    .prologue
    .line 112
    const-wide/16 v1, 0x0

    cmp-long v1, p0, v1

    if-gtz v1, :cond_0

    .line 114
    const/4 v1, 0x0

    .line 127
    :goto_0
    return-object v1

    .line 117
    :cond_0
    sget-object v1, Lcom/google/android/talk/AvatarCache;->sInstances:Ljava/util/HashMap;

    if-nez v1, :cond_1

    .line 118
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "AvatarCache hasn\'t been initialized"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 121
    :cond_1
    sget-object v1, Lcom/google/android/talk/AvatarCache;->sInstances:Ljava/util/HashMap;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/talk/AvatarCache;

    .line 122
    .local v0, cache:Lcom/google/android/talk/AvatarCache;
    if-nez v0, :cond_2

    if-eqz p2, :cond_2

    .line 123
    new-instance v0, Lcom/google/android/talk/AvatarCache;

    .end local v0           #cache:Lcom/google/android/talk/AvatarCache;
    invoke-direct {v0, p0, p1}, Lcom/google/android/talk/AvatarCache;-><init>(J)V

    .line 124
    .restart local v0       #cache:Lcom/google/android/talk/AvatarCache;
    sget-object v1, Lcom/google/android/talk/AvatarCache;->sInstances:Ljava/util/HashMap;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    move-object v1, v0

    .line 127
    goto :goto_0
.end method

.method public static initialize(Lcom/google/android/talk/TalkApp;)V
    .locals 1
    .parameter "app"

    .prologue
    .line 93
    sget-object v0, Lcom/google/android/talk/AvatarCache;->sInstances:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    .line 100
    :goto_0
    return-void

    .line 97
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/android/talk/AvatarCache;->sInstances:Ljava/util/HashMap;

    .line 98
    invoke-virtual {p0}, Lcom/google/android/talk/TalkApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sput-object v0, Lcom/google/android/talk/AvatarCache;->sResolver:Landroid/content/ContentResolver;

    .line 99
    invoke-static {}, Lcom/google/android/talk/AvatarCache;->startQueryThread()V

    goto :goto_0
.end method

.method private static startQueryThread()V
    .locals 2

    .prologue
    .line 140
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/google/android/talk/AvatarCache$1;

    invoke-direct {v1}, Lcom/google/android/talk/AvatarCache$1;-><init>()V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    sput-object v0, Lcom/google/android/talk/AvatarCache;->sQueryThread:Ljava/lang/Thread;

    .line 189
    sget-object v0, Lcom/google/android/talk/AvatarCache;->sQueryThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 190
    return-void
.end method


# virtual methods
.method public clear(Ljava/lang/String;)V
    .locals 2
    .parameter "username"

    .prologue
    .line 198
    iget-object v0, p0, Lcom/google/android/talk/AvatarCache;->mCache:Lcom/google/android/talk/AvatarCache$BitmapCache;

    monitor-enter v0

    .line 199
    :try_start_0
    iget-object v1, p0, Lcom/google/android/talk/AvatarCache;->mCache:Lcom/google/android/talk/AvatarCache$BitmapCache;

    invoke-virtual {v1, p1}, Lcom/google/android/talk/AvatarCache$BitmapCache;->clear(Ljava/lang/String;)V

    .line 200
    iget-object v1, p0, Lcom/google/android/talk/AvatarCache;->mNoAvatarList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 201
    monitor-exit v0

    .line 202
    return-void

    .line 201
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public destroy()V
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Lcom/google/android/talk/AvatarCache;->mCache:Lcom/google/android/talk/AvatarCache$BitmapCache;

    invoke-virtual {v0}, Lcom/google/android/talk/AvatarCache$BitmapCache;->clearAll()V

    .line 194
    return-void
.end method

.method public getAvatar(Landroid/database/Cursor;IILjava/lang/String;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 6
    .parameter "cursor"
    .parameter "hashColumn"
    .parameter "dataColumn"
    .parameter "username"
    .parameter "defaultReturn"

    .prologue
    .line 226
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 228
    .local v3, hash:Ljava/lang/String;
    invoke-direct {p0, p4, v3}, Lcom/google/android/talk/AvatarCache;->findAvatarInCache(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v2

    .line 229
    .local v2, drawable:Landroid/graphics/drawable/BitmapDrawable;
    if-eqz v2, :cond_0

    move-object v5, v2

    .line 248
    :goto_0
    return-object v5

    .line 234
    :cond_0
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    if-ltz p3, :cond_1

    .line 236
    invoke-static {p1, p3}, Lcom/google/android/talk/DatabaseUtils;->getAvatarFromCursor(Landroid/database/Cursor;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 238
    .local v0, b:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_1

    .line 239
    const/4 v4, 0x1

    .line 241
    .local v4, isSource:Z
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v1, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 243
    .local v1, d:Landroid/graphics/drawable/BitmapDrawable;
    iget-object v5, p0, Lcom/google/android/talk/AvatarCache;->mCache:Lcom/google/android/talk/AvatarCache$BitmapCache;

    invoke-virtual {v5, p4, v1, v3, v4}, Lcom/google/android/talk/AvatarCache$BitmapCache;->add(Ljava/lang/String;Landroid/graphics/drawable/BitmapDrawable;Ljava/lang/String;Z)V

    move-object v5, v1

    .line 244
    goto :goto_0

    .end local v0           #b:Landroid/graphics/Bitmap;
    .end local v1           #d:Landroid/graphics/drawable/BitmapDrawable;
    .end local v4           #isSource:Z
    :cond_1
    move-object v5, p5

    .line 248
    goto :goto_0
.end method

.method public getAvatarIfInCache(Landroid/database/Cursor;IILjava/lang/String;Landroid/os/Message;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 10
    .parameter "cursor"
    .parameter "hashColumn"
    .parameter "dataColumn"
    .parameter "username"
    .parameter "message"
    .parameter "defaultReturn"

    .prologue
    .line 254
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 256
    .local v4, hash:Ljava/lang/String;
    invoke-direct {p0, p4, v4}, Lcom/google/android/talk/AvatarCache;->findAvatarInCache(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v9

    .line 257
    .local v9, drawable:Landroid/graphics/drawable/BitmapDrawable;
    if-eqz v9, :cond_0

    move-object v1, v9

    .line 280
    .end local v9           #drawable:Landroid/graphics/drawable/BitmapDrawable;
    :goto_0
    return-object v1

    .line 262
    .restart local v9       #drawable:Landroid/graphics/drawable/BitmapDrawable;
    :cond_0
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    if-ltz p3, :cond_2

    .line 266
    sget-object v9, Lcom/google/android/talk/AvatarCache;->sQueue:Ljava/util/ArrayList;

    .end local v9           #drawable:Landroid/graphics/drawable/BitmapDrawable;
    monitor-enter v9

    .line 267
    :try_start_0
    invoke-interface {p1, p3}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v3

    .line 269
    .local v3, avatarData:[B
    new-instance v0, Lcom/google/android/talk/AvatarCache$WorkItem;

    iget-wide v5, p0, Lcom/google/android/talk/AvatarCache;->mAccountId:J

    iget-object v7, p0, Lcom/google/android/talk/AvatarCache;->mCache:Lcom/google/android/talk/AvatarCache$BitmapCache;

    move-object v1, p0

    move-object v2, p4

    move-object v8, p5

    invoke-direct/range {v0 .. v8}, Lcom/google/android/talk/AvatarCache$WorkItem;-><init>(Lcom/google/android/talk/AvatarCache;Ljava/lang/String;[BLjava/lang/String;JLcom/google/android/talk/AvatarCache$BitmapCache;Landroid/os/Message;)V

    .line 272
    .local v0, w:Lcom/google/android/talk/AvatarCache$WorkItem;
    sget-object v1, Lcom/google/android/talk/AvatarCache;->sQueue:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 274
    sget-object v1, Lcom/google/android/talk/AvatarCache;->sQueue:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 275
    sget-object v1, Lcom/google/android/talk/AvatarCache;->sQueue:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 277
    :cond_1
    monitor-exit v9

    .end local v0           #w:Lcom/google/android/talk/AvatarCache$WorkItem;
    .end local v3           #avatarData:[B
    :cond_2
    move-object/from16 v1, p6

    .line 280
    goto :goto_0

    .line 277
    :catchall_0
    move-exception v1

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getAvatarUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/google/android/talk/AvatarCache;->mAvatarUri:Landroid/net/Uri;

    return-object v0
.end method
