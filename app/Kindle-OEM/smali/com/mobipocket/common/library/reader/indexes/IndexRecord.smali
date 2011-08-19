.class Lcom/mobipocket/common/library/reader/indexes/IndexRecord;
.super Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;
.source "IndexRecord.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mobipocket/common/library/reader/indexes/IndexRecord$OffsetLength;
    }
.end annotation


# static fields
.field static final IDX_ENTRY_STRING_OFFSET:I = 0x1

.field static final IDX_STRENT_STRING_OFFSET:I = 0x2

.field protected static IDX_TYPE_LIGTAB:I = 0x0

.field protected static IDX_TYPE_ORDTAB:I = 0x0

.field protected static IDX_TYPE_REFTAB:I = 0x0

.field protected static REC_TYPE_INDEX:I = 0x0

.field protected static final SIZE_OF_INDEX_HEADER_VERSION_0:I = 0x38

.field protected static final SIZE_OF_INDEX_HEADER_VERSION_0_WITHOUT_MASTER:I = 0x1c

.field protected static final SIZE_OF_INDEX_HEADER_VERSION_1:I = 0xa4

.field protected static final SIZE_OF_INDEX_HEADER_VERSION_2:I = 0xc0


# instance fields
.field protected ent_tab:I

.field hsize:I

.field protected nb_ent:I

.field protected subsystem:I

.field type:I

.field protected version:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const v0, 0x494e4458

    sput v0, Lcom/mobipocket/common/library/reader/indexes/IndexRecord;->REC_TYPE_INDEX:I

    .line 20
    const v0, 0x49445854

    sput v0, Lcom/mobipocket/common/library/reader/indexes/IndexRecord;->IDX_TYPE_REFTAB:I

    .line 21
    const v0, 0x4c494754

    sput v0, Lcom/mobipocket/common/library/reader/indexes/IndexRecord;->IDX_TYPE_LIGTAB:I

    .line 22
    const v0, 0x4f524454

    sput v0, Lcom/mobipocket/common/library/reader/indexes/IndexRecord;->IDX_TYPE_ORDTAB:I

    return-void
.end method

