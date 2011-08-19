.class public Lcom/asus/reader/Cache;
.super Ljava/lang/Object;
.source "Cache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/asus/reader/Cache$PageCache;
    }
.end annotation


# static fields
.field public static final DBG:Z

.field public static LANDSCAPE_HEIGHT:I

.field public static LANDSCAPE_WIDTH:I

.field public static PORTRAIT_HEIGHT:I

.field public static PORTRAIT_WIDTH:I

.field private static sInstance:Lcom/asus/reader/Cache;


# instance fields
.field private cache:[Lcom/asus/reader/Cache$PageCache;

.field private mBuffer:[B

.field private mCacheCount:I

.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    sget-boolean v0, Lcom/asus/reader/ReaderApp;->DBG:Z

    sput-boolean v0, Lcom/asus/reader/Cache;->DBG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const/4 v0, 0x0

    iput v0, p0, Lcom/asus/reader/Cache;->mCacheCount:I

    .line 39
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/asus/reader/Cache;->mBuffer:[B

    .line 40
    const/16 v0, 0x14

    new-array v0, v0, [Lcom/asus/reader/Cache$PageCache;

    iput-object v0, p0, Lcom/asus/reader/Cache;->cache:[Lcom/asus/reader/Cache$PageCache;

    .line 65
    iput-object p1, p0, Lcom/asus/reader/Cache;->mContext:Landroid/content/Context;

    .line 66
    return-void
.end method

.method private StartCaching(IIIIIIZLandroid/os/Handler;)V
    .locals 17
    .parameter "BookId"
    .parameter "PageNo"
    .parameter "PageCount"
    .parameter "fontSize"
    .parameter "currentScanPos"
    .parameter "scanCount"
    .parameter "isLandscape"
    .parameter "handler"

    .prologue
    .line 223
    sget-boolean v2, Lcom/asus/reader/Cache;->DBG:Z

    if-eqz v2, :cond_0

    const-string v2, "Cache"

    const-string v3, "StartCaching"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    :cond_0
    move/from16 v10, p2

    .line 225
    .local v10, backward:I
    add-int/lit8 v4, p2, 0x1

    .line 226
    .local v4, forward:I
    const/16 v2, 0xa

    sub-int v2, p2, v2

    add-int/lit8 v2, v2, 0x1

    if-lez v2, :cond_7

    const/16 v2, 0xa

    sub-int v2, p2, v2

    add-int/lit8 v2, v2, 0x1

    move v15, v2

    .line 227
    .local v15, cache_start:I
    :goto_0
    add-int/lit8 v2, p2, 0xa

    move v0, v2

    move/from16 v1, p3

    if-ge v0, v1, :cond_8

    add-int/lit8 v2, p2, 0xa

    move v14, v2

    .line 228
    .local v14, cache_end:I
    :goto_1
    if-eqz p7, :cond_9

    sget v2, Lcom/asus/reader/Cache;->LANDSCAPE_WIDTH:I

    move v6, v2

    .line 229
    .local v6, width:I
    :goto_2
    if-eqz p7, :cond_a

    sget v2, Lcom/asus/reader/Cache;->LANDSCAPE_HEIGHT:I

    move v7, v2

    .line 230
    .local v7, height:I
    :goto_3
    const-string v2, "Cache"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "cache_start = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " cache_end = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    :cond_1
    :goto_4
    if-le v4, v14, :cond_2

    if-lt v10, v15, :cond_b

    .line 232
    :cond_2
    sget-boolean v2, Lcom/asus/reader/Cache;->DBG:Z

    if-eqz v2, :cond_3

    const-string v2, "Cache"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "backward = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " forward = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    :cond_3
    move v0, v4

    move/from16 v1, p3

    if-ge v0, v1, :cond_5

    move-object/from16 v2, p0

    move/from16 v3, p1

    move/from16 v5, p4

    .line 234
    invoke-direct/range {v2 .. v7}, Lcom/asus/reader/Cache;->findPage(IIIII)Z

    move-result v2

    if-nez v2, :cond_4

    .line 235
    const/4 v2, 0x2

    move-object/from16 v0, p8

    move v1, v2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v16

    .line 236
    .local v16, msg:Landroid/os/Message;
    move v0, v4

    move-object/from16 v1, v16

    iput v0, v1, Landroid/os/Message;->arg1:I

    .line 237
    move-object/from16 v0, p8

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 239
    .end local v16           #msg:Landroid/os/Message;
    :cond_4
    add-int/lit8 v4, v4, 0x1

    .line 241
    :cond_5
    if-ltz v10, :cond_1

    move-object/from16 v8, p0

    move/from16 v9, p1

    move/from16 v11, p4

    move v12, v6

    move v13, v7

    .line 242
    invoke-direct/range {v8 .. v13}, Lcom/asus/reader/Cache;->findPage(IIIII)Z

    move-result v2

    if-nez v2, :cond_6

    .line 243
    const/4 v2, 0x2

    move-object/from16 v0, p8

    move v1, v2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v16

    .line 244
    .restart local v16       #msg:Landroid/os/Message;
    move v0, v10

    move-object/from16 v1, v16

    iput v0, v1, Landroid/os/Message;->arg1:I

    .line 245
    move-object/from16 v0, p8

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 247
    .end local v16           #msg:Landroid/os/Message;
    :cond_6
    add-int/lit8 v10, v10, -0x1

    goto :goto_4

    .line 226
    .end local v6           #width:I
    .end local v7           #height:I
    .end local v14           #cache_end:I
    .end local v15           #cache_start:I
    :cond_7
    const/4 v2, 0x0

    move v15, v2

    goto/16 :goto_0

    .line 227
    .restart local v15       #cache_start:I
    :cond_8
    const/4 v2, 0x1

    sub-int v2, p3, v2

    move v14, v2

    goto/16 :goto_1

    .line 228
    .restart local v14       #cache_end:I
    :cond_9
    sget v2, Lcom/asus/reader/Cache;->PORTRAIT_WIDTH:I

    move v6, v2

    goto/16 :goto_2

    .line 229
    .restart local v6       #width:I
    :cond_a
    sget v2, Lcom/asus/reader/Cache;->PORTRAIT_HEIGHT:I

    move v7, v2

    goto/16 :goto_3

    .line 250
    .restart local v7       #height:I
    :cond_b
    :goto_5
    move/from16 v0, p5

    move/from16 v1, p6

    if-ge v0, v1, :cond_c

    .line 251
    const/4 v2, 0x3

    move-object/from16 v0, p8

    move v1, v2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 252
    add-int/lit8 p5, p5, 0xa

    goto :goto_5

    .line 254
    :cond_c
    const/4 v2, 0x4

    move-object/from16 v0, p8

    move v1, v2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 255
    return-void
.end method

.method static synthetic access$100(Lcom/asus/reader/Cache;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 23
    iget-object v0, p0, Lcom/asus/reader/Cache;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private findPage(IIIII)Z
    .locals 2
    .parameter "bookId"
    .parameter "PageNo"
    .parameter "fontSize"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 199
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget v1, p0, Lcom/asus/reader/Cache;->mCacheCount:I

    if-ge v0, v1, :cond_1

    .line 200
    iget-object v1, p0, Lcom/asus/reader/Cache;->cache:[Lcom/asus/reader/Cache$PageCache;

    aget-object v1, v1, v0

    invoke-static {v1}, Lcom/asus/reader/Cache$PageCache;->access$500(Lcom/asus/reader/Cache$PageCache;)I

    move-result v1

    if-ne v1, p1, :cond_0

    iget-object v1, p0, Lcom/asus/reader/Cache;->cache:[Lcom/asus/reader/Cache$PageCache;

    aget-object v1, v1, v0

    invoke-static {v1}, Lcom/asus/reader/Cache$PageCache;->access$700(Lcom/asus/reader/Cache$PageCache;)I

    move-result v1

    if-ne v1, p2, :cond_0

    iget-object v1, p0, Lcom/asus/reader/Cache;->cache:[Lcom/asus/reader/Cache$PageCache;

    aget-object v1, v1, v0

    invoke-static {v1}, Lcom/asus/reader/Cache$PageCache;->access$800(Lcom/asus/reader/Cache$PageCache;)I

    move-result v1

    if-ne v1, p3, :cond_0

    iget-object v1, p0, Lcom/asus/reader/Cache;->cache:[Lcom/asus/reader/Cache$PageCache;

    aget-object v1, v1, v0

    invoke-static {v1}, Lcom/asus/reader/Cache$PageCache;->access$200(Lcom/asus/reader/Cache$PageCache;)I

    move-result v1

    if-ne v1, p4, :cond_0

    iget-object v1, p0, Lcom/asus/reader/Cache;->cache:[Lcom/asus/reader/Cache$PageCache;

    aget-object v1, v1, v0

    invoke-static {v1}, Lcom/asus/reader/Cache$PageCache;->access$300(Lcom/asus/reader/Cache$PageCache;)I

    move-result v1

    if-ne v1, p5, :cond_0

    .line 202
    const/4 v1, 0x1

    .line 204
    :goto_1
    return v1

    .line 199
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 204
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public static getInstance()Lcom/asus/reader/Cache;
    .locals 1

    .prologue
    .line 44
    sget-object v0, Lcom/asus/reader/Cache;->sInstance:Lcom/asus/reader/Cache;

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/asus/reader/Cache;
    .locals 1
    .parameter "context"

    .prologue
    .line 48
    sget-object v0, Lcom/asus/reader/Cache;->sInstance:Lcom/asus/reader/Cache;

    if-nez v0, :cond_0

    .line 49
    new-instance v0, Lcom/asus/reader/Cache;

    invoke-direct {v0, p0}, Lcom/asus/reader/Cache;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/asus/reader/Cache;->sInstance:Lcom/asus/reader/Cache;

    .line 51
    :cond_0
    sget-object v0, Lcom/asus/reader/Cache;->sInstance:Lcom/asus/reader/Cache;

    return-object v0
.end method

.method private getNextVictim()I
    .locals 7

    .prologue
    const/16 v6, 0x14

    .line 125
    iget v4, p0, Lcom/asus/reader/Cache;->mCacheCount:I

    if-ge v4, v6, :cond_0

    .line 126
    iget v4, p0, Lcom/asus/reader/Cache;->mCacheCount:I

    .line 137
    :goto_0
    return v4

    .line 129
    :cond_0
    const/4 v3, 0x0

    .line 130
    .local v3, victim:I
    const-wide v1, 0x7fffffffffffffffL

    .line 131
    .local v1, time:J
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v6, :cond_2

    .line 132
    iget-object v4, p0, Lcom/asus/reader/Cache;->cache:[Lcom/asus/reader/Cache$PageCache;

    aget-object v4, v4, v0

    invoke-static {v4}, Lcom/asus/reader/Cache$PageCache;->access$400(Lcom/asus/reader/Cache$PageCache;)J

    move-result-wide v4

    cmp-long v4, v1, v4

    if-lez v4, :cond_1

    .line 133
    iget-object v4, p0, Lcom/asus/reader/Cache;->cache:[Lcom/asus/reader/Cache$PageCache;

    aget-object v4, v4, v0

    invoke-static {v4}, Lcom/asus/reader/Cache$PageCache;->access$400(Lcom/asus/reader/Cache$PageCache;)J

    move-result-wide v1

    .line 134
    move v3, v0

    .line 131
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    move v4, v3

    .line 137
    goto :goto_0
.end method


# virtual methods
.method public ClearAllCaches()V
    .locals 2

    .prologue
    .line 276
    iget-object v0, p0, Lcom/asus/reader/Cache;->cache:[Lcom/asus/reader/Cache$PageCache;

    monitor-enter v0

    .line 277
    const/4 v1, 0x0

    :try_start_0
    iput v1, p0, Lcom/asus/reader/Cache;->mCacheCount:I

    .line 278
    monitor-exit v0

    .line 279
    return-void

    .line 278
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public ClearOneCache(IIIZ)V
    .locals 7
    .parameter "BookId"
    .parameter "PageNo"
    .parameter "fontSize"
    .parameter "isLandscape"

    .prologue
    .line 258
    if-eqz p4, :cond_1

    sget v3, Lcom/asus/reader/Cache;->LANDSCAPE_WIDTH:I

    move v2, v3

    .line 259
    .local v2, width:I
    :goto_0
    if-eqz p4, :cond_2

    sget v3, Lcom/asus/reader/Cache;->LANDSCAPE_HEIGHT:I

    move v0, v3

    .line 260
    .local v0, height:I
    :goto_1
    const/4 v1, 0x0

    .local v1, i:I
    :goto_2
    iget v3, p0, Lcom/asus/reader/Cache;->mCacheCount:I

    if-ge v1, v3, :cond_3

    .line 261
    iget-object v3, p0, Lcom/asus/reader/Cache;->cache:[Lcom/asus/reader/Cache$PageCache;

    aget-object v3, v3, v1

    invoke-static {v3}, Lcom/asus/reader/Cache$PageCache;->access$500(Lcom/asus/reader/Cache$PageCache;)I

    move-result v3

    if-ne v3, p1, :cond_0

    iget-object v3, p0, Lcom/asus/reader/Cache;->cache:[Lcom/asus/reader/Cache$PageCache;

    aget-object v3, v3, v1

    invoke-static {v3}, Lcom/asus/reader/Cache$PageCache;->access$700(Lcom/asus/reader/Cache$PageCache;)I

    move-result v3

    if-ne v3, p2, :cond_0

    iget-object v3, p0, Lcom/asus/reader/Cache;->cache:[Lcom/asus/reader/Cache$PageCache;

    aget-object v3, v3, v1

    invoke-static {v3}, Lcom/asus/reader/Cache$PageCache;->access$800(Lcom/asus/reader/Cache$PageCache;)I

    move-result v3

    if-ne v3, p3, :cond_0

    iget-object v3, p0, Lcom/asus/reader/Cache;->cache:[Lcom/asus/reader/Cache$PageCache;

    aget-object v3, v3, v1

    invoke-static {v3}, Lcom/asus/reader/Cache$PageCache;->access$200(Lcom/asus/reader/Cache$PageCache;)I

    move-result v3

    if-ne v3, v2, :cond_0

    iget-object v3, p0, Lcom/asus/reader/Cache;->cache:[Lcom/asus/reader/Cache$PageCache;

    aget-object v3, v3, v1

    invoke-static {v3}, Lcom/asus/reader/Cache$PageCache;->access$300(Lcom/asus/reader/Cache$PageCache;)I

    move-result v3

    if-ne v3, v0, :cond_0

    .line 263
    iget-object v3, p0, Lcom/asus/reader/Cache;->cache:[Lcom/asus/reader/Cache$PageCache;

    monitor-enter v3

    .line 264
    :try_start_0
    iget-object v4, p0, Lcom/asus/reader/Cache;->cache:[Lcom/asus/reader/Cache$PageCache;

    aget-object v4, v4, v1

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lcom/asus/reader/Cache$PageCache;->access$502(Lcom/asus/reader/Cache$PageCache;I)I

    .line 265
    iget-object v4, p0, Lcom/asus/reader/Cache;->cache:[Lcom/asus/reader/Cache$PageCache;

    aget-object v4, v4, v1

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lcom/asus/reader/Cache$PageCache;->access$702(Lcom/asus/reader/Cache$PageCache;I)I

    .line 266
    iget-object v4, p0, Lcom/asus/reader/Cache;->cache:[Lcom/asus/reader/Cache$PageCache;

    aget-object v4, v4, v1

    const-wide/16 v5, 0x0

    invoke-static {v4, v5, v6}, Lcom/asus/reader/Cache$PageCache;->access$402(Lcom/asus/reader/Cache$PageCache;J)J

    .line 267
    iget-object v4, p0, Lcom/asus/reader/Cache;->cache:[Lcom/asus/reader/Cache$PageCache;

    aget-object v4, v4, v1

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lcom/asus/reader/Cache$PageCache;->access$202(Lcom/asus/reader/Cache$PageCache;I)I

    .line 268
    iget-object v4, p0, Lcom/asus/reader/Cache;->cache:[Lcom/asus/reader/Cache$PageCache;

    aget-object v4, v4, v1

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lcom/asus/reader/Cache$PageCache;->access$302(Lcom/asus/reader/Cache$PageCache;I)I

    .line 269
    iget-object v4, p0, Lcom/asus/reader/Cache;->cache:[Lcom/asus/reader/Cache$PageCache;

    aget-object v4, v4, v1

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lcom/asus/reader/Cache$PageCache;->access$802(Lcom/asus/reader/Cache$PageCache;I)I

    .line 270
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 260
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 258
    .end local v0           #height:I
    .end local v1           #i:I
    .end local v2           #width:I
    :cond_1
    sget v3, Lcom/asus/reader/Cache;->PORTRAIT_WIDTH:I

    move v2, v3

    goto :goto_0

    .line 259
    .restart local v2       #width:I
    :cond_2
    sget v3, Lcom/asus/reader/Cache;->PORTRAIT_HEIGHT:I

    move v0, v3

    goto :goto_1

    .line 270
    .restart local v0       #height:I
    .restart local v1       #i:I
    :catchall_0
    move-exception v4

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4

    .line 273
    :cond_3
    return-void
.end method

.method public DoCache(IIIZ)V
    .locals 8
    .parameter "BookId"
    .parameter "PageNo"
    .parameter "fontSize"
    .parameter "isLandscape"

    .prologue
    .line 208
    new-instance v7, Lcom/asus/reader/book/PageTexture;

    const/4 v0, 0x0

    invoke-direct {v7, v0, p4}, Lcom/asus/reader/book/PageTexture;-><init>(Lcom/asus/reader/book/Page;Z)V

    .line 209
    .local v7, texture:Lcom/asus/reader/book/PageTexture;
    iget-object v0, p0, Lcom/asus/reader/Cache;->mBuffer:[B

    if-nez v0, :cond_0

    .line 210
    sget v0, Lcom/asus/reader/Cache;->PORTRAIT_HEIGHT:I

    sget v1, Lcom/asus/reader/Cache;->PORTRAIT_WIDTH:I

    mul-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x3

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/asus/reader/Cache;->mBuffer:[B

    .line 211
    :cond_0
    iget-object v0, p0, Lcom/asus/reader/Cache;->mBuffer:[B

    invoke-virtual {v7, v0, p2}, Lcom/asus/reader/book/PageTexture;->getRawStreamNative([BI)[B

    move-result-object v0

    iput-object v0, p0, Lcom/asus/reader/Cache;->mBuffer:[B

    .line 212
    iget-object v3, p0, Lcom/asus/reader/Cache;->mBuffer:[B

    iget v4, v7, Lcom/asus/reader/book/PageTexture;->mWidth:I

    iget v5, v7, Lcom/asus/reader/book/PageTexture;->mHeight:I

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v6, p3

    invoke-virtual/range {v0 .. v6}, Lcom/asus/reader/Cache;->WriteToCache(II[BIII)V

    .line 213
    return-void
.end method

.method public ReadFromCache(III[BZ)I
    .locals 10
    .parameter "bookId"
    .parameter "PageNo"
    .parameter "fontSize"
    .parameter "rawdata"
    .parameter "isLandscape"

    .prologue
    const/4 v9, -0x1

    .line 172
    if-eqz p5, :cond_1

    sget v5, Lcom/asus/reader/Cache;->LANDSCAPE_WIDTH:I

    move v4, v5

    .line 173
    .local v4, width:I
    :goto_0
    if-eqz p5, :cond_2

    sget v5, Lcom/asus/reader/Cache;->LANDSCAPE_HEIGHT:I

    move v2, v5

    .line 174
    .local v2, height:I
    :goto_1
    const/4 v3, 0x0

    .local v3, i:I
    :goto_2
    iget v5, p0, Lcom/asus/reader/Cache;->mCacheCount:I

    if-ge v3, v5, :cond_4

    .line 175
    iget-object v5, p0, Lcom/asus/reader/Cache;->cache:[Lcom/asus/reader/Cache$PageCache;

    aget-object v5, v5, v3

    invoke-static {v5}, Lcom/asus/reader/Cache$PageCache;->access$700(Lcom/asus/reader/Cache$PageCache;)I

    move-result v5

    if-ne v5, p2, :cond_3

    iget-object v5, p0, Lcom/asus/reader/Cache;->cache:[Lcom/asus/reader/Cache$PageCache;

    aget-object v5, v5, v3

    invoke-static {v5}, Lcom/asus/reader/Cache$PageCache;->access$500(Lcom/asus/reader/Cache$PageCache;)I

    move-result v5

    if-ne v5, p1, :cond_3

    iget-object v5, p0, Lcom/asus/reader/Cache;->cache:[Lcom/asus/reader/Cache$PageCache;

    aget-object v5, v5, v3

    invoke-static {v5}, Lcom/asus/reader/Cache$PageCache;->access$800(Lcom/asus/reader/Cache$PageCache;)I

    move-result v5

    if-ne v5, p3, :cond_3

    iget-object v5, p0, Lcom/asus/reader/Cache;->cache:[Lcom/asus/reader/Cache$PageCache;

    aget-object v5, v5, v3

    invoke-static {v5}, Lcom/asus/reader/Cache$PageCache;->access$200(Lcom/asus/reader/Cache$PageCache;)I

    move-result v5

    if-ne v5, v4, :cond_3

    iget-object v5, p0, Lcom/asus/reader/Cache;->cache:[Lcom/asus/reader/Cache$PageCache;

    aget-object v5, v5, v3

    invoke-static {v5}, Lcom/asus/reader/Cache$PageCache;->access$300(Lcom/asus/reader/Cache$PageCache;)I

    move-result v5

    if-ne v5, v2, :cond_3

    .line 178
    :try_start_0
    sget-boolean v5, Lcom/asus/reader/Cache;->DBG:Z

    if-eqz v5, :cond_0

    const-string v5, "Cache"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ReadFromCache filename = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/asus/reader/Cache;->cache:[Lcom/asus/reader/Cache$PageCache;

    aget-object v7, v7, v3

    invoke-static {v7}, Lcom/asus/reader/Cache$PageCache;->access$600(Lcom/asus/reader/Cache$PageCache;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    :cond_0
    new-instance v1, Ljava/io/FileInputStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "/data/data/com.asus.reader/cache/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/asus/reader/Cache;->cache:[Lcom/asus/reader/Cache$PageCache;

    aget-object v6, v6, v3

    invoke-static {v6}, Lcom/asus/reader/Cache$PageCache;->access$600(Lcom/asus/reader/Cache$PageCache;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v5}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 181
    .local v1, f0:Ljava/io/InputStream;
    const/4 v5, 0x0

    mul-int v6, v4, v2

    mul-int/lit8 v6, v6, 0x3

    invoke-virtual {v1, p4, v5, v6}, Ljava/io/InputStream;->read([BII)I

    .line 184
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    .line 185
    iget-object v5, p0, Lcom/asus/reader/Cache;->cache:[Lcom/asus/reader/Cache$PageCache;

    monitor-enter v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 186
    :try_start_1
    iget-object v6, p0, Lcom/asus/reader/Cache;->cache:[Lcom/asus/reader/Cache$PageCache;

    aget-object v6, v6, v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-static {v6, v7, v8}, Lcom/asus/reader/Cache$PageCache;->access$402(Lcom/asus/reader/Cache$PageCache;J)J

    .line 187
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v5, v3

    .line 195
    .end local v1           #f0:Ljava/io/InputStream;
    :goto_3
    return v5

    .line 172
    .end local v2           #height:I
    .end local v3           #i:I
    .end local v4           #width:I
    :cond_1
    sget v5, Lcom/asus/reader/Cache;->PORTRAIT_WIDTH:I

    move v4, v5

    goto/16 :goto_0

    .line 173
    .restart local v4       #width:I
    :cond_2
    sget v5, Lcom/asus/reader/Cache;->PORTRAIT_HEIGHT:I

    move v2, v5

    goto/16 :goto_1

    .line 187
    .restart local v1       #f0:Ljava/io/InputStream;
    .restart local v2       #height:I
    .restart local v3       #i:I
    :catchall_0
    move-exception v6

    :try_start_2
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v6
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 189
    .end local v1           #f0:Ljava/io/InputStream;
    :catch_0
    move-exception v5

    move-object v0, v5

    .line 190
    .local v0, e:Ljava/lang/Exception;
    const-string v5, "Cache"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ReadFromCache error "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v5, v9

    .line 191
    goto :goto_3

    .line 174
    .end local v0           #e:Ljava/lang/Exception;
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_2

    :cond_4
    move v5, v9

    .line 195
    goto :goto_3
.end method

.method public StartCaching(ILjava/lang/Object;ZLandroid/os/Handler;)V
    .locals 11
    .parameter "BookId"
    .parameter "obj"
    .parameter "isLanscape"
    .parameter "handler"

    .prologue
    .line 216
    move-object v0, p2

    check-cast v0, Lcom/asus/reader/book/BookSurfaceView;

    move-object v10, v0

    .line 217
    .local v10, v:Lcom/asus/reader/book/BookSurfaceView;
    iget v3, v10, Lcom/asus/reader/book/BookSurfaceView;->mPageNo:I

    iget v4, v10, Lcom/asus/reader/book/BookSurfaceView;->mPageCount:I

    iget v5, v10, Lcom/asus/reader/book/BookSurfaceView;->mFontSize:I

    iget v6, v10, Lcom/asus/reader/book/BookSurfaceView;->mCurrentScanPos:I

    iget v7, v10, Lcom/asus/reader/book/BookSurfaceView;->mScanCount:I

    move-object v1, p0

    move v2, p1

    move v8, p3

    move-object v9, p4

    invoke-direct/range {v1 .. v9}, Lcom/asus/reader/Cache;->StartCaching(IIIIIIZLandroid/os/Handler;)V

    .line 219
    return-void
.end method

.method public declared-synchronized WriteToCache(II[BIII)V
    .locals 8
    .parameter "bookId"
    .parameter "page"
    .parameter "rawdata"
    .parameter "width"
    .parameter "height"
    .parameter "fontSize"

    .prologue
    .line 141
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/asus/reader/Cache;->getNextVictim()I

    move-result v3

    .line 142
    .local v3, nextVictim:I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Part"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 143
    .local v2, name:Ljava/lang/String;
    iget-object v4, p0, Lcom/asus/reader/Cache;->cache:[Lcom/asus/reader/Cache$PageCache;

    monitor-enter v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 144
    :try_start_1
    iget-object v5, p0, Lcom/asus/reader/Cache;->cache:[Lcom/asus/reader/Cache$PageCache;

    aget-object v5, v5, v3

    invoke-static {v5, p1}, Lcom/asus/reader/Cache$PageCache;->access$502(Lcom/asus/reader/Cache$PageCache;I)I

    .line 145
    iget-object v5, p0, Lcom/asus/reader/Cache;->cache:[Lcom/asus/reader/Cache$PageCache;

    aget-object v5, v5, v3

    invoke-static {v5, v2}, Lcom/asus/reader/Cache$PageCache;->access$602(Lcom/asus/reader/Cache$PageCache;Ljava/lang/String;)Ljava/lang/String;

    .line 146
    iget-object v5, p0, Lcom/asus/reader/Cache;->cache:[Lcom/asus/reader/Cache$PageCache;

    aget-object v5, v5, v3

    invoke-static {v5, p2}, Lcom/asus/reader/Cache$PageCache;->access$702(Lcom/asus/reader/Cache$PageCache;I)I

    .line 147
    iget-object v5, p0, Lcom/asus/reader/Cache;->cache:[Lcom/asus/reader/Cache$PageCache;

    aget-object v5, v5, v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v5, v6, v7}, Lcom/asus/reader/Cache$PageCache;->access$402(Lcom/asus/reader/Cache$PageCache;J)J

    .line 148
    iget-object v5, p0, Lcom/asus/reader/Cache;->cache:[Lcom/asus/reader/Cache$PageCache;

    aget-object v5, v5, v3

    invoke-static {v5, p4}, Lcom/asus/reader/Cache$PageCache;->access$202(Lcom/asus/reader/Cache$PageCache;I)I

    .line 149
    iget-object v5, p0, Lcom/asus/reader/Cache;->cache:[Lcom/asus/reader/Cache$PageCache;

    aget-object v5, v5, v3

    invoke-static {v5, p5}, Lcom/asus/reader/Cache$PageCache;->access$302(Lcom/asus/reader/Cache$PageCache;I)I

    .line 150
    iget-object v5, p0, Lcom/asus/reader/Cache;->cache:[Lcom/asus/reader/Cache$PageCache;

    aget-object v5, v5, v3

    invoke-static {v5, p6}, Lcom/asus/reader/Cache$PageCache;->access$802(Lcom/asus/reader/Cache$PageCache;I)I

    .line 151
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 152
    :try_start_2
    sget-boolean v4, Lcom/asus/reader/Cache;->DBG:Z

    if-eqz v4, :cond_0

    const-string v4, "Cache"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "WriteToCache filename = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " page = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 154
    :cond_0
    :try_start_3
    new-instance v1, Ljava/io/FileOutputStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "/data/data/com.asus.reader/cache/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 156
    .local v1, f1:Ljava/io/OutputStream;
    const/4 v4, 0x0

    mul-int v5, p4, p5

    mul-int/lit8 v5, v5, 0x3

    invoke-virtual {v1, p3, v4, v5}, Ljava/io/FileOutputStream;->write([BII)V

    .line 159
    sget-boolean v4, Lcom/asus/reader/Cache;->DBG:Z

    if-eqz v4, :cond_1

    const-string v4, "Cache"

    const-string v5, "WriteToCache write finish"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    :cond_1
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 161
    iget v4, p0, Lcom/asus/reader/Cache;->mCacheCount:I

    const/16 v5, 0x14

    if-ge v4, v5, :cond_2

    .line 162
    iget-object v4, p0, Lcom/asus/reader/Cache;->cache:[Lcom/asus/reader/Cache$PageCache;

    monitor-enter v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 163
    :try_start_4
    iget v5, p0, Lcom/asus/reader/Cache;->mCacheCount:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/asus/reader/Cache;->mCacheCount:I

    .line 164
    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 169
    .end local v1           #f1:Ljava/io/OutputStream;
    :cond_2
    :goto_0
    monitor-exit p0

    return-void

    .line 151
    :catchall_0
    move-exception v5

    :try_start_5
    monitor-exit v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v5
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 141
    .end local v2           #name:Ljava/lang/String;
    .end local v3           #nextVictim:I
    :catchall_1
    move-exception v4

    monitor-exit p0

    throw v4

    .line 164
    .restart local v1       #f1:Ljava/io/OutputStream;
    .restart local v2       #name:Ljava/lang/String;
    .restart local v3       #nextVictim:I
    :catchall_2
    move-exception v5

    :try_start_7
    monitor-exit v4
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :try_start_8
    throw v5
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    .line 166
    .end local v1           #f1:Ljava/io/OutputStream;
    :catch_0
    move-exception v4

    move-object v0, v4

    .line 167
    .local v0, e:Ljava/lang/Exception;
    :try_start_9
    const-string v4, "Cache"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "WriteToCache error "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    goto :goto_0
.end method

.method public destroy()V
    .locals 1

    .prologue
    .line 106
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/asus/reader/Cache;->mBuffer:[B

    .line 107
    return-void
.end method

.method public getHeight(I)I
    .locals 1
    .parameter "cacheNo"

    .prologue
    .line 121
    iget-object v0, p0, Lcom/asus/reader/Cache;->cache:[Lcom/asus/reader/Cache$PageCache;

    aget-object v0, v0, p1

    invoke-static {v0}, Lcom/asus/reader/Cache$PageCache;->access$300(Lcom/asus/reader/Cache$PageCache;)I

    move-result v0

    return v0
.end method

.method public getWidth(I)I
    .locals 1
    .parameter "cacheNo"

    .prologue
    .line 117
    iget-object v0, p0, Lcom/asus/reader/Cache;->cache:[Lcom/asus/reader/Cache$PageCache;

    aget-object v0, v0, p1

    invoke-static {v0}, Lcom/asus/reader/Cache$PageCache;->access$200(Lcom/asus/reader/Cache$PageCache;)I

    move-result v0

    return v0
.end method

.method public init()V
    .locals 4

    .prologue
    .line 69
    sget-boolean v1, Lcom/asus/reader/Cache;->DBG:Z

    if-eqz v1, :cond_0

    const-string v1, "Cache"

    const-string v2, "Cache init"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    :cond_0
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/16 v1, 0x14

    if-ge v0, v1, :cond_1

    .line 71
    iget-object v1, p0, Lcom/asus/reader/Cache;->cache:[Lcom/asus/reader/Cache$PageCache;

    new-instance v2, Lcom/asus/reader/Cache$PageCache;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/asus/reader/Cache$PageCache;-><init>(Lcom/asus/reader/Cache;Lcom/asus/reader/Cache$1;)V

    aput-object v2, v1, v0

    .line 70
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 72
    :cond_1
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/asus/reader/Cache$1;

    invoke-direct {v2, p0}, Lcom/asus/reader/Cache$1;-><init>(Lcom/asus/reader/Cache;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 103
    return-void
.end method

.method public updateScreenHeightAndWidth(IIIZ)V
    .locals 1
    .parameter "statusbarHeight"
    .parameter "height"
    .parameter "width"
    .parameter "isLandscape"

    .prologue
    .line 110
    if-eqz p4, :cond_0

    sub-int v0, p2, p1

    :goto_0
    sput v0, Lcom/asus/reader/Cache;->LANDSCAPE_HEIGHT:I

    .line 111
    if-eqz p4, :cond_1

    div-int/lit8 v0, p3, 0x2

    :goto_1
    sput v0, Lcom/asus/reader/Cache;->LANDSCAPE_WIDTH:I

    .line 112
    if-eqz p4, :cond_2

    sub-int v0, p3, p1

    :goto_2
    sput v0, Lcom/asus/reader/Cache;->PORTRAIT_HEIGHT:I

    .line 113
    if-eqz p4, :cond_3

    move v0, p2

    :goto_3
    sput v0, Lcom/asus/reader/Cache;->PORTRAIT_WIDTH:I

    .line 114
    return-void

    .line 110
    :cond_0
    sub-int v0, p3, p1

    goto :goto_0

    .line 111
    :cond_1
    div-int/lit8 v0, p2, 0x2

    goto :goto_1

    .line 112
    :cond_2
    sub-int v0, p2, p1

    goto :goto_2

    :cond_3
    move v0, p3

    .line 113
    goto :goto_3
.end method
