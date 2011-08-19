.class public Lcom/asus/reader/book/ReaderDatabaseUtil;
.super Ljava/lang/Object;
.source "ReaderDatabaseUtil.java"


# static fields
.field public static final ReaderTableBook:Landroid/net/Uri;

.field public static sBookSourceMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static sVibeIdMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 49
    const-string v0, "content://reader/book"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/asus/reader/book/ReaderDatabaseUtil;->ReaderTableBook:Landroid/net/Uri;

    .line 63
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/asus/reader/book/ReaderDatabaseUtil;->sBookSourceMap:Ljava/util/HashMap;

    .line 64
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/asus/reader/book/ReaderDatabaseUtil;->sVibeIdMap:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static createAssetsCoverPath(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 10
    .parameter "context"
    .parameter "coverPath"
    .parameter "assetsFileName"

    .prologue
    const/4 v7, 0x1

    const/4 v9, 0x0

    .line 198
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 199
    .local v4, file:Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_1

    .line 202
    :try_start_0
    invoke-virtual {v4}, Ljava/io/File;->createNewFile()Z

    .line 203
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v6

    invoke-virtual {v6, p2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    .line 204
    .local v1, cepubCoverInStream:Ljava/io/InputStream;
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 205
    .local v2, cepubCoverOutStream:Ljava/io/FileOutputStream;
    const/16 v6, 0x400

    new-array v0, v6, [B

    .line 207
    .local v0, buf_cover:[B
    :goto_0
    invoke-virtual {v1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v5

    .local v5, len_cover:I
    if-lez v5, :cond_0

    .line 208
    const/4 v6, 0x0

    invoke-virtual {v2, v0, v6, v5}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 212
    .end local v0           #buf_cover:[B
    .end local v1           #cepubCoverInStream:Ljava/io/InputStream;
    .end local v2           #cepubCoverOutStream:Ljava/io/FileOutputStream;
    .end local v5           #len_cover:I
    :catch_0
    move-exception v6

    move-object v3, v6

    .line 213
    .local v3, e:Ljava/io/IOException;
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "e.getMessage()="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    move v6, v9

    .line 218
    .end local v3           #e:Ljava/io/IOException;
    :goto_1
    return v6

    .line 209
    .restart local v0       #buf_cover:[B
    .restart local v1       #cepubCoverInStream:Ljava/io/InputStream;
    .restart local v2       #cepubCoverOutStream:Ljava/io/FileOutputStream;
    .restart local v5       #len_cover:I
    :cond_0
    :try_start_1
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    .line 210
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move v6, v7

    .line 211
    goto :goto_1

    .end local v0           #buf_cover:[B
    .end local v1           #cepubCoverInStream:Ljava/io/InputStream;
    .end local v2           #cepubCoverOutStream:Ljava/io/FileOutputStream;
    .end local v5           #len_cover:I
    :cond_1
    move v6, v7

    .line 218
    goto :goto_1
.end method

.method public static getCoverAssetsFileName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "path"

    .prologue
    .line 249
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, ".txt"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 250
    const-string v0, "txt_cover.png"

    .line 258
    :goto_0
    return-object v0

    .line 251
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, ".cepub"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 252
    const-string v0, "cepub_cover.png"

    goto :goto_0

    .line 253
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, ".pdb"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 254
    const-string v0, "pdb_cover.png"

    goto :goto_0

    .line 255
    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, ".updb"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 256
    const-string v0, "pdb_cover.png"

    goto :goto_0

    .line 258
    :cond_3
    const-string v0, "txt_cover.png"

    goto :goto_0
.end method

.method public static getCoverPath(Ljava/lang/String;I)Ljava/lang/String;
    .locals 3
    .parameter "fileName"
    .parameter "idDoc"

    .prologue
    .line 263
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/data/data/com.asus.reader/cover/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".png"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getFileName(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "path"

    .prologue
    .line 223
    :try_start_0
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 224
    .local v1, uri:Landroid/net/Uri;
    invoke-virtual {v1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 227
    .end local v1           #uri:Landroid/net/Uri;
    :goto_0
    return-object v2

    .line 225
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 226
    .local v0, e:Ljava/lang/Exception;
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "e.getMessage() = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 227
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static getMimeType(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "path"

    .prologue
    .line 232
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, ".txt"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 233
    const-string v0, "text/plain"

    .line 245
    :goto_0
    return-object v0

    .line 234
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, ".cepub"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 235
    const-string v0, "application/octet-stream"

    goto :goto_0

    .line 236
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, ".pdb"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 237
    const-string v0, "application/octet-stream"

    goto :goto_0

    .line 238
    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, ".updb"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 239
    const-string v0, "application/octet-stream"

    goto :goto_0

    .line 240
    :cond_3
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, ".epub"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 241
    const-string v0, "application/epub+zip"

    goto :goto_0

    .line 242
    :cond_4
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, ".pdf"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 243
    const-string v0, "application/pdf"

    goto :goto_0

    .line 245
    :cond_5
    const-string v0, ""

    goto :goto_0
.end method

.method public static insertBasicBookWithCover(Landroid/content/Context;ILjava/lang/String;I)Z
    .locals 14
    .parameter "context"
    .parameter "idDoc"
    .parameter "path"
    .parameter "volumeId"

    .prologue
    .line 116
    invoke-static/range {p2 .. p2}, Lcom/asus/reader/book/ReaderDatabaseUtil;->getFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 117
    .local v3, displayName:Ljava/lang/String;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v4, 0x3e8

    div-long v4, v0, v4

    .line 118
    .local v4, dateAdd:J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v6, 0x3e8

    div-long v6, v0, v6

    .line 119
    .local v6, dateModify:J
    invoke-static/range {p2 .. p2}, Lcom/asus/reader/book/ReaderDatabaseUtil;->getMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 121
    .local v8, mimetype:Ljava/lang/String;
    invoke-static {v3, p1}, Lcom/asus/reader/book/ReaderDatabaseUtil;->getCoverPath(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v10

    .line 122
    .local v10, coverPath:Ljava/lang/String;
    invoke-static/range {p2 .. p2}, Lcom/asus/reader/book/ReaderDatabaseUtil;->getCoverAssetsFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 123
    .local v0, assetsFileName:Ljava/lang/String;
    invoke-static {p0, v10, v0}, Lcom/asus/reader/book/ReaderDatabaseUtil;->createAssetsCoverPath(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    .line 124
    move-object v11, v3

    .line 125
    .local v11, title:Ljava/lang/String;
    const/16 v12, 0x10

    .line 126
    .local v12, lastViewdFontsize:I
    const-string v13, ""

    .local v13, creator:Ljava/lang/String;
    move-object v0, p0

    move v1, p1

    move-object/from16 v2, p2

    move/from16 v9, p3

    .line 127
    invoke-static/range {v0 .. v13}, Lcom/asus/reader/book/ReaderDatabaseUtil;->insertBookData(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;JJLjava/lang/String;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)Z

    .end local v0           #assetsFileName:Ljava/lang/String;
    move-result p0

    .end local p0
    return p0
.end method

.method private static insertBookData(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;JJLjava/lang/String;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)Z
    .locals 2
    .parameter "context"
    .parameter "idDoc"
    .parameter "path"
    .parameter "displayName"
    .parameter "dateAdd"
    .parameter "dateModify"
    .parameter "mimetype"
    .parameter "volumeId"
    .parameter "coverPath"
    .parameter "title"
    .parameter "lastViewdFontsize"
    .parameter "creator"

    .prologue
    .line 157
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 158
    .local v0, values:Landroid/content/ContentValues;
    const-string v1, "_id_doc"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .end local p1
    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 159
    const-string p1, "_data"

    invoke-virtual {v0, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    const-string p1, "_display_name"

    invoke-virtual {v0, p1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    const-string p1, "date_added"

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    .end local p2
    invoke-virtual {v0, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 162
    const-string p1, "date_modified"

    invoke-static {p6, p7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 163
    const-string p1, "mime_type"

    invoke-virtual {v0, p1, p8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    const-string p1, "volume_id"

    invoke-static {p9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 165
    const-string p1, "cover_path"

    invoke-virtual {v0, p1, p10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    const-string p1, "title"

    invoke-virtual {v0, p1, p11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    const-string p1, "last_viewed_font_size"

    invoke-static {p12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 168
    const-string p1, "creator"

    invoke-virtual {v0, p1, p13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    .end local p0
    sget-object p1, Lcom/asus/reader/book/ReaderDatabaseUtil;->ReaderTableBook:Landroid/net/Uri;

    invoke-virtual {p0, p1, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 170
    invoke-virtual {v0}, Landroid/content/ContentValues;->clear()V

    .line 171
    const/4 p0, 0x1

    return p0
.end method

.method public static insertPdbBookData(Landroid/content/Context;Landroid/database/Cursor;)Z
    .locals 14
    .parameter "context"
    .parameter "movedMediaCursor"

    .prologue
    .line 66
    const-string v0, "ReaderDatabaseSyncUtil"

    const-string v1, "start syncPdbBook "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    if-nez p1, :cond_0

    .line 70
    const-string p0, "ReaderDatabaseSyncUtil"

    .end local p0
    const-string p1, "cursor null"

    .end local p1
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    const/4 p0, 0x0

    .line 111
    :goto_0
    return p0

    .line 73
    .restart local p0
    .restart local p1
    :cond_0
    const/4 v0, 0x1

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 74
    .local v2, path:Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, ".pdb"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, ".updb"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 75
    const-string p0, "ReaderDatabaseSyncUtil"

    .end local p0
    const-string p1, "not a pdb book"

    .end local p1
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    const/4 p0, 0x0

    goto :goto_0

    .line 78
    .restart local p0
    .restart local p1
    :cond_1
    invoke-static {v2}, Lcom/asus/reader/bookconverter/EbookConvertFactory;->createEbook(Ljava/lang/String;)Lcom/asus/reader/bookconverter/Ebook;

    move-result-object v13

    .line 79
    .local v13, ebook:Lcom/asus/reader/bookconverter/Ebook;
    if-nez v13, :cond_2

    .line 80
    const-string p0, "ReaderDatabaseSyncUtil"

    .end local p0
    const-string p1, "not supported file format"

    .end local p1
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    const/4 p0, 0x1

    goto :goto_0

    .line 84
    .restart local p0
    .restart local p1
    :cond_2
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 87
    .local v1, idDoc:I
    const/4 v0, 0x1

    :try_start_0
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 88
    .local v0, uri:Landroid/net/Uri;
    invoke-virtual {v0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 94
    .end local v0           #uri:Landroid/net/Uri;
    .local v3, displayName:Ljava/lang/String;
    :goto_1
    const/4 v0, 0x3

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 95
    .local v4, dateAdd:J
    const/4 v0, 0x4

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 96
    .local v6, dateModify:J
    const/4 v0, 0x5

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 97
    .local v8, mimetype:Ljava/lang/String;
    if-nez v8, :cond_3

    .line 98
    const-string v8, "application/octet-stream"

    .line 99
    :cond_3
    const/4 v0, 0x7

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 101
    .local v9, volumeId:I
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "/data/data/com.asus.reader/cover/pdb_cover_"

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v10, 0x0

    invoke-interface {p1, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v10, "_"

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v10, 0x3

    invoke-interface {p1, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result p1

    .end local p1
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ".png"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 103
    .local v10, coverPath:Ljava/lang/String;
    const-string p1, "pdb_cover.png"

    .line 104
    .local p1, assetsFileName:Ljava/lang/String;
    invoke-static {p0, v10, p1}, Lcom/asus/reader/book/ReaderDatabaseUtil;->createAssetsCoverPath(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    .line 105
    move-object v11, v3

    .line 106
    .local v11, title:Ljava/lang/String;
    const/16 v12, 0x10

    .line 107
    .local v12, lastViewdFontsize:I
    invoke-interface {v13}, Lcom/asus/reader/bookconverter/Ebook;->getAuthor()Ljava/lang/String;

    move-result-object v13

    .local v13, creator:Ljava/lang/String;
    move-object v0, p0

    .line 109
    invoke-static/range {v0 .. v13}, Lcom/asus/reader/book/ReaderDatabaseUtil;->insertBookData(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;JJLjava/lang/String;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)Z

    move-result p0

    .line 111
    .local p0, isSuccess:Z
    goto/16 :goto_0

    .line 89
    .end local v3           #displayName:Ljava/lang/String;
    .end local v4           #dateAdd:J
    .end local v6           #dateModify:J
    .end local v8           #mimetype:Ljava/lang/String;
    .end local v9           #volumeId:I
    .end local v10           #coverPath:Ljava/lang/String;
    .end local v11           #title:Ljava/lang/String;
    .end local v12           #lastViewdFontsize:I
    .local v13, ebook:Lcom/asus/reader/bookconverter/Ebook;
    .local p0, context:Landroid/content/Context;
    .local p1, movedMediaCursor:Landroid/database/Cursor;
    :catch_0
    move-exception v0

    .line 91
    .local v0, e:Ljava/lang/Exception;
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "e.getMessage() = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    .end local v0           #e:Ljava/lang/Exception;
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 92
    const/4 v0, 0x2

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .restart local v3       #displayName:Ljava/lang/String;
    goto :goto_1
.end method

.method public static insertPdbBookWithCover(Landroid/content/Context;ILjava/lang/String;I)Z
    .locals 14
    .parameter "context"
    .parameter "idDoc"
    .parameter "path"
    .parameter "volumeId"

    .prologue
    .line 133
    invoke-static/range {p2 .. p2}, Lcom/asus/reader/bookconverter/EbookConvertFactory;->createEbook(Ljava/lang/String;)Lcom/asus/reader/bookconverter/Ebook;

    move-result-object v1

    .line 134
    .local v1, ebook:Lcom/asus/reader/bookconverter/Ebook;
    if-nez v1, :cond_0

    .line 135
    const-string p0, "ReaderDatabaseSyncUtil"

    .end local p0
    const-string p1, "not supported file format"

    .end local p1
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    const/4 p0, 0x0

    .line 149
    .end local v1           #ebook:Lcom/asus/reader/bookconverter/Ebook;
    :goto_0
    return p0

    .line 138
    .restart local v1       #ebook:Lcom/asus/reader/bookconverter/Ebook;
    .restart local p0
    .restart local p1
    :cond_0
    invoke-static/range {p2 .. p2}, Lcom/asus/reader/book/ReaderDatabaseUtil;->getFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 139
    .local v3, displayName:Ljava/lang/String;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    .line 140
    .local v4, dateAdd:J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    div-long/2addr v6, v8

    .line 141
    .local v6, dateModify:J
    invoke-static/range {p2 .. p2}, Lcom/asus/reader/book/ReaderDatabaseUtil;->getMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 143
    .local v8, mimetype:Ljava/lang/String;
    invoke-static {v3, p1}, Lcom/asus/reader/book/ReaderDatabaseUtil;->getCoverPath(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v10

    .line 144
    .local v10, coverPath:Ljava/lang/String;
    invoke-static/range {p2 .. p2}, Lcom/asus/reader/book/ReaderDatabaseUtil;->getCoverAssetsFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 145
    .local v0, assetsFileName:Ljava/lang/String;
    invoke-static {p0, v10, v0}, Lcom/asus/reader/book/ReaderDatabaseUtil;->createAssetsCoverPath(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    .line 146
    move-object v11, v3

    .line 147
    .local v11, title:Ljava/lang/String;
    const/16 v12, 0x10

    .line 148
    .local v12, lastViewdFontsize:I
    invoke-interface {v1}, Lcom/asus/reader/bookconverter/Ebook;->getAuthor()Ljava/lang/String;

    move-result-object v13

    .local v13, creator:Ljava/lang/String;
    move-object v0, p0

    move v1, p1

    move-object/from16 v2, p2

    move/from16 v9, p3

    .line 149
    invoke-static/range {v0 .. v13}, Lcom/asus/reader/book/ReaderDatabaseUtil;->insertBookData(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;JJLjava/lang/String;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)Z

    .end local v0           #assetsFileName:Ljava/lang/String;
    .end local v1           #ebook:Lcom/asus/reader/bookconverter/Ebook;
    move-result p0

    goto :goto_0
.end method

.method public static updateErrorBookState(Landroid/content/Context;)Z
    .locals 8
    .parameter "context"

    .prologue
    const/4 v7, 0x1

    .line 184
    sget-object v4, Lcom/asus/reader/book/DocErrorHandler;->sDocErrorList:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 185
    .local v0, mapKeys:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 186
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 187
    .local v1, path:Ljava/lang/String;
    const-string v4, "file://"

    const-string v5, ""

    invoke-virtual {v1, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 188
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_data =\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 189
    .local v3, where:Ljava/lang/String;
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 190
    .local v2, values:Landroid/content/ContentValues;
    const-string v4, "error_state"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 191
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Lcom/asus/reader/book/ReaderDatabaseUtil;->ReaderTableBook:Landroid/net/Uri;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v2, v3, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 192
    invoke-virtual {v2}, Landroid/content/ContentValues;->clear()V

    goto :goto_0

    .line 194
    .end local v1           #path:Ljava/lang/String;
    .end local v2           #values:Landroid/content/ContentValues;
    .end local v3           #where:Ljava/lang/String;
    :cond_0
    return v7
.end method

.method public static updatePdbBookData(Landroid/content/Context;ILjava/lang/String;)Z
    .locals 5
    .parameter "context"
    .parameter "bookId"
    .parameter "title"

    .prologue
    .line 175
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_id = \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 176
    .local v1, where:Ljava/lang/String;
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 177
    .local v0, values:Landroid/content/ContentValues;
    const-string v2, "title"

    invoke-virtual {v0, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/asus/reader/book/ReaderDatabaseUtil;->ReaderTableBook:Landroid/net/Uri;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v0, v1, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 179
    invoke-virtual {v0}, Landroid/content/ContentValues;->clear()V

    .line 180
    const/4 v2, 0x1

    return v2
.end method
