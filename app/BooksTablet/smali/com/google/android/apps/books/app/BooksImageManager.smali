.class Lcom/google/android/apps/books/app/BooksImageManager;
.super Ljava/lang/Object;
.source "BooksImageManager.java"

# interfaces
.implements Lcom/google/android/apps/books/common/ImageManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/books/app/BooksImageManager$ImageLoaderThreadFactory;,
        Lcom/google/android/apps/books/app/BooksImageManager$ImageTask;
    }
.end annotation


# static fields
.field private static final DISABLE_IMAGES:Z = false

.field private static final MAX_THREADS:I = 0x2

.field private static final TAG:Ljava/lang/String; = "BooksImageManager"


# instance fields
.field private final mCallbackHandler:Landroid/os/Handler;

.field private final mCallbacks:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/net/Uri;",
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/apps/books/common/ImageCallback;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mContentResolver:Landroid/content/ContentResolver;

.field private final mExecutor:Ljava/util/concurrent/Executor;

.field private final mImageCache:Lcom/google/android/apps/books/util/SimpleCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/apps/books/util/SimpleCache",
            "<",
            "Landroid/net/Uri;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private final mPendingTaskUris:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/content/ContentResolver;)V
    .locals 9
    .parameter "contentResolver"

    .prologue
    const/4 v1, 0x2

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    iput-object p1, p0, Lcom/google/android/apps/books/app/BooksImageManager;->mContentResolver:Landroid/content/ContentResolver;

    .line 79
    new-instance v0, Lcom/google/android/apps/books/util/SimpleCache;

    const/16 v2, 0x20

    const/16 v3, 0x100

    const/high16 v4, 0x3f40

    invoke-direct {v0, v2, v3, v4}, Lcom/google/android/apps/books/util/SimpleCache;-><init>(IIF)V

    iput-object v0, p0, Lcom/google/android/apps/books/app/BooksImageManager;->mImageCache:Lcom/google/android/apps/books/util/SimpleCache;

    .line 80
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/books/app/BooksImageManager;->mPendingTaskUris:Ljava/util/Set;

    .line 81
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/books/app/BooksImageManager;->mCallbacks:Ljava/util/HashMap;

    .line 82
    new-instance v6, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v6}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    .line 83
    .local v6, queue:Ljava/util/concurrent/LinkedBlockingQueue;,"Ljava/util/concurrent/LinkedBlockingQueue<Ljava/lang/Runnable;>;"
    const/4 v8, 0x2

    .line 84
    .local v8, poolSize:I
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    const-wide/16 v3, 0x5

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Lcom/google/android/apps/books/app/BooksImageManager$ImageLoaderThreadFactory;

    const/4 v2, 0x0

    invoke-direct {v7, v2}, Lcom/google/android/apps/books/app/BooksImageManager$ImageLoaderThreadFactory;-><init>(Lcom/google/android/apps/books/app/BooksImageManager$1;)V

    move v2, v1

    invoke-direct/range {v0 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    iput-object v0, p0, Lcom/google/android/apps/books/app/BooksImageManager;->mExecutor:Ljava/util/concurrent/Executor;

    .line 86
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/books/app/BooksImageManager;->mCallbackHandler:Landroid/os/Handler;

    .line 87
    return-void
.end method

.method static synthetic access$100(Landroid/net/Uri;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    invoke-static {p0}, Lcom/google/android/apps/books/app/BooksImageManager;->isRemoteUri(Landroid/net/Uri;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/google/android/apps/books/app/BooksImageManager;)Landroid/content/ContentResolver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/google/android/apps/books/app/BooksImageManager;->mContentResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/android/apps/books/app/BooksImageManager;)Ljava/util/HashMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/google/android/apps/books/app/BooksImageManager;->mCallbacks:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$500(Ljava/util/Set;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    invoke-static {p0}, Lcom/google/android/apps/books/app/BooksImageManager;->asList(Ljava/util/Set;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/google/android/apps/books/app/BooksImageManager;)Lcom/google/android/apps/books/util/SimpleCache;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/google/android/apps/books/app/BooksImageManager;->mImageCache:Lcom/google/android/apps/books/util/SimpleCache;

    return-object v0
.end method

.method static synthetic access$700(Lcom/google/android/apps/books/app/BooksImageManager;)Ljava/util/Set;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/google/android/apps/books/app/BooksImageManager;->mPendingTaskUris:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$800(Lcom/google/android/apps/books/app/BooksImageManager;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/google/android/apps/books/app/BooksImageManager;->mCallbackHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private static asList(Ljava/util/Set;)Ljava/util/ArrayList;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Set",
            "<TT;>;)",
            "Ljava/util/ArrayList",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 269
    .local p0, source:Ljava/util/Set;,"Ljava/util/Set<TT;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method private filterCached([Landroid/net/Uri;)[Landroid/net/Uri;
    .locals 9
    .parameter "uris"

    .prologue
    .line 220
    if-nez p1, :cond_0

    .line 221
    new-instance v8, Ljava/lang/NullPointerException;

    invoke-direct {v8}, Ljava/lang/NullPointerException;-><init>()V

    throw v8

    .line 223
    :cond_0
    array-length v1, p1

    .line 224
    .local v1, capacity:I
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 225
    .local v6, output:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/net/Uri;>;"
    move-object v0, p1

    .local v0, arr$:[Landroid/net/Uri;
    array-length v4, v0

    .local v4, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v4, :cond_3

    aget-object v7, v0, v2

    .line 226
    .local v7, uri:Landroid/net/Uri;
    iget-object v8, p0, Lcom/google/android/apps/books/app/BooksImageManager;->mImageCache:Lcom/google/android/apps/books/util/SimpleCache;

    invoke-virtual {v8, v7}, Lcom/google/android/apps/books/util/SimpleCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_2

    const/4 v8, 0x1

    move v3, v8

    .line 227
    .local v3, isCached:Z
    :goto_1
    if-nez v3, :cond_1

    .line 228
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 225
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 226
    .end local v3           #isCached:Z
    :cond_2
    const/4 v8, 0x0

    move v3, v8

    goto :goto_1

    .line 231
    .end local v7           #uri:Landroid/net/Uri;
    :cond_3
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 232
    .local v5, length:I
    new-array v8, v5, [Landroid/net/Uri;

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, [Landroid/net/Uri;

    return-object p0
.end method

.method private filterNull([Landroid/net/Uri;)[Landroid/net/Uri;
    .locals 8
    .parameter "uris"

    .prologue
    .line 201
    if-nez p1, :cond_0

    .line 202
    new-instance v7, Ljava/lang/NullPointerException;

    invoke-direct {v7}, Ljava/lang/NullPointerException;-><init>()V

    throw v7

    .line 204
    :cond_0
    array-length v1, p1

    .line 205
    .local v1, capacity:I
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 206
    .local v5, output:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/net/Uri;>;"
    move-object v0, p1

    .local v0, arr$:[Landroid/net/Uri;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_2

    aget-object v6, v0, v2

    .line 207
    .local v6, uri:Landroid/net/Uri;
    if-eqz v6, :cond_1

    .line 208
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 206
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 211
    .end local v6           #uri:Landroid/net/Uri;
    :cond_2
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 212
    .local v4, length:I
    new-array v7, v4, [Landroid/net/Uri;

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, [Landroid/net/Uri;

    return-object p0
.end method

.method private filterPending([Landroid/net/Uri;)[Landroid/net/Uri;
    .locals 9
    .parameter "uris"

    .prologue
    .line 240
    if-nez p1, :cond_0

    .line 241
    new-instance v8, Ljava/lang/NullPointerException;

    invoke-direct {v8}, Ljava/lang/NullPointerException;-><init>()V

    throw v8

    .line 243
    :cond_0
    array-length v1, p1

    .line 244
    .local v1, capacity:I
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 245
    .local v6, output:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/net/Uri;>;"
    move-object v0, p1

    .local v0, arr$:[Landroid/net/Uri;
    array-length v4, v0

    .local v4, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v4, :cond_2

    aget-object v7, v0, v2

    .line 246
    .local v7, uri:Landroid/net/Uri;
    iget-object v8, p0, Lcom/google/android/apps/books/app/BooksImageManager;->mPendingTaskUris:Ljava/util/Set;

    invoke-interface {v8, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    .line 247
    .local v3, isPending:Z
    if-nez v3, :cond_1

    .line 248
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 245
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 251
    .end local v3           #isPending:Z
    .end local v7           #uri:Landroid/net/Uri;
    :cond_2
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 252
    .local v5, length:I
    new-array v8, v5, [Landroid/net/Uri;

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, [Landroid/net/Uri;

    return-object p0
.end method

.method private static isRemoteUri(Landroid/net/Uri;)Z
    .locals 3
    .parameter "uri"

    .prologue
    const/4 v2, 0x0

    .line 256
    if-eqz p0, :cond_2

    .line 257
    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    .line 258
    .local v0, scheme:Ljava/lang/String;
    const-string v1, "http"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "https"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    .line 260
    .end local v0           #scheme:Ljava/lang/String;
    :goto_0
    return v1

    .restart local v0       #scheme:Ljava/lang/String;
    :cond_1
    move v1, v2

    .line 258
    goto :goto_0

    .end local v0           #scheme:Ljava/lang/String;
    :cond_2
    move v1, v2

    .line 260
    goto :goto_0
.end method


# virtual methods
.method public addCallback(Landroid/net/Uri;Lcom/google/android/apps/books/common/ImageCallback;)Z
    .locals 4
    .parameter "uri"
    .parameter "callback"

    .prologue
    const-string v3, "BooksImageManager"

    .line 169
    const-string v1, "BooksImageManager"

    const/4 v1, 0x3

    invoke-static {v3, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 170
    const-string v1, "BooksImageManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Adding image callback "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    :cond_0
    if-nez p1, :cond_1

    .line 173
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "uri is null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 175
    :cond_1
    if-nez p2, :cond_2

    .line 176
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "callback is null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 178
    :cond_2
    iget-object v1, p0, Lcom/google/android/apps/books/app/BooksImageManager;->mCallbacks:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 179
    .local v0, callbacks:Ljava/util/Set;,"Ljava/util/Set<Lcom/google/android/apps/books/common/ImageCallback;>;"
    if-nez v0, :cond_3

    .line 180
    new-instance v0, Ljava/util/HashSet;

    .end local v0           #callbacks:Ljava/util/Set;,"Ljava/util/Set<Lcom/google/android/apps/books/common/ImageCallback;>;"
    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    .line 181
    .restart local v0       #callbacks:Ljava/util/Set;,"Ljava/util/Set<Lcom/google/android/apps/books/common/ImageCallback;>;"
    iget-object v1, p0, Lcom/google/android/apps/books/app/BooksImageManager;->mCallbacks:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    :cond_3
    invoke-interface {v0, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 184
    const/4 v1, 0x1

    return v1
.end method

.method public cancelCallback(Lcom/google/android/apps/books/common/ImageCallback;)V
    .locals 6
    .parameter "callback"

    .prologue
    const-string v5, "BooksImageManager"

    .line 188
    const-string v3, "BooksImageManager"

    const/4 v3, 0x3

    invoke-static {v5, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 189
    const-string v3, "BooksImageManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cancelling image callback "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    :cond_0
    iget-object v3, p0, Lcom/google/android/apps/books/app/BooksImageManager;->mCallbacks:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    .line 192
    .local v2, uri:Landroid/net/Uri;
    iget-object v3, p0, Lcom/google/android/apps/books/app/BooksImageManager;->mCallbacks:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 193
    .local v0, callbacks:Ljava/util/Set;,"Ljava/util/Set<Lcom/google/android/apps/books/common/ImageCallback;>;"
    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 195
    .end local v0           #callbacks:Ljava/util/Set;,"Ljava/util/Set<Lcom/google/android/apps/books/common/ImageCallback;>;"
    .end local v2           #uri:Landroid/net/Uri;
    :cond_1
    return-void
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcom/google/android/apps/books/app/BooksImageManager;->mImageCache:Lcom/google/android/apps/books/util/SimpleCache;

    invoke-virtual {v0}, Lcom/google/android/apps/books/util/SimpleCache;->clear()V

    .line 152
    return-void
.end method

.method public getImage(Landroid/net/Uri;Ljava/lang/Runnable;Lcom/google/android/apps/books/common/ImageCallback;)Lcom/google/android/apps/books/common/ImageFuture;
    .locals 9
    .parameter "uri"
    .parameter "prereq"
    .parameter "callback"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 91
    if-nez p1, :cond_0

    .line 92
    new-instance v6, Ljava/lang/NullPointerException;

    invoke-direct {v6}, Ljava/lang/NullPointerException;-><init>()V

    throw v6

    .line 98
    :cond_0
    iget-object v6, p0, Lcom/google/android/apps/books/app/BooksImageManager;->mImageCache:Lcom/google/android/apps/books/util/SimpleCache;

    invoke-virtual {v6, p1}, Lcom/google/android/apps/books/util/SimpleCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 100
    .local v0, bitmap:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_2

    move v1, v8

    .line 101
    .local v1, bitmapExists:Z
    :goto_0
    iget-object v6, p0, Lcom/google/android/apps/books/app/BooksImageManager;->mPendingTaskUris:Ljava/util/Set;

    invoke-interface {v6, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    .line 102
    .local v5, taskExists:Z
    if-nez v1, :cond_3

    if-nez v5, :cond_3

    move v3, v8

    .line 103
    .local v3, newTaskRequired:Z
    :goto_1
    if-eqz p3, :cond_4

    move v2, v8

    .line 105
    .local v2, callbackRequired:Z
    :goto_2
    if-eqz v1, :cond_5

    .line 106
    if-eqz v2, :cond_1

    .line 107
    const/4 v6, 0x0

    invoke-interface {p3, v0, v6}, Lcom/google/android/apps/books/common/ImageCallback;->onImage(Landroid/graphics/Bitmap;Ljava/lang/Throwable;)V

    .line 109
    :cond_1
    new-instance v6, Lcom/google/android/apps/books/common/NullImageFuture;

    invoke-direct {v6}, Lcom/google/android/apps/books/common/NullImageFuture;-><init>()V

    .line 120
    :goto_3
    return-object v6

    .end local v1           #bitmapExists:Z
    .end local v2           #callbackRequired:Z
    .end local v3           #newTaskRequired:Z
    .end local v5           #taskExists:Z
    :cond_2
    move v1, v7

    .line 100
    goto :goto_0

    .restart local v1       #bitmapExists:Z
    .restart local v5       #taskExists:Z
    :cond_3
    move v3, v7

    .line 102
    goto :goto_1

    .restart local v3       #newTaskRequired:Z
    :cond_4
    move v2, v7

    .line 103
    goto :goto_2

    .line 112
    .restart local v2       #callbackRequired:Z
    :cond_5
    if-eqz v3, :cond_7

    .line 113
    iget-object v6, p0, Lcom/google/android/apps/books/app/BooksImageManager;->mPendingTaskUris:Ljava/util/Set;

    invoke-interface {v6, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 114
    new-instance v4, Lcom/google/android/apps/books/app/BooksImageManager$ImageTask;

    invoke-direct {v4, p0, p2, p1}, Lcom/google/android/apps/books/app/BooksImageManager$ImageTask;-><init>(Lcom/google/android/apps/books/app/BooksImageManager;Ljava/lang/Runnable;Landroid/net/Uri;)V

    .line 115
    .local v4, task:Ljava/lang/Runnable;
    if-eqz v2, :cond_6

    .line 116
    invoke-virtual {p0, p1, p3}, Lcom/google/android/apps/books/app/BooksImageManager;->addCallback(Landroid/net/Uri;Lcom/google/android/apps/books/common/ImageCallback;)Z

    .line 118
    :cond_6
    iget-object v6, p0, Lcom/google/android/apps/books/app/BooksImageManager;->mExecutor:Ljava/util/concurrent/Executor;

    invoke-interface {v6, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 120
    .end local v4           #task:Ljava/lang/Runnable;
    :cond_7
    new-instance v6, Lcom/google/android/apps/books/app/BooksImageManager$1;

    invoke-direct {v6, p0, p3}, Lcom/google/android/apps/books/app/BooksImageManager$1;-><init>(Lcom/google/android/apps/books/app/BooksImageManager;Lcom/google/android/apps/books/common/ImageCallback;)V

    goto :goto_3
.end method

.method public getImages([Landroid/net/Uri;)V
    .locals 6
    .parameter "uris"

    .prologue
    const/4 v5, 0x0

    .line 132
    if-nez p1, :cond_0

    .line 133
    new-instance v4, Ljava/lang/NullPointerException;

    invoke-direct {v4}, Ljava/lang/NullPointerException;-><init>()V

    throw v4

    .line 135
    :cond_0
    invoke-direct {p0, p1}, Lcom/google/android/apps/books/app/BooksImageManager;->filterNull([Landroid/net/Uri;)[Landroid/net/Uri;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/google/android/apps/books/app/BooksImageManager;->filterCached([Landroid/net/Uri;)[Landroid/net/Uri;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/google/android/apps/books/app/BooksImageManager;->filterPending([Landroid/net/Uri;)[Landroid/net/Uri;

    move-result-object v0

    .local v0, arr$:[Landroid/net/Uri;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 136
    .local v3, uri:Landroid/net/Uri;
    invoke-virtual {p0, v3, v5, v5}, Lcom/google/android/apps/books/app/BooksImageManager;->getImage(Landroid/net/Uri;Ljava/lang/Runnable;Lcom/google/android/apps/books/common/ImageCallback;)Lcom/google/android/apps/books/common/ImageFuture;

    .line 135
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 138
    .end local v3           #uri:Landroid/net/Uri;
    :cond_1
    return-void
.end method

.method public onLowMemory()V
    .locals 0

    .prologue
    .line 144
    invoke-virtual {p0}, Lcom/google/android/apps/books/app/BooksImageManager;->clear()V

    .line 145
    return-void
.end method
