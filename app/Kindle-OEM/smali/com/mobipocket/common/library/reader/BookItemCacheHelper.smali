.class public Lcom/mobipocket/common/library/reader/BookItemCacheHelper;
.super Ljava/lang/Object;
.source "BookItemCacheHelper.java"


# static fields
.field private static final _fileLock:Ljava/lang/Object; = null

.field private static final cacheHeader:[B = null

.field private static final cacheVersion:I = 0xf


# instance fields
.field private _factory:Lcom/mobipocket/common/filesystem/PDBFactory;

.field private _loadCacheDone:Z

.field private _mushUpdateCacheFile:Z

.field private _table:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private cacheActivated:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const/16 v0, 0x9

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/mobipocket/common/library/reader/BookItemCacheHelper;->cacheHeader:[B

    .line 32
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/mobipocket/common/library/reader/BookItemCacheHelper;->_fileLock:Ljava/lang/Object;

    return-void

    .line 20
    nop

    :array_0
    .array-data 0x1
        0x4dt
        0x4ft
        0x42t
        0x49t
        0x43t
        0x41t
        0x43t
        0x48t
        0x45t
    .end array-data
.end method

.method public constructor <init>(Lcom/mobipocket/common/filesystem/PDBFactory;)V
    .locals 2
    .parameter "factory"

    .prologue
    const/4 v1, 0x0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-boolean v1, p0, Lcom/mobipocket/common/library/reader/BookItemCacheHelper;->_loadCacheDone:Z

    .line 30
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mobipocket/common/library/reader/BookItemCacheHelper;->cacheActivated:Z

    .line 35
    iput-boolean v1, p0, Lcom/mobipocket/common/library/reader/BookItemCacheHelper;->_mushUpdateCacheFile:Z

    .line 40
    iput-object p1, p0, Lcom/mobipocket/common/library/reader/BookItemCacheHelper;->_factory:Lcom/mobipocket/common/filesystem/PDBFactory;

    .line 41
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/mobipocket/common/library/reader/BookItemCacheHelper;->_table:Ljava/util/Hashtable;

    .line 43
    return-void
.end method

.method private insertItemToTable(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 96
    iget-boolean v0, p0, Lcom/mobipocket/common/library/reader/BookItemCacheHelper;->cacheActivated:Z

    if-nez v0, :cond_0

    .line 99
    :goto_0
    return-void

    .line 98
    :cond_0
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/BookItemCacheHelper;->_table:Ljava/util/Hashtable;

    invoke-virtual {v0, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private resetAccessedInfo()V
    .locals 2

    .prologue
    .line 103
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/BookItemCacheHelper;->_table:Ljava/util/Hashtable;

    invoke-virtual {v1}, Ljava/util/Hashtable;->elements()Ljava/util/Enumeration;

    move-result-object v0

    .line 104
    .end local p0
    .local v0, elts:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/lang/Object;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 105
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/mobipocket/common/library/reader/BookItem;

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/mobipocket/common/library/reader/BookItem;->set_isAccessed(Z)V

    goto :goto_0

    .line 108
    :cond_0
    return-void
.end method


# virtual methods
.method public getUpdatedList(Ljava/util/Vector;)[Lcom/mobipocket/common/library/reader/BookItem;
    .locals 10
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Vector",
            "<*>;)[",
            "Lcom/mobipocket/common/library/reader/BookItem;"
        }
    .end annotation

    .prologue
    const/4 v9, 0x1

    .line 46
    const/4 v0, 0x0

    .line 47
    if-eqz p1, :cond_4

    .line 50
    invoke-direct {p0}, Lcom/mobipocket/common/library/reader/BookItemCacheHelper;->resetAccessedInfo()V

    .line 51
    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v2

    .line 52
    new-array v3, v2, [Lcom/mobipocket/common/library/reader/BookItem;

    .line 53
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "list Ebooks : length :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 55
    const/4 v0, 0x0

    move v4, v0

    :goto_0
    if-ge v4, v2, :cond_3

    .line 57
    invoke-virtual {p1, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 60
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/BookItemCacheHelper;->_table:Ljava/util/Hashtable;

    invoke-virtual {v1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mobipocket/common/library/reader/BookItem;

    aput-object v1, v3, v4

    .line 61
    aget-object v1, v3, v4

    if-nez v1, :cond_1

    .line 63
    :try_start_0
    new-instance v1, Lcom/mobipocket/common/library/reader/BookItem;

    iget-object v5, p0, Lcom/mobipocket/common/library/reader/BookItemCacheHelper;->_factory:Lcom/mobipocket/common/filesystem/PDBFactory;

    invoke-direct {v1, v0, v5}, Lcom/mobipocket/common/library/reader/BookItem;-><init>(Ljava/lang/String;Lcom/mobipocket/common/filesystem/PDBFactory;)V

    aput-object v1, v3, v4
    :try_end_0
    .catch Lcom/mobipocket/common/library/reader/InvalidBookException; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    :goto_1
    iput-boolean v9, p0, Lcom/mobipocket/common/library/reader/BookItemCacheHelper;->_mushUpdateCacheFile:Z

    .line 68
    aget-object v1, v3, v4

    invoke-direct {p0, v0, v1}, Lcom/mobipocket/common/library/reader/BookItemCacheHelper;->insertItemToTable(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 55
    :cond_0
    :goto_2
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_0

    .line 65
    :catch_0
    move-exception v1

    new-instance v1, Lcom/mobipocket/common/library/reader/BookItem;

    invoke-direct {v1, v0}, Lcom/mobipocket/common/library/reader/BookItem;-><init>(Ljava/lang/String;)V

    aput-object v1, v3, v4

    goto :goto_1

    .line 70
    :cond_1
    aget-object v1, v3, v4

    invoke-virtual {v1, v9}, Lcom/mobipocket/common/library/reader/BookItem;->set_isAccessed(Z)V

    .line 71
    aget-object v1, v3, v4

    invoke-virtual {v1}, Lcom/mobipocket/common/library/reader/BookItem;->getLastPRCModificationDate()J

    move-result-wide v5

    iget-object v1, p0, Lcom/mobipocket/common/library/reader/BookItemCacheHelper;->_factory:Lcom/mobipocket/common/filesystem/PDBFactory;

    invoke-interface {v1, v0}, Lcom/mobipocket/common/filesystem/PDBFactory;->getLastModifiedDate(Ljava/lang/String;)J

    move-result-wide v7

    cmp-long v1, v5, v7

    if-nez v1, :cond_2

    aget-object v1, v3, v4

    invoke-virtual {v1}, Lcom/mobipocket/common/library/reader/BookItem;->getLastMBPModificationDate()J

    move-result-wide v5

    iget-object v1, p0, Lcom/mobipocket/common/library/reader/BookItemCacheHelper;->_factory:Lcom/mobipocket/common/filesystem/PDBFactory;

    iget-object v7, p0, Lcom/mobipocket/common/library/reader/BookItemCacheHelper;->_factory:Lcom/mobipocket/common/filesystem/PDBFactory;

    invoke-interface {v7, v0}, Lcom/mobipocket/common/filesystem/PDBFactory;->getBookSettings(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v1, v7}, Lcom/mobipocket/common/filesystem/PDBFactory;->getLastModifiedDate(Ljava/lang/String;)J

    move-result-wide v7

    cmp-long v1, v5, v7

    if-eqz v1, :cond_0

    .line 74
    :cond_2
    :try_start_1
    new-instance v1, Lcom/mobipocket/common/library/reader/BookItem;

    iget-object v5, p0, Lcom/mobipocket/common/library/reader/BookItemCacheHelper;->_factory:Lcom/mobipocket/common/filesystem/PDBFactory;

    invoke-direct {v1, v0, v5}, Lcom/mobipocket/common/library/reader/BookItem;-><init>(Ljava/lang/String;Lcom/mobipocket/common/filesystem/PDBFactory;)V

    aput-object v1, v3, v4
    :try_end_1
    .catch Lcom/mobipocket/common/library/reader/InvalidBookException; {:try_start_1 .. :try_end_1} :catch_1

    .line 78
    :goto_3
    iput-boolean v9, p0, Lcom/mobipocket/common/library/reader/BookItemCacheHelper;->_mushUpdateCacheFile:Z

    .line 79
    aget-object v1, v3, v4

    invoke-direct {p0, v0, v1}, Lcom/mobipocket/common/library/reader/BookItemCacheHelper;->insertItemToTable(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_2

    .line 76
    :catch_1
    move-exception v1

    new-instance v1, Lcom/mobipocket/common/library/reader/BookItem;

    invoke-direct {v1, v0}, Lcom/mobipocket/common/library/reader/BookItem;-><init>(Ljava/lang/String;)V

    aput-object v1, v3, v4

    goto :goto_3

    :cond_3
    move-object v0, v3

    .line 84
    :cond_4
    return-object v0
.end method

.method public loadCache()V
    .locals 12

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 207
    iget-boolean v0, p0, Lcom/mobipocket/common/library/reader/BookItemCacheHelper;->_loadCacheDone:Z

    if-eqz v0, :cond_0

    .line 311
    :goto_0
    return-void

    .line 210
    :cond_0
    iput-boolean v9, p0, Lcom/mobipocket/common/library/reader/BookItemCacheHelper;->_loadCacheDone:Z

    .line 219
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/BookItemCacheHelper;->_factory:Lcom/mobipocket/common/filesystem/PDBFactory;

    invoke-interface {v0}, Lcom/mobipocket/common/filesystem/PDBFactory;->getCacheIdentifier()Ljava/lang/String;

    move-result-object v2

    .line 221
    if-eqz v2, :cond_1

    const-string v0, ""

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 222
    :cond_1
    iput-boolean v8, p0, Lcom/mobipocket/common/library/reader/BookItemCacheHelper;->cacheActivated:Z

    goto :goto_0

    .line 225
    :cond_2
    iput-boolean v9, p0, Lcom/mobipocket/common/library/reader/BookItemCacheHelper;->cacheActivated:Z

    .line 228
    sget-object v6, Lcom/mobipocket/common/library/reader/BookItemCacheHelper;->_fileLock:Ljava/lang/Object;

    monitor-enter v6

    .line 229
    :try_start_0
    new-instance v0, Lcom/mobipocket/common/filesystem/ReadWritePDB;

    iget-object v1, p0, Lcom/mobipocket/common/library/reader/BookItemCacheHelper;->_factory:Lcom/mobipocket/common/filesystem/PDBFactory;

    const-string v3, "cache"

    const-string v4, "MPAR"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/mobipocket/common/filesystem/ReadWritePDB;-><init>(Lcom/mobipocket/common/filesystem/PDBFactory;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/mobipocket/common/filesystem/RecordComparator;)V

    .line 231
    invoke-virtual {v0}, Lcom/mobipocket/common/filesystem/ReadWritePDB;->getRecordCount()I

    move-result v1

    .line 232
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "load cache "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 233
    if-nez v1, :cond_3

    .line 234
    monitor-exit v6

    goto :goto_0

    .line 310
    :catchall_0
    move-exception v0

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 237
    :cond_3
    const/4 v2, 0x0

    :try_start_1
    invoke-virtual {v0, v2}, Lcom/mobipocket/common/filesystem/ReadWritePDB;->getRecord(I)[B

    move-result-object v2

    .line 239
    new-instance v3, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;

    const/4 v4, 0x1

    invoke-direct {v3, v2, v4}, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;-><init>([BZ)V

    .line 244
    array-length v4, v2

    sget-object v5, Lcom/mobipocket/common/library/reader/BookItemCacheHelper;->cacheHeader:[B

    array-length v5, v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-ge v4, v5, :cond_4

    move v2, v8

    .line 259
    :goto_1
    :try_start_2
    sget-object v4, Lcom/mobipocket/common/library/reader/BookItemCacheHelper;->cacheHeader:[B

    array-length v4, v4

    invoke-virtual {v3, v4}, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;->readBytes(I)[B
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 265
    :goto_2
    if-nez v2, :cond_6

    .line 266
    :try_start_3
    monitor-exit v6

    goto :goto_0

    :cond_4
    move v4, v8

    .line 250
    :goto_3
    sget-object v5, Lcom/mobipocket/common/library/reader/BookItemCacheHelper;->cacheHeader:[B

    array-length v5, v5

    if-ge v4, v5, :cond_c

    .line 251
    sget-object v5, Lcom/mobipocket/common/library/reader/BookItemCacheHelper;->cacheHeader:[B

    aget-byte v5, v5, v4

    aget-byte v7, v2, v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eq v5, v7, :cond_5

    move v2, v8

    .line 254
    goto :goto_1

    .line 250
    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 263
    :catch_0
    move-exception v2

    move v2, v8

    goto :goto_2

    .line 269
    :cond_6
    const/4 v4, -0x1

    .line 271
    :try_start_4
    invoke-virtual {v3}, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;->readInt()I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    move-result v3

    move v11, v3

    move v3, v2

    move v2, v11

    .line 277
    :goto_4
    if-nez v3, :cond_7

    .line 278
    :try_start_5
    monitor-exit v6

    goto :goto_0

    .line 275
    :catch_1
    move-exception v2

    move v2, v4

    move v3, v8

    goto :goto_4

    .line 281
    :cond_7
    const/16 v4, 0xf

    if-eq v4, v2, :cond_b

    move v2, v8

    .line 285
    :goto_5
    if-nez v2, :cond_8

    .line 286
    monitor-exit v6

    goto/16 :goto_0

    :cond_8
    move v2, v9

    .line 289
    :goto_6
    if-ge v2, v1, :cond_9

    .line 293
    invoke-virtual {v0, v2}, Lcom/mobipocket/common/filesystem/ReadWritePDB;->getRecord(I)[B
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result-object v3

    .line 297
    :try_start_6
    new-instance v4, Lcom/mobipocket/common/library/reader/BookItem;

    iget-object v5, p0, Lcom/mobipocket/common/library/reader/BookItemCacheHelper;->_factory:Lcom/mobipocket/common/filesystem/PDBFactory;

    invoke-direct {v4, v3, v5}, Lcom/mobipocket/common/library/reader/BookItem;-><init>([BLcom/mobipocket/common/filesystem/PDBFactory;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_2

    move-object v3, v4

    .line 304
    :goto_7
    if-nez v3, :cond_a

    .line 310
    :cond_9
    :try_start_7
    monitor-exit v6

    goto/16 :goto_0

    .line 301
    :catch_2
    move-exception v3

    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/mobipocket/common/library/reader/BookItemCacheHelper;->_mushUpdateCacheFile:Z

    move-object v3, v10

    goto :goto_7

    .line 308
    :cond_a
    invoke-virtual {v3}, Lcom/mobipocket/common/library/reader/BookItem;->getIdentifier()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4, v3}, Lcom/mobipocket/common/library/reader/BookItemCacheHelper;->insertItemToTable(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 289
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_b
    move v2, v3

    goto :goto_5

    :cond_c
    move v2, v9

    goto :goto_1
.end method

.method public writeCache()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 117
    iget-boolean v0, p0, Lcom/mobipocket/common/library/reader/BookItemCacheHelper;->_loadCacheDone:Z

    if-nez v0, :cond_1

    .line 199
    :cond_0
    :goto_0
    return-void

    .line 120
    :cond_1
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/BookItemCacheHelper;->_factory:Lcom/mobipocket/common/filesystem/PDBFactory;

    invoke-interface {v0}, Lcom/mobipocket/common/filesystem/PDBFactory;->getCacheIdentifier()Ljava/lang/String;

    move-result-object v2

    .line 121
    iget-boolean v0, p0, Lcom/mobipocket/common/library/reader/BookItemCacheHelper;->cacheActivated:Z

    if-eqz v0, :cond_0

    if-eqz v2, :cond_0

    const-string v0, ""

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 124
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "write cache "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    .line 127
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/BookItemCacheHelper;->_table:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->elements()Ljava/util/Enumeration;

    move-result-object v3

    .line 128
    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 132
    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mobipocket/common/library/reader/BookItem;

    .line 134
    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/BookItem;->is_isAccessed()Z

    move-result v4

    if-nez v4, :cond_2

    .line 135
    iget-object v4, p0, Lcom/mobipocket/common/library/reader/BookItemCacheHelper;->_factory:Lcom/mobipocket/common/filesystem/PDBFactory;

    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/BookItem;->getIdentifier()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/mobipocket/common/filesystem/PDBFactory;->canRemoveFromCache(Ljava/lang/String;)Z

    move-result v4

    .line 136
    if-eqz v4, :cond_2

    .line 137
    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/BookItem;->getIdentifier()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 138
    iput-boolean v8, p0, Lcom/mobipocket/common/library/reader/BookItemCacheHelper;->_mushUpdateCacheFile:Z

    goto :goto_1

    :cond_3
    move v3, v7

    .line 143
    :goto_2
    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v3, v0, :cond_4

    .line 146
    invoke-virtual {v1, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 147
    iget-object v4, p0, Lcom/mobipocket/common/library/reader/BookItemCacheHelper;->_table:Ljava/util/Hashtable;

    invoke-virtual {v4, v0}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_2

    .line 150
    :cond_4
    iget-boolean v0, p0, Lcom/mobipocket/common/library/reader/BookItemCacheHelper;->_mushUpdateCacheFile:Z

    if-eqz v0, :cond_0

    .line 153
    sget-object v6, Lcom/mobipocket/common/library/reader/BookItemCacheHelper;->_fileLock:Ljava/lang/Object;

    monitor-enter v6

    .line 162
    :try_start_0
    new-instance v0, Lcom/mobipocket/common/filesystem/ReadWritePDB;

    iget-object v1, p0, Lcom/mobipocket/common/library/reader/BookItemCacheHelper;->_factory:Lcom/mobipocket/common/filesystem/PDBFactory;

    const-string v3, "cache"

    const-string v4, "MPAR"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/mobipocket/common/filesystem/ReadWritePDB;-><init>(Lcom/mobipocket/common/filesystem/PDBFactory;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/mobipocket/common/filesystem/RecordComparator;)V

    .line 163
    invoke-virtual {v0}, Lcom/mobipocket/common/filesystem/ReadWritePDB;->deleteAll()V

    .line 165
    sget-object v1, Lcom/mobipocket/common/library/reader/BookItemCacheHelper;->cacheHeader:[B

    array-length v1, v1

    add-int/lit8 v1, v1, 0x4

    new-array v1, v1, [B

    .line 166
    new-instance v2, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;

    const/4 v3, 0x1

    invoke-direct {v2, v1, v3}, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;-><init>([BZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 169
    :try_start_1
    sget-object v3, Lcom/mobipocket/common/library/reader/BookItemCacheHelper;->cacheHeader:[B

    invoke-virtual {v2, v3}, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;->writeBytes([B)V

    .line 170
    const/16 v3, 0xf

    invoke-virtual {v2, v3}, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move v2, v7

    .line 175
    :goto_3
    if-eqz v2, :cond_5

    .line 176
    :try_start_2
    monitor-exit v6

    goto/16 :goto_0

    .line 198
    :catchall_0
    move-exception v0

    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 173
    :catch_0
    move-exception v2

    move v2, v8

    goto :goto_3

    .line 179
    :cond_5
    :try_start_3
    invoke-virtual {v0, v1}, Lcom/mobipocket/common/filesystem/ReadWritePDB;->addRecord([B)I

    .line 181
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/BookItemCacheHelper;->_table:Ljava/util/Hashtable;

    invoke-virtual {v1}, Ljava/util/Hashtable;->elements()Ljava/util/Enumeration;

    move-result-object v2

    .line 182
    :goto_4
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 186
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mobipocket/common/library/reader/BookItem;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 188
    :try_start_4
    invoke-virtual {v1}, Lcom/mobipocket/common/library/reader/BookItem;->serialize()[B

    move-result-object v1

    .line 189
    invoke-virtual {v0, v1}, Lcom/mobipocket/common/filesystem/ReadWritePDB;->addRecord([B)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_4

    :catch_1
    move-exception v1

    goto :goto_4

    .line 195
    :cond_6
    :try_start_5
    invoke-virtual {v0}, Lcom/mobipocket/common/filesystem/ReadWritePDB;->save()Z

    .line 197
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mobipocket/common/library/reader/BookItemCacheHelper;->_mushUpdateCacheFile:Z

    .line 198
    monitor-exit v6
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_0
.end method