.method constructor <init>([B)V
    .locals 1
    .parameter "record"

    .prologue
    .line 110
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;-><init>([BZ)V

    .line 111
    return-void
.end method

.method private final compare([CIILcom/mobipocket/common/library/reader/indexes/MasterIndexRecord;)I
    .locals 2
    .parameter "src"
    .parameter "index"
    .parameter "dataLength"
    .parameter "master"

    .prologue
    .line 263
    invoke-direct {p0, p2, p3, p4}, Lcom/mobipocket/common/library/reader/indexes/IndexRecord;->getIndexEncodedString(IILcom/mobipocket/common/library/reader/indexes/MasterIndexRecord;)[C

    move-result-object v0

    .line 265
    .local v0, other:[C
    invoke-virtual {p4, p1, v0}, Lcom/mobipocket/common/library/reader/indexes/MasterIndexRecord;->compare([C[C)I

    move-result v1

    .line 268
    .local v1, result:I
    return v1
.end method

.method private final convertFromEncoding([BLcom/mobipocket/common/library/reader/indexes/MasterIndexRecord;)Ljava/lang/String;
    .locals 3
    .parameter "data"
    .parameter "master"

    .prologue
    .line 349
    const/4 v0, 0x0

    array-length v1, p1

    iget v2, p2, Lcom/mobipocket/common/library/reader/indexes/MasterIndexRecord;->encoding:I

    invoke-static {p1, v0, v1, v2}, Lcom/mobipocket/common/parser/UnicodeUtils;->stringFromEncoding([BIII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getFastEntryRecordIndex(I)I
    .locals 3
    .parameter "entryIndex"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    .prologue
    .line 416
    iget v1, p0, Lcom/mobipocket/common/library/reader/indexes/IndexRecord;->ent_tab:I

    add-int/lit8 v1, v1, 0x4

    shl-int/lit8 v2, p1, 0x1

    add-int v0, v1, v2

    .line 417
    .local v0, tableIndex:I
    invoke-virtual {p0, v0}, Lcom/mobipocket/common/library/reader/indexes/IndexRecord;->setPosition(I)V

    .line 418
    invoke-virtual {p0}, Lcom/mobipocket/common/library/reader/indexes/IndexRecord;->readShort()S

    move-result v1

    const v2, 0xffff

    and-int/2addr v1, v2

    return v1
.end method

.method private getIndexEncodedString(IILcom/mobipocket/common/library/reader/indexes/MasterIndexRecord;)[C
    .locals 1
    .parameter "beginIndex"
    .parameter "length"
    .parameter "master"

    .prologue
    .line 396
    invoke-virtual {p0}, Lcom/mobipocket/common/library/reader/indexes/IndexRecord;->getData()[B

    move-result-object v0

    invoke-virtual {p3, v0, p1, p2}, Lcom/mobipocket/common/library/reader/indexes/MasterIndexRecord;->getIndexEncodedString([BII)[C

    move-result-object v0

    return-object v0
.end method

.method private final getOffsetLength(II)Lcom/mobipocket/common/library/reader/indexes/IndexRecord$OffsetLength;
    .locals 4
    .parameter "entryIndex"
    .parameter "dataType"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    .prologue
    .line 284
    invoke-direct {p0, p1}, Lcom/mobipocket/common/library/reader/indexes/IndexRecord;->getFastEntryRecordIndex(I)I

    move-result v0

    .line 286
    .local v0, currentIndex:I
    invoke-virtual {p0, v0}, Lcom/mobipocket/common/library/reader/indexes/IndexRecord;->setPosition(I)V

    .line 287
    const/4 v2, 0x3

    if-ne p2, v2, :cond_0

    .line 288
    invoke-virtual {p0}, Lcom/mobipocket/common/library/reader/indexes/IndexRecord;->readShort()S

    move-result v2

    const v3, 0xffff

    and-int v1, v2, v3

    .line 289
    .local v1, length:I
    add-int/lit8 v0, v0, 0x2

    .line 297
    :goto_0
    new-instance v2, Lcom/mobipocket/common/library/reader/indexes/IndexRecord$OffsetLength;

    invoke-direct {v2, p0, v0, v1}, Lcom/mobipocket/common/library/reader/indexes/IndexRecord$OffsetLength;-><init>(Lcom/mobipocket/common/library/reader/indexes/IndexRecord;II)V

    return-object v2

    .line 293
    .end local v1           #length:I
    :cond_0
    invoke-virtual {p0}, Lcom/mobipocket/common/library/reader/indexes/IndexRecord;->readByte()B

    move-result v2

    and-int/lit16 v1, v2, 0xff

    .line 294
    .restart local v1       #length:I
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private getString(IILcom/mobipocket/common/library/reader/indexes/MasterIndexRecord;)Ljava/lang/String;
    .locals 3
    .parameter "beginIndex"
    .parameter "length"
    .parameter "master"

    .prologue
    .line 372
    iget v1, p3, Lcom/mobipocket/common/library/reader/indexes/MasterIndexRecord;->lig_tab_size:I

    if-lez v1, :cond_0

    .line 375
    invoke-virtual {p0}, Lcom/mobipocket/common/library/reader/indexes/IndexRecord;->getData()[B

    move-result-object v1

    invoke-virtual {p3, v1, p1, p2}, Lcom/mobipocket/common/library/reader/indexes/MasterIndexRecord;->convertFromIndexEncoding([BII)[B

    move-result-object v0

    .line 378
    .local v0, data:[B
    invoke-direct {p0, v0, p3}, Lcom/mobipocket/common/library/reader/indexes/IndexRecord;->convertFromEncoding([BLcom/mobipocket/common/library/reader/indexes/MasterIndexRecord;)Ljava/lang/String;

    move-result-object v1

    .line 390
    .end local v0           #data:[B
    :goto_0
    return-object v1

    .line 380
    :cond_0
    iget-boolean v1, p3, Lcom/mobipocket/common/library/reader/indexes/MasterIndexRecord;->unicode_collating:Z

    if-eqz v1, :cond_1

    .line 381
    invoke-virtual {p0}, Lcom/mobipocket/common/library/reader/indexes/IndexRecord;->getData()[B

    move-result-object v1

    invoke-virtual {p3, v1, p1, p2}, Lcom/mobipocket/common/library/reader/indexes/MasterIndexRecord;->convertFromUnicodeIndexEncoding([BII)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 387
    :cond_1
    new-array v0, p2, [B

    .line 388
    .restart local v0       #data:[B
    invoke-virtual {p0}, Lcom/mobipocket/common/library/reader/indexes/IndexRecord;->getData()[B

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, p1, v0, v2, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 390
    invoke-direct {p0, v0, p3}, Lcom/mobipocket/common/library/reader/indexes/IndexRecord;->convertFromEncoding([BLcom/mobipocket/common/library/reader/indexes/MasterIndexRecord;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method


# virtual methods
.method public final compareWithEntry([CILcom/mobipocket/common/library/reader/indexes/MasterIndexRecord;)I
    .locals 3
    .parameter "src"
    .parameter "entryIndex"
    .parameter "master"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    .prologue
    .line 254
    iget v1, p3, Lcom/mobipocket/common/library/reader/indexes/MasterIndexRecord;->type:I

    invoke-direct {p0, p2, v1}, Lcom/mobipocket/common/library/reader/indexes/IndexRecord;->getOffsetLength(II)Lcom/mobipocket/common/library/reader/indexes/IndexRecord$OffsetLength;

    move-result-object v0

    .line 255
    .local v0, info:Lcom/mobipocket/common/library/reader/indexes/IndexRecord$OffsetLength;
    iget v1, v0, Lcom/mobipocket/common/library/reader/indexes/IndexRecord$OffsetLength;->offset:I

    iget v2, v0, Lcom/mobipocket/common/library/reader/indexes/IndexRecord$OffsetLength;->length:I

    invoke-direct {p0, p1, v1, v2, p3}, Lcom/mobipocket/common/library/reader/indexes/IndexRecord;->compare([CIILcom/mobipocket/common/library/reader/indexes/MasterIndexRecord;)I

    move-result v1

    return v1
.end method

.method find([CLcom/mobipocket/common/library/reader/indexes/MasterIndexRecord;)I
    .locals 8
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 193
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/indexes/IndexRecord;->in:[B

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/mobipocket/common/library/reader/indexes/IndexRecord;->nb_ent:I

    if-gtz v0, :cond_2

    .line 195
    :cond_0
    const/4 v0, -0x1

    .line 240
    :cond_1
    :goto_0
    return v0

    .line 201
    :cond_2
    iget v0, p0, Lcom/mobipocket/common/library/reader/indexes/IndexRecord;->nb_ent:I

    sub-int/2addr v0, v6

    .line 202
    add-int v1, v5, v0

    shr-int/lit8 v1, v1, 0x1

    move v2, v5

    move v3, v5

    move v7, v1

    move v1, v0

    move v0, v7

    .line 205
    :goto_1
    if-nez v3, :cond_1

    .line 207
    invoke-virtual {p0, p1, v0, p2}, Lcom/mobipocket/common/library/reader/indexes/IndexRecord;->compareWithEntry([CILcom/mobipocket/common/library/reader/indexes/MasterIndexRecord;)I

    move-result v4

    .line 208
    if-nez v4, :cond_3

    move v3, v6

    .line 209
    goto :goto_1

    .line 212
    :cond_3
    if-gez v4, :cond_5

    move v1, v2

    .line 218
    :goto_2
    add-int v2, v1, v0

    shr-int/lit8 v2, v2, 0x1

    .line 220
    if-eq v2, v1, :cond_4

    if-ne v2, v0, :cond_7

    .line 221
    :cond_4
    if-nez v1, :cond_6

    .line 224
    invoke-virtual {p0, p1, v1, p2}, Lcom/mobipocket/common/library/reader/indexes/IndexRecord;->compareWithEntry([CILcom/mobipocket/common/library/reader/indexes/MasterIndexRecord;)I

    move-result v1

    .line 225
    if-gtz v1, :cond_1

    move v0, v5

    .line 226
    goto :goto_0

    :cond_5
    move v7, v1

    move v1, v0

    move v0, v7

    .line 216
    goto :goto_2

    .line 229
    :cond_6
    iget v1, p0, Lcom/mobipocket/common/library/reader/indexes/IndexRecord;->nb_ent:I

    sub-int/2addr v1, v6

    if-ne v0, v1, :cond_1

    .line 231
    invoke-virtual {p0, p1, v0, p2}, Lcom/mobipocket/common/library/reader/indexes/IndexRecord;->compareWithEntry([CILcom/mobipocket/common/library/reader/indexes/MasterIndexRecord;)I

    move-result v1

    .line 232
    if-lez v1, :cond_1

    .line 233
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_7
    move v7, v2

    move v2, v1

    move v1, v0

    move v0, v7

    goto :goto_1
.end method

.method getEndIdentifierEntryDataIndex(I)I
    .locals 4
    .parameter "entryIndex"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    .prologue
    .line 307
    iget v2, p0, Lcom/mobipocket/common/library/reader/indexes/IndexRecord;->type:I

    invoke-direct {p0, p1, v2}, Lcom/mobipocket/common/library/reader/indexes/IndexRecord;->getOffsetLength(II)Lcom/mobipocket/common/library/reader/indexes/IndexRecord$OffsetLength;

    move-result-object v1

    .line 308
    .local v1, info:Lcom/mobipocket/common/library/reader/indexes/IndexRecord$OffsetLength;
    iget v2, v1, Lcom/mobipocket/common/library/reader/indexes/IndexRecord$OffsetLength;->offset:I

    iget v3, v1, Lcom/mobipocket/common/library/reader/indexes/IndexRecord$OffsetLength;->length:I

    add-int v0, v2, v3

    .line 310
    .local v0, currentIndex:I
    return v0
.end method

.method getEntryString(ILcom/mobipocket/common/library/reader/indexes/MasterIndexRecord;)[B
    .locals 6
    .parameter "entryIndex"
    .parameter "master"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    .prologue
    .line 336
    iget v4, p2, Lcom/mobipocket/common/library/reader/indexes/MasterIndexRecord;->type:I

    invoke-direct {p0, p1, v4}, Lcom/mobipocket/common/library/reader/indexes/IndexRecord;->getOffsetLength(II)Lcom/mobipocket/common/library/reader/indexes/IndexRecord$OffsetLength;

    move-result-object v2

    .line 337
    .local v2, info:Lcom/mobipocket/common/library/reader/indexes/IndexRecord$OffsetLength;
    iget v0, v2, Lcom/mobipocket/common/library/reader/indexes/IndexRecord$OffsetLength;->offset:I

    .line 338
    .local v0, beginIndex:I
    iget v3, v2, Lcom/mobipocket/common/library/reader/indexes/IndexRecord$OffsetLength;->length:I

    .line 340
    .local v3, length:I
    new-array v1, v3, [B

    .line 341
    .local v1, data:[B
    invoke-virtual {p0}, Lcom/mobipocket/common/library/reader/indexes/IndexRecord;->getData()[B

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v4, v0, v1, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 343
    return-object v1
.end method

.method getEntryText(ILcom/mobipocket/common/library/reader/indexes/MasterIndexRecord;)Ljava/lang/String;
    .locals 3
    .parameter "entryIndex"
    .parameter "master"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    .prologue
    .line 321
    iget v1, p2, Lcom/mobipocket/common/library/reader/indexes/MasterIndexRecord;->type:I

    invoke-direct {p0, p1, v1}, Lcom/mobipocket/common/library/reader/indexes/IndexRecord;->getOffsetLength(II)Lcom/mobipocket/common/library/reader/indexes/IndexRecord$OffsetLength;

    move-result-object v0

    .line 322
    .local v0, info:Lcom/mobipocket/common/library/reader/indexes/IndexRecord$OffsetLength;
    iget v1, v0, Lcom/mobipocket/common/library/reader/indexes/IndexRecord$OffsetLength;->offset:I

    iget v2, v0, Lcom/mobipocket/common/library/reader/indexes/IndexRecord$OffsetLength;->length:I

    invoke-direct {p0, v1, v2, p2}, Lcom/mobipocket/common/library/reader/indexes/IndexRecord;->getString(IILcom/mobipocket/common/library/reader/indexes/MasterIndexRecord;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method getNBEntries()I
    .locals 1

    .prologue
    .line 179
    iget v0, p0, Lcom/mobipocket/common/library/reader/indexes/IndexRecord;->nb_ent:I

    return v0
.end method

.method protected init()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 121
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/indexes/IndexRecord;->in:[B

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mobipocket/common/library/reader/indexes/IndexRecord;->in:[B

    array-length v0, v0

    const/16 v1, 0x8

    if-ge v0, v1, :cond_1

    :cond_0
    move v0, v2

    .line 154
    :goto_0
    return v0

    .line 125
    :cond_1
    invoke-virtual {p0, v2}, Lcom/mobipocket/common/library/reader/indexes/IndexRecord;->setPosition(I)V

    .line 127
    :try_start_0
    invoke-virtual {p0}, Lcom/mobipocket/common/library/reader/indexes/IndexRecord;->readInt()I

    move-result v0

    sget v1, Lcom/mobipocket/common/library/reader/indexes/IndexRecord;->REC_TYPE_INDEX:I

    if-eq v0, v1, :cond_2

    move v0, v2

    .line 129
    goto :goto_0

    .line 131
    :cond_2
    invoke-virtual {p0}, Lcom/mobipocket/common/library/reader/indexes/IndexRecord;->readInt()I

    move-result v0

    iput v0, p0, Lcom/mobipocket/common/library/reader/indexes/IndexRecord;->hsize:I
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_2

    .line 134
    :goto_1
    :try_start_1
    invoke-virtual {p0}, Lcom/mobipocket/common/library/reader/indexes/IndexRecord;->readHeaderIFV0()V
    :try_end_1
    .catch Ljava/io/EOFException; {:try_start_1 .. :try_end_1} :catch_1

    .line 141
    :goto_2
    iget v0, p0, Lcom/mobipocket/common/library/reader/indexes/IndexRecord;->ent_tab:I

    invoke-virtual {p0, v0}, Lcom/mobipocket/common/library/reader/indexes/IndexRecord;->setPosition(I)V

    .line 146
    :try_start_2
    invoke-virtual {p0}, Lcom/mobipocket/common/library/reader/indexes/IndexRecord;->readInt()I

    move-result v0

    sget v1, Lcom/mobipocket/common/library/reader/indexes/IndexRecord;->IDX_TYPE_REFTAB:I
    :try_end_2
    .catch Ljava/io/EOFException; {:try_start_2 .. :try_end_2} :catch_0

    if-eq v0, v1, :cond_3

    move v0, v2

    .line 148
    goto :goto_0

    .line 152
    :catch_0
    move-exception v0

    move v0, v2

    goto :goto_0

    .line 154
    :cond_3
    const/4 v0, 0x1

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_2

    :catch_2
    move-exception v0

    goto :goto_1
.end method

.method protected readHeaderIFV0()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    .prologue
    .line 162
    invoke-virtual {p0}, Lcom/mobipocket/common/library/reader/indexes/IndexRecord;->readInt()I

    move-result v0

    iput v0, p0, Lcom/mobipocket/common/library/reader/indexes/IndexRecord;->type:I

    .line 163
    invoke-virtual {p0}, Lcom/mobipocket/common/library/reader/indexes/IndexRecord;->readInt()I

    move-result v0

    iput v0, p0, Lcom/mobipocket/common/library/reader/indexes/IndexRecord;->subsystem:I

    .line 164
    invoke-virtual {p0}, Lcom/mobipocket/common/library/reader/indexes/IndexRecord;->readInt()I

    move-result v0

    iput v0, p0, Lcom/mobipocket/common/library/reader/indexes/IndexRecord;->version:I

    .line 165
    invoke-virtual {p0}, Lcom/mobipocket/common/library/reader/indexes/IndexRecord;->readInt()I

    move-result v0

    iput v0, p0, Lcom/mobipocket/common/library/reader/indexes/IndexRecord;->ent_tab:I

    .line 166
    invoke-virtual {p0}, Lcom/mobipocket/common/library/reader/indexes/IndexRecord;->readInt()I

    move-result v0

    iput v0, p0, Lcom/mobipocket/common/library/reader/indexes/IndexRecord;->nb_ent:I

    .line 168
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "type:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mobipocket/common/library/reader/indexes/IndexRecord;->type:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "; subsystem:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mobipocket/common/library/reader/indexes/IndexRecord;->subsystem:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "; version:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mobipocket/common/library/reader/indexes/IndexRecord;->version:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "; ent_tab:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mobipocket/common/library/reader/indexes/IndexRecord;->ent_tab:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "; nb_ent:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mobipocket/common/library/reader/indexes/IndexRecord;->nb_ent:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 170
    return-void
.end method
