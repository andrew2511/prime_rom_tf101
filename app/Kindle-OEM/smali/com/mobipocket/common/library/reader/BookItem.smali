.class public Lcom/mobipocket/common/library/reader/BookItem;
.super Ljava/lang/Object;
.source "BookItem.java"

# interfaces
.implements Lcom/mobipocket/common/util/Comparable;


# static fields
.field public static final BOOKTYPE_AUDIO:I = 0x4

.field public static final BOOKTYPE_BOOK:I = 0x2

.field private static final BOOKTYPE_EDOC_FIRST:I = 0x200

.field private static final BOOKTYPE_EDOC_LAST:I = 0x2ff

.field public static final BOOKTYPE_ERROR:I = -0x1

.field public static final BOOKTYPE_HTML:I = 0x206

.field private static final BOOKTYPE_LISTABLE_FIRST:I = 0x0

.field public static final BOOKTYPE_MESSAGE:I = 0x6

.field public static final BOOKTYPE_NEWS:I = 0x101

.field public static final BOOKTYPE_NEWS_FEED:I = 0x102

.field private static final BOOKTYPE_NEWS_FIRST:I = 0x100

.field private static final BOOKTYPE_NEWS_LAST:I = 0x1ff

.field public static final BOOKTYPE_NEWS_MAGAZINE:I = 0x103

.field public static final BOOKTYPE_PALMDOC:I = 0x3

.field public static final BOOKTYPE_PICS:I = 0x201

.field public static final BOOKTYPE_PPT:I = 0x204

.field public static final BOOKTYPE_TEXT:I = 0x205

.field public static final BOOKTYPE_WORD:I = 0x202

.field public static final BOOKTYPE_XLS:I = 0x203

.field private static final COVERART_MIN_SIZE:I = 0x5a


# instance fields
.field private final _baseLanguage:I

.field private _contentType:I

.field private final _date:I

.field private final _dicLanguages:S

.field private final _embedBase:I

.field private final _encryptionLevel:I

