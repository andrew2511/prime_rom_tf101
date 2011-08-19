.class public Lcom/asus/reader/bookconverter/EzEpubCreator;
.super Ljava/lang/Object;
.source "EzEpubCreator.java"


# instance fields
.field private mChapterHrefList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mChapterNameList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mDestEpubPath:Ljava/lang/String;

.field private mManifestList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mMetadataList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mNavPointList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSpineList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mZipOutStream:Ljava/util/zip/ZipOutputStream;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    invoke-direct {p0}, Lcom/asus/reader/bookconverter/EzEpubCreator;->initLists()V

    .line 44
    iget-object v0, p0, Lcom/asus/reader/bookconverter/EzEpubCreator;->mDestEpubPath:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 45
    const-string v0, "/data/data/com.asus.reader/cover/temp_converted_epub.epub"

    iput-object v0, p0, Lcom/asus/reader/bookconverter/EzEpubCreator;->mDestEpubPath:Ljava/lang/String;

    .line 46
    :cond_0
    return-void
.end method

.method private addContentOpfList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "path"
    .parameter "id"
    .parameter "mediatype"

    .prologue
    .line 166
    iget-object v0, p0, Lcom/asus/reader/bookconverter/EzEpubCreator;->mManifestList:Ljava/util/List;

    invoke-static {p2, p1, p3}, Lcom/asus/reader/bookconverter/EzEpubContent;->getManifestItem(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 167
    iget-object v0, p0, Lcom/asus/reader/bookconverter/EzEpubCreator;->mSpineList:Ljava/util/List;

    invoke-static {p2}, Lcom/asus/reader/bookconverter/EzEpubContent;->getSpineItemref(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 168
    return-void
.end method

.method private addTocNcxList(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "path"
    .parameter "id"

    .prologue
    .line 172
    iget-object v1, p0, Lcom/asus/reader/bookconverter/EzEpubCreator;->mNavPointList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v0, v1, 0x1

    .line 173
    .local v0, index:I
    iget-object v1, p0, Lcom/asus/reader/bookconverter/EzEpubCreator;->mNavPointList:Ljava/util/List;

    invoke-static {p2, p1, v0}, Lcom/asus/reader/bookconverter/EzEpubContent;->getNavPoint(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 174
    return-void
.end method

.method private createEpubMetadata()Z
    .locals 7

    .prologue
    .line 85
    const-string v0, "application/epub+zip"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    .line 86
    .local v1, data:[B
    new-instance v6, Ljava/util/zip/CRC32;

    invoke-direct {v6}, Ljava/util/zip/CRC32;-><init>()V

    .line 87
    .local v6, checksum:Ljava/util/zip/Checksum;
    const/4 v0, 0x0

    array-length v2, v1

    invoke-interface {v6, v1, v0, v2}, Ljava/util/zip/Checksum;->update([BII)V

    .line 88
    invoke-interface {v6}, Ljava/util/zip/Checksum;->getValue()J

    move-result-wide v3

    .line 89
    .local v3, crc:J
    const-string v2, "mimetype"

    array-length v5, v1

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/asus/reader/bookconverter/EzEpubCreator;->createUncompressZipEntry([BLjava/lang/String;JI)Z

    move-result v0

    return v0
.end method

.method private createProgressZipEntry([BLjava/lang/String;Z)Z
    .locals 6
    .parameter "data"
    .parameter "zipEntryPath"
    .parameter "isEnd"

    .prologue
    const/4 v5, 0x0

    .line 221
    new-instance v1, Ljava/util/zip/ZipEntry;

    invoke-direct {v1, p2}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    .line 223
    .local v1, entry:Ljava/util/zip/ZipEntry;
    :try_start_0
    iget-object v2, p0, Lcom/asus/reader/bookconverter/EzEpubCreator;->mZipOutStream:Ljava/util/zip/ZipOutputStream;

    invoke-virtual {v2, v1}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    .line 224
    iget-object v2, p0, Lcom/asus/reader/bookconverter/EzEpubCreator;->mZipOutStream:Ljava/util/zip/ZipOutputStream;

    const/4 v3, 0x0

    array-length v4, p1

    invoke-virtual {v2, p1, v3, v4}, Ljava/util/zip/ZipOutputStream;->write([BII)V

    .line 225
    if-eqz p3, :cond_0

    .line 226
    iget-object v2, p0, Lcom/asus/reader/bookconverter/EzEpubCreator;->mZipOutStream:Ljava/util/zip/ZipOutputStream;

    invoke-virtual {v2}, Ljava/util/zip/ZipOutputStream;->closeEntry()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 232
    :cond_0
    const/4 v2, 0x1

    :goto_0
    return v2

    .line 227
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 228
    .local v0, e:Ljava/io/IOException;
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    move v2, v5

    .line 229
    goto :goto_0
.end method

.method private createUncompressZipEntry([BLjava/lang/String;JI)Z
    .locals 5
    .parameter "data"
    .parameter "zipEntryPath"
    .parameter "crc"
    .parameter "fileLength"

    .prologue
    const/4 v4, 0x0

    .line 189
    new-instance v1, Ljava/util/zip/ZipEntry;

    invoke-direct {v1, p2}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    .line 190
    .local v1, entry:Ljava/util/zip/ZipEntry;
    invoke-virtual {v1, v4}, Ljava/util/zip/ZipEntry;->setMethod(I)V

    .line 191
    invoke-virtual {v1, p3, p4}, Ljava/util/zip/ZipEntry;->setCrc(J)V

    .line 192
    int-to-long v2, p5

    invoke-virtual {v1, v2, v3}, Ljava/util/zip/ZipEntry;->setCompressedSize(J)V

    .line 193
    int-to-long v2, p5

    invoke-virtual {v1, v2, v3}, Ljava/util/zip/ZipEntry;->setSize(J)V

    .line 195
    :try_start_0
    iget-object v2, p0, Lcom/asus/reader/bookconverter/EzEpubCreator;->mZipOutStream:Ljava/util/zip/ZipOutputStream;

    invoke-virtual {v2, v1}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    .line 196
    iget-object v2, p0, Lcom/asus/reader/bookconverter/EzEpubCreator;->mZipOutStream:Ljava/util/zip/ZipOutputStream;

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3, p5}, Ljava/util/zip/ZipOutputStream;->write([BII)V

    .line 197
    iget-object v2, p0, Lcom/asus/reader/bookconverter/EzEpubCreator;->mZipOutStream:Ljava/util/zip/ZipOutputStream;

    invoke-virtual {v2}, Ljava/util/zip/ZipOutputStream;->closeEntry()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 203
    const/4 v2, 0x1

    :goto_0
    return v2

    .line 198
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 199
    .local v0, e:Ljava/io/IOException;
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    move v2, v4

    .line 200
    goto :goto_0
.end method

.method private createZipEntry([BLjava/lang/String;)Z
    .locals 6
    .parameter "data"
    .parameter "zipEntryPath"

    .prologue
    const/4 v5, 0x0

    .line 207
    new-instance v1, Ljava/util/zip/ZipEntry;

    invoke-direct {v1, p2}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    .line 209
    .local v1, entry:Ljava/util/zip/ZipEntry;
    :try_start_0
    iget-object v2, p0, Lcom/asus/reader/bookconverter/EzEpubCreator;->mZipOutStream:Ljava/util/zip/ZipOutputStream;

    invoke-virtual {v2, v1}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    .line 210
    iget-object v2, p0, Lcom/asus/reader/bookconverter/EzEpubCreator;->mZipOutStream:Ljava/util/zip/ZipOutputStream;

    const/4 v3, 0x0

    array-length v4, p1

    invoke-virtual {v2, p1, v3, v4}, Ljava/util/zip/ZipOutputStream;->write([BII)V

    .line 211
    iget-object v2, p0, Lcom/asus/reader/bookconverter/EzEpubCreator;->mZipOutStream:Ljava/util/zip/ZipOutputStream;

    invoke-virtual {v2}, Ljava/util/zip/ZipOutputStream;->closeEntry()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 217
    const/4 v2, 0x1

    :goto_0
    return v2

    .line 212
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 213
    .local v0, e:Ljava/io/IOException;
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    move v2, v5

    .line 214
    goto :goto_0
.end method

.method private initLists()V
    .locals 1

    .prologue
    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/asus/reader/bookconverter/EzEpubCreator;->mMetadataList:Ljava/util/List;

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/asus/reader/bookconverter/EzEpubCreator;->mManifestList:Ljava/util/List;

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/asus/reader/bookconverter/EzEpubCreator;->mSpineList:Ljava/util/List;

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/asus/reader/bookconverter/EzEpubCreator;->mNavPointList:Ljava/util/List;

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/asus/reader/bookconverter/EzEpubCreator;->mChapterHrefList:Ljava/util/List;

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/asus/reader/bookconverter/EzEpubCreator;->mChapterNameList:Ljava/util/List;

    .line 60
    return-void
.end method

.method private initMetadata(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "language"
    .parameter "title"
    .parameter "subject"
    .parameter "creator"
    .parameter "publisher"
    .parameter "date"
    .parameter "identifier"

    .prologue
    .line 250
    if-nez p1, :cond_0

    .line 251
    const-string p1, "en"

    .line 252
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<dc:language>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "</dc:language>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 253
    if-nez p2, :cond_1

    .line 254
    const-string p2, "ASUS TITLE"

    .line 255
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<dc:title>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "</dc:title>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 256
    if-nez p3, :cond_2

    .line 257
    const-string p3, "ASUS SUBJECT"

    .line 258
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<dc:subject>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "</dc:subject>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 259
    if-nez p4, :cond_3

    .line 260
    const-string p4, "ASUS MyLibrary"

    .line 261
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<dc:creator>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "</dc:creator>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    .line 262
    if-nez p5, :cond_4

    .line 263
    const-string p5, "ASUS PUBLISHER"

    .line 264
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<dc:publisher>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "</dc:publisher>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    .line 265
    if-nez p6, :cond_5

    .line 266
    const-string p6, "2011-01-01"

    .line 267
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<dc:date opf:event=\"epub-publication\">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "</dc:date>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p6

    .line 268
    if-nez p7, :cond_6

    .line 269
    const-string p7, "http://www.asus.com.tw/"

    .line 270
    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<dc:identifier id=\"dcidid\" opf:scheme=\"URI\">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "</dc:identifier>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p7

    .line 272
    iget-object v0, p0, Lcom/asus/reader/bookconverter/EzEpubCreator;->mMetadataList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 273
    iget-object v0, p0, Lcom/asus/reader/bookconverter/EzEpubCreator;->mMetadataList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 274
    iget-object v0, p0, Lcom/asus/reader/bookconverter/EzEpubCreator;->mMetadataList:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 275
    iget-object v0, p0, Lcom/asus/reader/bookconverter/EzEpubCreator;->mMetadataList:Ljava/util/List;

    invoke-interface {v0, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 276
    iget-object v0, p0, Lcom/asus/reader/bookconverter/EzEpubCreator;->mMetadataList:Ljava/util/List;

    invoke-interface {v0, p5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 277
    iget-object v0, p0, Lcom/asus/reader/bookconverter/EzEpubCreator;->mMetadataList:Ljava/util/List;

    invoke-interface {v0, p6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 278
    iget-object v0, p0, Lcom/asus/reader/bookconverter/EzEpubCreator;->mMetadataList:Ljava/util/List;

    invoke-interface {v0, p7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 279
    return-void
.end method

.method private initZipStream()Z
    .locals 4

    .prologue
    .line 178
    :try_start_0
    new-instance v0, Ljava/io/FileOutputStream;

    iget-object v2, p0, Lcom/asus/reader/bookconverter/EzEpubCreator;->mDestEpubPath:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 179
    .local v0, dest:Ljava/io/FileOutputStream;
    new-instance v2, Ljava/util/zip/ZipOutputStream;

    new-instance v3, Ljava/io/BufferedOutputStream;

    invoke-direct {v3, v0}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v2, v3}, Ljava/util/zip/ZipOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v2, p0, Lcom/asus/reader/bookconverter/EzEpubCreator;->mZipOutStream:Ljava/util/zip/ZipOutputStream;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 185
    const/4 v2, 0x1

    .end local v0           #dest:Ljava/io/FileOutputStream;
    :goto_0
    return v2

    .line 180
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 181
    .local v1, e:Ljava/io/FileNotFoundException;
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 183
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private processProgressZipEntry([BZ)Z
    .locals 5
    .parameter "data"
    .parameter "isEnd"

    .prologue
    const/4 v4, 0x0

    .line 237
    :try_start_0
    iget-object v1, p0, Lcom/asus/reader/bookconverter/EzEpubCreator;->mZipOutStream:Ljava/util/zip/ZipOutputStream;

    const/4 v2, 0x0

    array-length v3, p1

    invoke-virtual {v1, p1, v2, v3}, Ljava/util/zip/ZipOutputStream;->write([BII)V

    .line 238
    if-eqz p2, :cond_0

    .line 239
    iget-object v1, p0, Lcom/asus/reader/bookconverter/EzEpubCreator;->mZipOutStream:Ljava/util/zip/ZipOutputStream;

    invoke-virtual {v1}, Ljava/util/zip/ZipOutputStream;->closeEntry()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 245
    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    .line 240
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 241
    .local v0, e:Ljava/io/IOException;
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    move v1, v4

    .line 242
    goto :goto_0
.end method


# virtual methods
.method public createChapterHtmlBody([B)Z
    .locals 1
    .parameter "partBody"

    .prologue
    .line 126
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/asus/reader/bookconverter/EzEpubCreator;->processProgressZipEntry([BZ)Z

    .line 127
    const/4 v0, 0x1

    return v0
.end method

.method public createChapterHtmlFooter(I)Z
    .locals 4
    .parameter "chapterId"

    .prologue
    const/4 v3, 0x1

    .line 131
    const-string v0, "</body></html>"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-direct {p0, v0, v3}, Lcom/asus/reader/bookconverter/EzEpubCreator;->processProgressZipEntry([BZ)Z

    .line 132
    invoke-static {p1}, Lcom/asus/reader/bookconverter/EzEpubContent;->getChapterPath(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Lcom/asus/reader/bookconverter/EzEpubContent;->getChapterId(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "application/xhtml+xml"

    invoke-direct {p0, v0, v1, v2}, Lcom/asus/reader/bookconverter/EzEpubCreator;->addContentOpfList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    invoke-static {p1}, Lcom/asus/reader/bookconverter/EzEpubContent;->getChapterPath(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Lcom/asus/reader/bookconverter/EzEpubContent;->getChapterId(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/asus/reader/bookconverter/EzEpubCreator;->addTocNcxList(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    return v3
.end method

.method public createChapterHtmlHeader(Ljava/lang/String;I)Z
    .locals 4
    .parameter "language"
    .parameter "chapterId"

    .prologue
    .line 117
    if-nez p1, :cond_0

    .line 118
    const-string p1, "en"

    .line 119
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<?xml version=\"1.0\" encoding=\"UTF-8\"?><!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.1//EN\" \"http://www.w3.org/TR/xhtml11/DTD/xhtml11.dtd\"><html xmlns=\"http://www.w3.org/1999/xhtml\" xml:lang=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\"><head><title> Chapter </title></head><body>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 121
    .local v0, contentsHtml:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {p2}, Lcom/asus/reader/bookconverter/EzEpubContent;->getChapterPath(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {p0, v1, v2, v3}, Lcom/asus/reader/bookconverter/EzEpubCreator;->createProgressZipEntry([BLjava/lang/String;Z)Z

    .line 122
    const/4 v1, 0x1

    return v1
.end method

.method public createContentOpf()Z
    .locals 4

    .prologue
    .line 149
    iget-object v1, p0, Lcom/asus/reader/bookconverter/EzEpubCreator;->mMetadataList:Ljava/util/List;

    iget-object v2, p0, Lcom/asus/reader/bookconverter/EzEpubCreator;->mManifestList:Ljava/util/List;

    iget-object v3, p0, Lcom/asus/reader/bookconverter/EzEpubCreator;->mSpineList:Ljava/util/List;

    invoke-static {v1, v2, v3}, Lcom/asus/reader/bookconverter/EzEpubContent;->getContentOpf(Ljava/util/List;Ljava/util/List;Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    .line 150
    .local v0, contentOpf:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    sget-object v2, Lcom/asus/reader/bookconverter/EzEpubContent;->CONTENT_OPF_PATH:Ljava/lang/String;

    invoke-direct {p0, v1, v2}, Lcom/asus/reader/bookconverter/EzEpubCreator;->createZipEntry([BLjava/lang/String;)Z

    .line 151
    const/4 v1, 0x1

    return v1
.end method

.method public createContentsHtml(Ljava/util/List;Ljava/util/List;Ljava/lang/String;)Z
    .locals 4
    .parameter
    .parameter
    .parameter "language"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 106
    .local p1, chapterHrefList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .local p2, chapterNameList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-nez p3, :cond_0

    .line 107
    const-string p3, "en"

    .line 108
    :cond_0
    invoke-static {p1, p2, p3}, Lcom/asus/reader/bookconverter/EzEpubContent;->getContentsHtmlContent(Ljava/util/List;Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 110
    .local v0, contentsHtml:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    const-string v2, "contents.html"

    invoke-direct {p0, v1, v2}, Lcom/asus/reader/bookconverter/EzEpubCreator;->createZipEntry([BLjava/lang/String;)Z

    .line 111
    const-string v1, "contents.html"

    const-string v2, "contents"

    const-string v3, "application/xhtml+xml"

    invoke-direct {p0, v1, v2, v3}, Lcom/asus/reader/bookconverter/EzEpubCreator;->addContentOpfList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    const-string v1, "contents.html"

    const-string v2, "contents"

    invoke-direct {p0, v1, v2}, Lcom/asus/reader/bookconverter/EzEpubCreator;->addTocNcxList(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    const/4 v1, 0x1

    return v1
.end method

.method public createTitlePage(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .parameter "language"
    .parameter "title"

    .prologue
    .line 93
    if-nez p2, :cond_0

    .line 94
    const-string p2, "ASUS TITLE"

    .line 95
    :cond_0
    if-nez p1, :cond_1

    .line 96
    const-string p1, "en"

    .line 97
    :cond_1
    invoke-static {p1, p2}, Lcom/asus/reader/bookconverter/EzEpubContent;->getTitlePage(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 98
    .local v0, titlePage:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    const-string v2, "title.html"

    invoke-direct {p0, v1, v2}, Lcom/asus/reader/bookconverter/EzEpubCreator;->createZipEntry([BLjava/lang/String;)Z

    .line 99
    const-string v1, "title.html"

    const-string v2, "title"

    const-string v3, "application/xhtml+xml"

    invoke-direct {p0, v1, v2, v3}, Lcom/asus/reader/bookconverter/EzEpubCreator;->addContentOpfList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    const-string v1, "title.html"

    const-string v2, "title"

    invoke-direct {p0, v1, v2}, Lcom/asus/reader/bookconverter/EzEpubCreator;->addTocNcxList(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    const/4 v1, 0x1

    return v1
.end method

.method public createTocNcx(Ljava/lang/String;)Z
    .locals 5
    .parameter "title"

    .prologue
    .line 138
    if-nez p1, :cond_0

    .line 139
    const-string p1, "ASUS TITLE"

    .line 140
    :cond_0
    iget-object v1, p0, Lcom/asus/reader/bookconverter/EzEpubCreator;->mNavPointList:Ljava/util/List;

    invoke-static {v1, p1}, Lcom/asus/reader/bookconverter/EzEpubContent;->getTocNcx(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 141
    .local v0, tocNcxContent:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    sget-object v2, Lcom/asus/reader/bookconverter/EzEpubContent;->TOC_NCX_PATH:Ljava/lang/String;

    invoke-direct {p0, v1, v2}, Lcom/asus/reader/bookconverter/EzEpubCreator;->createZipEntry([BLjava/lang/String;)Z

    .line 143
    iget-object v1, p0, Lcom/asus/reader/bookconverter/EzEpubCreator;->mManifestList:Ljava/util/List;

    sget-object v2, Lcom/asus/reader/bookconverter/EzEpubContent;->TOC_NCX_ID:Ljava/lang/String;

    sget-object v3, Lcom/asus/reader/bookconverter/EzEpubContent;->TOC_NCX_PATH:Ljava/lang/String;

    const-string v4, "application/x-dtbncx+xml"

    invoke-static {v2, v3, v4}, Lcom/asus/reader/bookconverter/EzEpubContent;->getManifestItem(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 145
    const/4 v1, 0x1

    return v1
.end method

.method public finishStream()V
    .locals 3

    .prologue
    .line 156
    :try_start_0
    iget-object v1, p0, Lcom/asus/reader/bookconverter/EzEpubCreator;->mZipOutStream:Ljava/util/zip/ZipOutputStream;

    if-eqz v1, :cond_0

    .line 157
    iget-object v1, p0, Lcom/asus/reader/bookconverter/EzEpubCreator;->mZipOutStream:Ljava/util/zip/ZipOutputStream;

    invoke-virtual {v1}, Ljava/util/zip/ZipOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 162
    :cond_0
    :goto_0
    return-void

    .line 158
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 159
    .local v0, e:Ljava/io/IOException;
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public init(Ljava/lang/String;)Z
    .locals 8
    .parameter "language"

    .prologue
    const/4 v2, 0x0

    .line 63
    move-object v0, p0

    move-object v1, p1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Lcom/asus/reader/bookconverter/EzEpubCreator;->init(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public init(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .parameter "language"
    .parameter "title"
    .parameter "subject"
    .parameter "creator"
    .parameter "publisher"
    .parameter "date"
    .parameter "identifier"

    .prologue
    const/4 v2, 0x0

    .line 68
    invoke-direct {p0}, Lcom/asus/reader/bookconverter/EzEpubCreator;->initZipStream()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v2

    .line 79
    :goto_0
    return v0

    .line 71
    :cond_0
    invoke-direct {p0}, Lcom/asus/reader/bookconverter/EzEpubCreator;->createEpubMetadata()Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v2

    .line 72
    goto :goto_0

    .line 74
    :cond_1
    const-string v0, "<?xml version=\"1.0\"?><container version=\"1.0\" xmlns=\"urn:oasis:names:tc:opendocument:xmlns:container\"><rootfiles><rootfile full-path=\"content.opf\" media-type=\"application/oebps-package+xml\"/></rootfiles></container>"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    const-string v1, "META-INF/container.xml"

    invoke-direct {p0, v0, v1}, Lcom/asus/reader/bookconverter/EzEpubCreator;->createZipEntry([BLjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v2

    .line 76
    goto :goto_0

    .line 78
    :cond_2
    invoke-direct/range {p0 .. p7}, Lcom/asus/reader/bookconverter/EzEpubCreator;->initMetadata(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    const/4 v0, 0x1

    goto :goto_0
.end method
