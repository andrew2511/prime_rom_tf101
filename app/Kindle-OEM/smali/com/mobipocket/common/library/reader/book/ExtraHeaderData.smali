.class public Lcom/mobipocket/common/library/reader/book/ExtraHeaderData;
.super Ljava/lang/Object;
.source "ExtraHeaderData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mobipocket/common/library/reader/book/ExtraHeaderData$1;,
        Lcom/mobipocket/common/library/reader/book/ExtraHeaderData$Range;,
        Lcom/mobipocket/common/library/reader/book/ExtraHeaderData$XhdParameters;,
        Lcom/mobipocket/common/library/reader/book/ExtraHeaderData$TExtraHeaderDataItem;,
        Lcom/mobipocket/common/library/reader/book/ExtraHeaderData$TExtraHeaderData;
    }
.end annotation


# static fields
.field private static final REC_TYPE_XHDATA:I = 0x45585448

.field private static final SF_ExtraDataInHeader:I = 0x40

.field private static final SIZEOF_TExtraHeaderData:I = 0xc

.field private static final SIZEOF_TExtraHeaderDataItem:I = 0x8


# instance fields
.field private _Guid:Ljava/lang/String;

.field private items:[Lcom/mobipocket/common/library/reader/book/ExtraHeaderDataItem;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    return-void
.end method

.method private static addtovector(Ljava/util/Vector;Lcom/mobipocket/common/library/reader/book/ExtraHeaderDataItem;Z)V
    .locals 4
    .parameter "elements"
    .parameter "item"
    .parameter "replace"

    .prologue
    .line 513
    if-eqz p2, :cond_1

    .line 515
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {p0}, Ljava/util/Vector;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 517
    invoke-virtual {p0, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mobipocket/common/library/reader/book/ExtraHeaderDataItem;

    .line 518
    .local v1, t:Lcom/mobipocket/common/library/reader/book/ExtraHeaderDataItem;
    invoke-virtual {v1}, Lcom/mobipocket/common/library/reader/book/ExtraHeaderDataItem;->getIdentifier()I

    move-result v2

    invoke-virtual {p1}, Lcom/mobipocket/common/library/reader/book/ExtraHeaderDataItem;->getIdentifier()I

    move-result v3

    if-ne v2, v3, :cond_0

    .line 520
    invoke-virtual {p0, v0}, Ljava/util/Vector;->removeElementAt(I)V

    goto :goto_0

    .line 524
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 529
    .end local v0           #i:I
    .end local v1           #t:Lcom/mobipocket/common/library/reader/book/ExtraHeaderDataItem;
    :cond_1
    invoke-virtual {p0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 530
    return-void
.end method

.method private build(I)[B
    .locals 8
    .parameter

    .prologue
    const/16 v6, 0x4e4

    const/4 v5, 0x0

    const/4 v7, 0x0

    .line 385
    invoke-virtual {p0}, Lcom/mobipocket/common/library/reader/book/ExtraHeaderData;->getItems()[Lcom/mobipocket/common/library/reader/book/ExtraHeaderDataItem;

    move-result-object v0

    array-length v0, v0

    if-nez v0, :cond_0

    move-object v0, v5

    .line 453
    :goto_0
    return-object v0

    .line 392
    :cond_0
    add-int/lit8 v0, v7, 0xc

    move v1, v7

    .line 393
    :goto_1
    invoke-virtual {p0}, Lcom/mobipocket/common/library/reader/book/ExtraHeaderData;->getItems()[Lcom/mobipocket/common/library/reader/book/ExtraHeaderDataItem;

    move-result-object v2

    array-length v2, v2

    if-ge v1, v2, :cond_4

    .line 395
    invoke-virtual {p0}, Lcom/mobipocket/common/library/reader/book/ExtraHeaderData;->getItems()[Lcom/mobipocket/common/library/reader/book/ExtraHeaderDataItem;

    move-result-object v2

    aget-object v2, v2, v1

    .line 397
    invoke-virtual {v2}, Lcom/mobipocket/common/library/reader/book/ExtraHeaderDataItem;->isBinary()Z

    move-result v3

    if-nez v3, :cond_1

    .line 401
    :try_start_0
    invoke-virtual {v2}, Lcom/mobipocket/common/library/reader/book/ExtraHeaderDataItem;->getStringValue()Ljava/lang/String;

    move-result-object v3

    if-ne p1, v6, :cond_2

    const-string v4, "WINDOWS-1252"

    :goto_2
    invoke-virtual {v3, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    iput-object v3, v2, Lcom/mobipocket/common/library/reader/book/ExtraHeaderDataItem;->binaryValue:[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 415
    :cond_1
    :goto_3
    add-int/lit8 v0, v0, 0x8

    .line 416
    invoke-virtual {v2}, Lcom/mobipocket/common/library/reader/book/ExtraHeaderDataItem;->getBinaryValue()[B

    move-result-object v2

    array-length v2, v2

    add-int/2addr v0, v2

    .line 393
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 401
    :cond_2
    :try_start_1
    const-string v4, "UTF-8"
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception v3

    .line 407
    :try_start_2
    invoke-virtual {v2}, Lcom/mobipocket/common/library/reader/book/ExtraHeaderDataItem;->getStringValue()Ljava/lang/String;

    move-result-object v3

    if-ne p1, v6, :cond_3

    const-string v4, "ISO-8859-1"

    :goto_4
    invoke-virtual {v3, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    iput-object v3, v2, Lcom/mobipocket/common/library/reader/book/ExtraHeaderDataItem;->binaryValue:[B

    goto :goto_3

    :catch_1
    move-exception v3

    goto :goto_3

    :cond_3
    const-string v4, "UTF-8"
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_4

    .line 419
    :cond_4
    :goto_5
    and-int/lit8 v1, v0, 0x3

    if-eqz v1, :cond_5

    .line 421
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 425
    :cond_5
    new-array v1, v0, [B

    .line 429
    new-instance v2, Lcom/mobipocket/common/library/reader/book/ExtraHeaderData$TExtraHeaderData;

    invoke-direct {v2, v5}, Lcom/mobipocket/common/library/reader/book/ExtraHeaderData$TExtraHeaderData;-><init>(Lcom/mobipocket/common/library/reader/book/ExtraHeaderData$1;)V

    .line 430
    const v3, 0x45585448

    iput v3, v2, Lcom/mobipocket/common/library/reader/book/ExtraHeaderData$TExtraHeaderData;->magic:I

    .line 431
    iput v0, v2, Lcom/mobipocket/common/library/reader/book/ExtraHeaderData$TExtraHeaderData;->hsize:I

    .line 432
    invoke-virtual {p0}, Lcom/mobipocket/common/library/reader/book/ExtraHeaderData;->getItems()[Lcom/mobipocket/common/library/reader/book/ExtraHeaderDataItem;

    move-result-object v0

    array-length v0, v0

    iput v0, v2, Lcom/mobipocket/common/library/reader/book/ExtraHeaderData$TExtraHeaderData;->nb_data:I

    .line 435
    iget v0, v2, Lcom/mobipocket/common/library/reader/book/ExtraHeaderData$TExtraHeaderData;->magic:I

    invoke-static {v0, v1, v7}, Lcom/mobipocket/common/library/reader/book/ExtraHeaderData;->writeIntBE(I[BI)I

    move-result v0

    add-int/2addr v0, v7

    .line 436
    iget v3, v2, Lcom/mobipocket/common/library/reader/book/ExtraHeaderData$TExtraHeaderData;->hsize:I

    invoke-static {v3, v1, v0}, Lcom/mobipocket/common/library/reader/book/ExtraHeaderData;->writeIntBE(I[BI)I

    move-result v3

    add-int/2addr v0, v3

    .line 437
    iget v2, v2, Lcom/mobipocket/common/library/reader/book/ExtraHeaderData$TExtraHeaderData;->nb_data:I

    invoke-static {v2, v1, v0}, Lcom/mobipocket/common/library/reader/book/ExtraHeaderData;->writeIntBE(I[BI)I

    move-result v2

    add-int/2addr v0, v2

    .line 440
    new-instance v2, Lcom/mobipocket/common/library/reader/book/ExtraHeaderData$TExtraHeaderDataItem;

    invoke-direct {v2, v5}, Lcom/mobipocket/common/library/reader/book/ExtraHeaderData$TExtraHeaderDataItem;-><init>(Lcom/mobipocket/common/library/reader/book/ExtraHeaderData$1;)V

    move v3, v7

    .line 441
    :goto_6
    invoke-virtual {p0}, Lcom/mobipocket/common/library/reader/book/ExtraHeaderData;->getItems()[Lcom/mobipocket/common/library/reader/book/ExtraHeaderDataItem;

    move-result-object v4

    array-length v4, v4

    if-ge v3, v4, :cond_6

    .line 443
    invoke-virtual {p0}, Lcom/mobipocket/common/library/reader/book/ExtraHeaderData;->getItems()[Lcom/mobipocket/common/library/reader/book/ExtraHeaderDataItem;

    move-result-object v4

    aget-object v4, v4, v3

    .line 444
    invoke-virtual {v4}, Lcom/mobipocket/common/library/reader/book/ExtraHeaderDataItem;->getIdentifier()I

    move-result v5

    iput v5, v2, Lcom/mobipocket/common/library/reader/book/ExtraHeaderData$TExtraHeaderDataItem;->type:I

    .line 445
    invoke-virtual {v4}, Lcom/mobipocket/common/library/reader/book/ExtraHeaderDataItem;->getBinaryValue()[B

    move-result-object v5

    array-length v5, v5

    add-int/lit8 v5, v5, 0x8

    iput v5, v2, Lcom/mobipocket/common/library/reader/book/ExtraHeaderData$TExtraHeaderDataItem;->len:I

    .line 447
    iget v5, v2, Lcom/mobipocket/common/library/reader/book/ExtraHeaderData$TExtraHeaderDataItem;->type:I

    invoke-static {v5, v1, v0}, Lcom/mobipocket/common/library/reader/book/ExtraHeaderData;->writeIntBE(I[BI)I

    move-result v5

    add-int/2addr v0, v5

    .line 448
    iget v5, v2, Lcom/mobipocket/common/library/reader/book/ExtraHeaderData$TExtraHeaderDataItem;->len:I

    invoke-static {v5, v1, v0}, Lcom/mobipocket/common/library/reader/book/ExtraHeaderData;->writeIntBE(I[BI)I

    move-result v5

    add-int/2addr v0, v5

    .line 449
    invoke-virtual {v4}, Lcom/mobipocket/common/library/reader/book/ExtraHeaderDataItem;->getBinaryValue()[B

    move-result-object v5

    invoke-virtual {v4}, Lcom/mobipocket/common/library/reader/book/ExtraHeaderDataItem;->getBinaryValue()[B

    move-result-object v6

    array-length v6, v6

    invoke-static {v5, v7, v1, v0, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 450
    invoke-virtual {v4}, Lcom/mobipocket/common/library/reader/book/ExtraHeaderDataItem;->getBinaryValue()[B

    move-result-object v4

    array-length v4, v4

    add-int/2addr v0, v4

    .line 441
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    :cond_6
    move-object v0, v1

    .line 453
    goto/16 :goto_0
.end method

.method public static constructMetaData([Lcom/mobipocket/common/library/reader/book/ExtraHeaderDataItem;)Lcom/mobipocket/common/library/reader/book/FullMetaDataCollection;
    .locals 9
    .parameter "localItems"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 192
    new-instance v4, Lcom/mobipocket/common/library/reader/book/FullMetaDataCollection;

    invoke-direct {v4}, Lcom/mobipocket/common/library/reader/book/FullMetaDataCollection;-><init>()V

    .line 197
    .local v4, meta:Lcom/mobipocket/common/library/reader/book/FullMetaDataCollection;
    const/4 v5, 0x0

    .line 198
    .local v5, nb_authors:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-eqz p0, :cond_0

    array-length v6, p0

    if-ge v2, v6, :cond_0

    .line 200
    aget-object v3, p0, v2

    .line 201
    .local v3, item:Lcom/mobipocket/common/library/reader/book/ExtraHeaderDataItem;
    invoke-virtual {v3}, Lcom/mobipocket/common/library/reader/book/ExtraHeaderDataItem;->getIdentifier()I

    move-result v6

    sparse-switch v6, :sswitch_data_0

    .line 198
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 203
    :sswitch_0
    invoke-virtual {v3}, Lcom/mobipocket/common/library/reader/book/ExtraHeaderDataItem;->getStringValue()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Lcom/mobipocket/common/library/reader/book/FullMetaDataCollection;->drm_server_id:Ljava/lang/String;

    goto :goto_1

    .line 204
    :sswitch_1
    invoke-virtual {v3}, Lcom/mobipocket/common/library/reader/book/ExtraHeaderDataItem;->getStringValue()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Lcom/mobipocket/common/library/reader/book/FullMetaDataCollection;->drm_commerce_id:Ljava/lang/String;

    goto :goto_1

    .line 205
    :sswitch_2
    invoke-virtual {v3}, Lcom/mobipocket/common/library/reader/book/ExtraHeaderDataItem;->getStringValue()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Lcom/mobipocket/common/library/reader/book/FullMetaDataCollection;->drm_ebookbase_book_id:Ljava/lang/String;

    goto :goto_1

    .line 206
    :sswitch_3
    invoke-virtual {v3}, Lcom/mobipocket/common/library/reader/book/ExtraHeaderDataItem;->getStringValue()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Lcom/mobipocket/common/library/reader/book/FullMetaDataCollection;->publisher:Ljava/lang/String;

    goto :goto_1

    .line 207
    :sswitch_4
    invoke-virtual {v3}, Lcom/mobipocket/common/library/reader/book/ExtraHeaderDataItem;->getStringValue()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Lcom/mobipocket/common/library/reader/book/FullMetaDataCollection;->imprint:Ljava/lang/String;

    goto :goto_1

    .line 208
    :sswitch_5
    invoke-virtual {v3}, Lcom/mobipocket/common/library/reader/book/ExtraHeaderDataItem;->getStringValue()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Lcom/mobipocket/common/library/reader/book/FullMetaDataCollection;->ISBN_code:Ljava/lang/String;

    goto :goto_1

    .line 209
    :sswitch_6
    invoke-virtual {v3}, Lcom/mobipocket/common/library/reader/book/ExtraHeaderDataItem;->getStringValue()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Lcom/mobipocket/common/library/reader/book/FullMetaDataCollection;->subject:Ljava/lang/String;

    goto :goto_1

    .line 210
    :sswitch_7
    invoke-virtual {v3}, Lcom/mobipocket/common/library/reader/book/ExtraHeaderDataItem;->getStringValue()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Lcom/mobipocket/common/library/reader/book/FullMetaDataCollection;->publishing_date:Ljava/lang/String;

    goto :goto_1

    .line 211
    :sswitch_8
    invoke-virtual {v3}, Lcom/mobipocket/common/library/reader/book/ExtraHeaderDataItem;->getStringValue()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Lcom/mobipocket/common/library/reader/book/FullMetaDataCollection;->subject_code:Ljava/lang/String;

    goto :goto_1

    .line 212
    :sswitch_9
    invoke-virtual {v3}, Lcom/mobipocket/common/library/reader/book/ExtraHeaderDataItem;->getStringValue()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Lcom/mobipocket/common/library/reader/book/FullMetaDataCollection;->asin:Ljava/lang/String;

    goto :goto_1

    .line 213
    :sswitch_a
    invoke-virtual {v3}, Lcom/mobipocket/common/library/reader/book/ExtraHeaderDataItem;->getStringValue()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Lcom/mobipocket/common/library/reader/book/FullMetaDataCollection;->title:Ljava/lang/String;

    goto :goto_1

    .line 214
    :sswitch_b
    invoke-virtual {v3}, Lcom/mobipocket/common/library/reader/book/ExtraHeaderDataItem;->getBinaryValue()[B

    move-result-object v6

    invoke-static {v6, v7, v8}, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;->readInt([BIZ)I

    move-result v6

    iput v6, v4, Lcom/mobipocket/common/library/reader/book/FullMetaDataCollection;->version_number:I

    goto :goto_1

    .line 215
    :sswitch_c
    invoke-virtual {v3}, Lcom/mobipocket/common/library/reader/book/ExtraHeaderDataItem;->getBinaryValue()[B

    move-result-object v6

    invoke-static {v6, v7, v8}, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;->readInt([BIZ)I

    move-result v6

    iput v6, v4, Lcom/mobipocket/common/library/reader/book/FullMetaDataCollection;->sample:I

    goto :goto_1

    .line 216
    :sswitch_d
    invoke-virtual {v3}, Lcom/mobipocket/common/library/reader/book/ExtraHeaderDataItem;->getBinaryValue()[B

    move-result-object v6

    invoke-static {v6, v7, v8}, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;->readInt([BIZ)I

    move-result v6

    iput v6, v4, Lcom/mobipocket/common/library/reader/book/FullMetaDataCollection;->coverRecord:I

    goto :goto_1

    .line 217
    :sswitch_e
    invoke-virtual {v3}, Lcom/mobipocket/common/library/reader/book/ExtraHeaderDataItem;->getBinaryValue()[B

    move-result-object v6

    invoke-static {v6, v7, v8}, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;->readInt([BIZ)I

    move-result v6

    iput v6, v4, Lcom/mobipocket/common/library/reader/book/FullMetaDataCollection;->coverThumbRecord:I

    goto :goto_1

    .line 218
    :sswitch_f
    invoke-virtual {v3}, Lcom/mobipocket/common/library/reader/book/ExtraHeaderDataItem;->getBinaryValue()[B

    move-result-object v6

    invoke-static {v6, v7, v8}, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;->readInt([BIZ)I

    move-result v6

    iput v6, v4, Lcom/mobipocket/common/library/reader/book/FullMetaDataCollection;->hasFakeCover:I

    goto/16 :goto_1

    .line 219
    :sswitch_10
    invoke-virtual {v3}, Lcom/mobipocket/common/library/reader/book/ExtraHeaderDataItem;->getBinaryValue()[B

    move-result-object v6

    invoke-static {v6, v7, v8}, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;->readInt([BIZ)I

    move-result v6

    iput v6, v4, Lcom/mobipocket/common/library/reader/book/FullMetaDataCollection;->startReadingPosition:I

    goto/16 :goto_1

    .line 221
    :sswitch_11
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_1

    .line 226
    .end local v3           #item:Lcom/mobipocket/common/library/reader/book/ExtraHeaderDataItem;
    :cond_0
    if-lez v5, :cond_2

    .line 228
    const/4 v0, 0x0

    .line 229
    .local v0, author_i:I
    new-array v6, v5, [Ljava/lang/String;

    iput-object v6, v4, Lcom/mobipocket/common/library/reader/book/FullMetaDataCollection;->authors:[Ljava/lang/String;

    .line 230
    const/4 v2, 0x0

    :goto_2
    array-length v6, p0

    if-ge v2, v6, :cond_2

    .line 232
    aget-object v6, p0, v2

    invoke-virtual {v6}, Lcom/mobipocket/common/library/reader/book/ExtraHeaderDataItem;->getIdentifier()I

    move-result v6

    const/16 v7, 0x64

    if-ne v6, v7, :cond_1

    .line 233
    iget-object v6, v4, Lcom/mobipocket/common/library/reader/book/FullMetaDataCollection;->authors:[Ljava/lang/String;

    add-int/lit8 v1, v0, 0x1

    .end local v0           #author_i:I
    .local v1, author_i:I
    aget-object v7, p0, v2

    invoke-virtual {v7}, Lcom/mobipocket/common/library/reader/book/ExtraHeaderDataItem;->getStringValue()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v0

    move v0, v1

    .line 230
    .end local v1           #author_i:I
    .restart local v0       #author_i:I
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 236
    .end local v0           #author_i:I
    :cond_2
    return-object v4

    .line 201
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
        0x64 -> :sswitch_11
        0x65 -> :sswitch_3
        0x66 -> :sswitch_4
        0x68 -> :sswitch_5
        0x69 -> :sswitch_6
        0x6a -> :sswitch_7
        0x6e -> :sswitch_8
        0x71 -> :sswitch_9
        0x72 -> :sswitch_b
        0x73 -> :sswitch_c
        0x74 -> :sswitch_10
        0xc9 -> :sswitch_d
        0xca -> :sswitch_e
        0xcb -> :sswitch_f
        0x1f7 -> :sswitch_a
    .end sparse-switch
.end method

.method public static deserializeExtraHeaderDataItem(Ljava/io/DataInputStream;)[Lcom/mobipocket/common/library/reader/book/ExtraHeaderDataItem;
    .locals 9
    .parameter "dis"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 282
    const/4 v6, 0x0

    .line 283
    .local v6, localItems:[Lcom/mobipocket/common/library/reader/book/ExtraHeaderDataItem;
    if-eqz p0, :cond_1

    .line 285
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v4

    .line 286
    .local v4, lenght:I
    new-array v6, v4, [Lcom/mobipocket/common/library/reader/book/ExtraHeaderDataItem;

    .line 287
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v4, :cond_1

    .line 289
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v2

    .line 290
    .local v2, identifier:I
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readBoolean()Z

    move-result v3

    .line 291
    .local v3, isBinary:Z
    if-eqz v3, :cond_0

    .line 293
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v5

    .line 294
    .local v5, length:I
    new-array v0, v5, [B

    .line 295
    .local v0, binaryValue:[B
    invoke-virtual {p0, v0}, Ljava/io/DataInputStream;->readFully([B)V

    .line 296
    new-instance v8, Lcom/mobipocket/common/library/reader/book/ExtraHeaderDataItem;

    invoke-direct {v8, v0, v2}, Lcom/mobipocket/common/library/reader/book/ExtraHeaderDataItem;-><init>([BI)V

    aput-object v8, v6, v1

    .line 287
    .end local v0           #binaryValue:[B
    .end local v5           #length:I
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 300
    :cond_0
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v7

    .line 301
    .local v7, value:Ljava/lang/String;
    new-instance v8, Lcom/mobipocket/common/library/reader/book/ExtraHeaderDataItem;

    invoke-direct {v8, v7, v2}, Lcom/mobipocket/common/library/reader/book/ExtraHeaderDataItem;-><init>(Ljava/lang/String;I)V

    aput-object v8, v6, v1

    goto :goto_1

    .line 305
    .end local v1           #i:I
    .end local v2           #identifier:I
    .end local v3           #isBinary:Z
    .end local v4           #lenght:I
    .end local v7           #value:Ljava/lang/String;
    :cond_1
    return-object v6
.end method

.method private static getNextOffset([BI)I
    .locals 3
    .parameter "header"
    .parameter "offset"

    .prologue
    .line 661
    invoke-static {p0, p1}, Lcom/mobipocket/common/library/reader/book/ExtraHeaderData;->readIntBE([BI)I

    move-result v1

    .line 662
    .local v1, magic:I
    const v2, 0x45585448

    if-ne v1, v2, :cond_0

    .line 664
    add-int/lit8 p1, p1, 0xc

    .line 675
    :goto_0
    return p1

    .line 668
    :cond_0
    new-instance v0, Lcom/mobipocket/common/library/reader/book/ExtraHeaderData$TExtraHeaderDataItem;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Lcom/mobipocket/common/library/reader/book/ExtraHeaderData$TExtraHeaderDataItem;-><init>(Lcom/mobipocket/common/library/reader/book/ExtraHeaderData$1;)V

    .line 669
    .local v0, hdata:Lcom/mobipocket/common/library/reader/book/ExtraHeaderData$TExtraHeaderDataItem;
    invoke-static {p0, p1}, Lcom/mobipocket/common/library/reader/book/ExtraHeaderData;->readIntBE([BI)I

    move-result v2

    iput v2, v0, Lcom/mobipocket/common/library/reader/book/ExtraHeaderData$TExtraHeaderDataItem;->type:I

    .line 670
    add-int/lit8 v2, p1, 0x4

    invoke-static {p0, v2}, Lcom/mobipocket/common/library/reader/book/ExtraHeaderData;->readIntBE([BI)I

    move-result v2

    iput v2, v0, Lcom/mobipocket/common/library/reader/book/ExtraHeaderData$TExtraHeaderDataItem;->len:I

    .line 671
    iget v2, v0, Lcom/mobipocket/common/library/reader/book/ExtraHeaderData$TExtraHeaderDataItem;->len:I

    add-int/2addr p1, v2

    goto :goto_0
.end method

.method private static getXHD(Lcom/mobipocket/common/library/reader/book/MobiFileHeader;[B)Lcom/mobipocket/common/library/reader/book/ExtraHeaderData$XhdParameters;
    .locals 6
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mobipocket/common/library/reader/book/ExtraHeaderDataException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 542
    new-instance v0, Lcom/mobipocket/common/library/reader/book/ExtraHeaderData$XhdParameters;

    invoke-direct {v0, v5}, Lcom/mobipocket/common/library/reader/book/ExtraHeaderData$XhdParameters;-><init>(Lcom/mobipocket/common/library/reader/book/ExtraHeaderData$1;)V

    .line 544
    iput-object p0, v0, Lcom/mobipocket/common/library/reader/book/ExtraHeaderData$XhdParameters;->mbph:Lcom/mobipocket/common/library/reader/book/MobiFileHeader;

    .line 545
    iget-object v1, v0, Lcom/mobipocket/common/library/reader/book/ExtraHeaderData$XhdParameters;->mbph:Lcom/mobipocket/common/library/reader/book/MobiFileHeader;

    iget v1, v1, Lcom/mobipocket/common/library/reader/book/MobiFileHeader;->version:I

    const/4 v2, 0x4

    if-ge v1, v2, :cond_0

    .line 547
    new-instance v0, Lcom/mobipocket/common/library/reader/book/ExtraHeaderDataException;

    const-string v1, "File format too old. Must be FFV 4 at least."

    invoke-direct {v0, v1}, Lcom/mobipocket/common/library/reader/book/ExtraHeaderDataException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 552
    :cond_0
    new-instance v1, Lcom/mobipocket/common/library/reader/book/ExtraHeaderData$Range;

    iget-object v2, v0, Lcom/mobipocket/common/library/reader/book/ExtraHeaderData$XhdParameters;->mbph:Lcom/mobipocket/common/library/reader/book/MobiFileHeader;

    iget v2, v2, Lcom/mobipocket/common/library/reader/book/MobiFileHeader;->hsize:I

    add-int/lit8 v2, v2, 0x10

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/mobipocket/common/library/reader/book/ExtraHeaderData$Range;-><init>(II)V

    iput-object v1, v0, Lcom/mobipocket/common/library/reader/book/ExtraHeaderData$XhdParameters;->range:Lcom/mobipocket/common/library/reader/book/ExtraHeaderData$Range;

    .line 553
    iget-object v1, v0, Lcom/mobipocket/common/library/reader/book/ExtraHeaderData$XhdParameters;->mbph:Lcom/mobipocket/common/library/reader/book/MobiFileHeader;

    iget v1, v1, Lcom/mobipocket/common/library/reader/book/MobiFileHeader;->encoding:I

    iput v1, v0, Lcom/mobipocket/common/library/reader/book/ExtraHeaderData$XhdParameters;->encoding:I

    .line 555
    new-instance v1, Lcom/mobipocket/common/library/reader/book/ExtraHeaderData$Range;

    iget-object v2, v0, Lcom/mobipocket/common/library/reader/book/ExtraHeaderData$XhdParameters;->mbph:Lcom/mobipocket/common/library/reader/book/MobiFileHeader;

    iget v2, v2, Lcom/mobipocket/common/library/reader/book/MobiFileHeader;->title_offset:I

    iget-object v3, v0, Lcom/mobipocket/common/library/reader/book/ExtraHeaderData$XhdParameters;->mbph:Lcom/mobipocket/common/library/reader/book/MobiFileHeader;

    iget v3, v3, Lcom/mobipocket/common/library/reader/book/MobiFileHeader;->title_len:I

    invoke-direct {v1, v2, v3}, Lcom/mobipocket/common/library/reader/book/ExtraHeaderData$Range;-><init>(II)V

    iput-object v1, v0, Lcom/mobipocket/common/library/reader/book/ExtraHeaderData$XhdParameters;->pointed:Lcom/mobipocket/common/library/reader/book/ExtraHeaderData$Range;

    .line 556
    iget-object v1, v0, Lcom/mobipocket/common/library/reader/book/ExtraHeaderData$XhdParameters;->pointed:Lcom/mobipocket/common/library/reader/book/ExtraHeaderData$Range;

    new-instance v2, Lcom/mobipocket/common/library/reader/book/ExtraHeaderData$Range;

    iget-object v3, v0, Lcom/mobipocket/common/library/reader/book/ExtraHeaderData$XhdParameters;->mbph:Lcom/mobipocket/common/library/reader/book/MobiFileHeader;

    iget v3, v3, Lcom/mobipocket/common/library/reader/book/MobiFileHeader;->vouchers_offset:I

    iget-object v4, v0, Lcom/mobipocket/common/library/reader/book/ExtraHeaderData$XhdParameters;->mbph:Lcom/mobipocket/common/library/reader/book/MobiFileHeader;

    iget v4, v4, Lcom/mobipocket/common/library/reader/book/MobiFileHeader;->vouchers_len:I

    invoke-direct {v2, v3, v4}, Lcom/mobipocket/common/library/reader/book/ExtraHeaderData$Range;-><init>(II)V

    invoke-virtual {v1, v2}, Lcom/mobipocket/common/library/reader/book/ExtraHeaderData$Range;->enlargeToContain(Lcom/mobipocket/common/library/reader/book/ExtraHeaderData$Range;)V

    .line 557
    iget-object v1, v0, Lcom/mobipocket/common/library/reader/book/ExtraHeaderData$XhdParameters;->pointed:Lcom/mobipocket/common/library/reader/book/ExtraHeaderData$Range;

    new-instance v2, Lcom/mobipocket/common/library/reader/book/ExtraHeaderData$Range;

    iget-object v3, v0, Lcom/mobipocket/common/library/reader/book/ExtraHeaderData$XhdParameters;->mbph:Lcom/mobipocket/common/library/reader/book/MobiFileHeader;

    iget v3, v3, Lcom/mobipocket/common/library/reader/book/MobiFileHeader;->refresh_url_offset:I

    iget-object v4, v0, Lcom/mobipocket/common/library/reader/book/ExtraHeaderData$XhdParameters;->mbph:Lcom/mobipocket/common/library/reader/book/MobiFileHeader;

    iget v4, v4, Lcom/mobipocket/common/library/reader/book/MobiFileHeader;->refresh_url_len:I

    invoke-direct {v2, v3, v4}, Lcom/mobipocket/common/library/reader/book/ExtraHeaderData$Range;-><init>(II)V

    invoke-virtual {v1, v2}, Lcom/mobipocket/common/library/reader/book/ExtraHeaderData$Range;->enlargeToContain(Lcom/mobipocket/common/library/reader/book/ExtraHeaderData$Range;)V

    .line 559
    iget-object v1, v0, Lcom/mobipocket/common/library/reader/book/ExtraHeaderData$XhdParameters;->pointed:Lcom/mobipocket/common/library/reader/book/ExtraHeaderData$Range;

    iget v1, v1, Lcom/mobipocket/common/library/reader/book/ExtraHeaderData$Range;->length:I

    if-nez v1, :cond_1

    .line 562
    iget-object v1, v0, Lcom/mobipocket/common/library/reader/book/ExtraHeaderData$XhdParameters;->range:Lcom/mobipocket/common/library/reader/book/ExtraHeaderData$Range;

    array-length v2, p1

    iget-object v3, v0, Lcom/mobipocket/common/library/reader/book/ExtraHeaderData$XhdParameters;->range:Lcom/mobipocket/common/library/reader/book/ExtraHeaderData$Range;

    iget v3, v3, Lcom/mobipocket/common/library/reader/book/ExtraHeaderData$Range;->start:I

    sub-int/2addr v2, v3

    iput v2, v1, Lcom/mobipocket/common/library/reader/book/ExtraHeaderData$Range;->length:I

    .line 572
    :goto_0
    iget-object v1, v0, Lcom/mobipocket/common/library/reader/book/ExtraHeaderData$XhdParameters;->mbph:Lcom/mobipocket/common/library/reader/book/MobiFileHeader;

    iget v1, v1, Lcom/mobipocket/common/library/reader/book/MobiFileHeader;->special_features:I

    and-int/lit8 v1, v1, 0x40

    if-nez v1, :cond_2

    .line 597
    :goto_1
    return-object v0

    .line 568
    :cond_1
    iget-object v1, v0, Lcom/mobipocket/common/library/reader/book/ExtraHeaderData$XhdParameters;->range:Lcom/mobipocket/common/library/reader/book/ExtraHeaderData$Range;

    iget-object v2, v0, Lcom/mobipocket/common/library/reader/book/ExtraHeaderData$XhdParameters;->pointed:Lcom/mobipocket/common/library/reader/book/ExtraHeaderData$Range;

    iget v2, v2, Lcom/mobipocket/common/library/reader/book/ExtraHeaderData$Range;->start:I

    iget-object v3, v0, Lcom/mobipocket/common/library/reader/book/ExtraHeaderData$XhdParameters;->range:Lcom/mobipocket/common/library/reader/book/ExtraHeaderData$Range;

    iget v3, v3, Lcom/mobipocket/common/library/reader/book/ExtraHeaderData$Range;->start:I

    sub-int/2addr v2, v3

    iput v2, v1, Lcom/mobipocket/common/library/reader/book/ExtraHeaderData$Range;->length:I

    goto :goto_0

    .line 578
    :cond_2
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/mobipocket/common/library/reader/book/ExtraHeaderData$XhdParameters;->present:Z

    .line 582
    new-instance v1, Lcom/mobipocket/common/library/reader/book/ExtraHeaderData$TExtraHeaderData;

    invoke-direct {v1, v5}, Lcom/mobipocket/common/library/reader/book/ExtraHeaderData$TExtraHeaderData;-><init>(Lcom/mobipocket/common/library/reader/book/ExtraHeaderData$1;)V

    .line 583
    iget-object v2, v0, Lcom/mobipocket/common/library/reader/book/ExtraHeaderData$XhdParameters;->range:Lcom/mobipocket/common/library/reader/book/ExtraHeaderData$Range;

    iget v2, v2, Lcom/mobipocket/common/library/reader/book/ExtraHeaderData$Range;->start:I

    invoke-static {p1, v2}, Lcom/mobipocket/common/library/reader/book/ExtraHeaderData;->readIntBE([BI)I

    move-result v2

    iput v2, v1, Lcom/mobipocket/common/library/reader/book/ExtraHeaderData$TExtraHeaderData;->magic:I

    .line 584
    iget-object v2, v0, Lcom/mobipocket/common/library/reader/book/ExtraHeaderData$XhdParameters;->range:Lcom/mobipocket/common/library/reader/book/ExtraHeaderData$Range;

    iget v2, v2, Lcom/mobipocket/common/library/reader/book/ExtraHeaderData$Range;->start:I

    add-int/lit8 v2, v2, 0x4

    invoke-static {p1, v2}, Lcom/mobipocket/common/library/reader/book/ExtraHeaderData;->readIntBE([BI)I

    move-result v2

    iput v2, v1, Lcom/mobipocket/common/library/reader/book/ExtraHeaderData$TExtraHeaderData;->hsize:I

    .line 585
    iget-object v2, v0, Lcom/mobipocket/common/library/reader/book/ExtraHeaderData$XhdParameters;->range:Lcom/mobipocket/common/library/reader/book/ExtraHeaderData$Range;

    iget v2, v2, Lcom/mobipocket/common/library/reader/book/ExtraHeaderData$Range;->start:I

    add-int/lit8 v2, v2, 0x8

    invoke-static {p1, v2}, Lcom/mobipocket/common/library/reader/book/ExtraHeaderData;->readIntBE([BI)I

    move-result v2

    iput v2, v1, Lcom/mobipocket/common/library/reader/book/ExtraHeaderData$TExtraHeaderData;->nb_data:I

    .line 588
    iget v2, v1, Lcom/mobipocket/common/library/reader/book/ExtraHeaderData$TExtraHeaderData;->magic:I

    const v3, 0x45585448

    if-eq v2, v3, :cond_3

    .line 590
    new-instance v0, Lcom/mobipocket/common/library/reader/book/ExtraHeaderDataException;

    const-string v1, "Invalid file format"

    invoke-direct {v0, v1}, Lcom/mobipocket/common/library/reader/book/ExtraHeaderDataException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 595
    :cond_3
    iget v1, v1, Lcom/mobipocket/common/library/reader/book/ExtraHeaderData$TExtraHeaderData;->nb_data:I

    iput v1, v0, Lcom/mobipocket/common/library/reader/book/ExtraHeaderData$XhdParameters;->count:I

    goto :goto_1
.end method

.method private open_hole([BLcom/mobipocket/common/library/reader/book/ExtraHeaderData$Range;Lcom/mobipocket/common/library/reader/book/MobiFileHeader;)V
    .locals 5
    .parameter "header"
    .parameter "hole"
    .parameter "mbph"

    .prologue
    const/4 v4, 0x1

    const/4 v3, -0x1

    .line 617
    array-length v1, p1

    iget v2, p2, Lcom/mobipocket/common/library/reader/book/ExtraHeaderData$Range;->start:I

    sub-int/2addr v1, v2

    iget v2, p2, Lcom/mobipocket/common/library/reader/book/ExtraHeaderData$Range;->length:I

    sub-int/2addr v1, v2

    sub-int v0, v1, v4

    .local v0, j:I
    :goto_0
    if-ltz v0, :cond_0

    .line 619
    iget v1, p2, Lcom/mobipocket/common/library/reader/book/ExtraHeaderData$Range;->start:I

    iget v2, p2, Lcom/mobipocket/common/library/reader/book/ExtraHeaderData$Range;->length:I

    add-int/2addr v1, v2

    add-int/2addr v1, v0

    iget v2, p2, Lcom/mobipocket/common/library/reader/book/ExtraHeaderData$Range;->start:I

    add-int/2addr v2, v0

    aget-byte v2, p1, v2

    aput-byte v2, p1, v1

    .line 617
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 621
    :cond_0
    const/4 v0, 0x0

    :goto_1
    iget v1, p2, Lcom/mobipocket/common/library/reader/book/ExtraHeaderData$Range;->length:I

    if-ge v0, v1, :cond_1

    .line 623
    iget v1, p2, Lcom/mobipocket/common/library/reader/book/ExtraHeaderData$Range;->start:I

    add-int/2addr v1, v0

    const/4 v2, 0x0

    aput-byte v2, p1, v1

    .line 621
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 627
    :cond_1
    iget v1, p3, Lcom/mobipocket/common/library/reader/book/MobiFileHeader;->title_offset:I

    if-eq v1, v3, :cond_2

    iget v1, p3, Lcom/mobipocket/common/library/reader/book/MobiFileHeader;->title_offset:I

    iget v2, p2, Lcom/mobipocket/common/library/reader/book/ExtraHeaderData$Range;->start:I

    if-lt v1, v2, :cond_2

    .line 629
    iget v1, p3, Lcom/mobipocket/common/library/reader/book/MobiFileHeader;->title_offset:I

    iget v2, p2, Lcom/mobipocket/common/library/reader/book/ExtraHeaderData$Range;->length:I

    add-int/2addr v1, v2

    iput v1, p3, Lcom/mobipocket/common/library/reader/book/MobiFileHeader;->title_offset:I

    .line 631
    :cond_2
    iget v1, p3, Lcom/mobipocket/common/library/reader/book/MobiFileHeader;->vouchers_offset:I

    if-eq v1, v3, :cond_3

    iget v1, p3, Lcom/mobipocket/common/library/reader/book/MobiFileHeader;->vouchers_offset:I

    iget v2, p2, Lcom/mobipocket/common/library/reader/book/ExtraHeaderData$Range;->start:I

    if-lt v1, v2, :cond_3

    .line 633
    iget v1, p3, Lcom/mobipocket/common/library/reader/book/MobiFileHeader;->vouchers_offset:I

    iget v2, p2, Lcom/mobipocket/common/library/reader/book/ExtraHeaderData$Range;->length:I

    add-int/2addr v1, v2

    iput v1, p3, Lcom/mobipocket/common/library/reader/book/MobiFileHeader;->vouchers_offset:I

    .line 635
    :cond_3
    iget v1, p3, Lcom/mobipocket/common/library/reader/book/MobiFileHeader;->refresh_url_offset:I

    if-eq v1, v3, :cond_4

    iget v1, p3, Lcom/mobipocket/common/library/reader/book/MobiFileHeader;->refresh_url_offset:I

    iget v2, p2, Lcom/mobipocket/common/library/reader/book/ExtraHeaderData$Range;->start:I

    if-lt v1, v2, :cond_4

    .line 637
    iget v1, p3, Lcom/mobipocket/common/library/reader/book/MobiFileHeader;->refresh_url_offset:I

    iget v2, p2, Lcom/mobipocket/common/library/reader/book/ExtraHeaderData$Range;->length:I

    add-int/2addr v1, v2

    iput v1, p3, Lcom/mobipocket/common/library/reader/book/MobiFileHeader;->refresh_url_offset:I

    .line 641
    :cond_4
    iget v1, p3, Lcom/mobipocket/common/library/reader/book/MobiFileHeader;->flows:I

    if-ne v1, v3, :cond_5

    iget v1, p3, Lcom/mobipocket/common/library/reader/book/MobiFileHeader;->flow_count:I

    const/high16 v2, 0x100

    if-ne v1, v2, :cond_5

    .line 642
    iput v4, p3, Lcom/mobipocket/common/library/reader/book/MobiFileHeader;->flow_count:I

    .line 643
    :cond_5
    return-void
.end method

.method private static readIntBE([BI)I
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 777
    aget-byte v0, p0, p1

    .line 779
    shl-int/lit8 v0, v0, 0x8

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    add-int/2addr v0, v1

    .line 780
    shl-int/lit8 v0, v0, 0x8

    add-int/lit8 v1, p1, 0x2

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    add-int/2addr v0, v1

    .line 781
    shl-int/lit8 v0, v0, 0x8

    add-int/lit8 v1, p1, 0x3

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    add-int/2addr v0, v1

    .line 782
    return v0
.end method

.method private static readItem([BII)Lcom/mobipocket/common/library/reader/book/ExtraHeaderDataItem;
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x0

    const/16 v4, 0x4e4

    .line 688
    new-instance v0, Lcom/mobipocket/common/library/reader/book/ExtraHeaderData$TExtraHeaderDataItem;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/mobipocket/common/library/reader/book/ExtraHeaderData$TExtraHeaderDataItem;-><init>(Lcom/mobipocket/common/library/reader/book/ExtraHeaderData$1;)V

    .line 689
    invoke-static {p0, p1}, Lcom/mobipocket/common/library/reader/book/ExtraHeaderData;->readIntBE([BI)I

    move-result v1

    iput v1, v0, Lcom/mobipocket/common/library/reader/book/ExtraHeaderData$TExtraHeaderDataItem;->type:I

    .line 690
    add-int/lit8 v1, p1, 0x4

    invoke-static {p0, v1}, Lcom/mobipocket/common/library/reader/book/ExtraHeaderData;->readIntBE([BI)I

    move-result v1

    iput v1, v0, Lcom/mobipocket/common/library/reader/book/ExtraHeaderData$TExtraHeaderDataItem;->len:I

    .line 693
    new-instance v1, Lcom/mobipocket/common/library/reader/book/ExtraHeaderDataItem;

    iget v2, v0, Lcom/mobipocket/common/library/reader/book/ExtraHeaderData$TExtraHeaderDataItem;->len:I

    const/16 v3, 0x8

    sub-int/2addr v2, v3

    new-array v2, v2, [B

    iget v0, v0, Lcom/mobipocket/common/library/reader/book/ExtraHeaderData$TExtraHeaderDataItem;->type:I

    invoke-direct {v1, v2, v0}, Lcom/mobipocket/common/library/reader/book/ExtraHeaderDataItem;-><init>([BI)V

    .line 695
    add-int/lit8 v0, p1, 0x8

    invoke-virtual {v1}, Lcom/mobipocket/common/library/reader/book/ExtraHeaderDataItem;->getBinaryValue()[B

    move-result-object v2

    invoke-virtual {v1}, Lcom/mobipocket/common/library/reader/book/ExtraHeaderDataItem;->getBinaryValue()[B

    move-result-object v3

    array-length v3, v3

    invoke-static {p0, v0, v2, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 698
    invoke-virtual {v1}, Lcom/mobipocket/common/library/reader/book/ExtraHeaderDataItem;->getIdentifier()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 740
    invoke-virtual {v1}, Lcom/mobipocket/common/library/reader/book/ExtraHeaderDataItem;->getIdentifier()I

    move-result v0

    const/16 v2, 0x1f4

    if-lt v0, v2, :cond_0

    invoke-virtual {v1}, Lcom/mobipocket/common/library/reader/book/ExtraHeaderDataItem;->getIdentifier()I

    move-result v0

    const/16 v2, 0x257

    if-le v0, v2, :cond_3

    .line 765
    :cond_0
    :goto_0
    return-object v1

    .line 721
    :sswitch_0
    iput-boolean v5, v1, Lcom/mobipocket/common/library/reader/book/ExtraHeaderDataItem;->isBinary:Z

    .line 724
    :try_start_0
    new-instance v0, Ljava/lang/String;

    invoke-virtual {v1}, Lcom/mobipocket/common/library/reader/book/ExtraHeaderDataItem;->getBinaryValue()[B

    move-result-object v2

    if-ne p2, v4, :cond_1

    const-string v3, "WINDOWS-1252"

    :goto_1
    invoke-direct {v0, v2, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    iput-object v0, v1, Lcom/mobipocket/common/library/reader/book/ExtraHeaderDataItem;->stringValue:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 730
    :try_start_1
    new-instance v0, Ljava/lang/String;

    invoke-virtual {v1}, Lcom/mobipocket/common/library/reader/book/ExtraHeaderDataItem;->getBinaryValue()[B

    move-result-object v2

    if-ne p2, v4, :cond_2

    const-string v3, "ISO-8859-1"

    :goto_2
    invoke-direct {v0, v2, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    iput-object v0, v1, Lcom/mobipocket/common/library/reader/book/ExtraHeaderDataItem;->stringValue:Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0

    .line 724
    :cond_1
    :try_start_2
    const-string v3, "UTF-8"
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 730
    :cond_2
    :try_start_3
    const-string v3, "UTF-8"
    :try_end_3
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_2

    .line 745
    :cond_3
    iput-boolean v5, v1, Lcom/mobipocket/common/library/reader/book/ExtraHeaderDataItem;->isBinary:Z

    .line 748
    :try_start_4
    new-instance v0, Ljava/lang/String;

    invoke-virtual {v1}, Lcom/mobipocket/common/library/reader/book/ExtraHeaderDataItem;->getBinaryValue()[B

    move-result-object v2

    if-ne p2, v4, :cond_4

    const-string v3, "WINDOWS-1252"

    :goto_3
    invoke-direct {v0, v2, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    iput-object v0, v1, Lcom/mobipocket/common/library/reader/book/ExtraHeaderDataItem;->stringValue:Ljava/lang/String;
    :try_end_4
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    :catch_2
    move-exception v0

    .line 754
    :try_start_5
    new-instance v0, Ljava/lang/String;

    invoke-virtual {v1}, Lcom/mobipocket/common/library/reader/book/ExtraHeaderDataItem;->getBinaryValue()[B

    move-result-object v2

    if-ne p2, v4, :cond_5

    const-string v3, "ISO-8859-1"

    :goto_4
    invoke-direct {v0, v2, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    iput-object v0, v1, Lcom/mobipocket/common/library/reader/book/ExtraHeaderDataItem;->stringValue:Ljava/lang/String;
    :try_end_5
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_0

    :catch_3
    move-exception v0

    goto :goto_0

    .line 748
    :cond_4
    :try_start_6
    const-string v3, "UTF-8"
    :try_end_6
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_3

    .line 754
    :cond_5
    :try_start_7
    const-string v3, "UTF-8"
    :try_end_7
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_7 .. :try_end_7} :catch_3

    goto :goto_4

    .line 698
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_0
        0x3 -> :sswitch_0
        0x63 -> :sswitch_0
        0x64 -> :sswitch_0
        0x65 -> :sswitch_0
        0x66 -> :sswitch_0
        0x67 -> :sswitch_0
        0x68 -> :sswitch_0
        0x69 -> :sswitch_0
        0x6a -> :sswitch_0
        0x6b -> :sswitch_0
        0x6c -> :sswitch_0
        0x6d -> :sswitch_0
        0x6e -> :sswitch_0
        0x6f -> :sswitch_0
        0x70 -> :sswitch_0
        0x71 -> :sswitch_0
        0xc8 -> :sswitch_0
        0xd0 -> :sswitch_0
    .end sparse-switch
.end method

.method public static serializeExtraHeaderDataItem(Ljava/io/DataOutputStream;[Lcom/mobipocket/common/library/reader/book/ExtraHeaderDataItem;)V
    .locals 2
    .parameter "dos"
    .parameter "localItems"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 254
    if-eqz p1, :cond_1

    .line 256
    array-length v1, p1

    invoke-virtual {p0, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 257
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 259
    aget-object v1, p1, v0

    invoke-virtual {v1}, Lcom/mobipocket/common/library/reader/book/ExtraHeaderDataItem;->getIdentifier()I

    move-result v1

    invoke-virtual {p0, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 260
    aget-object v1, p1, v0

    invoke-virtual {v1}, Lcom/mobipocket/common/library/reader/book/ExtraHeaderDataItem;->isBinary()Z

    move-result v1

    invoke-virtual {p0, v1}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    .line 261
    aget-object v1, p1, v0

    invoke-virtual {v1}, Lcom/mobipocket/common/library/reader/book/ExtraHeaderDataItem;->isBinary()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 263
    aget-object v1, p1, v0

    invoke-virtual {v1}, Lcom/mobipocket/common/library/reader/book/ExtraHeaderDataItem;->getBinaryValue()[B

    move-result-object v1

    array-length v1, v1

    invoke-virtual {p0, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 264
    aget-object v1, p1, v0

    invoke-virtual {v1}, Lcom/mobipocket/common/library/reader/book/ExtraHeaderDataItem;->getBinaryValue()[B

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/io/DataOutputStream;->write([B)V

    .line 257
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 268
    :cond_0
    aget-object v1, p1, v0

    invoke-virtual {v1}, Lcom/mobipocket/common/library/reader/book/ExtraHeaderDataItem;->getStringValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    goto :goto_1

    .line 272
    .end local v0           #i:I
    :cond_1
    return-void
.end method

.method private static writeIntBE(I[BI)I
    .locals 2
    .parameter "value"
    .parameter "data"
    .parameter "offset"

    .prologue
    .line 795
    shr-int/lit8 v0, p0, 0x18

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    aput-byte v0, p1, p2

    .line 796
    add-int/lit8 v0, p2, 0x1

    shr-int/lit8 v1, p0, 0x10

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    .line 797
    add-int/lit8 v0, p2, 0x2

    shr-int/lit8 v1, p0, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    .line 798
    add-int/lit8 v0, p2, 0x3

    and-int/lit16 v1, p0, 0xff

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    .line 799
    const/4 v0, 0x4

    return v0
.end method


# virtual methods
.method public addExtraHeaderData([Lcom/mobipocket/common/library/reader/book/ExtraHeaderDataItem;Z)V
    .locals 4
    .parameter "toBeAdded"
    .parameter "replace"

    .prologue
    .line 465
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    .line 468
    .local v1, newitems:Ljava/util/Vector;
    iget-object v2, p0, Lcom/mobipocket/common/library/reader/book/ExtraHeaderData;->items:[Lcom/mobipocket/common/library/reader/book/ExtraHeaderDataItem;

    if-eqz v2, :cond_0

    .line 470
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/mobipocket/common/library/reader/book/ExtraHeaderData;->items:[Lcom/mobipocket/common/library/reader/book/ExtraHeaderDataItem;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 472
    iget-object v2, p0, Lcom/mobipocket/common/library/reader/book/ExtraHeaderData;->items:[Lcom/mobipocket/common/library/reader/book/ExtraHeaderDataItem;

    aget-object v2, v2, v0

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/mobipocket/common/library/reader/book/ExtraHeaderData;->addtovector(Ljava/util/Vector;Lcom/mobipocket/common/library/reader/book/ExtraHeaderDataItem;Z)V

    .line 470
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 475
    .end local v0           #i:I
    :cond_0
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_1
    array-length v2, p1

    if-ge v0, v2, :cond_1

    .line 477
    aget-object v2, p1, v0

    invoke-static {v1, v2, p2}, Lcom/mobipocket/common/library/reader/book/ExtraHeaderData;->addtovector(Ljava/util/Vector;Lcom/mobipocket/common/library/reader/book/ExtraHeaderDataItem;Z)V

    .line 475
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 480
    :cond_1
    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v2

    new-array v2, v2, [Lcom/mobipocket/common/library/reader/book/ExtraHeaderDataItem;

    iput-object v2, p0, Lcom/mobipocket/common/library/reader/book/ExtraHeaderData;->items:[Lcom/mobipocket/common/library/reader/book/ExtraHeaderDataItem;

    .line 481
    iget-object v2, p0, Lcom/mobipocket/common/library/reader/book/ExtraHeaderData;->items:[Lcom/mobipocket/common/library/reader/book/ExtraHeaderDataItem;

    invoke-virtual {v1, v2}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

    .line 482
    return-void
.end method

.method public addMetaDataCollection(Lcom/mobipocket/common/library/reader/book/MetaDataCollection;)V
    .locals 8
    .parameter

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 315
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    .line 318
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/book/ExtraHeaderData;->items:[Lcom/mobipocket/common/library/reader/book/ExtraHeaderDataItem;

    if-eqz v1, :cond_0

    move v1, v6

    .line 320
    :goto_0
    iget-object v2, p0, Lcom/mobipocket/common/library/reader/book/ExtraHeaderData;->items:[Lcom/mobipocket/common/library/reader/book/ExtraHeaderDataItem;

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 322
    iget-object v2, p0, Lcom/mobipocket/common/library/reader/book/ExtraHeaderData;->items:[Lcom/mobipocket/common/library/reader/book/ExtraHeaderDataItem;

    aget-object v2, v2, v1

    invoke-static {v0, v2, v6}, Lcom/mobipocket/common/library/reader/book/ExtraHeaderData;->addtovector(Ljava/util/Vector;Lcom/mobipocket/common/library/reader/book/ExtraHeaderDataItem;Z)V

    .line 320
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 328
    :cond_0
    iget-object v1, p1, Lcom/mobipocket/common/library/reader/book/MetaDataCollection;->drm_server_id:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 329
    new-instance v1, Lcom/mobipocket/common/library/reader/book/ExtraHeaderDataItem;

    iget-object v2, p1, Lcom/mobipocket/common/library/reader/book/MetaDataCollection;->drm_server_id:Ljava/lang/String;

    invoke-direct {v1, v2, v5}, Lcom/mobipocket/common/library/reader/book/ExtraHeaderDataItem;-><init>(Ljava/lang/String;I)V

    invoke-static {v0, v1, v5}, Lcom/mobipocket/common/library/reader/book/ExtraHeaderData;->addtovector(Ljava/util/Vector;Lcom/mobipocket/common/library/reader/book/ExtraHeaderDataItem;Z)V

    .line 330
    :cond_1
    iget-object v1, p1, Lcom/mobipocket/common/library/reader/book/MetaDataCollection;->drm_commerce_id:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 331
    new-instance v1, Lcom/mobipocket/common/library/reader/book/ExtraHeaderDataItem;

    iget-object v2, p1, Lcom/mobipocket/common/library/reader/book/MetaDataCollection;->drm_commerce_id:Ljava/lang/String;

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3}, Lcom/mobipocket/common/library/reader/book/ExtraHeaderDataItem;-><init>(Ljava/lang/String;I)V

    invoke-static {v0, v1, v5}, Lcom/mobipocket/common/library/reader/book/ExtraHeaderData;->addtovector(Ljava/util/Vector;Lcom/mobipocket/common/library/reader/book/ExtraHeaderDataItem;Z)V

    .line 332
    :cond_2
    iget-object v1, p1, Lcom/mobipocket/common/library/reader/book/MetaDataCollection;->drm_ebookbase_book_id:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 333
    new-instance v1, Lcom/mobipocket/common/library/reader/book/ExtraHeaderDataItem;

    iget-object v2, p1, Lcom/mobipocket/common/library/reader/book/MetaDataCollection;->drm_ebookbase_book_id:Ljava/lang/String;

    const/4 v3, 0x3

    invoke-direct {v1, v2, v3}, Lcom/mobipocket/common/library/reader/book/ExtraHeaderDataItem;-><init>(Ljava/lang/String;I)V

    invoke-static {v0, v1, v5}, Lcom/mobipocket/common/library/reader/book/ExtraHeaderData;->addtovector(Ljava/util/Vector;Lcom/mobipocket/common/library/reader/book/ExtraHeaderDataItem;Z)V

    .line 334
    :cond_3
    iget-object v1, p1, Lcom/mobipocket/common/library/reader/book/MetaDataCollection;->authors:[Ljava/lang/String;

    if-eqz v1, :cond_5

    move v1, v6

    .line 336
    :goto_1
    iget-object v2, p1, Lcom/mobipocket/common/library/reader/book/MetaDataCollection;->authors:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_5

    .line 339
    new-instance v2, Lcom/mobipocket/common/library/reader/book/ExtraHeaderDataItem;

    iget-object v3, p1, Lcom/mobipocket/common/library/reader/book/MetaDataCollection;->authors:[Ljava/lang/String;

    aget-object v3, v3, v1

    const/16 v4, 0x64

    invoke-direct {v2, v3, v4}, Lcom/mobipocket/common/library/reader/book/ExtraHeaderDataItem;-><init>(Ljava/lang/String;I)V

    if-nez v1, :cond_4

    move v3, v5

    :goto_2
    invoke-static {v0, v2, v3}, Lcom/mobipocket/common/library/reader/book/ExtraHeaderData;->addtovector(Ljava/util/Vector;Lcom/mobipocket/common/library/reader/book/ExtraHeaderDataItem;Z)V

    .line 336
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    move v3, v6

    .line 339
    goto :goto_2

    .line 342
    :cond_5
    iget-object v1, p1, Lcom/mobipocket/common/library/reader/book/MetaDataCollection;->publisher:Ljava/lang/String;

    if-eqz v1, :cond_6

    .line 343
    new-instance v1, Lcom/mobipocket/common/library/reader/book/ExtraHeaderDataItem;

    iget-object v2, p1, Lcom/mobipocket/common/library/reader/book/MetaDataCollection;->publisher:Ljava/lang/String;

    const/16 v3, 0x65

    invoke-direct {v1, v2, v3}, Lcom/mobipocket/common/library/reader/book/ExtraHeaderDataItem;-><init>(Ljava/lang/String;I)V

    invoke-static {v0, v1, v5}, Lcom/mobipocket/common/library/reader/book/ExtraHeaderData;->addtovector(Ljava/util/Vector;Lcom/mobipocket/common/library/reader/book/ExtraHeaderDataItem;Z)V

    .line 344
    :cond_6
    iget-object v1, p1, Lcom/mobipocket/common/library/reader/book/MetaDataCollection;->imprint:Ljava/lang/String;

    if-eqz v1, :cond_7

    .line 345
    new-instance v1, Lcom/mobipocket/common/library/reader/book/ExtraHeaderDataItem;

    iget-object v2, p1, Lcom/mobipocket/common/library/reader/book/MetaDataCollection;->imprint:Ljava/lang/String;

    const/16 v3, 0x66

    invoke-direct {v1, v2, v3}, Lcom/mobipocket/common/library/reader/book/ExtraHeaderDataItem;-><init>(Ljava/lang/String;I)V

    invoke-static {v0, v1, v5}, Lcom/mobipocket/common/library/reader/book/ExtraHeaderData;->addtovector(Ljava/util/Vector;Lcom/mobipocket/common/library/reader/book/ExtraHeaderDataItem;Z)V

    .line 346
    :cond_7
    iget-object v1, p1, Lcom/mobipocket/common/library/reader/book/MetaDataCollection;->ISBN_code:Ljava/lang/String;

    if-eqz v1, :cond_8

    .line 347
    new-instance v1, Lcom/mobipocket/common/library/reader/book/ExtraHeaderDataItem;

    iget-object v2, p1, Lcom/mobipocket/common/library/reader/book/MetaDataCollection;->ISBN_code:Ljava/lang/String;

    const/16 v3, 0x68

    invoke-direct {v1, v2, v3}, Lcom/mobipocket/common/library/reader/book/ExtraHeaderDataItem;-><init>(Ljava/lang/String;I)V

    invoke-static {v0, v1, v5}, Lcom/mobipocket/common/library/reader/book/ExtraHeaderData;->addtovector(Ljava/util/Vector;Lcom/mobipocket/common/library/reader/book/ExtraHeaderDataItem;Z)V

    .line 348
    :cond_8
    iget-object v1, p1, Lcom/mobipocket/common/library/reader/book/MetaDataCollection;->subject:Ljava/lang/String;

    if-eqz v1, :cond_9

    .line 349
    new-instance v1, Lcom/mobipocket/common/library/reader/book/ExtraHeaderDataItem;

    iget-object v2, p1, Lcom/mobipocket/common/library/reader/book/MetaDataCollection;->subject:Ljava/lang/String;

    const/16 v3, 0x69

    invoke-direct {v1, v2, v3}, Lcom/mobipocket/common/library/reader/book/ExtraHeaderDataItem;-><init>(Ljava/lang/String;I)V

    invoke-static {v0, v1, v5}, Lcom/mobipocket/common/library/reader/book/ExtraHeaderData;->addtovector(Ljava/util/Vector;Lcom/mobipocket/common/library/reader/book/ExtraHeaderDataItem;Z)V

    .line 350
    :cond_9
    iget-object v1, p1, Lcom/mobipocket/common/library/reader/book/MetaDataCollection;->subject_code:Ljava/lang/String;

    if-eqz v1, :cond_a

    .line 351
    new-instance v1, Lcom/mobipocket/common/library/reader/book/ExtraHeaderDataItem;

    iget-object v2, p1, Lcom/mobipocket/common/library/reader/book/MetaDataCollection;->subject_code:Ljava/lang/String;

    const/16 v3, 0x6e

    invoke-direct {v1, v2, v3}, Lcom/mobipocket/common/library/reader/book/ExtraHeaderDataItem;-><init>(Ljava/lang/String;I)V

    invoke-static {v0, v1, v5}, Lcom/mobipocket/common/library/reader/book/ExtraHeaderData;->addtovector(Ljava/util/Vector;Lcom/mobipocket/common/library/reader/book/ExtraHeaderDataItem;Z)V

    .line 352
    :cond_a
    iget-object v1, p1, Lcom/mobipocket/common/library/reader/book/MetaDataCollection;->publishing_date:Ljava/lang/String;

    if-eqz v1, :cond_b

    .line 353
    new-instance v1, Lcom/mobipocket/common/library/reader/book/ExtraHeaderDataItem;

    iget-object v2, p1, Lcom/mobipocket/common/library/reader/book/MetaDataCollection;->publishing_date:Ljava/lang/String;

    const/16 v3, 0x6a

    invoke-direct {v1, v2, v3}, Lcom/mobipocket/common/library/reader/book/ExtraHeaderDataItem;-><init>(Ljava/lang/String;I)V

    invoke-static {v0, v1, v5}, Lcom/mobipocket/common/library/reader/book/ExtraHeaderData;->addtovector(Ljava/util/Vector;Lcom/mobipocket/common/library/reader/book/ExtraHeaderDataItem;Z)V

    .line 354
    :cond_b
    iget-object v1, p1, Lcom/mobipocket/common/library/reader/book/MetaDataCollection;->asin:Ljava/lang/String;

    if-eqz v1, :cond_c

    .line 355
    new-instance v1, Lcom/mobipocket/common/library/reader/book/ExtraHeaderDataItem;

    iget-object v2, p1, Lcom/mobipocket/common/library/reader/book/MetaDataCollection;->asin:Ljava/lang/String;

    const/16 v3, 0x71

    invoke-direct {v1, v2, v3}, Lcom/mobipocket/common/library/reader/book/ExtraHeaderDataItem;-><init>(Ljava/lang/String;I)V

    invoke-static {v0, v1, v5}, Lcom/mobipocket/common/library/reader/book/ExtraHeaderData;->addtovector(Ljava/util/Vector;Lcom/mobipocket/common/library/reader/book/ExtraHeaderDataItem;Z)V

    .line 356
    :cond_c
    iget-object v1, p1, Lcom/mobipocket/common/library/reader/book/MetaDataCollection;->title:Ljava/lang/String;

    if-eqz v1, :cond_d

    .line 357
    new-instance v1, Lcom/mobipocket/common/library/reader/book/ExtraHeaderDataItem;

    iget-object v2, p1, Lcom/mobipocket/common/library/reader/book/MetaDataCollection;->title:Ljava/lang/String;

    const/16 v3, 0x63

    invoke-direct {v1, v2, v3}, Lcom/mobipocket/common/library/reader/book/ExtraHeaderDataItem;-><init>(Ljava/lang/String;I)V

    invoke-static {v0, v1, v5}, Lcom/mobipocket/common/library/reader/book/ExtraHeaderData;->addtovector(Ljava/util/Vector;Lcom/mobipocket/common/library/reader/book/ExtraHeaderDataItem;Z)V

    .line 358
    :cond_d
    iget v1, p1, Lcom/mobipocket/common/library/reader/book/MetaDataCollection;->version_number:I

    if-ltz v1, :cond_e

    .line 360
    new-array v1, v7, [B

    .line 361
    iget v2, p1, Lcom/mobipocket/common/library/reader/book/MetaDataCollection;->version_number:I

    invoke-static {v2, v1, v6}, Lcom/mobipocket/common/library/reader/book/ExtraHeaderData;->writeIntBE(I[BI)I

    .line 362
    new-instance v2, Lcom/mobipocket/common/library/reader/book/ExtraHeaderDataItem;

    const/16 v3, 0x72

    invoke-direct {v2, v1, v3}, Lcom/mobipocket/common/library/reader/book/ExtraHeaderDataItem;-><init>([BI)V

    invoke-static {v0, v2, v5}, Lcom/mobipocket/common/library/reader/book/ExtraHeaderData;->addtovector(Ljava/util/Vector;Lcom/mobipocket/common/library/reader/book/ExtraHeaderDataItem;Z)V

    .line 364
    :cond_e
    iget v1, p1, Lcom/mobipocket/common/library/reader/book/MetaDataCollection;->sample:I

    if-ltz v1, :cond_f

    .line 366
    new-array v1, v7, [B

    .line 367
    iget v2, p1, Lcom/mobipocket/common/library/reader/book/MetaDataCollection;->sample:I

    invoke-static {v2, v1, v6}, Lcom/mobipocket/common/library/reader/book/ExtraHeaderData;->writeIntBE(I[BI)I

    .line 368
    new-instance v2, Lcom/mobipocket/common/library/reader/book/ExtraHeaderDataItem;

    const/16 v3, 0x73

    invoke-direct {v2, v1, v3}, Lcom/mobipocket/common/library/reader/book/ExtraHeaderDataItem;-><init>([BI)V

    invoke-static {v0, v2, v5}, Lcom/mobipocket/common/library/reader/book/ExtraHeaderData;->addtovector(Ljava/util/Vector;Lcom/mobipocket/common/library/reader/book/ExtraHeaderDataItem;Z)V

    .line 371
    :cond_f
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v1

    new-array v1, v1, [Lcom/mobipocket/common/library/reader/book/ExtraHeaderDataItem;

    iput-object v1, p0, Lcom/mobipocket/common/library/reader/book/ExtraHeaderData;->items:[Lcom/mobipocket/common/library/reader/book/ExtraHeaderDataItem;

    .line 372
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/book/ExtraHeaderData;->items:[Lcom/mobipocket/common/library/reader/book/ExtraHeaderDataItem;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

    .line 373
    return-void
.end method

.method public addStartReadingLocation(Ljava/lang/String;I)Z
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 492
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/book/ExtraHeaderData;->_Guid:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 494
    const/4 v0, 0x4

    new-array v0, v0, [B

    .line 495
    invoke-static {p2, v0, v4}, Lcom/mobipocket/common/library/reader/book/ExtraHeaderData;->writeIntBE(I[BI)I

    .line 496
    new-array v1, v5, [Lcom/mobipocket/common/library/reader/book/ExtraHeaderDataItem;

    new-instance v2, Lcom/mobipocket/common/library/reader/book/ExtraHeaderDataItem;

    const/16 v3, 0x74

    invoke-direct {v2, v0, v3}, Lcom/mobipocket/common/library/reader/book/ExtraHeaderDataItem;-><init>([BI)V

    aput-object v2, v1, v4

    invoke-virtual {p0, v1, v5}, Lcom/mobipocket/common/library/reader/book/ExtraHeaderData;->addExtraHeaderData([Lcom/mobipocket/common/library/reader/book/ExtraHeaderDataItem;Z)V

    move v0, v5

    .line 501
    :goto_0
    return v0

    :cond_0
    move v0, v4

    goto :goto_0
.end method

.method public getAsMetadataCollection()Lcom/mobipocket/common/library/reader/book/MetaDataCollection;
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/book/ExtraHeaderData;->items:[Lcom/mobipocket/common/library/reader/book/ExtraHeaderDataItem;

    invoke-static {v0}, Lcom/mobipocket/common/library/reader/book/ExtraHeaderData;->constructMetaData([Lcom/mobipocket/common/library/reader/book/ExtraHeaderDataItem;)Lcom/mobipocket/common/library/reader/book/FullMetaDataCollection;

    move-result-object v0

    return-object v0
.end method

.method public getItems()[Lcom/mobipocket/common/library/reader/book/ExtraHeaderDataItem;
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/book/ExtraHeaderData;->items:[Lcom/mobipocket/common/library/reader/book/ExtraHeaderDataItem;

    return-object v0
.end method

.method public loadFromBookHeader(Lcom/mobipocket/common/library/reader/book/MobiFileHeader;[B)V
    .locals 5
    .parameter "mfh"
    .parameter "header"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mobipocket/common/library/reader/book/ExtraHeaderDataException;
        }
    .end annotation

    .prologue
    .line 75
    invoke-static {p1, p2}, Lcom/mobipocket/common/library/reader/book/ExtraHeaderData;->getXHD(Lcom/mobipocket/common/library/reader/book/MobiFileHeader;[B)Lcom/mobipocket/common/library/reader/book/ExtraHeaderData$XhdParameters;

    move-result-object v1

    .line 76
    .local v1, params:Lcom/mobipocket/common/library/reader/book/ExtraHeaderData$XhdParameters;
    iget-object v2, v1, Lcom/mobipocket/common/library/reader/book/ExtraHeaderData$XhdParameters;->mbph:Lcom/mobipocket/common/library/reader/book/MobiFileHeader;

    invoke-virtual {v2}, Lcom/mobipocket/common/library/reader/book/MobiFileHeader;->getGUID()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/mobipocket/common/library/reader/book/ExtraHeaderData;->_Guid:Ljava/lang/String;

    .line 77
    iget v2, v1, Lcom/mobipocket/common/library/reader/book/ExtraHeaderData$XhdParameters;->count:I

    if-lez v2, :cond_0

    .line 79
    iget v2, v1, Lcom/mobipocket/common/library/reader/book/ExtraHeaderData$XhdParameters;->count:I

    new-array v2, v2, [Lcom/mobipocket/common/library/reader/book/ExtraHeaderDataItem;

    iput-object v2, p0, Lcom/mobipocket/common/library/reader/book/ExtraHeaderData;->items:[Lcom/mobipocket/common/library/reader/book/ExtraHeaderDataItem;

    .line 88
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget v2, v1, Lcom/mobipocket/common/library/reader/book/ExtraHeaderData$XhdParameters;->count:I

    if-ge v0, v2, :cond_1

    .line 90
    iget-object v2, v1, Lcom/mobipocket/common/library/reader/book/ExtraHeaderData$XhdParameters;->range:Lcom/mobipocket/common/library/reader/book/ExtraHeaderData$Range;

    iget-object v3, v1, Lcom/mobipocket/common/library/reader/book/ExtraHeaderData$XhdParameters;->range:Lcom/mobipocket/common/library/reader/book/ExtraHeaderData$Range;

    iget v3, v3, Lcom/mobipocket/common/library/reader/book/ExtraHeaderData$Range;->start:I

    invoke-static {p2, v3}, Lcom/mobipocket/common/library/reader/book/ExtraHeaderData;->getNextOffset([BI)I

    move-result v3

    iput v3, v2, Lcom/mobipocket/common/library/reader/book/ExtraHeaderData$Range;->start:I

    .line 91
    iget-object v2, p0, Lcom/mobipocket/common/library/reader/book/ExtraHeaderData;->items:[Lcom/mobipocket/common/library/reader/book/ExtraHeaderDataItem;

    iget-object v3, v1, Lcom/mobipocket/common/library/reader/book/ExtraHeaderData$XhdParameters;->range:Lcom/mobipocket/common/library/reader/book/ExtraHeaderData$Range;

    iget v3, v3, Lcom/mobipocket/common/library/reader/book/ExtraHeaderData$Range;->start:I

    iget v4, v1, Lcom/mobipocket/common/library/reader/book/ExtraHeaderData$XhdParameters;->encoding:I

    invoke-static {p2, v3, v4}, Lcom/mobipocket/common/library/reader/book/ExtraHeaderData;->readItem([BII)Lcom/mobipocket/common/library/reader/book/ExtraHeaderDataItem;

    move-result-object v3

    aput-object v3, v2, v0

    .line 88
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 83
    .end local v0           #i:I
    :cond_0
    const/4 v2, 0x0

    new-array v2, v2, [Lcom/mobipocket/common/library/reader/book/ExtraHeaderDataItem;

    iput-object v2, p0, Lcom/mobipocket/common/library/reader/book/ExtraHeaderData;->items:[Lcom/mobipocket/common/library/reader/book/ExtraHeaderDataItem;

    .line 93
    :cond_1
    return-void
.end method

.method public loadFromBookHeader([B[B)V
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mobipocket/common/library/reader/book/ExtraHeaderDataException;
        }
    .end annotation

    .prologue
    .line 55
    :try_start_0
    new-instance v0, Lcom/mobipocket/common/library/reader/book/MobiFileHeader;

    const/4 v1, 0x1

    invoke-direct {v0, p1, p2, v1}, Lcom/mobipocket/common/library/reader/book/MobiFileHeader;-><init>([B[BZ)V
    :try_end_0
    .catch Lcom/mobipocket/common/library/reader/InvalidBookException; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    invoke-virtual {p0, v0, p2}, Lcom/mobipocket/common/library/reader/book/ExtraHeaderData;->loadFromBookHeader(Lcom/mobipocket/common/library/reader/book/MobiFileHeader;[B)V

    .line 61
    return-void

    .line 58
    :catch_0
    move-exception v0

    new-instance v0, Lcom/mobipocket/common/library/reader/book/ExtraHeaderDataException;

    const-string v1, "Invalid book exception."

    invoke-direct {v0, v1}, Lcom/mobipocket/common/library/reader/book/ExtraHeaderDataException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public writeToBookHeader([B)V
    .locals 7
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mobipocket/common/library/reader/book/ExtraHeaderDataException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 109
    :try_start_0
    new-instance v0, Lcom/mobipocket/common/library/reader/book/MobiFileHeader;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, v1, p1, v2}, Lcom/mobipocket/common/library/reader/book/MobiFileHeader;-><init>([B[BZ)V
    :try_end_0
    .catch Lcom/mobipocket/common/library/reader/InvalidBookException; {:try_start_0 .. :try_end_0} :catch_0

    .line 114
    invoke-static {v0, p1}, Lcom/mobipocket/common/library/reader/book/ExtraHeaderData;->getXHD(Lcom/mobipocket/common/library/reader/book/MobiFileHeader;[B)Lcom/mobipocket/common/library/reader/book/ExtraHeaderData$XhdParameters;

    move-result-object v0

    .line 119
    iget v1, v0, Lcom/mobipocket/common/library/reader/book/ExtraHeaderData$XhdParameters;->encoding:I

    invoke-direct {p0, v1}, Lcom/mobipocket/common/library/reader/book/ExtraHeaderData;->build(I)[B

    move-result-object v1

    .line 120
    if-nez v1, :cond_0

    .line 121
    new-array v1, v6, [B

    .line 124
    :cond_0
    array-length v2, v1

    if-lez v2, :cond_1

    .line 126
    iget-object v2, v0, Lcom/mobipocket/common/library/reader/book/ExtraHeaderData$XhdParameters;->mbph:Lcom/mobipocket/common/library/reader/book/MobiFileHeader;

    iget-object v3, v0, Lcom/mobipocket/common/library/reader/book/ExtraHeaderData$XhdParameters;->mbph:Lcom/mobipocket/common/library/reader/book/MobiFileHeader;

    iget v3, v3, Lcom/mobipocket/common/library/reader/book/MobiFileHeader;->special_features:I

    or-int/lit8 v3, v3, 0x40

    iput v3, v2, Lcom/mobipocket/common/library/reader/book/MobiFileHeader;->special_features:I

    .line 135
    :goto_0
    array-length v2, v1

    iget-object v3, v0, Lcom/mobipocket/common/library/reader/book/ExtraHeaderData$XhdParameters;->range:Lcom/mobipocket/common/library/reader/book/ExtraHeaderData$Range;

    iget v3, v3, Lcom/mobipocket/common/library/reader/book/ExtraHeaderData$Range;->length:I

    if-le v2, v3, :cond_2

    .line 138
    iget-object v2, v0, Lcom/mobipocket/common/library/reader/book/ExtraHeaderData$XhdParameters;->pointed:Lcom/mobipocket/common/library/reader/book/ExtraHeaderData$Range;

    iget v2, v2, Lcom/mobipocket/common/library/reader/book/ExtraHeaderData$Range;->start:I

    iget-object v3, v0, Lcom/mobipocket/common/library/reader/book/ExtraHeaderData$XhdParameters;->pointed:Lcom/mobipocket/common/library/reader/book/ExtraHeaderData$Range;

    iget v3, v3, Lcom/mobipocket/common/library/reader/book/ExtraHeaderData$Range;->length:I

    add-int/2addr v2, v3

    array-length v3, v1

    add-int/2addr v2, v3

    iget-object v3, v0, Lcom/mobipocket/common/library/reader/book/ExtraHeaderData$XhdParameters;->range:Lcom/mobipocket/common/library/reader/book/ExtraHeaderData$Range;

    iget v3, v3, Lcom/mobipocket/common/library/reader/book/ExtraHeaderData$Range;->length:I

    sub-int/2addr v2, v3

    array-length v3, p1

    if-le v2, v3, :cond_2

    .line 140
    new-instance v0, Lcom/mobipocket/common/library/reader/book/ExtraHeaderDataException;

    const-string v1, "master record too small for new metadata"

    invoke-direct {v0, v1}, Lcom/mobipocket/common/library/reader/book/ExtraHeaderDataException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 112
    :catch_0
    move-exception v0

    new-instance v0, Lcom/mobipocket/common/library/reader/book/ExtraHeaderDataException;

    const-string v1, "Invalid Book Header"

    invoke-direct {v0, v1}, Lcom/mobipocket/common/library/reader/book/ExtraHeaderDataException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 130
    :cond_1
    iget-object v2, v0, Lcom/mobipocket/common/library/reader/book/ExtraHeaderData$XhdParameters;->mbph:Lcom/mobipocket/common/library/reader/book/MobiFileHeader;

    iget-object v3, v0, Lcom/mobipocket/common/library/reader/book/ExtraHeaderData$XhdParameters;->mbph:Lcom/mobipocket/common/library/reader/book/MobiFileHeader;

    iget v3, v3, Lcom/mobipocket/common/library/reader/book/MobiFileHeader;->special_features:I

    and-int/lit8 v3, v3, -0x41

    iput v3, v2, Lcom/mobipocket/common/library/reader/book/MobiFileHeader;->special_features:I

    goto :goto_0

    .line 146
    :cond_2
    array-length v2, v1

    iget-object v3, v0, Lcom/mobipocket/common/library/reader/book/ExtraHeaderData$XhdParameters;->range:Lcom/mobipocket/common/library/reader/book/ExtraHeaderData$Range;

    iget v3, v3, Lcom/mobipocket/common/library/reader/book/ExtraHeaderData$Range;->length:I

    if-le v2, v3, :cond_3

    .line 148
    new-instance v2, Lcom/mobipocket/common/library/reader/book/ExtraHeaderData$Range;

    iget-object v3, v0, Lcom/mobipocket/common/library/reader/book/ExtraHeaderData$XhdParameters;->range:Lcom/mobipocket/common/library/reader/book/ExtraHeaderData$Range;

    iget v3, v3, Lcom/mobipocket/common/library/reader/book/ExtraHeaderData$Range;->start:I

    iget-object v4, v0, Lcom/mobipocket/common/library/reader/book/ExtraHeaderData$XhdParameters;->range:Lcom/mobipocket/common/library/reader/book/ExtraHeaderData$Range;

    iget v4, v4, Lcom/mobipocket/common/library/reader/book/ExtraHeaderData$Range;->length:I

    add-int/2addr v3, v4

    array-length v4, v1

    iget-object v5, v0, Lcom/mobipocket/common/library/reader/book/ExtraHeaderData$XhdParameters;->range:Lcom/mobipocket/common/library/reader/book/ExtraHeaderData$Range;

    iget v5, v5, Lcom/mobipocket/common/library/reader/book/ExtraHeaderData$Range;->length:I

    sub-int/2addr v4, v5

    invoke-direct {v2, v3, v4}, Lcom/mobipocket/common/library/reader/book/ExtraHeaderData$Range;-><init>(II)V

    iget-object v3, v0, Lcom/mobipocket/common/library/reader/book/ExtraHeaderData$XhdParameters;->mbph:Lcom/mobipocket/common/library/reader/book/MobiFileHeader;

    invoke-direct {p0, p1, v2, v3}, Lcom/mobipocket/common/library/reader/book/ExtraHeaderData;->open_hole([BLcom/mobipocket/common/library/reader/book/ExtraHeaderData$Range;Lcom/mobipocket/common/library/reader/book/MobiFileHeader;)V

    .line 152
    :cond_3
    iget-object v2, v0, Lcom/mobipocket/common/library/reader/book/ExtraHeaderData$XhdParameters;->mbph:Lcom/mobipocket/common/library/reader/book/MobiFileHeader;

    invoke-virtual {v2, p1, v6}, Lcom/mobipocket/common/library/reader/book/MobiFileHeader;->write([BI)I

    move v2, v6

    .line 155
    :goto_1
    iget-object v3, v0, Lcom/mobipocket/common/library/reader/book/ExtraHeaderData$XhdParameters;->range:Lcom/mobipocket/common/library/reader/book/ExtraHeaderData$Range;

    iget v3, v3, Lcom/mobipocket/common/library/reader/book/ExtraHeaderData$Range;->length:I

    if-ge v2, v3, :cond_4

    .line 157
    iget-object v3, v0, Lcom/mobipocket/common/library/reader/book/ExtraHeaderData$XhdParameters;->range:Lcom/mobipocket/common/library/reader/book/ExtraHeaderData$Range;

    iget v3, v3, Lcom/mobipocket/common/library/reader/book/ExtraHeaderData$Range;->start:I

    add-int/2addr v3, v2

    aput-byte v6, p1, v3

    .line 155
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 159
    :cond_4
    iget-object v0, v0, Lcom/mobipocket/common/library/reader/book/ExtraHeaderData$XhdParameters;->range:Lcom/mobipocket/common/library/reader/book/ExtraHeaderData$Range;

    iget v0, v0, Lcom/mobipocket/common/library/reader/book/ExtraHeaderData$Range;->start:I

    array-length v2, v1

    invoke-static {v1, v6, p1, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 160
    return-void
.end method