.field private _extraHeaderData:[Lcom/mobipocket/common/library/reader/book/ExtraHeaderDataItem;

.field private final _fileSize:I

.field private _fullMetaData:Lcom/mobipocket/common/library/reader/book/FullMetaDataCollection;

.field private final _identifier:Ljava/lang/String;

.field private final _idxToc:I

.field private _isAccessed:Z

.field private _lastMBPModificationDate:J

.field private final _lastPRCModificationDate:J

.field private _lastReadPageNumber:I

.field private _lastReadPagePosition:I

.field private final _maxPosition:I

.field private final _pdbFactory:Lcom/mobipocket/common/filesystem/PDBFactory;

.field private final _pdbName:Ljava/lang/String;

.field private final _randomID:I

.field private final _readingTime:I

.field private final _title:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 6
    .parameter "fileName"

    .prologue
    const-wide/16 v4, -0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 348
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 168
    iput-object v3, p0, Lcom/mobipocket/common/library/reader/BookItem;->_fullMetaData:Lcom/mobipocket/common/library/reader/book/FullMetaDataCollection;

    .line 173
    iput-boolean v2, p0, Lcom/mobipocket/common/library/reader/BookItem;->_isAccessed:Z

    .line 349
    iput-object p1, p0, Lcom/mobipocket/common/library/reader/BookItem;->_identifier:Ljava/lang/String;

    .line 350
    const-string v0, ""

    iput-object v0, p0, Lcom/mobipocket/common/library/reader/BookItem;->_pdbName:Ljava/lang/String;

    .line 351
    iput v1, p0, Lcom/mobipocket/common/library/reader/BookItem;->_randomID:I

    .line 352
    const-string v0, "ERROR"

    iput-object v0, p0, Lcom/mobipocket/common/library/reader/BookItem;->_title:Ljava/lang/String;

    .line 353
    iput v1, p0, Lcom/mobipocket/common/library/reader/BookItem;->_contentType:I

    .line 354
    iput v1, p0, Lcom/mobipocket/common/library/reader/BookItem;->_encryptionLevel:I

    .line 355
    iput v1, p0, Lcom/mobipocket/common/library/reader/BookItem;->_maxPosition:I

    .line 356
    iput v1, p0, Lcom/mobipocket/common/library/reader/BookItem;->_fileSize:I

    .line 357
    iput v1, p0, Lcom/mobipocket/common/library/reader/BookItem;->_embedBase:I

    .line 358
    iput v1, p0, Lcom/mobipocket/common/library/reader/BookItem;->_date:I

    .line 359
    iput-short v1, p0, Lcom/mobipocket/common/library/reader/BookItem;->_dicLanguages:S

    .line 360
    iput v1, p0, Lcom/mobipocket/common/library/reader/BookItem;->_idxToc:I

    .line 361
    iput v1, p0, Lcom/mobipocket/common/library/reader/BookItem;->_lastReadPageNumber:I

    .line 362
    iput v1, p0, Lcom/mobipocket/common/library/reader/BookItem;->_lastReadPagePosition:I

    .line 363
    iput v1, p0, Lcom/mobipocket/common/library/reader/BookItem;->_readingTime:I

    .line 364
    iput-wide v4, p0, Lcom/mobipocket/common/library/reader/BookItem;->_lastPRCModificationDate:J

    .line 365
    iput-wide v4, p0, Lcom/mobipocket/common/library/reader/BookItem;->_lastMBPModificationDate:J

    .line 366
    iput v1, p0, Lcom/mobipocket/common/library/reader/BookItem;->_baseLanguage:I

    .line 367
    new-array v0, v2, [Lcom/mobipocket/common/library/reader/book/ExtraHeaderDataItem;

    iput-object v0, p0, Lcom/mobipocket/common/library/reader/BookItem;->_extraHeaderData:[Lcom/mobipocket/common/library/reader/book/ExtraHeaderDataItem;

    .line 368
    new-instance v0, Lcom/mobipocket/common/library/reader/book/FullMetaDataCollection;

    invoke-direct {v0}, Lcom/mobipocket/common/library/reader/book/FullMetaDataCollection;-><init>()V

    iput-object v0, p0, Lcom/mobipocket/common/library/reader/BookItem;->_fullMetaData:Lcom/mobipocket/common/library/reader/book/FullMetaDataCollection;

    .line 369
    iput-boolean v2, p0, Lcom/mobipocket/common/library/reader/BookItem;->_isAccessed:Z

    .line 370
    iput-object v3, p0, Lcom/mobipocket/common/library/reader/BookItem;->_pdbFactory:Lcom/mobipocket/common/filesystem/PDBFactory;

    .line 371
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/mobipocket/common/filesystem/PDBFactory;)V
    .locals 8
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mobipocket/common/library/reader/InvalidBookException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 184
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 168
    iput-object v1, p0, Lcom/mobipocket/common/library/reader/BookItem;->_fullMetaData:Lcom/mobipocket/common/library/reader/book/FullMetaDataCollection;

    .line 173
    iput-boolean v0, p0, Lcom/mobipocket/common/library/reader/BookItem;->_isAccessed:Z

    .line 186
    if-nez p2, :cond_0

    .line 188
    new-instance v0, Lcom/mobipocket/common/library/reader/InvalidBookException;

    sget-object v1, Lcom/mobipocket/common/library/reader/InvalidBookException;->UNKNOWN_ERROR:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/mobipocket/common/library/reader/InvalidBookException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 191
    :cond_0
    iput-object p1, p0, Lcom/mobipocket/common/library/reader/BookItem;->_identifier:Ljava/lang/String;

    .line 192
    iput-object p2, p0, Lcom/mobipocket/common/library/reader/BookItem;->_pdbFactory:Lcom/mobipocket/common/filesystem/PDBFactory;

    .line 194
    :try_start_0
    invoke-interface {p2, p1}, Lcom/mobipocket/common/filesystem/PDBFactory;->getReadPDB(Ljava/lang/String;)Lcom/mobipocket/common/filesystem/ReadPDB;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v1

    .line 195
    if-nez v1, :cond_3

    .line 197
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BookItem constructor: getReadPDB("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/mobipocket/common/library/reader/BookItem;->_identifier:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ")returns null"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 198
    new-instance v0, Lcom/mobipocket/common/library/reader/InvalidBookException;

    sget-object v2, Lcom/mobipocket/common/library/reader/InvalidBookException;->UNKNOWN_ERROR:Ljava/lang/String;

    invoke-direct {v0, v2}, Lcom/mobipocket/common/library/reader/InvalidBookException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_0

    .line 263
    :catch_0
    move-exception v0

    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_1

    .line 264
    :try_start_2
    invoke-interface {v0}, Lcom/mobipocket/common/filesystem/ReadPDB;->close()V

    .line 265
    :cond_1
    invoke-direct {p0}, Lcom/mobipocket/common/library/reader/BookItem;->initializeErrorBook()V

    .line 267
    new-instance v1, Lcom/mobipocket/common/library/reader/InvalidBookException;

    sget-object v2, Lcom/mobipocket/common/library/reader/InvalidBookException;->CORRUPTED:Ljava/lang/String;

    invoke-direct {v1, v2}, Lcom/mobipocket/common/library/reader/InvalidBookException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 270
    :catchall_0
    move-exception v1

    move-object v7, v1

    move-object v1, v0

    move-object v0, v7

    :goto_1
    if-eqz v1, :cond_2

    .line 271
    invoke-interface {v1}, Lcom/mobipocket/common/filesystem/ReadPDB;->close()V

    :cond_2
    throw v0

    .line 200
    :cond_3
    :try_start_3
    invoke-interface {v1}, Lcom/mobipocket/common/filesystem/ReadPDB;->getHeader()[B

    move-result-object v0

    invoke-static {v0}, Lcom/mobipocket/common/library/reader/book/MobiFileHeader;->isValidEbook([B)Z

    move-result v0

    if-nez v0, :cond_5

    .line 202
    invoke-direct {p0}, Lcom/mobipocket/common/library/reader/BookItem;->initializeErrorBook()V

    .line 203
    if-eqz v1, :cond_4

    .line 204
    invoke-interface {v1}, Lcom/mobipocket/common/filesystem/ReadPDB;->close()V

    .line 205
    :cond_4
    new-instance v0, Lcom/mobipocket/common/library/reader/InvalidBookException;

    sget-object v2, Lcom/mobipocket/common/library/reader/InvalidBookException;->CORRUPTED:Ljava/lang/String;

    invoke-direct {v0, v2}, Lcom/mobipocket/common/library/reader/InvalidBookException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 270
    :catchall_1
    move-exception v0

    goto :goto_1

    .line 207
    :cond_5
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Lcom/mobipocket/common/filesystem/ReadPDB;->getRecord(I)[B

    move-result-object v0

    .line 208
    if-nez v0, :cond_7

    .line 210
    invoke-direct {p0}, Lcom/mobipocket/common/library/reader/BookItem;->initializeErrorBook()V

    .line 212
    if-eqz v1, :cond_6

    .line 213
    invoke-interface {v1}, Lcom/mobipocket/common/filesystem/ReadPDB;->close()V

    .line 214
    :cond_6
    new-instance v0, Lcom/mobipocket/common/library/reader/InvalidBookException;

    sget-object v2, Lcom/mobipocket/common/library/reader/InvalidBookException;->CORRUPTED:Ljava/lang/String;

    invoke-direct {v0, v2}, Lcom/mobipocket/common/library/reader/InvalidBookException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 216
    :cond_7
    new-instance v2, Lcom/mobipocket/common/library/reader/book/MobiFileHeader;

    invoke-interface {v1}, Lcom/mobipocket/common/filesystem/ReadPDB;->getHeader()[B

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v2, v3, v0, v4}, Lcom/mobipocket/common/library/reader/book/MobiFileHeader;-><init>([B[BZ)V

    .line 217
    iget-object v3, v2, Lcom/mobipocket/common/library/reader/book/MobiFileHeader;->pdbName:Ljava/lang/String;

    iput-object v3, p0, Lcom/mobipocket/common/library/reader/BookItem;->_pdbName:Ljava/lang/String;

    .line 218
    iget v3, v2, Lcom/mobipocket/common/library/reader/book/MobiFileHeader;->random_id:I

    iput v3, p0, Lcom/mobipocket/common/library/reader/BookItem;->_randomID:I

    .line 219
    invoke-virtual {v2}, Lcom/mobipocket/common/library/reader/book/MobiFileHeader;->getTitle()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/mobipocket/common/library/reader/BookItem;->_title:Ljava/lang/String;

    .line 220
    iget v3, v2, Lcom/mobipocket/common/library/reader/book/MobiFileHeader;->content_type:I

    iput v3, p0, Lcom/mobipocket/common/library/reader/BookItem;->_contentType:I

    .line 221
    iget-short v3, v2, Lcom/mobipocket/common/library/reader/book/MobiFileHeader;->wSpare2:S

    iput v3, p0, Lcom/mobipocket/common/library/reader/BookItem;->_encryptionLevel:I

    .line 222
    iget v3, v2, Lcom/mobipocket/common/library/reader/book/MobiFileHeader;->dwStoryLen:I

    iput v3, p0, Lcom/mobipocket/common/library/reader/BookItem;->_maxPosition:I

    .line 223
    invoke-interface {v1}, Lcom/mobipocket/common/filesystem/ReadPDB;->fileSize()I

    move-result v3

    iput v3, p0, Lcom/mobipocket/common/library/reader/BookItem;->_fileSize:I

    .line 224
    iget v3, v2, Lcom/mobipocket/common/library/reader/book/MobiFileHeader;->embed_base:I

    iput v3, p0, Lcom/mobipocket/common/library/reader/BookItem;->_embedBase:I

    .line 225
    iget v3, v2, Lcom/mobipocket/common/library/reader/book/MobiFileHeader;->modificationDate:I

    iput v3, p0, Lcom/mobipocket/common/library/reader/BookItem;->_date:I

    .line 226
    iget-short v3, v2, Lcom/mobipocket/common/library/reader/book/MobiFileHeader;->dic_info:S

    iput-short v3, p0, Lcom/mobipocket/common/library/reader/BookItem;->_dicLanguages:S

    .line 227
    iget v3, v2, Lcom/mobipocket/common/library/reader/book/MobiFileHeader;->idx_toc:I

    iput v3, p0, Lcom/mobipocket/common/library/reader/BookItem;->_idxToc:I

    .line 228
    new-instance v3, Lcom/mobipocket/common/library/reader/MBPFile;

    iget-object v4, p0, Lcom/mobipocket/common/library/reader/BookItem;->_identifier:Ljava/lang/String;

    iget-object v5, p0, Lcom/mobipocket/common/library/reader/BookItem;->_pdbName:Ljava/lang/String;

    iget v6, p0, Lcom/mobipocket/common/library/reader/BookItem;->_randomID:I

    invoke-direct {v3, p2, v4, v5, v6}, Lcom/mobipocket/common/library/reader/MBPFile;-><init>(Lcom/mobipocket/common/filesystem/PDBFactory;Ljava/lang/String;Ljava/lang/String;I)V

    .line 229
    invoke-virtual {v3}, Lcom/mobipocket/common/library/reader/MBPFile;->getLastOpenedPagePosition()I

    move-result v4

    iput v4, p0, Lcom/mobipocket/common/library/reader/BookItem;->_lastReadPagePosition:I

    .line 230
    invoke-virtual {v3}, Lcom/mobipocket/common/library/reader/MBPFile;->getLastOpenedPageNumber()I

    move-result v3

    iput v3, p0, Lcom/mobipocket/common/library/reader/BookItem;->_lastReadPageNumber:I

    .line 231
    const/4 v3, -0x1

    iput v3, p0, Lcom/mobipocket/common/library/reader/BookItem;->_readingTime:I

    .line 232
    iget-object v3, p0, Lcom/mobipocket/common/library/reader/BookItem;->_identifier:Ljava/lang/String;

    invoke-interface {p2, v3}, Lcom/mobipocket/common/filesystem/PDBFactory;->getLastModifiedDate(Ljava/lang/String;)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/mobipocket/common/library/reader/BookItem;->_lastPRCModificationDate:J

    .line 233
    iget-object v3, p0, Lcom/mobipocket/common/library/reader/BookItem;->_identifier:Ljava/lang/String;

    invoke-interface {p2, v3}, Lcom/mobipocket/common/filesystem/PDBFactory;->getBookSettings(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p2, v3}, Lcom/mobipocket/common/filesystem/PDBFactory;->getLastModifiedDate(Ljava/lang/String;)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/mobipocket/common/library/reader/BookItem;->_lastMBPModificationDate:J

    .line 234
    iget v3, v2, Lcom/mobipocket/common/library/reader/book/MobiFileHeader;->base_language:I

    iput v3, p0, Lcom/mobipocket/common/library/reader/BookItem;->_baseLanguage:I

    .line 236
    iget v3, v2, Lcom/mobipocket/common/library/reader/book/MobiFileHeader;->version:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_3 .. :try_end_3} :catch_0

    const/4 v4, 0x4

    if-lt v3, v4, :cond_9

    .line 240
    :try_start_4
    new-instance v3, Lcom/mobipocket/common/library/reader/book/ExtraHeaderData;

    invoke-direct {v3}, Lcom/mobipocket/common/library/reader/book/ExtraHeaderData;-><init>()V

    .line 241
    invoke-virtual {v3, v2, v0}, Lcom/mobipocket/common/library/reader/book/ExtraHeaderData;->loadFromBookHeader(Lcom/mobipocket/common/library/reader/book/MobiFileHeader;[B)V

    .line 242
    invoke-virtual {v3}, Lcom/mobipocket/common/library/reader/book/ExtraHeaderData;->getAsMetadataCollection()Lcom/mobipocket/common/library/reader/book/MetaDataCollection;

    move-result-object v0

    check-cast v0, Lcom/mobipocket/common/library/reader/book/FullMetaDataCollection;

    iput-object v0, p0, Lcom/mobipocket/common/library/reader/BookItem;->_fullMetaData:Lcom/mobipocket/common/library/reader/book/FullMetaDataCollection;

    .line 243
    invoke-virtual {v3}, Lcom/mobipocket/common/library/reader/book/ExtraHeaderData;->getItems()[Lcom/mobipocket/common/library/reader/book/ExtraHeaderDataItem;

    move-result-object v0

    iput-object v0, p0, Lcom/mobipocket/common/library/reader/BookItem;->_extraHeaderData:[Lcom/mobipocket/common/library/reader/book/ExtraHeaderDataItem;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Lcom/mobipocket/common/library/reader/book/ExtraHeaderDataException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_4 .. :try_end_4} :catch_0

    .line 270
    :goto_2
    if-eqz v1, :cond_8

    .line 271
    invoke-interface {v1}, Lcom/mobipocket/common/filesystem/ReadPDB;->close()V

    .line 273
    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mobipocket/common/library/reader/BookItem;->_isAccessed:Z

    .line 274
    return-void

    .line 249
    :catch_1
    move-exception v0

    const/4 v0, 0x0

    :try_start_5
    new-array v0, v0, [Lcom/mobipocket/common/library/reader/book/ExtraHeaderDataItem;

    iput-object v0, p0, Lcom/mobipocket/common/library/reader/BookItem;->_extraHeaderData:[Lcom/mobipocket/common/library/reader/book/ExtraHeaderDataItem;

    .line 251
    new-instance v0, Lcom/mobipocket/common/library/reader/book/FullMetaDataCollection;

    invoke-direct {v0}, Lcom/mobipocket/common/library/reader/book/FullMetaDataCollection;-><init>()V

    iput-object v0, p0, Lcom/mobipocket/common/library/reader/BookItem;->_fullMetaData:Lcom/mobipocket/common/library/reader/book/FullMetaDataCollection;

    goto :goto_2

    .line 256
    :cond_9
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/mobipocket/common/library/reader/book/ExtraHeaderDataItem;

    iput-object v0, p0, Lcom/mobipocket/common/library/reader/BookItem;->_extraHeaderData:[Lcom/mobipocket/common/library/reader/book/ExtraHeaderDataItem;

    .line 258
    new-instance v0, Lcom/mobipocket/common/library/reader/book/FullMetaDataCollection;

    invoke-direct {v0}, Lcom/mobipocket/common/library/reader/book/FullMetaDataCollection;-><init>()V

    iput-object v0, p0, Lcom/mobipocket/common/library/reader/BookItem;->_fullMetaData:Lcom/mobipocket/common/library/reader/book/FullMetaDataCollection;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_2

    .line 263
    :catch_2
    move-exception v0

    move-object v0, v1

    goto/16 :goto_0
.end method

.method public constructor <init>([BLcom/mobipocket/common/filesystem/PDBFactory;)V
    .locals 4
    .parameter "data"
    .parameter "pdbFactory"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 283
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 168
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/mobipocket/common/library/reader/BookItem;->_fullMetaData:Lcom/mobipocket/common/library/reader/book/FullMetaDataCollection;

    .line 173
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/mobipocket/common/library/reader/BookItem;->_isAccessed:Z

    .line 284
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 285
    .local v1, os:Ljava/io/ByteArrayInputStream;
    new-instance v0, Ljava/io/DataInputStream;

    invoke-direct {v0, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 287
    .local v0, dis:Ljava/io/DataInputStream;
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/mobipocket/common/library/reader/BookItem;->_identifier:Ljava/lang/String;

    .line 288
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/mobipocket/common/library/reader/BookItem;->_pdbName:Ljava/lang/String;

    .line 289
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v2

    iput v2, p0, Lcom/mobipocket/common/library/reader/BookItem;->_randomID:I

    .line 290
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/mobipocket/common/library/reader/BookItem;->_title:Ljava/lang/String;

    .line 291
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v2

    iput v2, p0, Lcom/mobipocket/common/library/reader/BookItem;->_contentType:I

    .line 292
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v2

    iput v2, p0, Lcom/mobipocket/common/library/reader/BookItem;->_encryptionLevel:I

    .line 293
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v2

    iput v2, p0, Lcom/mobipocket/common/library/reader/BookItem;->_maxPosition:I

    .line 294
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v2

    iput v2, p0, Lcom/mobipocket/common/library/reader/BookItem;->_fileSize:I

    .line 295
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v2

    iput v2, p0, Lcom/mobipocket/common/library/reader/BookItem;->_embedBase:I

    .line 296
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v2

    iput v2, p0, Lcom/mobipocket/common/library/reader/BookItem;->_date:I

    .line 297
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readShort()S

    move-result v2

    iput-short v2, p0, Lcom/mobipocket/common/library/reader/BookItem;->_dicLanguages:S

    .line 298
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v2

    iput v2, p0, Lcom/mobipocket/common/library/reader/BookItem;->_idxToc:I

    .line 299
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v2

    iput v2, p0, Lcom/mobipocket/common/library/reader/BookItem;->_lastReadPageNumber:I

    .line 300
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v2

    iput v2, p0, Lcom/mobipocket/common/library/reader/BookItem;->_lastReadPagePosition:I

    .line 301
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v2

    iput v2, p0, Lcom/mobipocket/common/library/reader/BookItem;->_readingTime:I

    .line 302
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/mobipocket/common/library/reader/BookItem;->_lastPRCModificationDate:J

    .line 303
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/mobipocket/common/library/reader/BookItem;->_lastMBPModificationDate:J

    .line 304
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v2

    iput v2, p0, Lcom/mobipocket/common/library/reader/BookItem;->_baseLanguage:I

    .line 305
    invoke-static {v0}, Lcom/mobipocket/common/library/reader/book/ExtraHeaderData;->deserializeExtraHeaderDataItem(Ljava/io/DataInputStream;)[Lcom/mobipocket/common/library/reader/book/ExtraHeaderDataItem;

    move-result-object v2

    iput-object v2, p0, Lcom/mobipocket/common/library/reader/BookItem;->_extraHeaderData:[Lcom/mobipocket/common/library/reader/book/ExtraHeaderDataItem;

    .line 306
    iget-object v2, p0, Lcom/mobipocket/common/library/reader/BookItem;->_extraHeaderData:[Lcom/mobipocket/common/library/reader/book/ExtraHeaderDataItem;

    invoke-static {v2}, Lcom/mobipocket/common/library/reader/book/ExtraHeaderData;->constructMetaData([Lcom/mobipocket/common/library/reader/book/ExtraHeaderDataItem;)Lcom/mobipocket/common/library/reader/book/FullMetaDataCollection;

    move-result-object v2

    iput-object v2, p0, Lcom/mobipocket/common/library/reader/BookItem;->_fullMetaData:Lcom/mobipocket/common/library/reader/book/FullMetaDataCollection;

    .line 307
    iput-object p2, p0, Lcom/mobipocket/common/library/reader/BookItem;->_pdbFactory:Lcom/mobipocket/common/filesystem/PDBFactory;

    .line 308
    return-void
.end method

.method private getCover(Lcom/amazon/system/drawing/ImageFactory;Lcom/amazon/system/drawing/Dimension;IZ)Lcom/amazon/system/drawing/Image;
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 781
    .line 782
    invoke-direct {p0, p3}, Lcom/mobipocket/common/library/reader/BookItem;->getCover(I)[B

    move-result-object v0

    .line 783
    if-nez v0, :cond_0

    move-object v0, v3

    .line 794
    :goto_0
    return-object v0

    .line 787
    :cond_0
    new-instance v1, Lcom/amazon/system/drawing/Dimension;

    invoke-direct {v1}, Lcom/amazon/system/drawing/Dimension;-><init>()V

    .line 788
    invoke-static {v0, v1}, Lcom/amazon/system/drawing/ImageTools;->getImageInfo([BLcom/amazon/system/drawing/Dimension;)I

    .line 789
    iget v2, v1, Lcom/amazon/system/drawing/Dimension;->height:I

    iget v1, v1, Lcom/amazon/system/drawing/Dimension;->width:I

    add-int/2addr v1, v2

    const/16 v2, 0x5a

    if-lt v1, v2, :cond_2

    .line 791
    if-eqz p4, :cond_1

    const/4 v1, 0x3

    .line 792
    :goto_1
    invoke-interface {p1, v0, p2, v1}, Lcom/amazon/system/drawing/ImageFactory;->getImage([BLcom/amazon/system/drawing/Dimension;I)Lcom/amazon/system/drawing/Image;

    move-result-object v0

    goto :goto_0

    .line 791
    :cond_1
    const/4 v1, 0x2

    goto :goto_1

    :cond_2
    move-object v0, v3

    goto :goto_0
.end method

.method private getCover(I)[B
    .locals 5
    .parameter "imgRecordNumber"

    .prologue
    const/4 v4, 0x0

    .line 799
    if-gtz p1, :cond_0

    move-object v2, v4

    .line 821
    :goto_0
    return-object v2

    .line 803
    :cond_0
    iget-object v2, p0, Lcom/mobipocket/common/library/reader/BookItem;->_pdbFactory:Lcom/mobipocket/common/filesystem/PDBFactory;

    if-nez v2, :cond_1

    move-object v2, v4

    .line 805
    goto :goto_0

    .line 807
    :cond_1
    iget-object v2, p0, Lcom/mobipocket/common/library/reader/BookItem;->_pdbFactory:Lcom/mobipocket/common/filesystem/PDBFactory;

    iget-object v3, p0, Lcom/mobipocket/common/library/reader/BookItem;->_identifier:Ljava/lang/String;

    invoke-interface {v2, v3}, Lcom/mobipocket/common/filesystem/PDBFactory;->getReadPDB(Ljava/lang/String;)Lcom/mobipocket/common/filesystem/ReadPDB;

    move-result-object v0

    .line 808
    .local v0, eBook:Lcom/mobipocket/common/filesystem/ReadPDB;
    if-nez v0, :cond_2

    move-object v2, v4

    .line 810
    goto :goto_0

    .line 812
    :cond_2
    const/4 v1, 0x0

    .line 813
    .local v1, imageData:[B
    invoke-interface {v0}, Lcom/mobipocket/common/filesystem/ReadPDB;->getRecordCount()I

    move-result v2

    if-ge p1, v2, :cond_3

    .line 815
    invoke-interface {v0, p1}, Lcom/mobipocket/common/filesystem/ReadPDB;->getRecord(I)[B

    move-result-object v1

    .line 817
    :cond_3
    if-eqz v0, :cond_4

    .line 819
    invoke-interface {v0}, Lcom/mobipocket/common/filesystem/ReadPDB;->close()V

    :cond_4
    move-object v2, v1

    .line 821
    goto :goto_0
.end method

.method public static getReadingTime(I)I
    .locals 5
    .parameter "position"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 514
    shr-int/lit8 v1, p0, 0xa

    add-int/lit8 v1, v1, 0x1

    shr-int/lit8 v1, v1, 0x1

    shr-int/lit8 v2, p0, 0xb

    add-int/lit8 v2, v2, 0x1

    shr-int/lit8 v2, v2, 0x1

    add-int v0, v1, v2

    .line 516
    .local v0, rep:I
    if-gtz v0, :cond_0

    move v1, v3

    :goto_0
    if-lez p0, :cond_1

    move v2, v3

    :goto_1
    and-int/2addr v1, v2

    if-eqz v1, :cond_2

    move v1, v3

    :goto_2
    return v1

    :cond_0
    move v1, v4

    goto :goto_0

    :cond_1
    move v2, v4

    goto :goto_1

    :cond_2
    move v1, v0

    goto :goto_2
.end method

.method private getRealBigCoverRecordNumber()I
    .locals 2

    .prologue
    .line 770
    invoke-virtual {p0}, Lcom/mobipocket/common/library/reader/BookItem;->getFullMetaData()Lcom/mobipocket/common/library/reader/book/FullMetaDataCollection;

    move-result-object v1

    iget v0, v1, Lcom/mobipocket/common/library/reader/book/FullMetaDataCollection;->coverRecord:I

    .line 771
    .local v0, realNumImgRecord:I
    if-gez v0, :cond_0

    .line 773
    const/4 v1, -0x1

    .line 776
    :goto_0
    return v1

    .line 775
    :cond_0
    iget v1, p0, Lcom/mobipocket/common/library/reader/BookItem;->_embedBase:I

    add-int/2addr v0, v1

    move v1, v0

    .line 776
    goto :goto_0
.end method

.method private initializeErrorBook()V
    .locals 1

    .prologue
    .line 375
    const/4 v0, -0x1

    iput v0, p0, Lcom/mobipocket/common/library/reader/BookItem;->_contentType:I

    .line 376
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/mobipocket/common/library/reader/book/ExtraHeaderDataItem;

    iput-object v0, p0, Lcom/mobipocket/common/library/reader/BookItem;->_extraHeaderData:[Lcom/mobipocket/common/library/reader/book/ExtraHeaderDataItem;

    .line 377
    new-instance v0, Lcom/mobipocket/common/library/reader/book/FullMetaDataCollection;

    invoke-direct {v0}, Lcom/mobipocket/common/library/reader/book/FullMetaDataCollection;-><init>()V

    iput-object v0, p0, Lcom/mobipocket/common/library/reader/BookItem;->_fullMetaData:Lcom/mobipocket/common/library/reader/book/FullMetaDataCollection;

    .line 378
    return-void
.end method


# virtual methods
.method public compareTo(Ljava/lang/Object;)I
    .locals 2
    .parameter "bookItem"

    .prologue
    .line 834
    invoke-virtual {p0}, Lcom/mobipocket/common/library/reader/BookItem;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    check-cast p1, Lcom/mobipocket/common/library/reader/BookItem;

    .end local p1
    invoke-virtual {p1}, Lcom/mobipocket/common/library/reader/BookItem;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getAsin()Ljava/lang/String;
    .locals 1

    .prologue
    .line 397
    invoke-virtual {p0}, Lcom/mobipocket/common/library/reader/BookItem;->getFullMetaData()Lcom/mobipocket/common/library/reader/book/FullMetaDataCollection;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 398
    invoke-virtual {p0}, Lcom/mobipocket/common/library/reader/BookItem;->getFullMetaData()Lcom/mobipocket/common/library/reader/book/FullMetaDataCollection;

    move-result-object v0

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/book/FullMetaDataCollection;->asin:Ljava/lang/String;

    .line 399
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAuthors(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "separator"

    .prologue
    .line 490
    const-string v0, ""

    .line 491
    .local v0, author:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/mobipocket/common/library/reader/BookItem;->getMetaData()Lcom/mobipocket/common/library/reader/book/MetaDataCollection;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 492
    invoke-virtual {p0}, Lcom/mobipocket/common/library/reader/BookItem;->getMetaData()Lcom/mobipocket/common/library/reader/book/MetaDataCollection;

    move-result-object v3

    iget-object v1, v3, Lcom/mobipocket/common/library/reader/book/MetaDataCollection;->authors:[Ljava/lang/String;

    .line 493
    .local v1, authors:[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-eqz v1, :cond_1

    array-length v3, v1

    if-ge v2, v3, :cond_1

    .line 495
    if-lez v2, :cond_0

    .line 497
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 499
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, v1, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 493
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 502
    .end local v1           #authors:[Ljava/lang/String;
    .end local v2           #i:I
    :cond_1
    return-object v0
.end method

.method public getBaseLanguage()I
    .locals 1

    .prologue
    .line 868
    iget v0, p0, Lcom/mobipocket/common/library/reader/BookItem;->_baseLanguage:I

    return v0
.end method

.method public getBigCoverArt(Lcom/amazon/system/drawing/ImageFactory;Lcom/amazon/system/drawing/Dimension;)Lcom/amazon/system/drawing/Image;
    .locals 2
    .parameter "imageFactory"
    .parameter "maxDimension"

    .prologue
    .line 711
    invoke-direct {p0}, Lcom/mobipocket/common/library/reader/BookItem;->getRealBigCoverRecordNumber()I

    move-result v0

    const/4 v1, 0x1

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/mobipocket/common/library/reader/BookItem;->getCover(Lcom/amazon/system/drawing/ImageFactory;Lcom/amazon/system/drawing/Dimension;IZ)Lcom/amazon/system/drawing/Image;

    move-result-object v0

    return-object v0
.end method

.method public getBigCoverArtSrc()[B
    .locals 1

    .prologue
    .line 723
    invoke-direct {p0}, Lcom/mobipocket/common/library/reader/BookItem;->getRealBigCoverRecordNumber()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/mobipocket/common/library/reader/BookItem;->getCover(I)[B

    move-result-object v0

    return-object v0
.end method

.method public getBookDate()I
    .locals 1

    .prologue
    .line 630
    iget v0, p0, Lcom/mobipocket/common/library/reader/BookItem;->_date:I

    return v0
.end method

.method public getCoverArt(Lcom/amazon/system/drawing/ImageFactory;Lcom/amazon/system/drawing/Dimension;)Lcom/amazon/system/drawing/Image;
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 749
    invoke-virtual {p0}, Lcom/mobipocket/common/library/reader/BookItem;->getFullMetaData()Lcom/mobipocket/common/library/reader/book/FullMetaDataCollection;

    move-result-object v0

    iget v0, v0, Lcom/mobipocket/common/library/reader/book/FullMetaDataCollection;->hasFakeCover:I

    if-ne v0, v1, :cond_2

    move v0, v1

    .line 750
    :goto_0
    invoke-virtual {p0}, Lcom/mobipocket/common/library/reader/BookItem;->getFullMetaData()Lcom/mobipocket/common/library/reader/book/FullMetaDataCollection;

    move-result-object v1

    iget v1, v1, Lcom/mobipocket/common/library/reader/book/FullMetaDataCollection;->coverThumbRecord:I

    .line 751
    const/4 v2, 0x0

    .line 752
    if-ltz v1, :cond_0

    if-eqz v0, :cond_3

    .line 754
    :cond_0
    iget v0, p0, Lcom/mobipocket/common/library/reader/BookItem;->_embedBase:I

    invoke-direct {p0, p1, p2, v0, v3}, Lcom/mobipocket/common/library/reader/BookItem;->getCover(Lcom/amazon/system/drawing/ImageFactory;Lcom/amazon/system/drawing/Dimension;IZ)Lcom/amazon/system/drawing/Image;

    move-result-object v0

    .line 758
    :goto_1
    if-ltz v1, :cond_1

    if-nez v0, :cond_1

    .line 760
    iget v0, p0, Lcom/mobipocket/common/library/reader/BookItem;->_embedBase:I

    add-int/2addr v0, v1

    .line 763
    invoke-direct {p0, p1, p2, v0, v3}, Lcom/mobipocket/common/library/reader/BookItem;->getCover(Lcom/amazon/system/drawing/ImageFactory;Lcom/amazon/system/drawing/Dimension;IZ)Lcom/amazon/system/drawing/Image;

    move-result-object v0

    .line 765
    :cond_1
    return-object v0

    :cond_2
    move v0, v3

    .line 749
    goto :goto_0

    :cond_3
    move-object v0, v2

    goto :goto_1
.end method

.method getDicLanguages()S
    .locals 1

    .prologue
    .line 433
    iget-short v0, p0, Lcom/mobipocket/common/library/reader/BookItem;->_dicLanguages:S

    return v0
.end method

.method public getExtraHeaderData()[Lcom/mobipocket/common/library/reader/book/ExtraHeaderDataItem;
    .locals 1

    .prologue
    .line 674
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/BookItem;->_extraHeaderData:[Lcom/mobipocket/common/library/reader/book/ExtraHeaderDataItem;

    return-object v0
.end method

.method getFullMetaData()Lcom/mobipocket/common/library/reader/book/FullMetaDataCollection;
    .locals 1

    .prologue
    .line 679
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/BookItem;->_fullMetaData:Lcom/mobipocket/common/library/reader/book/FullMetaDataCollection;

    return-object v0
.end method

.method public getGUID()Ljava/lang/String;
    .locals 2

    .prologue
    .line 640
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/BookItem;->_pdbName:Ljava/lang/String;

    iget v1, p0, Lcom/mobipocket/common/library/reader/BookItem;->_randomID:I

    invoke-static {v0, v1}, Lcom/mobipocket/common/library/reader/book/MobiFileHeader;->getGUID(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIdentifier()Ljava/lang/String;
    .locals 1

    .prologue
    .line 554
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/BookItem;->_identifier:Ljava/lang/String;

    return-object v0
.end method

.method getLastMBPModificationDate()J
    .locals 2

    .prologue
    .line 850
    iget-wide v0, p0, Lcom/mobipocket/common/library/reader/BookItem;->_lastMBPModificationDate:J

    return-wide v0
.end method

.method public getLastModificationDate()J
    .locals 2

    .prologue
    .line 859
    invoke-virtual {p0}, Lcom/mobipocket/common/library/reader/BookItem;->getLastMBPModificationDate()J

    move-result-wide v0

    return-wide v0
.end method

.method getLastPRCModificationDate()J
    .locals 2

    .prologue
    .line 842
    iget-wide v0, p0, Lcom/mobipocket/common/library/reader/BookItem;->_lastPRCModificationDate:J

    return-wide v0
.end method

.method public getLastPageStackInformation()[B
    .locals 5

    .prologue
    .line 574
    new-instance v0, Lcom/mobipocket/common/library/reader/MBPFile;

    iget-object v1, p0, Lcom/mobipocket/common/library/reader/BookItem;->_pdbFactory:Lcom/mobipocket/common/filesystem/PDBFactory;

    iget-object v2, p0, Lcom/mobipocket/common/library/reader/BookItem;->_identifier:Ljava/lang/String;

    iget-object v3, p0, Lcom/mobipocket/common/library/reader/BookItem;->_pdbName:Ljava/lang/String;

    iget v4, p0, Lcom/mobipocket/common/library/reader/BookItem;->_randomID:I

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/mobipocket/common/library/reader/MBPFile;-><init>(Lcom/mobipocket/common/filesystem/PDBFactory;Ljava/lang/String;Ljava/lang/String;I)V

    .line 575
    .local v0, mbpFile:Lcom/mobipocket/common/library/reader/MBPFile;
    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/MBPFile;->getLastOpenedPageStackInformation()[B

    move-result-object v1

    return-object v1
.end method

.method public getLastReadPageNumber()I
    .locals 1

    .prologue
    .line 563
    iget v0, p0, Lcom/mobipocket/common/library/reader/BookItem;->_lastReadPageNumber:I

    return v0
.end method

.method public getLastReadPosition()I
    .locals 1

    .prologue
    .line 536
    iget v0, p0, Lcom/mobipocket/common/library/reader/BookItem;->_lastReadPagePosition:I

    return v0
.end method

.method public getMaxPosition()I
    .locals 1

    .prologue
    .line 600
    iget v0, p0, Lcom/mobipocket/common/library/reader/BookItem;->_maxPosition:I

    return v0
.end method

.method public getMetaData()Lcom/mobipocket/common/library/reader/book/MetaDataCollection;
    .locals 1

    .prologue
    .line 689
    invoke-virtual {p0}, Lcom/mobipocket/common/library/reader/BookItem;->getFullMetaData()Lcom/mobipocket/common/library/reader/book/FullMetaDataCollection;

    move-result-object v0

    return-object v0
.end method

.method public getRandomID()I
    .locals 1

    .prologue
    .line 621
    iget v0, p0, Lcom/mobipocket/common/library/reader/BookItem;->_randomID:I

    return v0
.end method

.method public getReadingTime()I
    .locals 1

    .prologue
    .line 525
    invoke-virtual {p0}, Lcom/mobipocket/common/library/reader/BookItem;->getTextBookLength()I

    move-result v0

    invoke-static {v0}, Lcom/mobipocket/common/library/reader/BookItem;->getReadingTime(I)I

    move-result v0

    return v0
.end method

.method public getSize()I
    .locals 1

    .prologue
    .line 479
    iget v0, p0, Lcom/mobipocket/common/library/reader/BookItem;->_fileSize:I

    return v0
.end method

.method public getTextBookLength()I
    .locals 1

    .prologue
    .line 588
    iget v0, p0, Lcom/mobipocket/common/library/reader/BookItem;->_maxPosition:I

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 386
    invoke-virtual {p0}, Lcom/mobipocket/common/library/reader/BookItem;->getFullMetaData()Lcom/mobipocket/common/library/reader/book/FullMetaDataCollection;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/mobipocket/common/library/reader/BookItem;->getFullMetaData()Lcom/mobipocket/common/library/reader/book/FullMetaDataCollection;

    move-result-object v0

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/book/FullMetaDataCollection;->title:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 387
    invoke-virtual {p0}, Lcom/mobipocket/common/library/reader/BookItem;->getFullMetaData()Lcom/mobipocket/common/library/reader/book/FullMetaDataCollection;

    move-result-object v0

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/book/FullMetaDataCollection;->title:Ljava/lang/String;

    .line 388
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/BookItem;->_title:Ljava/lang/String;

    goto :goto_0
.end method

.method getTocIndex()I
    .locals 1

    .prologue
    .line 901
    iget v0, p0, Lcom/mobipocket/common/library/reader/BookItem;->_idxToc:I

    return v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 545
    iget v0, p0, Lcom/mobipocket/common/library/reader/BookItem;->_contentType:I

    return v0
.end method

.method public getWatermark()Ljava/lang/String;
    .locals 5

    .prologue
    .line 923
    const/4 v1, 0x0

    .line 924
    .local v1, watermark:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/mobipocket/common/library/reader/BookItem;->getExtraHeaderData()[Lcom/mobipocket/common/library/reader/book/ExtraHeaderDataItem;

    move-result-object v2

    .line 925
    .local v2, xhd:[Lcom/mobipocket/common/library/reader/book/ExtraHeaderDataItem;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-eqz v2, :cond_0

    array-length v3, v2

    if-ge v0, v3, :cond_0

    .line 927
    aget-object v3, v2, v0

    if-eqz v3, :cond_1

    aget-object v3, v2, v0

    invoke-virtual {v3}, Lcom/mobipocket/common/library/reader/book/ExtraHeaderDataItem;->getIdentifier()I

    move-result v3

    const/16 v4, 0xd0

    if-ne v3, v4, :cond_1

    .line 929
    aget-object v3, v2, v0

    invoke-virtual {v3}, Lcom/mobipocket/common/library/reader/book/ExtraHeaderDataItem;->getStringValue()Ljava/lang/String;

    move-result-object v1

    .line 933
    :cond_0
    return-object v1

    .line 925
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public hasBigCoverArt()Z
    .locals 1

    .prologue
    .line 698
    invoke-virtual {p0}, Lcom/mobipocket/common/library/reader/BookItem;->getFullMetaData()Lcom/mobipocket/common/library/reader/book/FullMetaDataCollection;

    move-result-object v0

    iget v0, v0, Lcom/mobipocket/common/library/reader/book/FullMetaDataCollection;->coverRecord:I

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasRealCoverArt()Z
    .locals 1

    .prologue
    .line 735
    invoke-virtual {p0}, Lcom/mobipocket/common/library/reader/BookItem;->getFullMetaData()Lcom/mobipocket/common/library/reader/book/FullMetaDataCollection;

    move-result-object v0

    iget v0, v0, Lcom/mobipocket/common/library/reader/book/FullMetaDataCollection;->coverThumbRecord:I

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasToc()Z
    .locals 2

    .prologue
    .line 911
    const/4 v0, 0x0

    .line 912
    .local v0, ret:Z
    iget v1, p0, Lcom/mobipocket/common/library/reader/BookItem;->_idxToc:I

    if-lez v1, :cond_0

    .line 913
    const/4 v0, 0x1

    .line 914
    :cond_0
    return v0
.end method

.method public isDictionary()Z
    .locals 2

    .prologue
    .line 443
    iget-short v0, p0, Lcom/mobipocket/common/library/reader/BookItem;->_dicLanguages:S

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-short v0, p0, Lcom/mobipocket/common/library/reader/BookItem;->_dicLanguages:S

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEbook()Z
    .locals 2

    .prologue
    .line 420
    iget v0, p0, Lcom/mobipocket/common/library/reader/BookItem;->_contentType:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/mobipocket/common/library/reader/BookItem;->_contentType:I

    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    .line 421
    const/4 v0, 0x1

    .line 423
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEdoc()Z
    .locals 2

    .prologue
    .line 467
    iget v0, p0, Lcom/mobipocket/common/library/reader/BookItem;->_contentType:I

    const/16 v1, 0x200

    if-le v0, v1, :cond_0

    iget v0, p0, Lcom/mobipocket/common/library/reader/BookItem;->_contentType:I

    const/16 v1, 0x2ff

    if-ge v0, v1, :cond_0

    .line 468
    const/4 v0, 0x1

    .line 470
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEncrypted()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 610
    iget v0, p0, Lcom/mobipocket/common/library/reader/BookItem;->_encryptionLevel:I

    if-eq v0, v2, :cond_0

    iget v0, p0, Lcom/mobipocket/common/library/reader/BookItem;->_encryptionLevel:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    :cond_0
    move v0, v2

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEnews()Z
    .locals 2

    .prologue
    .line 453
    iget v0, p0, Lcom/mobipocket/common/library/reader/BookItem;->_contentType:I

    const/16 v1, 0x100

    if-le v0, v1, :cond_0

    iget v0, p0, Lcom/mobipocket/common/library/reader/BookItem;->_contentType:I

    const/16 v1, 0x1ff

    if-ge v0, v1, :cond_0

    .line 454
    const/4 v0, 0x1

    .line 456
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSample()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 409
    invoke-virtual {p0}, Lcom/mobipocket/common/library/reader/BookItem;->getFullMetaData()Lcom/mobipocket/common/library/reader/book/FullMetaDataCollection;

    move-result-object v0

    iget v0, v0, Lcom/mobipocket/common/library/reader/book/FullMetaDataCollection;->sample:I

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method is_isAccessed()Z
    .locals 1

    .prologue
    .line 884
    iget-boolean v0, p0, Lcom/mobipocket/common/library/reader/BookItem;->_isAccessed:Z

    return v0
.end method

.method public refreshLastModificationDate()V
    .locals 3

    .prologue
    .line 876
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/BookItem;->_pdbFactory:Lcom/mobipocket/common/filesystem/PDBFactory;

    iget-object v1, p0, Lcom/mobipocket/common/library/reader/BookItem;->_pdbFactory:Lcom/mobipocket/common/filesystem/PDBFactory;

    iget-object v2, p0, Lcom/mobipocket/common/library/reader/BookItem;->_identifier:Ljava/lang/String;

    invoke-interface {v1, v2}, Lcom/mobipocket/common/filesystem/PDBFactory;->getBookSettings(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/mobipocket/common/filesystem/PDBFactory;->getLastModifiedDate(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/mobipocket/common/library/reader/BookItem;->_lastMBPModificationDate:J

    .line 877
    return-void
.end method

.method refreshMBPData(II)V
    .locals 0
    .parameter "lastPosition"
    .parameter "pageNumber"

    .prologue
    .line 645
    iput p2, p0, Lcom/mobipocket/common/library/reader/BookItem;->_lastReadPageNumber:I

    .line 646
    iput p1, p0, Lcom/mobipocket/common/library/reader/BookItem;->_lastReadPagePosition:I

    .line 647
    invoke-virtual {p0}, Lcom/mobipocket/common/library/reader/BookItem;->refreshLastModificationDate()V

    .line 648
    return-void
.end method

.method public saveBookState(II[B)Z
    .locals 6
    .parameter "position"
    .parameter "pageNumber"
    .parameter "parserState"

    .prologue
    .line 659
    new-instance v0, Lcom/mobipocket/common/library/reader/MBPFile;

    iget-object v2, p0, Lcom/mobipocket/common/library/reader/BookItem;->_pdbFactory:Lcom/mobipocket/common/filesystem/PDBFactory;

    iget-object v3, p0, Lcom/mobipocket/common/library/reader/BookItem;->_identifier:Ljava/lang/String;

    iget-object v4, p0, Lcom/mobipocket/common/library/reader/BookItem;->_pdbName:Ljava/lang/String;

    iget v5, p0, Lcom/mobipocket/common/library/reader/BookItem;->_randomID:I

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/mobipocket/common/library/reader/MBPFile;-><init>(Lcom/mobipocket/common/filesystem/PDBFactory;Ljava/lang/String;Ljava/lang/String;I)V

    .line 660
    .local v0, mbpFile:Lcom/mobipocket/common/library/reader/MBPFile;
    invoke-virtual {v0, p1, p2, p3}, Lcom/mobipocket/common/library/reader/MBPFile;->close(II[B)Z

    move-result v1

    .line 661
    .local v1, ok:Z
    if-eqz v1, :cond_0

    .line 663
    invoke-virtual {p0, p1, p2}, Lcom/mobipocket/common/library/reader/BookItem;->refreshMBPData(II)V

    .line 665
    :cond_0
    return v1
.end method

.method serialize()[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 318
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 319
    .local v1, os:Ljava/io/ByteArrayOutputStream;
    new-instance v0, Ljava/io/DataOutputStream;

    invoke-direct {v0, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 321
    .local v0, dos:Ljava/io/DataOutputStream;
    iget-object v2, p0, Lcom/mobipocket/common/library/reader/BookItem;->_identifier:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 322
    iget-object v2, p0, Lcom/mobipocket/common/library/reader/BookItem;->_pdbName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 323
    iget v2, p0, Lcom/mobipocket/common/library/reader/BookItem;->_randomID:I

    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 324
    iget-object v2, p0, Lcom/mobipocket/common/library/reader/BookItem;->_title:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 325
    iget v2, p0, Lcom/mobipocket/common/library/reader/BookItem;->_contentType:I

    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 326
    iget v2, p0, Lcom/mobipocket/common/library/reader/BookItem;->_encryptionLevel:I

    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 327
    iget v2, p0, Lcom/mobipocket/common/library/reader/BookItem;->_maxPosition:I

    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 328
    iget v2, p0, Lcom/mobipocket/common/library/reader/BookItem;->_fileSize:I

    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 329
    iget v2, p0, Lcom/mobipocket/common/library/reader/BookItem;->_embedBase:I

    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 330
    iget v2, p0, Lcom/mobipocket/common/library/reader/BookItem;->_date:I

    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 331
    iget-short v2, p0, Lcom/mobipocket/common/library/reader/BookItem;->_dicLanguages:S

    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 332
    iget v2, p0, Lcom/mobipocket/common/library/reader/BookItem;->_idxToc:I

    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 333
    iget v2, p0, Lcom/mobipocket/common/library/reader/BookItem;->_lastReadPageNumber:I

    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 334
    iget v2, p0, Lcom/mobipocket/common/library/reader/BookItem;->_lastReadPagePosition:I

    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 335
    iget v2, p0, Lcom/mobipocket/common/library/reader/BookItem;->_readingTime:I

    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 336
    iget-wide v2, p0, Lcom/mobipocket/common/library/reader/BookItem;->_lastPRCModificationDate:J

    invoke-virtual {v0, v2, v3}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 337
    iget-wide v2, p0, Lcom/mobipocket/common/library/reader/BookItem;->_lastMBPModificationDate:J

    invoke-virtual {v0, v2, v3}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 338
    iget v2, p0, Lcom/mobipocket/common/library/reader/BookItem;->_baseLanguage:I

    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 339
    iget-object v2, p0, Lcom/mobipocket/common/library/reader/BookItem;->_extraHeaderData:[Lcom/mobipocket/common/library/reader/book/ExtraHeaderDataItem;

    invoke-static {v0, v2}, Lcom/mobipocket/common/library/reader/book/ExtraHeaderData;->serializeExtraHeaderDataItem(Ljava/io/DataOutputStream;[Lcom/mobipocket/common/library/reader/book/ExtraHeaderDataItem;)V

    .line 340
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    return-object v2
.end method

.method set_isAccessed(Z)V
    .locals 0
    .parameter "accessed"

    .prologue
    .line 892
    iput-boolean p1, p0, Lcom/mobipocket/common/library/reader/BookItem;->_isAccessed:Z

    .line 893
    return-void
.end method
