.class public Lcom/asus/mygazine/ReaderUtils;
.super Ljava/lang/Object;
.source "ReaderUtils.java"


# static fields
.field private static final LatestBookPath_URI:Landroid/net/Uri;

.field public static final PATH_COLUMN:[Ljava/lang/String;

.field private static final READER_URI:Landroid/net/Uri;

.field public static sReaderUtils:Lcom/asus/mygazine/ReaderUtils;


# instance fields
.field private mReaderObserver:Landroid/database/ContentObserver;

.field private mReaderPathObserver:Landroid/database/ContentObserver;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 14
    const-string v0, "content://reader/count"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/asus/mygazine/ReaderUtils;->READER_URI:Landroid/net/Uri;

    .line 15
    const-string v0, "content://reader/latestbookpath"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/asus/mygazine/ReaderUtils;->LatestBookPath_URI:Landroid/net/Uri;

    .line 19
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "filepath"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "mimetype"

    aput-object v2, v0, v1

    sput-object v0, Lcom/asus/mygazine/ReaderUtils;->PATH_COLUMN:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Lcom/asus/mygazine/ReaderUtils$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/asus/mygazine/ReaderUtils$1;-><init>(Lcom/asus/mygazine/ReaderUtils;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/asus/mygazine/ReaderUtils;->mReaderObserver:Landroid/database/ContentObserver;

    .line 39
    new-instance v0, Lcom/asus/mygazine/ReaderUtils$2;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/asus/mygazine/ReaderUtils$2;-><init>(Lcom/asus/mygazine/ReaderUtils;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/asus/mygazine/ReaderUtils;->mReaderPathObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method public static getBookNumber(Landroid/content/Context;)I
    .locals 11
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 49
    const/4 v9, 0x0

    .line 50
    .local v9, cursor:Landroid/database/Cursor;
    const/4 v0, 0x1

    new-array v6, v0, [Ljava/lang/String;

    const-string v0, "_count"

    aput-object v0, v6, v1

    .line 51
    .local v6, BOOK_NUMBER:[Ljava/lang/String;
    const/4 v7, 0x0

    .line 53
    .local v7, bookNumber:I
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/asus/mygazine/ReaderUtils;->READER_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 54
    if-eqz v9, :cond_0

    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 55
    const/4 v0, 0x0

    aget-object v0, v6, v0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    .line 61
    :cond_0
    if-eqz v9, :cond_1

    .line 62
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_1
    move v8, v7

    .line 63
    .end local v7           #bookNumber:I
    .local v8, bookNumber:I
    :goto_0
    return v8

    .line 57
    .end local v8           #bookNumber:I
    .restart local v7       #bookNumber:I
    :catch_0
    move-exception v0

    move-object v10, v0

    .line 58
    .local v10, e:Ljava/lang/Exception;
    :try_start_1
    const-string v0, "ReaderUtils"

    const-string v1, "Catch exception when querying reader data"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 61
    if-eqz v9, :cond_2

    .line 62
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_2
    move v8, v7

    .line 63
    .end local v7           #bookNumber:I
    .restart local v8       #bookNumber:I
    goto :goto_0

    .line 61
    .end local v8           #bookNumber:I
    .end local v10           #e:Ljava/lang/Exception;
    .restart local v7       #bookNumber:I
    :catchall_0
    move-exception v0

    if-eqz v9, :cond_3

    .line 62
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_3
    move v8, v7

    .line 63
    .end local v7           #bookNumber:I
    .restart local v8       #bookNumber:I
    goto :goto_0
.end method

.method public static getInstance()Lcom/asus/mygazine/ReaderUtils;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lcom/asus/mygazine/ReaderUtils;->sReaderUtils:Lcom/asus/mygazine/ReaderUtils;

    if-nez v0, :cond_0

    .line 25
    new-instance v0, Lcom/asus/mygazine/ReaderUtils;

    invoke-direct {v0}, Lcom/asus/mygazine/ReaderUtils;-><init>()V

    sput-object v0, Lcom/asus/mygazine/ReaderUtils;->sReaderUtils:Lcom/asus/mygazine/ReaderUtils;

    .line 27
    :cond_0
    sget-object v0, Lcom/asus/mygazine/ReaderUtils;->sReaderUtils:Lcom/asus/mygazine/ReaderUtils;

    return-object v0
.end method

.method public static getPath(Landroid/content/Context;)Landroid/database/Cursor;
    .locals 6
    .parameter "context"

    .prologue
    const/4 v3, 0x0

    .line 68
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 69
    .local v0, resolver:Landroid/content/ContentResolver;
    sget-object v1, Lcom/asus/mygazine/ReaderUtils;->LatestBookPath_URI:Landroid/net/Uri;

    sget-object v2, Lcom/asus/mygazine/ReaderUtils;->PATH_COLUMN:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public registerCallback(Landroid/content/ContentResolver;)V
    .locals 3
    .parameter "resolver"

    .prologue
    const/4 v2, 0x1

    .line 72
    const-string v0, "ReaderUtils"

    const-string v1, "registerCallback"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    sget-object v0, Lcom/asus/mygazine/ReaderUtils;->READER_URI:Landroid/net/Uri;

    iget-object v1, p0, Lcom/asus/mygazine/ReaderUtils;->mReaderObserver:Landroid/database/ContentObserver;

    invoke-virtual {p1, v0, v2, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 74
    sget-object v0, Lcom/asus/mygazine/ReaderUtils;->LatestBookPath_URI:Landroid/net/Uri;

    iget-object v1, p0, Lcom/asus/mygazine/ReaderUtils;->mReaderPathObserver:Landroid/database/ContentObserver;

    invoke-virtual {p1, v0, v2, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 75
    return-void
.end method

.method public unregisterCallback(Landroid/content/ContentResolver;)V
    .locals 2
    .parameter "resolver"

    .prologue
    .line 78
    const-string v0, "ReaderUtils"

    const-string v1, "unregisterCallback"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    iget-object v0, p0, Lcom/asus/mygazine/ReaderUtils;->mReaderObserver:Landroid/database/ContentObserver;

    invoke-virtual {p1, v0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 80
    iget-object v0, p0, Lcom/asus/mygazine/ReaderUtils;->mReaderPathObserver:Landroid/database/ContentObserver;

    invoke-virtual {p1, v0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 81
    const/4 v0, 0x0

    sput-object v0, Lcom/asus/mygazine/ReaderUtils;->sReaderUtils:Lcom/asus/mygazine/ReaderUtils;

    .line 82
    return-void
.end method
