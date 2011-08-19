.class public Lcom/infraware/filemanager/database/FmFileDatabase;
.super Ljava/lang/Object;
.source "FmFileDatabase.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/infraware/filemanager/database/FmFileDatabase$DBFileItem;,
        Lcom/infraware/filemanager/database/FmFileDatabase$DocType;,
        Lcom/infraware/filemanager/database/FmFileDatabase$FileFormat;,
        Lcom/infraware/filemanager/database/FmFileDatabase$MimeType;,
        Lcom/infraware/filemanager/database/FmFileDatabase$Operation;
    }
.end annotation


# instance fields
.field final FileProjection:[Ljava/lang/String;

.field m_oContext:Landroid/content/Context;

.field m_oCr:Landroid/content/ContentResolver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "a_oContext"

    .prologue
    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    const/16 v0, 0xc

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 53
    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    .line 54
    const-string v2, "_data"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    .line 55
    const-string v2, "_size"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    .line 56
    const-string v2, "format"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    .line 57
    const-string v2, "date_added"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    .line 58
    const-string v2, "date_modified"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    .line 59
    const-string v2, "mime_type"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    .line 60
    const-string v2, "title"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    .line 61
    const-string v2, "bucket_id"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    .line 62
    const-string v2, "bucket_display_name"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    .line 63
    const-string v2, "media_type"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    .line 64
    const-string v2, "parent"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/infraware/filemanager/database/FmFileDatabase;->FileProjection:[Ljava/lang/String;

    .line 86
    iput-object p1, p0, Lcom/infraware/filemanager/database/FmFileDatabase;->m_oContext:Landroid/content/Context;

    .line 87
    iget-object v0, p0, Lcom/infraware/filemanager/database/FmFileDatabase;->m_oContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/infraware/filemanager/database/FmFileDatabase;->m_oCr:Landroid/content/ContentResolver;

    .line 88
    return-void
.end method

.method private static RemoveSlush(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "a_strString"

    .prologue
    .line 303
    move-object v1, p0

    .line 304
    .local v1, strString:Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x1

    sub-int v0, v2, v3

    .line 305
    .local v0, nLength:I
    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    if-ne v2, v0, :cond_0

    .line 306
    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 308
    :goto_0
    return-object v2

    :cond_0
    move-object v2, v1

    goto :goto_0
.end method


# virtual methods
.method public ConvertData(Landroid/database/Cursor;)Lcom/infraware/filemanager/database/FmFileDatabase$DBFileItem;
    .locals 3
    .parameter "a_oCursor"

    .prologue
    .line 286
    new-instance v0, Lcom/infraware/filemanager/database/FmFileDatabase$DBFileItem;

    invoke-direct {v0, p0}, Lcom/infraware/filemanager/database/FmFileDatabase$DBFileItem;-><init>(Lcom/infraware/filemanager/database/FmFileDatabase;)V

    .line 288
    .local v0, oDbFileItem:Lcom/infraware/filemanager/database/FmFileDatabase$DBFileItem;
    const/4 v1, 0x0

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    int-to-long v1, v1

    iput-wide v1, v0, Lcom/infraware/filemanager/database/FmFileDatabase$DBFileItem;->nID:J

    .line 289
    const/4 v1, 0x1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/infraware/filemanager/database/FmFileDatabase$DBFileItem;->strData:Ljava/lang/String;

    .line 290
    const/4 v1, 0x2

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/infraware/filemanager/database/FmFileDatabase$DBFileItem;->nSize:J

    .line 291
    const/4 v1, 0x3

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v0, Lcom/infraware/filemanager/database/FmFileDatabase$DBFileItem;->nFormat:I

    .line 292
    const/4 v1, 0x4

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/infraware/filemanager/database/FmFileDatabase$DBFileItem;->nDateAdded:J

    .line 293
    const/4 v1, 0x5

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/infraware/filemanager/database/FmFileDatabase$DBFileItem;->nDateModified:J

    .line 294
    const/4 v1, 0x6

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/infraware/filemanager/database/FmFileDatabase$DBFileItem;->strMimeType:Ljava/lang/String;

    .line 295
    const/4 v1, 0x7

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/infraware/filemanager/database/FmFileDatabase$DBFileItem;->strTitle:Ljava/lang/String;

    .line 296
    const/16 v1, 0x8

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/infraware/filemanager/database/FmFileDatabase$DBFileItem;->strBucketID:Ljava/lang/String;

    .line 297
    const/16 v1, 0x9

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/infraware/filemanager/database/FmFileDatabase$DBFileItem;->strBucketDisplayName:Ljava/lang/String;

    .line 298
    const/16 v1, 0xa

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v0, Lcom/infraware/filemanager/database/FmFileDatabase$DBFileItem;->nMediaType:I

    .line 299
    return-object v0
.end method

.method public CopyFileDatabase(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 12
    .parameter "a_strSrcFullPath"
    .parameter "a_strDestFullPath"

    .prologue
    const/4 v4, 0x0

    const/4 v11, 0x1

    .line 122
    invoke-static {p1}, Lcom/infraware/filemanager/database/FmFileDatabase;->RemoveSlush(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 123
    .local v9, strSrcCanonicalFilePath:Ljava/lang/String;
    invoke-static {p2}, Lcom/infraware/filemanager/database/FmFileDatabase;->RemoveSlush(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 124
    .local v8, strDestCanonicalPath:Ljava/lang/String;
    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    .line 125
    .local v10, values:Landroid/content/ContentValues;
    new-instance v7, Lcom/infraware/filemanager/database/FmFileDatabase$DBFileItem;

    invoke-direct {v7, p0}, Lcom/infraware/filemanager/database/FmFileDatabase$DBFileItem;-><init>(Lcom/infraware/filemanager/database/FmFileDatabase;)V

    .line 127
    .local v7, oFileItem:Lcom/infraware/filemanager/database/FmFileDatabase$DBFileItem;
    const/4 v6, 0x0

    .line 128
    .local v6, oCursor:Landroid/database/Cursor;
    iget-object v0, p0, Lcom/infraware/filemanager/database/FmFileDatabase;->m_oCr:Landroid/content/ContentResolver;

    const-string v1, "external"

    invoke-static {v1}, Landroid/provider/MediaStore$Files;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/infraware/filemanager/database/FmFileDatabase;->FileProjection:[Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "_data=\'"

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "\'"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 129
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-ne v0, v11, :cond_1

    .line 130
    invoke-virtual {p0, v6}, Lcom/infraware/filemanager/database/FmFileDatabase;->ConvertData(Landroid/database/Cursor;)Lcom/infraware/filemanager/database/FmFileDatabase$DBFileItem;

    move-result-object v7

    .line 132
    iget-object v0, p0, Lcom/infraware/filemanager/database/FmFileDatabase;->FileProjection:[Ljava/lang/String;

    aget-object v0, v0, v11

    invoke-virtual {v10, v0, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    iget-object v0, p0, Lcom/infraware/filemanager/database/FmFileDatabase;->FileProjection:[Ljava/lang/String;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    iget-wide v1, v7, Lcom/infraware/filemanager/database/FmFileDatabase$DBFileItem;->nSize:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v10, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 134
    iget-object v0, p0, Lcom/infraware/filemanager/database/FmFileDatabase;->FileProjection:[Ljava/lang/String;

    const/4 v1, 0x3

    aget-object v0, v0, v1

    iget v1, v7, Lcom/infraware/filemanager/database/FmFileDatabase$DBFileItem;->nFormat:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v10, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 135
    iget-object v0, p0, Lcom/infraware/filemanager/database/FmFileDatabase;->FileProjection:[Ljava/lang/String;

    const/4 v1, 0x6

    aget-object v0, v0, v1

    iget-object v1, v7, Lcom/infraware/filemanager/database/FmFileDatabase$DBFileItem;->strMimeType:Ljava/lang/String;

    invoke-virtual {v10, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    iget-object v0, p0, Lcom/infraware/filemanager/database/FmFileDatabase;->FileProjection:[Ljava/lang/String;

    const/4 v1, 0x7

    aget-object v0, v0, v1

    iget-object v1, v7, Lcom/infraware/filemanager/database/FmFileDatabase$DBFileItem;->strTitle:Ljava/lang/String;

    invoke-virtual {v10, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    iget-object v0, p0, Lcom/infraware/filemanager/database/FmFileDatabase;->FileProjection:[Ljava/lang/String;

    const/16 v1, 0xa

    aget-object v0, v0, v1

    iget v1, v7, Lcom/infraware/filemanager/database/FmFileDatabase$DBFileItem;->nMediaType:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v10, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 141
    if-eqz v6, :cond_0

    .line 142
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 143
    :cond_0
    iget-object v0, p0, Lcom/infraware/filemanager/database/FmFileDatabase;->m_oCr:Landroid/content/ContentResolver;

    const-string v1, "external"

    invoke-static {v1}, Landroid/provider/MediaStore$Files;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v10}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move v0, v11

    .line 144
    :goto_0
    return v0

    .line 139
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public DeleteFileDatabase(Ljava/lang/String;)Z
    .locals 12
    .parameter "a_strPath"

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    const/4 v2, 0x0

    .line 217
    invoke-static {p1}, Lcom/infraware/filemanager/database/FmFileDatabase;->RemoveSlush(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 218
    .local v9, strDestPath:Ljava/lang/String;
    const/4 v8, 0x0

    .line 219
    .local v8, oCursor:Landroid/database/Cursor;
    const/4 v6, 0x0

    .line 221
    .local v6, nDestID:I
    iget-object v0, p0, Lcom/infraware/filemanager/database/FmFileDatabase;->m_oCr:Landroid/content/ContentResolver;

    const-string v1, "external"

    invoke-static {v1}, Landroid/provider/MediaStore$Files;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "_data=\'"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 222
    if-eqz v8, :cond_1

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-ne v0, v11, :cond_1

    .line 223
    invoke-interface {v8, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 228
    if-eqz v8, :cond_0

    .line 229
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 231
    :cond_0
    const/4 v7, -0x1

    .line 232
    .local v7, nResult:I
    iget-object v0, p0, Lcom/infraware/filemanager/database/FmFileDatabase;->m_oCr:Landroid/content/ContentResolver;

    const-string v1, "external"

    invoke-static {v1}, Landroid/provider/MediaStore$Files;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "_id=\'"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v7

    .line 233
    if-ltz v7, :cond_2

    move v0, v11

    .line 236
    .end local v7           #nResult:I
    :goto_0
    return v0

    :cond_1
    move v0, v10

    .line 225
    goto :goto_0

    .restart local v7       #nResult:I
    :cond_2
    move v0, v10

    .line 236
    goto :goto_0
.end method

.method public GetDocFiles()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/infraware/filemanager/database/FmFileDatabase$DBFileItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 240
    const-string v0, "_data LIKE \'%.doc\' OR _data LIKE \'%.docx\' AND format != 12289"

    .line 241
    .local v0, where:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/infraware/filemanager/database/FmFileDatabase;->GetDocuments(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    return-object v1
.end method

.method public GetDocuments(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 9
    .parameter "a_strWhere"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/infraware/filemanager/database/FmFileDatabase$DBFileItem;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 255
    invoke-static {p1}, Lcom/infraware/filemanager/database/FmFileDatabase;->RemoveSlush(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 256
    .local v3, strWhere:Ljava/lang/String;
    new-instance v8, Lcom/infraware/filemanager/database/FmFileDatabase$DBFileItem;

    invoke-direct {v8, p0}, Lcom/infraware/filemanager/database/FmFileDatabase$DBFileItem;-><init>(Lcom/infraware/filemanager/database/FmFileDatabase;)V

    .line 257
    .local v8, oFileItem:Lcom/infraware/filemanager/database/FmFileDatabase$DBFileItem;
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 259
    .local v7, oDBFiles:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/infraware/filemanager/database/FmFileDatabase$DBFileItem;>;"
    const/4 v6, 0x0

    .line 260
    .local v6, oCursor:Landroid/database/Cursor;
    iget-object v0, p0, Lcom/infraware/filemanager/database/FmFileDatabase;->m_oCr:Landroid/content/ContentResolver;

    const-string v1, "external"

    invoke-static {v1}, Landroid/provider/MediaStore$Files;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/infraware/filemanager/database/FmFileDatabase;->FileProjection:[Ljava/lang/String;

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 262
    if-eqz v6, :cond_0

    .line 263
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_2

    .line 268
    :cond_0
    if-eqz v6, :cond_1

    .line 269
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 271
    :cond_1
    return-object v7

    .line 264
    :cond_2
    invoke-virtual {p0, v6}, Lcom/infraware/filemanager/database/FmFileDatabase;->ConvertData(Landroid/database/Cursor;)Lcom/infraware/filemanager/database/FmFileDatabase$DBFileItem;

    move-result-object v8

    .line 265
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public GetFileList(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 12
    .parameter "a_strFolderPath"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/infraware/filemanager/database/FmFileDatabase$DBFileItem;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 91
    invoke-static {p1}, Lcom/infraware/filemanager/database/FmFileDatabase;->RemoveSlush(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 92
    .local v11, strFolderPath:Ljava/lang/String;
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 94
    .local v9, oDBFiles:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/infraware/filemanager/database/FmFileDatabase$DBFileItem;>;"
    const/4 v8, 0x0

    .line 95
    .local v8, oCursor:Landroid/database/Cursor;
    iget-object v0, p0, Lcom/infraware/filemanager/database/FmFileDatabase;->m_oCr:Landroid/content/ContentResolver;

    const-string v1, "external"

    invoke-static {v1}, Landroid/provider/MediaStore$Files;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/infraware/filemanager/database/FmFileDatabase;->FileProjection:[Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "_data=\'"

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "\'"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 96
    if-eqz v8, :cond_0

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 97
    invoke-virtual {p0, v8}, Lcom/infraware/filemanager/database/FmFileDatabase;->ConvertData(Landroid/database/Cursor;)Lcom/infraware/filemanager/database/FmFileDatabase$DBFileItem;

    move-result-object v10

    .line 98
    .local v10, oFileItem:Lcom/infraware/filemanager/database/FmFileDatabase$DBFileItem;
    iget-wide v6, v10, Lcom/infraware/filemanager/database/FmFileDatabase$DBFileItem;->nID:J

    .line 99
    .local v6, nId:J
    iget-object v0, p0, Lcom/infraware/filemanager/database/FmFileDatabase;->m_oCr:Landroid/content/ContentResolver;

    const-string v1, "external"

    invoke-static {v1}, Landroid/provider/MediaStore$Files;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/infraware/filemanager/database/FmFileDatabase;->FileProjection:[Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "parent=\'"

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "\'"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 100
    :goto_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_2

    .line 105
    .end local v6           #nId:J
    .end local v10           #oFileItem:Lcom/infraware/filemanager/database/FmFileDatabase$DBFileItem;
    :cond_0
    if-eqz v8, :cond_1

    .line 106
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 107
    :cond_1
    return-object v9

    .line 101
    .restart local v6       #nId:J
    .restart local v10       #oFileItem:Lcom/infraware/filemanager/database/FmFileDatabase$DBFileItem;
    :cond_2
    invoke-virtual {p0, v8}, Lcom/infraware/filemanager/database/FmFileDatabase;->ConvertData(Landroid/database/Cursor;)Lcom/infraware/filemanager/database/FmFileDatabase$DBFileItem;

    move-result-object v10

    .line 102
    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public GetSheetFiles()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/infraware/filemanager/database/FmFileDatabase$DBFileItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 245
    const-string v0, "_data LIKE \'%.xls%\' OR _data LIKE \'%.xlsx\' AND format != 12289"

    .line 246
    .local v0, where:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/infraware/filemanager/database/FmFileDatabase;->GetDocuments(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    return-object v1
.end method

.method public GetSlideFiles()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/infraware/filemanager/database/FmFileDatabase$DBFileItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 250
    const-string v0, "_data LIKE \'%.ppt%\' OR _data LIKE \'%.pptx\' AND format != 12289"

    .line 251
    .local v0, where:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/infraware/filemanager/database/FmFileDatabase;->GetDocuments(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    return-object v1
.end method

.method public InsertFileDatabase(Ljava/lang/String;I)Z
    .locals 12
    .parameter "a_strPath"
    .parameter "a_nType"

    .prologue
    const/4 v11, 0x0

    .line 160
    invoke-static {p1}, Lcom/infraware/filemanager/database/FmFileDatabase;->RemoveSlush(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 161
    .local v4, strFilePath:Ljava/lang/String;
    const/4 v2, 0x0

    .line 162
    .local v2, nFormatType:I
    const/4 v5, 0x0

    .line 164
    .local v5, strMimeType:Ljava/lang/String;
    packed-switch p2, :pswitch_data_0

    .line 190
    :goto_0
    if-nez v4, :cond_0

    move v8, v11

    .line 213
    :goto_1
    return v8

    .line 166
    :pswitch_0
    const-string v5, "application/msword"

    .line 167
    const v2, 0xba83

    .line 168
    goto :goto_0

    .line 170
    :pswitch_1
    const-string v5, "application/vnd.openxmlformats-officedocument.wordprocessingml.document"

    .line 171
    const/16 v2, 0x3000

    .line 172
    goto :goto_0

    .line 174
    :pswitch_2
    const-string v5, "application/vnd.ms-excel"

    .line 175
    const v2, 0xba85

    .line 176
    goto :goto_0

    .line 178
    :pswitch_3
    const-string v5, "application/vnd.openxmlformats-officedocument.spreadsheetml.sheet"

    .line 179
    const/16 v2, 0x3000

    .line 180
    goto :goto_0

    .line 182
    :pswitch_4
    const-string v5, "application/vnd.ms-powerpoint"

    .line 183
    const v2, 0xba86

    .line 184
    goto :goto_0

    .line 186
    :pswitch_5
    const-string v5, "application/vnd.openxmlformats-officedocument.presentationml.presentation"

    .line 187
    const/16 v2, 0x3000

    goto :goto_0

    .line 193
    :cond_0
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 195
    .local v3, oFile:Ljava/io/File;
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .line 196
    .local v7, values:Landroid/content/ContentValues;
    const/4 v0, 0x0

    .line 198
    .local v0, CanonicalPath:Ljava/lang/String;
    :try_start_0
    invoke-virtual {v3}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 202
    :goto_2
    const-string v8, "_data"

    invoke-virtual {v7, v8, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    const-string v8, "_size"

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 204
    const-string v8, "date_modified"

    invoke-virtual {v3}, Ljava/io/File;->lastModified()J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 205
    const-string v8, "title"

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/infraware/filemanager/database/FmFileDatabase;->removeExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    const-string v8, "format"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 207
    const-string v8, "mime_type"

    invoke-virtual {v7, v8, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    iget-object v8, p0, Lcom/infraware/filemanager/database/FmFileDatabase;->m_oCr:Landroid/content/ContentResolver;

    const-string v9, "external"

    invoke-static {v9}, Landroid/provider/MediaStore$Files;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    invoke-virtual {v8, v9, v7}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v6

    .line 210
    .local v6, uri:Landroid/net/Uri;
    if-nez v6, :cond_1

    move v8, v11

    .line 211
    goto :goto_1

    .line 199
    .end local v6           #uri:Landroid/net/Uri;
    :catch_0
    move-exception v1

    .line 200
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 213
    .end local v1           #e:Ljava/io/IOException;
    .restart local v6       #uri:Landroid/net/Uri;
    :cond_1
    const/4 v8, 0x1

    goto/16 :goto_1

    .line 164
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public InsertFolderDatabase(Ljava/lang/String;)Z
    .locals 5
    .parameter "a_strPath"

    .prologue
    .line 148
    invoke-static {p1}, Lcom/infraware/filemanager/database/FmFileDatabase;->RemoveSlush(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 149
    .local v0, CanonicalPath:Ljava/lang/String;
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 150
    .local v2, values:Landroid/content/ContentValues;
    const-string v3, "_data"

    invoke-virtual {v2, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    const-string v3, "format"

    const/16 v4, 0x3001

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 152
    iget-object v3, p0, Lcom/infraware/filemanager/database/FmFileDatabase;->m_oCr:Landroid/content/ContentResolver;

    const-string v4, "external"

    invoke-static {v4}, Landroid/provider/MediaStore$Files;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v1

    .line 153
    .local v1, uri:Landroid/net/Uri;
    if-eqz v1, :cond_0

    .line 154
    const/4 v3, 0x1

    .line 156
    :goto_0
    return v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public MoveFileDatabase(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .parameter "a_strSrcFullPath"
    .parameter "a_strDestFullPath"

    .prologue
    .line 111
    invoke-static {p1}, Lcom/infraware/filemanager/database/FmFileDatabase;->RemoveSlush(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 112
    .local v2, strSrcFullPath:Ljava/lang/String;
    invoke-static {p2}, Lcom/infraware/filemanager/database/FmFileDatabase;->RemoveSlush(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 113
    .local v1, strDestFullPath:Ljava/lang/String;
    const/4 v0, 0x0

    .line 114
    .local v0, bResult:Z
    invoke-virtual {p0, v2, v1}, Lcom/infraware/filemanager/database/FmFileDatabase;->CopyFileDatabase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 115
    if-eqz v0, :cond_0

    .line 116
    invoke-virtual {p0, v2}, Lcom/infraware/filemanager/database/FmFileDatabase;->DeleteFileDatabase(Ljava/lang/String;)Z

    move-result v3

    .line 118
    :goto_0
    return v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method removeExtension(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "a_strFileName"

    .prologue
    .line 275
    move-object v1, p1

    .line 276
    .local v1, strFileName:Ljava/lang/String;
    if-nez v1, :cond_0

    .line 277
    const/4 v2, 0x0

    .line 282
    :goto_0
    return-object v2

    .line 278
    :cond_0
    const/16 v2, 0x2e

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 279
    .local v0, nIndex:I
    const/4 v2, -0x1

    if-ne v0, v2, :cond_1

    move-object v2, v1

    .line 280
    goto :goto_0

    .line 282
    :cond_1
    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method
