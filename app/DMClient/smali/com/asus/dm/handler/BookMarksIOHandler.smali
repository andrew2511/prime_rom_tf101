.class public Lcom/asus/dm/handler/BookMarksIOHandler;
.super Ljava/lang/Object;
.source "BookMarksIOHandler.java"

# interfaces
.implements Lcom/asus/dmlib/vdm/NodeIoHandler;


# instance fields
.field private mBaOut:Ljava/io/ByteArrayOutputStream;

.field private mContext:Landroid/content/Context;

.field private mLeafValue:Ljava/lang/String;

.field private final mNodeUri:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/content/Context;)V
    .locals 0
    .parameter "pNodeUri"
    .parameter "pContext"

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/asus/dm/handler/BookMarksIOHandler;->mNodeUri:Ljava/lang/String;

    .line 24
    iput-object p2, p0, Lcom/asus/dm/handler/BookMarksIOHandler;->mContext:Landroid/content/Context;

    .line 25
    return-void
.end method

.method private setupBookMark(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .parameter "pUrl"
    .parameter "pTitle"

    .prologue
    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 110
    const-string v0, "setupBookMark() invoking...."

    invoke-static {p0, v0, v4}, Lcom/asus/dm/util/DMLog;->logD(Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 111
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "pUrl: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mNodeUri:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/asus/dm/handler/BookMarksIOHandler;->mNodeUri:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v4}, Lcom/asus/dm/util/DMLog;->logD(Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 113
    const/4 v7, 0x0

    .line 115
    .local v7, mark:Lcom/asus/dm/settings/BookMark;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "bookmark = 1 AND title = \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 117
    .local v3, where:Ljava/lang/String;
    iget-object v0, p0, Lcom/asus/dm/handler/BookMarksIOHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Browser;->BOOKMARKS_URI:Landroid/net/Uri;

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 121
    .local v6, c:Landroid/database/Cursor;
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 122
    new-instance v7, Lcom/asus/dm/settings/BookMark;

    .end local v7           #mark:Lcom/asus/dm/settings/BookMark;
    iget-object v0, p0, Lcom/asus/dm/handler/BookMarksIOHandler;->mContext:Landroid/content/Context;

    invoke-direct {v7, v0, v6}, Lcom/asus/dm/settings/BookMark;-><init>(Landroid/content/Context;Landroid/database/Cursor;)V

    .line 126
    .restart local v7       #mark:Lcom/asus/dm/settings/BookMark;
    :goto_0
    invoke-virtual {v7, p1}, Lcom/asus/dm/settings/BookMark;->setUrl(Ljava/lang/String;)V

    .line 127
    invoke-virtual {v7, p2}, Lcom/asus/dm/settings/BookMark;->setTitle(Ljava/lang/String;)V

    .line 128
    invoke-virtual {v7}, Lcom/asus/dm/settings/BookMark;->save()V

    .line 129
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 130
    return-void

    .line 124
    :cond_0
    new-instance v7, Lcom/asus/dm/settings/BookMark;

    .end local v7           #mark:Lcom/asus/dm/settings/BookMark;
    iget-object v0, p0, Lcom/asus/dm/handler/BookMarksIOHandler;->mContext:Landroid/content/Context;

    invoke-direct {v7, v0}, Lcom/asus/dm/settings/BookMark;-><init>(Landroid/content/Context;)V

    .restart local v7       #mark:Lcom/asus/dm/settings/BookMark;
    goto :goto_0
.end method


# virtual methods
.method public read(I[B)I
    .locals 10
    .parameter "pOffset"
    .parameter "pData"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/asus/dmlib/vdm/VdmException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 33
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "read() of "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " invoked...."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/asus/dm/util/DMLog;->logD(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "title = \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/asus/dm/handler/BookMarksIOHandler;->mNodeUri:Ljava/lang/String;

    iget-object v4, p0, Lcom/asus/dm/handler/BookMarksIOHandler;->mNodeUri:Ljava/lang/String;

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    iget-object v5, p0, Lcom/asus/dm/handler/BookMarksIOHandler;->mNodeUri:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v1, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 36
    .local v3, where:Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "where clause: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/asus/dm/util/DMLog;->logD(Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 38
    iget-object v0, p0, Lcom/asus/dm/handler/BookMarksIOHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Browser;->BOOKMARKS_URI:Landroid/net/Uri;

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 41
    .local v7, c:Landroid/database/Cursor;
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_0

    .line 42
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 43
    const/4 v0, 0x0

    .line 61
    :goto_0
    return v0

    .line 46
    :cond_0
    if-nez p2, :cond_1

    .line 47
    const-string v0, "pData is null"

    invoke-static {p0, v0}, Lcom/asus/dm/util/DMLog;->logD(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    const-string v0, "url"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/asus/dm/handler/BookMarksIOHandler;->mLeafValue:Ljava/lang/String;

    .line 49
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 50
    iget-object v0, p0, Lcom/asus/dm/handler/BookMarksIOHandler;->mLeafValue:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    goto :goto_0

    .line 53
    :cond_1
    new-instance v6, Ljava/io/ByteArrayInputStream;

    iget-object v0, p0, Lcom/asus/dm/handler/BookMarksIOHandler;->mLeafValue:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-direct {v6, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 54
    .local v6, baIn:Ljava/io/ByteArrayInputStream;
    array-length v0, p2

    invoke-virtual {v6, p2, p1, v0}, Ljava/io/ByteArrayInputStream;->read([BII)I

    move-result v9

    .line 56
    .local v9, readNum:I
    :try_start_0
    invoke-virtual {v6}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    move v0, v9

    .line 61
    goto :goto_0

    .line 57
    :catch_0
    move-exception v8

    .line 58
    .local v8, ex:Ljava/io/IOException;
    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

.method public write(I[BI)V
    .locals 7
    .parameter "pOffset"
    .parameter "pData"
    .parameter "pTotalSize"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/asus/dmlib/vdm/VdmException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    .line 71
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "write() of "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " invoked....\ndata: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, p2}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/asus/dm/util/DMLog;->logD(Ljava/lang/Object;Ljava/lang/String;)V

    .line 73
    iget-object v3, p0, Lcom/asus/dm/handler/BookMarksIOHandler;->mNodeUri:Ljava/lang/String;

    iget-object v4, p0, Lcom/asus/dm/handler/BookMarksIOHandler;->mNodeUri:Ljava/lang/String;

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    iget-object v5, p0, Lcom/asus/dm/handler/BookMarksIOHandler;->mNodeUri:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 75
    .local v1, bookmarkTitle:Ljava/lang/String;
    array-length v3, p2

    if-ne v3, p3, :cond_1

    .line 76
    const-string v3, "write(): pData.length == pTotalSize"

    invoke-static {p0, v3, v6}, Lcom/asus/dm/util/DMLog;->logD(Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 78
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 79
    .local v0, baOut:Ljava/io/ByteArrayOutputStream;
    array-length v3, p2

    invoke-virtual {v0, p2, p1, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 82
    :try_start_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3, v1}, Lcom/asus/dm/handler/BookMarksIOHandler;->setupBookMark(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 107
    .end local v0           #baOut:Ljava/io/ByteArrayOutputStream;
    :cond_0
    :goto_0
    return-void

    .line 84
    .restart local v0       #baOut:Ljava/io/ByteArrayOutputStream;
    :catch_0
    move-exception v3

    move-object v2, v3

    .line 85
    .local v2, ex:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 89
    .end local v0           #baOut:Ljava/io/ByteArrayOutputStream;
    .end local v2           #ex:Ljava/io/IOException;
    :cond_1
    const-string v3, "write(): pData.length != pTotalSize"

    invoke-static {p0, v3, v6}, Lcom/asus/dm/util/DMLog;->logD(Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 91
    if-nez p1, :cond_2

    .line 92
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v3, p0, Lcom/asus/dm/handler/BookMarksIOHandler;->mBaOut:Ljava/io/ByteArrayOutputStream;

    .line 93
    :cond_2
    iget-object v3, p0, Lcom/asus/dm/handler/BookMarksIOHandler;->mBaOut:Ljava/io/ByteArrayOutputStream;

    array-length v4, p2

    invoke-virtual {v3, p2, p1, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 95
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "pOffset: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", pData.length: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    array-length v4, p2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", pTotalSize: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/asus/dm/util/DMLog;->logD(Ljava/lang/Object;Ljava/lang/String;)V

    .line 98
    array-length v3, p2

    add-int/2addr v3, p1

    if-ne v3, p3, :cond_0

    .line 100
    :try_start_1
    iget-object v3, p0, Lcom/asus/dm/handler/BookMarksIOHandler;->mBaOut:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3, v1}, Lcom/asus/dm/handler/BookMarksIOHandler;->setupBookMark(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    iget-object v3, p0, Lcom/asus/dm/handler/BookMarksIOHandler;->mBaOut:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 102
    :catch_1
    move-exception v3

    move-object v2, v3

    .line 103
    .restart local v2       #ex:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method
