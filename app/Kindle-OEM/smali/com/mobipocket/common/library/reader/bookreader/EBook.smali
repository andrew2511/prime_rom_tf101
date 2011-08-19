.class public Lcom/mobipocket/common/library/reader/bookreader/EBook;
.super Ljava/lang/Object;
.source "EBook.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mobipocket/common/library/reader/bookreader/EBook$1;,
        Lcom/mobipocket/common/library/reader/bookreader/EBook$ReadPosInfoItem;,
        Lcom/mobipocket/common/library/reader/bookreader/EBook$SBuffer;
    }
.end annotation


# static fields
.field private static final COUNT_BITS:I = 0x3

.field private static final DOCSTD_SECURITY_MARGIN:I = 0x10

.field private static final MIN_AVERAGE_CHARACTERS_PER_PAGE:I = 0x14

.field private static final MIN_MAX_CHARACTERS_PER_PAGE:I = 0x64


# instance fields
.field private averageCharPerPage:I

.field private final book:Lcom/mobipocket/common/filesystem/ReadPDB;

.field private currentRecord:I

.field public final fileHeader:Lcom/mobipocket/common/library/reader/book/MobiFileHeaderSecure;

.field private huffDicDecoder:Lcom/mobipocket/common/library/reader/bookreader/HuffDicDecoder;

.field private huffDicDirectAccessTable:Lcom/mobipocket/common/library/reader/bookreader/HuffDicDirectAccessTable;

.field private final identifier:Ljava/lang/String;

.field private lastSBuffer:Lcom/mobipocket/common/library/reader/bookreader/EBook$SBuffer;

.field private final nbMaxTextRecord:I

.field private secondLastSBuffer:Lcom/mobipocket/common/library/reader/bookreader/EBook$SBuffer;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/mobipocket/common/filesystem/PDBFactory;Lcom/amazon/system/security/Security;)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mobipocket/common/library/reader/InvalidBookException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 222
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 141
    const/4 v0, -0x1

    iput v0, p0, Lcom/mobipocket/common/library/reader/bookreader/EBook;->averageCharPerPage:I

    .line 142
    iput-object v1, p0, Lcom/mobipocket/common/library/reader/bookreader/EBook;->lastSBuffer:Lcom/mobipocket/common/library/reader/bookreader/EBook$SBuffer;

    .line 144
    iput-object v1, p0, Lcom/mobipocket/common/library/reader/bookreader/EBook;->secondLastSBuffer:Lcom/mobipocket/common/library/reader/bookreader/EBook$SBuffer;

    .line 224
    :try_start_0
    iput-object p1, p0, Lcom/mobipocket/common/library/reader/bookreader/EBook;->identifier:Ljava/lang/String;

    .line 225
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/bookreader/EBook;->identifier:Ljava/lang/String;

    invoke-interface {p2, v0}, Lcom/mobipocket/common/filesystem/PDBFactory;->getReadPDB(Ljava/lang/String;)Lcom/mobipocket/common/filesystem/ReadPDB;

    move-result-object v0

    iput-object v0, p0, Lcom/mobipocket/common/library/reader/bookreader/EBook;->book:Lcom/mobipocket/common/filesystem/ReadPDB;

    .line 226
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/bookreader/EBook;->book:Lcom/mobipocket/common/filesystem/ReadPDB;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/mobipocket/common/filesystem/ReadPDB;->getRecord(I)[B

    move-result-object v0

    .line 227
    new-instance v1, Lcom/mobipocket/common/library/reader/book/MobiFileHeaderSecure;

    iget-object v2, p0, Lcom/mobipocket/common/library/reader/bookreader/EBook;->book:Lcom/mobipocket/common/filesystem/ReadPDB;

    invoke-interface {v2}, Lcom/mobipocket/common/filesystem/ReadPDB;->getHeader()[B

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v0, v3}, Lcom/mobipocket/common/library/reader/book/MobiFileHeaderSecure;-><init>([B[BZ)V

    iput-object v1, p0, Lcom/mobipocket/common/library/reader/bookreader/EBook;->fileHeader:Lcom/mobipocket/common/library/reader/book/MobiFileHeaderSecure;

    .line 228
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/bookreader/EBook;->fileHeader:Lcom/mobipocket/common/library/reader/book/MobiFileHeaderSecure;

    iget-object v2, p0, Lcom/mobipocket/common/library/reader/bookreader/EBook;->identifier:Ljava/lang/String;

    invoke-virtual {v1, v0, p3, v2}, Lcom/mobipocket/common/library/reader/book/MobiFileHeaderSecure;->isAccepted([BLcom/amazon/system/security/Security;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 230
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/bookreader/EBook;->identifier:Ljava/lang/String;

    invoke-interface {p2, v0}, Lcom/mobipocket/common/filesystem/PDBFactory;->getBookSettings(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/mobipocket/common/filesystem/PDBFactory;->deletePDB(Ljava/lang/String;)Z

    .line 231
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/bookreader/EBook;->identifier:Ljava/lang/String;

    invoke-interface {p2, v0}, Lcom/mobipocket/common/filesystem/PDBFactory;->deletePDB(Ljava/lang/String;)Z

    .line 232
    new-instance v0, Lcom/mobipocket/common/library/reader/InvalidBookException;

    sget-object v1, Lcom/mobipocket/common/library/reader/InvalidBookException;->EXPIRED:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/mobipocket/common/library/reader/InvalidBookException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Lcom/mobipocket/common/library/reader/InvalidBookException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 239
    :catch_0
    move-exception v0

    .line 241
    invoke-virtual {p0}, Lcom/mobipocket/common/library/reader/bookreader/EBook;->closeBook()V

    .line 242
    throw v0

    .line 236
    :cond_0
    const/4 v0, 0x1

    :try_start_1
    iput v0, p0, Lcom/mobipocket/common/library/reader/bookreader/EBook;->currentRecord:I

    .line 237
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/bookreader/EBook;->fileHeader:Lcom/mobipocket/common/library/reader/book/MobiFileHeaderSecure;

    iget v0, v0, Lcom/mobipocket/common/library/reader/book/MobiFileHeaderSecure;->wNumRecs:I

    iput v0, p0, Lcom/mobipocket/common/library/reader/bookreader/EBook;->nbMaxTextRecord:I

    .line 238
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "nbMaxTextRecord :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mobipocket/common/library/reader/bookreader/EBook;->nbMaxTextRecord:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Lcom/mobipocket/common/library/reader/InvalidBookException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 248
    return-void

    .line 245
    :catch_1
    move-exception v0

    invoke-virtual {p0}, Lcom/mobipocket/common/library/reader/bookreader/EBook;->closeBook()V

    .line 246
    new-instance v0, Lcom/mobipocket/common/library/reader/InvalidBookException;

    sget-object v1, Lcom/mobipocket/common/library/reader/InvalidBookException;->CORRUPTED:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/mobipocket/common/library/reader/InvalidBookException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static docstd_uncompress([B[BI)I
    .locals 10
    .parameter "input"
    .parameter "out"
    .parameter "len"

    .prologue
    .line 164
    const/4 v5, 0x0

    .line 165
    .local v5, rpos:I
    const/4 v7, 0x0

    .local v7, spos:I
    move v8, v7

    .end local v7           #spos:I
    .local v8, spos:I
    move v6, v5

    .line 167
    .end local v5           #rpos:I
    .local v6, rpos:I
    :goto_0
    if-ge v6, p2, :cond_3

    .line 173
    add-int/lit8 v5, v6, 0x1

    .end local v6           #rpos:I
    .restart local v5       #rpos:I
    aget-byte v9, p0, v6

    and-int/lit16 v0, v9, 0xff

    .line 178
    .local v0, c:I
    if-lez v0, :cond_0

    const/16 v9, 0x9

    if-ge v0, v9, :cond_0

    move v1, v0

    .end local v0           #c:I
    .local v1, c:I
    move v6, v5

    .line 180
    .end local v5           #rpos:I
    .restart local v6       #rpos:I
    :goto_1
    add-int/lit8 v0, v1, -0x1

    .end local v1           #c:I
    .restart local v0       #c:I
    if-eqz v1, :cond_5

    add-int/lit8 v7, v8, 0x1

    .end local v8           #spos:I
    .restart local v7       #spos:I
    add-int/lit8 v5, v6, 0x1

    .end local v6           #rpos:I
    .restart local v5       #rpos:I
    aget-byte v9, p0, v6

    aput-byte v9, p1, v8

    move v1, v0

    .end local v0           #c:I
    .restart local v1       #c:I
    move v8, v7

    .end local v7           #spos:I
    .restart local v8       #spos:I
    move v6, v5

    .end local v5           #rpos:I
    .restart local v6       #rpos:I
    goto :goto_1

    .line 183
    .end local v1           #c:I
    .end local v6           #rpos:I
    .restart local v0       #c:I
    .restart local v5       #rpos:I
    :cond_0
    const/16 v9, 0x80

    if-ge v0, v9, :cond_1

    .line 185
    add-int/lit8 v7, v8, 0x1

    .end local v8           #spos:I
    .restart local v7       #spos:I
    int-to-byte v9, v0

    aput-byte v9, p1, v8

    :goto_2
    move v8, v7

    .end local v7           #spos:I
    .restart local v8       #spos:I
    move v6, v5

    .line 208
    .end local v5           #rpos:I
    .restart local v6       #rpos:I
    goto :goto_0

    .line 188
    .end local v6           #rpos:I
    .restart local v5       #rpos:I
    :cond_1
    const/16 v9, 0xc0

    if-lt v0, v9, :cond_2

    .line 190
    add-int/lit8 v7, v8, 0x1

    .end local v8           #spos:I
    .restart local v7       #spos:I
    const/16 v9, 0x20

    aput-byte v9, p1, v8

    .line 191
    add-int/lit8 v8, v7, 0x1

    .end local v7           #spos:I
    .restart local v8       #spos:I
    xor-int/lit16 v9, v0, 0x80

    int-to-byte v9, v9

    aput-byte v9, p1, v7

    move v7, v8

    .end local v8           #spos:I
    .restart local v7       #spos:I
    goto :goto_2

    .line 197
    .end local v7           #spos:I
    .restart local v8       #spos:I
    :cond_2
    shl-int/lit8 v0, v0, 0x8

    .line 198
    add-int/lit8 v6, v5, 0x1

    .end local v5           #rpos:I
    .restart local v6       #rpos:I
    aget-byte v9, p0, v5

    and-int/lit16 v9, v9, 0xff

    add-int/2addr v0, v9

    .line 199
    and-int/lit16 v9, v0, 0x3fff

    shr-int/lit8 v2, v9, 0x3

    .line 200
    .local v2, m:I
    and-int/lit8 v3, v0, 0x7

    .line 201
    .local v3, n:I
    add-int/lit8 v3, v3, 0x3

    move v4, v3

    .end local v3           #n:I
    .local v4, n:I
    move v7, v8

    .line 202
    .end local v8           #spos:I
    .restart local v7       #spos:I
    :goto_3
    add-int/lit8 v3, v4, -0x1

    .end local v4           #n:I
    .restart local v3       #n:I
    if-eqz v4, :cond_4

    .line 204
    sub-int v9, v7, v2

    aget-byte v9, p1, v9

    aput-byte v9, p1, v7

    .line 205
    add-int/lit8 v7, v7, 0x1

    move v4, v3

    .end local v3           #n:I
    .restart local v4       #n:I
    goto :goto_3

    .line 209
    .end local v0           #c:I
    .end local v2           #m:I
    .end local v4           #n:I
    .end local v7           #spos:I
    .restart local v8       #spos:I
    :cond_3
    return v8

    .end local v8           #spos:I
    .restart local v0       #c:I
    .restart local v2       #m:I
    .restart local v3       #n:I
    .restart local v7       #spos:I
    :cond_4
    move v5, v6

    .end local v6           #rpos:I
    .restart local v5       #rpos:I
    goto :goto_2

    .end local v2           #m:I
    .end local v3           #n:I
    .end local v5           #rpos:I
    .end local v7           #spos:I
    .restart local v6       #rpos:I
    .restart local v8       #spos:I
    :cond_5
    move v7, v8

    .end local v8           #spos:I
    .restart local v7       #spos:I
    move v5, v6

    .end local v6           #rpos:I
    .restart local v5       #rpos:I
    goto :goto_2
.end method

.method private getBeginningPositionFromPosition(I)I
    .locals 2
    .parameter "absPosition"

    .prologue
    .line 1198
    const/4 v1, -0x1

    .line 1199
    .local v1, ret:I
    if-ltz p1, :cond_0

    .line 1201
    invoke-virtual {p0, p1}, Lcom/mobipocket/common/library/reader/bookreader/EBook;->getNumOfRecord(I)I

    move-result v0

    .line 1202
    .local v0, recIdx:I
    if-ltz v0, :cond_0

    .line 1204
    invoke-virtual {p0, v0}, Lcom/mobipocket/common/library/reader/bookreader/EBook;->getPosOfrecord(I)I

    move-result v1

    .line 1207
    .end local v0           #recIdx:I
    :cond_0
    return v1
.end method

.method public static getMaxCharPerPage(III)I
    .locals 4
    .parameter "ClipWidth"
    .parameter "ClipHeigth"
    .parameter "defaultFontHeight"

    .prologue
    const/16 v3, 0x64

    .line 667
    mul-int v1, p0, p1

    mul-int v2, p2, p2

    div-int/2addr v1, v2

    shl-int/lit8 v1, v1, 0x2

    div-int v2, p1, p2

    shl-int/lit8 v2, v2, 0x6

    add-int v0, v1, v2

    .line 669
    .local v0, maxCharPerPage:I
    if-ge v0, v3, :cond_0

    move v1, v3

    :goto_0
    return v1

    :cond_0
    move v1, v0

    goto :goto_0
.end method

.method private static getNbBytetoEncodeTrailingBytesSize([BI)I
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 813
    move v0, v4

    move v1, v4

    move v2, p1

    .line 815
    :cond_0
    sub-int v3, v2, v5

    aget-byte v3, p0, v3

    and-int/lit16 v3, v3, 0x80

    if-eqz v3, :cond_2

    move v3, v5

    .line 820
    :goto_0
    add-int/lit8 v0, v0, 0x7

    .line 822
    add-int/lit8 v2, v2, -0x1

    .line 823
    add-int/lit8 v1, v1, 0x1

    .line 824
    if-nez v3, :cond_1

    const/16 v3, 0x1c

    if-ge v0, v3, :cond_1

    if-gtz v2, :cond_0

    .line 826
    :cond_1
    return v1

    :cond_2
    move v3, v4

    .line 815
    goto :goto_0
.end method

.method private static getTotalTrailingBytesSpace([BI)I
    .locals 4
    .parameter "src"
    .parameter "tb_types"

    .prologue
    .line 839
    const/4 v2, 0x0

    .line 840
    .local v2, sz:I
    array-length v1, p0

    .line 841
    .local v1, src_len:I
    and-int/lit8 p1, p1, -0x2

    .line 842
    :goto_0
    if-eqz p1, :cond_1

    .line 844
    and-int/lit8 v3, p1, 0x1

    if-lez v3, :cond_0

    .line 846
    invoke-static {p0, v1}, Lcom/mobipocket/common/library/reader/bookreader/EBook;->getTrailingBytesSpace([BI)I

    move-result v0

    .line 847
    .local v0, n:I
    add-int/2addr v2, v0

    .line 848
    sub-int/2addr v1, v0

    .line 850
    .end local v0           #n:I
    :cond_0
    shr-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 853
    :cond_1
    return v2
.end method

.method private static getTrailingBytesSpace([BI)I
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 790
    move v0, v5

    move v1, v5

    move v2, p1

    .line 792
    :cond_0
    sub-int v3, v2, v6

    aget-byte v3, p0, v3

    and-int/lit16 v3, v3, 0x80

    if-eqz v3, :cond_2

    move v3, v6

    .line 796
    :goto_0
    sub-int v4, v2, v6

    aget-byte v4, p0, v4

    and-int/lit8 v4, v4, 0x7f

    shl-int/2addr v4, v1

    or-int/2addr v0, v4

    .line 797
    add-int/lit8 v1, v1, 0x7

    .line 798
    add-int/lit8 v2, v2, -0x1

    .line 799
    if-nez v3, :cond_1

    const/16 v3, 0x1c

    if-ge v1, v3, :cond_1

    if-gtz v2, :cond_0

    .line 801
    :cond_1
    return v0

    :cond_2
    move v3, v5

    .line 792
    goto :goto_0
.end method

.method private static getTypedTrailingBytes([BII)[B
    .locals 9
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v8, 0x0

    .line 866
    const/4 v0, 0x0

    .line 867
    if-eqz p0, :cond_2

    .line 870
    and-int v1, p1, p2

    if-eqz v1, :cond_2

    .line 875
    array-length v1, p0

    .line 876
    and-int/lit8 v2, p1, -0x2

    move v3, v8

    move v4, v8

    move v5, p2

    move v6, v2

    move v2, v8

    .line 877
    :goto_0
    if-eqz v6, :cond_1

    if-nez v4, :cond_1

    .line 879
    and-int/lit8 v7, v6, 0x1

    if-eqz v7, :cond_0

    .line 882
    invoke-static {p0, v1}, Lcom/mobipocket/common/library/reader/bookreader/EBook;->getTrailingBytesSpace([BI)I

    move-result v2

    .line 883
    invoke-static {p0, v1}, Lcom/mobipocket/common/library/reader/bookreader/EBook;->getNbBytetoEncodeTrailingBytesSize([BI)I

    move-result v3

    .line 884
    sub-int/2addr v1, v2

    .line 885
    and-int/lit8 v7, v5, 0x1

    if-eqz v7, :cond_0

    .line 886
    const/4 v4, 0x1

    .line 888
    :cond_0
    shr-int/lit8 v6, v6, 0x1

    .line 889
    shr-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 892
    :cond_1
    if-eqz v4, :cond_2

    .line 894
    if-le v2, v3, :cond_2

    array-length v4, p0

    sub-int v5, v2, v3

    add-int/2addr v5, v1

    if-lt v4, v5, :cond_2

    .line 896
    sub-int v0, v2, v3

    new-array v0, v0, [B

    .line 897
    array-length v2, v0

    invoke-static {p0, v1, v0, v8, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 901
    :cond_2
    return-object v0
.end method

.method private static getUTF8TrailingCharsSpace([BII)I
    .locals 1
    .parameter "src"
    .parameter "offset"
    .parameter "encoding"

    .prologue
    .line 775
    const v0, 0xfde9

    if-ne p2, v0, :cond_0

    .line 776
    const/4 v0, 0x1

    sub-int v0, p1, v0

    aget-byte v0, p0, v0

    and-int/lit8 v0, v0, 0xf

    add-int/lit8 v0, v0, 0x1

    .line 778
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private initDAT()V
    .locals 4

    .prologue
    .line 575
    new-instance v0, Lcom/mobipocket/common/library/reader/bookreader/HuffDicDirectAccessTable;

    iget-object v1, p0, Lcom/mobipocket/common/library/reader/bookreader/EBook;->book:Lcom/mobipocket/common/filesystem/ReadPDB;

    iget-object v2, p0, Lcom/mobipocket/common/library/reader/bookreader/EBook;->fileHeader:Lcom/mobipocket/common/library/reader/book/MobiFileHeaderSecure;

    iget v2, v2, Lcom/mobipocket/common/library/reader/book/MobiFileHeaderSecure;->cmp_abspostbl:I

    iget-object v3, p0, Lcom/mobipocket/common/library/reader/bookreader/EBook;->fileHeader:Lcom/mobipocket/common/library/reader/book/MobiFileHeaderSecure;

    iget v3, v3, Lcom/mobipocket/common/library/reader/book/MobiFileHeaderSecure;->cmp_abspostbllen:I

    invoke-direct {v0, v1, v2, v3}, Lcom/mobipocket/common/library/reader/bookreader/HuffDicDirectAccessTable;-><init>(Lcom/mobipocket/common/filesystem/ReadPDB;II)V

    iput-object v0, p0, Lcom/mobipocket/common/library/reader/bookreader/EBook;->huffDicDirectAccessTable:Lcom/mobipocket/common/library/reader/bookreader/HuffDicDirectAccessTable;

    .line 576
    return-void
.end method

.method private lockTrailingBytes(I)[B
    .locals 6
    .parameter "position"

    .prologue
    .line 998
    const/4 v3, 0x0

    .line 1002
    .local v3, retTrailingByte:[B
    iget-object v4, p0, Lcom/mobipocket/common/library/reader/bookreader/EBook;->book:Lcom/mobipocket/common/filesystem/ReadPDB;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/mobipocket/common/library/reader/bookreader/EBook;->fileHeader:Lcom/mobipocket/common/library/reader/book/MobiFileHeaderSecure;

    iget v4, v4, Lcom/mobipocket/common/library/reader/book/MobiFileHeaderSecure;->version:I

    const/4 v5, 0x6

    if-lt v4, v5, :cond_0

    .line 1006
    invoke-virtual {p0, p1}, Lcom/mobipocket/common/library/reader/bookreader/EBook;->getNumOfRecord(I)I

    move-result v2

    .line 1007
    .local v2, rec_idx:I
    if-ltz v2, :cond_0

    .line 1009
    iget-object v4, p0, Lcom/mobipocket/common/library/reader/bookreader/EBook;->book:Lcom/mobipocket/common/filesystem/ReadPDB;

    invoke-interface {v4, v2}, Lcom/mobipocket/common/filesystem/ReadPDB;->getRecord(I)[B

    move-result-object v1

    .line 1010
    .local v1, rec:[B
    if-eqz v1, :cond_0

    .line 1013
    iget-object v4, p0, Lcom/mobipocket/common/library/reader/bookreader/EBook;->fileHeader:Lcom/mobipocket/common/library/reader/book/MobiFileHeaderSecure;

    iget v4, v4, Lcom/mobipocket/common/library/reader/book/MobiFileHeaderSecure;->trailingByteTypes:I

    invoke-static {v1, v4}, Lcom/mobipocket/common/library/reader/bookreader/EBook;->getTotalTrailingBytesSpace([BI)I

    move-result v0

    .line 1015
    .local v0, TBlength:I
    if-lez v0, :cond_0

    array-length v4, v1

    if-lt v4, v0, :cond_0

    .line 1016
    new-array v3, v0, [B

    .line 1017
    array-length v4, v1

    sub-int/2addr v4, v0

    const/4 v5, 0x0

    invoke-static {v1, v4, v3, v5, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1022
    .end local v0           #TBlength:I
    .end local v1           #rec:[B
    .end local v2           #rec_idx:I
    :cond_0
    return-object v3
.end method

.method private unlockTrailingBytes([B)V
    .locals 0
    .parameter "trailingBytes"

    .prologue
    .line 1033
    return-void
.end method

.method private static writeUTF8TrailingChars([BI[BI)I
    .locals 3
    .parameter "out"
    .parameter "offset"
    .parameter "src"
    .parameter "encoding"

    .prologue
    const/4 v2, 0x1

    .line 718
    const v1, 0xfde9

    if-ne p3, v1, :cond_0

    .line 720
    array-length v1, p2

    sub-int/2addr v1, v2

    aget-byte v1, p2, v1

    and-int/lit8 v0, v1, 0xf

    .line 721
    .local v0, trailingCharNumber:I
    array-length v1, p2

    sub-int/2addr v1, v0

    sub-int/2addr v1, v2

    invoke-static {p2, v1, p0, p1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 726
    :goto_0
    return v0

    .line 724
    .end local v0           #trailingCharNumber:I
    :cond_0
    const/4 v0, 0x0

    .restart local v0       #trailingCharNumber:I
    goto :goto_0
.end method


# virtual methods
.method public closeBook()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 703
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/bookreader/EBook;->book:Lcom/mobipocket/common/filesystem/ReadPDB;

    if-eqz v0, :cond_0

    .line 706
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/bookreader/EBook;->book:Lcom/mobipocket/common/filesystem/ReadPDB;

    invoke-interface {v0}, Lcom/mobipocket/common/filesystem/ReadPDB;->close()V

    .line 707
    :cond_0
    iput-object v1, p0, Lcom/mobipocket/common/library/reader/bookreader/EBook;->lastSBuffer:Lcom/mobipocket/common/library/reader/bookreader/EBook$SBuffer;

    .line 708
    iput-object v1, p0, Lcom/mobipocket/common/library/reader/bookreader/EBook;->secondLastSBuffer:Lcom/mobipocket/common/library/reader/bookreader/EBook$SBuffer;

    .line 713
    return-void
.end method

.method public getBookReadPDB()Lcom/mobipocket/common/filesystem/ReadPDB;
    .locals 1

    .prologue
    .line 278
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/bookreader/EBook;->book:Lcom/mobipocket/common/filesystem/ReadPDB;

    return-object v0
.end method

.method public getCurrentEntry(ILcom/mobipocket/common/library/reader/indexes/Index;)Lcom/mobipocket/common/library/reader/indexes/IndexState;
    .locals 18
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;,
            Lcom/mobipocket/common/library/reader/indexes/IndexException;
        }
    .end annotation

    .prologue
    .line 1046
    const/4 v4, 0x0

    .line 1047
    const/4 v5, 0x0

    .line 1049
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/bookreader/EBook;->book:Lcom/mobipocket/common/filesystem/ReadPDB;

    move-object v6, v0

    if-eqz v6, :cond_c

    if-eqz p2, :cond_c

    if-ltz p1, :cond_c

    .line 1052
    invoke-direct/range {p0 .. p1}, Lcom/mobipocket/common/library/reader/bookreader/EBook;->lockTrailingBytes(I)[B

    move-result-object v6

    .line 1053
    if-eqz v6, :cond_c

    .line 1056
    const/4 v7, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/bookreader/EBook;->fileHeader:Lcom/mobipocket/common/library/reader/book/MobiFileHeaderSecure;

    move-object v8, v0

    iget v8, v8, Lcom/mobipocket/common/library/reader/book/MobiFileHeaderSecure;->trailingByteTypes:I

    invoke-static {v6, v7, v8}, Lcom/mobipocket/common/library/reader/bookreader/EBook;->getTypedTrailingBytes([BII)[B

    move-result-object v6

    .line 1057
    if-eqz v6, :cond_c

    .line 1059
    new-instance v7, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;

    const/4 v8, 0x1

    invoke-direct {v7, v6, v8}, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;-><init>([BZ)V

    .line 1060
    new-instance v6, Ljava/util/Vector;

    invoke-direct {v6}, Ljava/util/Vector;-><init>()V

    .line 1063
    invoke-direct/range {p0 .. p1}, Lcom/mobipocket/common/library/reader/bookreader/EBook;->getBeginningPositionFromPosition(I)I

    move-result v8

    .line 1064
    const/4 v9, -0x1

    .line 1066
    const/4 v10, -0x1

    .line 1069
    const/4 v11, 0x0

    .line 1070
    const/4 v12, 0x0

    .line 1074
    new-instance v13, Lcom/mobipocket/common/library/reader/bookreader/EBook$ReadPosInfoItem;

    const/4 v14, 0x0

    move-object v0, v13

    move-object/from16 v1, p0

    move-object v2, v7

    move-object v3, v14

    invoke-direct {v0, v1, v2, v3}, Lcom/mobipocket/common/library/reader/bookreader/EBook$ReadPosInfoItem;-><init>(Lcom/mobipocket/common/library/reader/bookreader/EBook;Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;Lcom/mobipocket/common/library/reader/bookreader/EBook$1;)V

    move v7, v11

    move v11, v9

    move v9, v8

    move/from16 v16, v12

    move v12, v5

    move/from16 v5, v16

    .line 1075
    :goto_0
    if-nez v7, :cond_7

    .line 1077
    invoke-static {v13}, Lcom/mobipocket/common/library/reader/bookreader/EBook$ReadPosInfoItem;->access$400(Lcom/mobipocket/common/library/reader/bookreader/EBook$ReadPosInfoItem;)V

    .line 1078
    invoke-static {v13}, Lcom/mobipocket/common/library/reader/bookreader/EBook$ReadPosInfoItem;->access$500(Lcom/mobipocket/common/library/reader/bookreader/EBook$ReadPosInfoItem;)I

    move-result v14

    if-lez v14, :cond_6

    .line 1081
    invoke-static {v13}, Lcom/mobipocket/common/library/reader/bookreader/EBook$ReadPosInfoItem;->access$600(Lcom/mobipocket/common/library/reader/bookreader/EBook$ReadPosInfoItem;)I

    move-result v14

    const/4 v15, -0x1

    if-eq v14, v15, :cond_1

    .line 1084
    invoke-static {v13}, Lcom/mobipocket/common/library/reader/bookreader/EBook$ReadPosInfoItem;->access$600(Lcom/mobipocket/common/library/reader/bookreader/EBook$ReadPosInfoItem;)I

    move-result v14

    if-nez v14, :cond_0

    .line 1085
    const/4 v5, 0x1

    .line 1087
    :cond_0
    invoke-static {v13, v8}, Lcom/mobipocket/common/library/reader/bookreader/EBook$ReadPosInfoItem;->access$612(Lcom/mobipocket/common/library/reader/bookreader/EBook$ReadPosInfoItem;I)I

    .line 1088
    move/from16 v0, p1

    move v1, v9

    if-lt v0, v1, :cond_1

    invoke-static {v13}, Lcom/mobipocket/common/library/reader/bookreader/EBook$ReadPosInfoItem;->access$600(Lcom/mobipocket/common/library/reader/bookreader/EBook$ReadPosInfoItem;)I

    move-result v14

    move/from16 v0, p1

    move v1, v14

    if-ge v0, v1, :cond_1

    .line 1089
    const/4 v7, 0x1

    .line 1093
    :cond_1
    invoke-static {v13}, Lcom/mobipocket/common/library/reader/bookreader/EBook$ReadPosInfoItem;->access$700(Lcom/mobipocket/common/library/reader/bookreader/EBook$ReadPosInfoItem;)I

    move-result v14

    const/4 v15, -0x1

    if-ne v14, v15, :cond_2

    .line 1095
    invoke-static {v13, v11}, Lcom/mobipocket/common/library/reader/bookreader/EBook$ReadPosInfoItem;->access$702(Lcom/mobipocket/common/library/reader/bookreader/EBook$ReadPosInfoItem;I)I

    .line 1097
    invoke-static {v13}, Lcom/mobipocket/common/library/reader/bookreader/EBook$ReadPosInfoItem;->access$800(Lcom/mobipocket/common/library/reader/bookreader/EBook$ReadPosInfoItem;)I

    move-result v11

    add-int/2addr v10, v11

    .line 1107
    :goto_1
    invoke-static {v13}, Lcom/mobipocket/common/library/reader/bookreader/EBook$ReadPosInfoItem;->access$700(Lcom/mobipocket/common/library/reader/bookreader/EBook$ReadPosInfoItem;)I

    move-result v11

    invoke-virtual/range {p2 .. p2}, Lcom/mobipocket/common/library/reader/indexes/Index;->getMasterRecIndex()I

    move-result v14

    if-ne v11, v14, :cond_3

    .line 1113
    const/4 v11, 0x0

    :goto_2
    invoke-static {v13}, Lcom/mobipocket/common/library/reader/bookreader/EBook$ReadPosInfoItem;->access$1000(Lcom/mobipocket/common/library/reader/bookreader/EBook$ReadPosInfoItem;)I

    move-result v14

    if-ge v11, v14, :cond_3

    .line 1114
    new-instance v14, Ljava/lang/Integer;

    add-int v15, v10, v11

    invoke-direct {v14, v15}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v6, v14}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 1113
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 1101
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/bookreader/EBook;->fileHeader:Lcom/mobipocket/common/library/reader/book/MobiFileHeaderSecure;

    move-object v10, v0

    iget v10, v10, Lcom/mobipocket/common/library/reader/book/MobiFileHeaderSecure;->index_base:I

    invoke-static {v13, v10}, Lcom/mobipocket/common/library/reader/bookreader/EBook$ReadPosInfoItem;->access$712(Lcom/mobipocket/common/library/reader/bookreader/EBook$ReadPosInfoItem;I)I

    .line 1102
    invoke-static {v13}, Lcom/mobipocket/common/library/reader/bookreader/EBook$ReadPosInfoItem;->access$900(Lcom/mobipocket/common/library/reader/bookreader/EBook$ReadPosInfoItem;)I

    move-result v10

    goto :goto_1

    .line 1116
    :cond_3
    invoke-static {v13}, Lcom/mobipocket/common/library/reader/bookreader/EBook$ReadPosInfoItem;->access$1000(Lcom/mobipocket/common/library/reader/bookreader/EBook$ReadPosInfoItem;)I

    move-result v11

    const/4 v14, 0x1

    sub-int/2addr v11, v14

    add-int/2addr v10, v11

    .line 1119
    if-eqz v5, :cond_d

    .line 1120
    invoke-virtual {v6}, Ljava/util/Vector;->size()I

    move-result v5

    .line 1123
    :goto_3
    invoke-static {v13}, Lcom/mobipocket/common/library/reader/bookreader/EBook$ReadPosInfoItem;->access$600(Lcom/mobipocket/common/library/reader/bookreader/EBook$ReadPosInfoItem;)I

    move-result v11

    const/4 v12, -0x1

    if-eq v11, v12, :cond_5

    if-nez v7, :cond_5

    .line 1126
    invoke-virtual {v6}, Ljava/util/Vector;->size()I

    move-result v9

    :goto_4
    invoke-virtual {v6}, Ljava/util/Vector;->size()I

    move-result v11

    sub-int/2addr v11, v5

    if-ge v9, v11, :cond_4

    .line 1128
    invoke-virtual {v6, v9}, Ljava/util/Vector;->removeElementAt(I)V

    .line 1126
    add-int/lit8 v9, v9, -0x1

    goto :goto_4

    .line 1130
    :cond_4
    invoke-static {v13}, Lcom/mobipocket/common/library/reader/bookreader/EBook$ReadPosInfoItem;->access$600(Lcom/mobipocket/common/library/reader/bookreader/EBook$ReadPosInfoItem;)I

    move-result v9

    .line 1134
    :cond_5
    invoke-static {v13}, Lcom/mobipocket/common/library/reader/bookreader/EBook$ReadPosInfoItem;->access$700(Lcom/mobipocket/common/library/reader/bookreader/EBook$ReadPosInfoItem;)I

    move-result v11

    .line 1140
    const/4 v12, 0x0

    move/from16 v16, v12

    move v12, v5

    move/from16 v5, v16

    goto/16 :goto_0

    .line 1144
    :cond_6
    const/4 v7, 0x1

    goto/16 :goto_0

    .line 1150
    :cond_7
    invoke-virtual {v6}, Ljava/util/Vector;->size()I

    move-result v5

    if-lez v5, :cond_c

    .line 1152
    const/4 v5, -0x1

    .line 1153
    const/4 v7, 0x0

    .line 1154
    new-instance v8, Lcom/mobipocket/common/library/reader/indexes/IndexEntryControl;

    move-object v0, v8

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/mobipocket/common/library/reader/indexes/IndexEntryControl;-><init>(Lcom/mobipocket/common/library/reader/indexes/Index;)V

    .line 1157
    const/4 v9, 0x0

    move/from16 v16, v9

    move-object v9, v4

    move/from16 v4, v16

    move/from16 v17, v5

    move v5, v7

    move/from16 v7, v17

    :goto_5
    invoke-virtual {v6}, Ljava/util/Vector;->size()I

    move-result v10

    if-ge v4, v10, :cond_b

    .line 1159
    invoke-virtual {v6, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Integer;->intValue()I

    move-result v10

    .line 1165
    if-lez v4, :cond_9

    invoke-virtual {v6, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v11

    const/4 v12, 0x1

    sub-int v12, v4, v12

    invoke-virtual {v6, v12}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v12

    if-ne v11, v12, :cond_9

    .line 1157
    :cond_8
    :goto_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 1168
    :cond_9
    invoke-virtual {v8, v10}, Lcom/mobipocket/common/library/reader/indexes/IndexEntryControl;->getEntryScope(I)[I

    move-result-object v11

    .line 1170
    const/4 v12, 0x0

    aget v12, v11, v12

    const/4 v13, 0x1

    if-ne v12, v13, :cond_8

    const/4 v12, 0x1

    aget v12, v11, v12

    move/from16 v0, p1

    move v1, v12

    if-lt v0, v1, :cond_8

    const/4 v12, 0x1

    aget v12, v11, v12

    const/4 v13, 0x2

    aget v13, v11, v13

    add-int/2addr v12, v13

    move/from16 v0, p1

    move v1, v12

    if-ge v0, v1, :cond_8

    .line 1174
    if-eqz v5, :cond_a

    if-eqz v5, :cond_8

    const/4 v12, 0x2

    aget v12, v11, v12

    if-gt v12, v7, :cond_8

    .line 1176
    :cond_a
    const/4 v5, 0x1

    .line 1177
    const/4 v7, 0x2

    aget v7, v11, v7

    .line 1178
    move-object/from16 v0, p2

    move v1, v10

    invoke-virtual {v0, v1}, Lcom/mobipocket/common/library/reader/indexes/Index;->followXlink(I)Lcom/mobipocket/common/library/reader/indexes/IndexState;

    move-result-object v9

    goto :goto_6

    :cond_b
    move-object v4, v9

    .line 1185
    :cond_c
    return-object v4

    :cond_d
    move v5, v12

    goto/16 :goto_3
.end method

.method public getIdentifier()Ljava/lang/String;
    .locals 1

    .prologue
    .line 273
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/bookreader/EBook;->identifier:Ljava/lang/String;

    return-object v0
.end method

.method public getImageBytes(I)[B
    .locals 3
    .parameter "numImgRecord"

    .prologue
    .line 638
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/bookreader/EBook;->fileHeader:Lcom/mobipocket/common/library/reader/book/MobiFileHeaderSecure;

    iget v1, v1, Lcom/mobipocket/common/library/reader/book/MobiFileHeaderSecure;->embed_base:I

    add-int/2addr v1, p1

    const/4 v2, 0x1

    sub-int v0, v1, v2

    .line 639
    .local v0, realNumImgRecord:I
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/bookreader/EBook;->book:Lcom/mobipocket/common/filesystem/ReadPDB;

    invoke-interface {v1}, Lcom/mobipocket/common/filesystem/ReadPDB;->getRecordCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    if-lez v0, :cond_0

    .line 640
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/bookreader/EBook;->book:Lcom/mobipocket/common/filesystem/ReadPDB;

    invoke-interface {v1, v0}, Lcom/mobipocket/common/filesystem/ReadPDB;->getRecord(I)[B

    move-result-object v1

    .line 642
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getNextBufferPos(Lcom/mobipocket/common/library/reader/bookreader/EBook$SBuffer;)I
    .locals 3
    .parameter "buffer"

    .prologue
    .line 308
    iget v1, p1, Lcom/mobipocket/common/library/reader/bookreader/EBook$SBuffer;->beg_pos:I

    invoke-static {p1}, Lcom/mobipocket/common/library/reader/bookreader/EBook$SBuffer;->access$000(Lcom/mobipocket/common/library/reader/bookreader/EBook$SBuffer;)I

    move-result v2

    add-int v0, v1, v2

    .line 312
    .local v0, pos:I
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/bookreader/EBook;->fileHeader:Lcom/mobipocket/common/library/reader/book/MobiFileHeaderSecure;

    iget v1, v1, Lcom/mobipocket/common/library/reader/book/MobiFileHeaderSecure;->dwStoryLen:I

    if-le v0, v1, :cond_0

    .line 314
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/bookreader/EBook;->fileHeader:Lcom/mobipocket/common/library/reader/book/MobiFileHeaderSecure;

    iget v0, v1, Lcom/mobipocket/common/library/reader/book/MobiFileHeaderSecure;->dwStoryLen:I

    .line 316
    :cond_0
    return v0
.end method

.method getNumOfRecord(I)I
    .locals 3
    .parameter

    .prologue
    .line 587
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/bookreader/EBook;->fileHeader:Lcom/mobipocket/common/library/reader/book/MobiFileHeaderSecure;

    iget-short v0, v0, Lcom/mobipocket/common/library/reader/book/MobiFileHeaderSecure;->wVersion:S

    and-int/lit16 v0, v0, 0xff

    const/16 v1, 0x48

    if-ne v0, v1, :cond_1

    .line 589
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/bookreader/EBook;->huffDicDirectAccessTable:Lcom/mobipocket/common/library/reader/bookreader/HuffDicDirectAccessTable;

    if-nez v0, :cond_0

    .line 590
    invoke-direct {p0}, Lcom/mobipocket/common/library/reader/bookreader/EBook;->initDAT()V

    .line 591
    :cond_0
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/bookreader/EBook;->huffDicDirectAccessTable:Lcom/mobipocket/common/library/reader/bookreader/HuffDicDirectAccessTable;

    invoke-virtual {v0, p1}, Lcom/mobipocket/common/library/reader/bookreader/HuffDicDirectAccessTable;->getNumOfRecord(I)I

    move-result v0

    .line 595
    :goto_0
    return v0

    .line 593
    :cond_1
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/bookreader/EBook;->fileHeader:Lcom/mobipocket/common/library/reader/book/MobiFileHeaderSecure;

    iget-short v0, v0, Lcom/mobipocket/common/library/reader/book/MobiFileHeaderSecure;->wRecSize:S

    div-int v0, p1, v0

    add-int/lit8 v0, v0, 0x1

    .line 594
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "num record of absolute position "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method getPosOfrecord(I)I
    .locals 2
    .parameter "numRecord"

    .prologue
    .line 624
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/bookreader/EBook;->fileHeader:Lcom/mobipocket/common/library/reader/book/MobiFileHeaderSecure;

    iget-short v0, v0, Lcom/mobipocket/common/library/reader/book/MobiFileHeaderSecure;->wVersion:S

    and-int/lit16 v0, v0, 0xff

    const/16 v1, 0x48

    if-ne v0, v1, :cond_1

    .line 626
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/bookreader/EBook;->huffDicDirectAccessTable:Lcom/mobipocket/common/library/reader/bookreader/HuffDicDirectAccessTable;

    if-nez v0, :cond_0

    .line 627
    invoke-direct {p0}, Lcom/mobipocket/common/library/reader/bookreader/EBook;->initDAT()V

    .line 628
    :cond_0
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/bookreader/EBook;->huffDicDirectAccessTable:Lcom/mobipocket/common/library/reader/bookreader/HuffDicDirectAccessTable;

    invoke-virtual {v0, p1}, Lcom/mobipocket/common/library/reader/bookreader/HuffDicDirectAccessTable;->getPosOfrecord(I)I

    move-result v0

    .line 631
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    sub-int v0, p1, v0

    iget-object v1, p0, Lcom/mobipocket/common/library/reader/bookreader/EBook;->fileHeader:Lcom/mobipocket/common/library/reader/book/MobiFileHeaderSecure;

    iget-short v1, v1, Lcom/mobipocket/common/library/reader/book/MobiFileHeaderSecure;->wRecSize:S

    mul-int/2addr v0, v1

    goto :goto_0
.end method

.method public getSBuffer(I)Lcom/mobipocket/common/library/reader/bookreader/EBook$SBuffer;
    .locals 14
    .parameter

    .prologue
    const/4 v7, 0x1

    const v12, 0xfde9

    const/4 v11, 0x0

    const/4 v3, 0x0

    .line 327
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/bookreader/EBook;->lastSBuffer:Lcom/mobipocket/common/library/reader/bookreader/EBook$SBuffer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mobipocket/common/library/reader/bookreader/EBook;->lastSBuffer:Lcom/mobipocket/common/library/reader/bookreader/EBook$SBuffer;

    iget v0, v0, Lcom/mobipocket/common/library/reader/bookreader/EBook$SBuffer;->beg_pos:I

    if-gt v0, p1, :cond_0

    iget-object v0, p0, Lcom/mobipocket/common/library/reader/bookreader/EBook;->fileHeader:Lcom/mobipocket/common/library/reader/book/MobiFileHeaderSecure;

    iget v0, v0, Lcom/mobipocket/common/library/reader/book/MobiFileHeaderSecure;->dwStoryLen:I

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/mobipocket/common/library/reader/bookreader/EBook;->lastSBuffer:Lcom/mobipocket/common/library/reader/bookreader/EBook$SBuffer;

    iget v0, v0, Lcom/mobipocket/common/library/reader/bookreader/EBook$SBuffer;->beg_pos:I

    iget-object v1, p0, Lcom/mobipocket/common/library/reader/bookreader/EBook;->lastSBuffer:Lcom/mobipocket/common/library/reader/bookreader/EBook$SBuffer;

    invoke-static {v1}, Lcom/mobipocket/common/library/reader/bookreader/EBook$SBuffer;->access$000(Lcom/mobipocket/common/library/reader/bookreader/EBook$SBuffer;)I

    move-result v1

    add-int/2addr v0, v1

    if-le v0, p1, :cond_0

    .line 330
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/bookreader/EBook;->lastSBuffer:Lcom/mobipocket/common/library/reader/bookreader/EBook$SBuffer;

    iget-object v1, p0, Lcom/mobipocket/common/library/reader/bookreader/EBook;->lastSBuffer:Lcom/mobipocket/common/library/reader/bookreader/EBook$SBuffer;

    iget v1, v1, Lcom/mobipocket/common/library/reader/bookreader/EBook$SBuffer;->beg_pos:I

    sub-int v1, p1, v1

    invoke-static {v0, v1}, Lcom/mobipocket/common/library/reader/bookreader/EBook$SBuffer;->access$100(Lcom/mobipocket/common/library/reader/bookreader/EBook$SBuffer;I)I

    .line 332
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Buffer informations:text nb characters="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mobipocket/common/library/reader/bookreader/EBook;->lastSBuffer:Lcom/mobipocket/common/library/reader/bookreader/EBook$SBuffer;

    iget v1, v1, Lcom/mobipocket/common/library/reader/bookreader/EBook$SBuffer;->length:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ,begin pos="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mobipocket/common/library/reader/bookreader/EBook;->lastSBuffer:Lcom/mobipocket/common/library/reader/bookreader/EBook$SBuffer;

    iget v1, v1, Lcom/mobipocket/common/library/reader/bookreader/EBook$SBuffer;->beg_pos:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", current Pos="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mobipocket/common/library/reader/bookreader/EBook;->lastSBuffer:Lcom/mobipocket/common/library/reader/bookreader/EBook$SBuffer;

    iget v1, v1, Lcom/mobipocket/common/library/reader/bookreader/EBook$SBuffer;->currentPos:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ,binary uncompressed length="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mobipocket/common/library/reader/bookreader/EBook;->lastSBuffer:Lcom/mobipocket/common/library/reader/bookreader/EBook$SBuffer;

    invoke-static {v1}, Lcom/mobipocket/common/library/reader/bookreader/EBook$SBuffer;->access$000(Lcom/mobipocket/common/library/reader/bookreader/EBook$SBuffer;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 336
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/bookreader/EBook;->lastSBuffer:Lcom/mobipocket/common/library/reader/bookreader/EBook$SBuffer;

    .line 553
    :goto_0
    return-object v0

    .line 338
    :cond_0
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/bookreader/EBook;->secondLastSBuffer:Lcom/mobipocket/common/library/reader/bookreader/EBook$SBuffer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/mobipocket/common/library/reader/bookreader/EBook;->secondLastSBuffer:Lcom/mobipocket/common/library/reader/bookreader/EBook$SBuffer;

    iget v0, v0, Lcom/mobipocket/common/library/reader/bookreader/EBook$SBuffer;->beg_pos:I

    if-gt v0, p1, :cond_1

    iget-object v0, p0, Lcom/mobipocket/common/library/reader/bookreader/EBook;->fileHeader:Lcom/mobipocket/common/library/reader/book/MobiFileHeaderSecure;

    iget v0, v0, Lcom/mobipocket/common/library/reader/book/MobiFileHeaderSecure;->dwStoryLen:I

    if-ge p1, v0, :cond_1

    iget-object v0, p0, Lcom/mobipocket/common/library/reader/bookreader/EBook;->secondLastSBuffer:Lcom/mobipocket/common/library/reader/bookreader/EBook$SBuffer;

    iget v0, v0, Lcom/mobipocket/common/library/reader/bookreader/EBook$SBuffer;->beg_pos:I

    iget-object v1, p0, Lcom/mobipocket/common/library/reader/bookreader/EBook;->secondLastSBuffer:Lcom/mobipocket/common/library/reader/bookreader/EBook$SBuffer;

    invoke-static {v1}, Lcom/mobipocket/common/library/reader/bookreader/EBook$SBuffer;->access$000(Lcom/mobipocket/common/library/reader/bookreader/EBook$SBuffer;)I

    move-result v1

    add-int/2addr v0, v1

    if-le v0, p1, :cond_1

    .line 341
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/bookreader/EBook;->secondLastSBuffer:Lcom/mobipocket/common/library/reader/bookreader/EBook$SBuffer;

    iget-object v1, p0, Lcom/mobipocket/common/library/reader/bookreader/EBook;->secondLastSBuffer:Lcom/mobipocket/common/library/reader/bookreader/EBook$SBuffer;

    iget v1, v1, Lcom/mobipocket/common/library/reader/bookreader/EBook$SBuffer;->beg_pos:I

    sub-int v1, p1, v1

    invoke-static {v0, v1}, Lcom/mobipocket/common/library/reader/bookreader/EBook$SBuffer;->access$100(Lcom/mobipocket/common/library/reader/bookreader/EBook$SBuffer;I)I

    .line 343
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/bookreader/EBook;->lastSBuffer:Lcom/mobipocket/common/library/reader/bookreader/EBook$SBuffer;

    .line 344
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/bookreader/EBook;->secondLastSBuffer:Lcom/mobipocket/common/library/reader/bookreader/EBook$SBuffer;

    iput-object v1, p0, Lcom/mobipocket/common/library/reader/bookreader/EBook;->lastSBuffer:Lcom/mobipocket/common/library/reader/bookreader/EBook$SBuffer;

    .line 345
    iput-object v0, p0, Lcom/mobipocket/common/library/reader/bookreader/EBook;->secondLastSBuffer:Lcom/mobipocket/common/library/reader/bookreader/EBook$SBuffer;

    .line 346
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Buffer informations:text nb characters="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mobipocket/common/library/reader/bookreader/EBook;->lastSBuffer:Lcom/mobipocket/common/library/reader/bookreader/EBook$SBuffer;

    iget v1, v1, Lcom/mobipocket/common/library/reader/bookreader/EBook$SBuffer;->length:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ,begin pos="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mobipocket/common/library/reader/bookreader/EBook;->lastSBuffer:Lcom/mobipocket/common/library/reader/bookreader/EBook$SBuffer;

    iget v1, v1, Lcom/mobipocket/common/library/reader/bookreader/EBook$SBuffer;->beg_pos:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", current Pos="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mobipocket/common/library/reader/bookreader/EBook;->lastSBuffer:Lcom/mobipocket/common/library/reader/bookreader/EBook$SBuffer;

    iget v1, v1, Lcom/mobipocket/common/library/reader/bookreader/EBook$SBuffer;->currentPos:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ,binary uncompressed length="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mobipocket/common/library/reader/bookreader/EBook;->lastSBuffer:Lcom/mobipocket/common/library/reader/bookreader/EBook$SBuffer;

    invoke-static {v1}, Lcom/mobipocket/common/library/reader/bookreader/EBook$SBuffer;->access$000(Lcom/mobipocket/common/library/reader/bookreader/EBook$SBuffer;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 350
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/bookreader/EBook;->lastSBuffer:Lcom/mobipocket/common/library/reader/bookreader/EBook$SBuffer;

    goto :goto_0

    .line 352
    :cond_1
    new-instance v8, Lcom/mobipocket/common/library/reader/bookreader/EBook$SBuffer;

    invoke-direct {v8}, Lcom/mobipocket/common/library/reader/bookreader/EBook$SBuffer;-><init>()V

    .line 403
    invoke-virtual {p0, p1}, Lcom/mobipocket/common/library/reader/bookreader/EBook;->getNumOfRecord(I)I

    move-result v0

    iput v0, p0, Lcom/mobipocket/common/library/reader/bookreader/EBook;->currentRecord:I

    .line 404
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "record "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mobipocket/common/library/reader/bookreader/EBook;->currentRecord:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " is requested"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 405
    iget v0, p0, Lcom/mobipocket/common/library/reader/bookreader/EBook;->currentRecord:I

    if-lez v0, :cond_9

    iget v0, p0, Lcom/mobipocket/common/library/reader/bookreader/EBook;->currentRecord:I

    iget v1, p0, Lcom/mobipocket/common/library/reader/bookreader/EBook;->nbMaxTextRecord:I

    if-gt v0, v1, :cond_9

    iget-object v0, p0, Lcom/mobipocket/common/library/reader/bookreader/EBook;->fileHeader:Lcom/mobipocket/common/library/reader/book/MobiFileHeaderSecure;

    iget v0, v0, Lcom/mobipocket/common/library/reader/book/MobiFileHeaderSecure;->dwStoryLen:I

    if-ge p1, v0, :cond_9

    .line 409
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/bookreader/EBook;->book:Lcom/mobipocket/common/filesystem/ReadPDB;

    iget v1, p0, Lcom/mobipocket/common/library/reader/bookreader/EBook;->currentRecord:I

    invoke-interface {v0, v1}, Lcom/mobipocket/common/filesystem/ReadPDB;->getRecord(I)[B

    move-result-object v0

    .line 410
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "record got from the file, size of this buffer is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 411
    array-length v1, v0

    new-array v2, v1, [B

    .line 412
    array-length v1, v0

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 416
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/bookreader/EBook;->fileHeader:Lcom/mobipocket/common/library/reader/book/MobiFileHeaderSecure;

    iget-short v9, v0, Lcom/mobipocket/common/library/reader/book/MobiFileHeaderSecure;->wRecSize:S

    .line 417
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/bookreader/EBook;->fileHeader:Lcom/mobipocket/common/library/reader/book/MobiFileHeaderSecure;

    iget v0, v0, Lcom/mobipocket/common/library/reader/book/MobiFileHeaderSecure;->trailingByteTypes:I

    invoke-static {v2, v0}, Lcom/mobipocket/common/library/reader/bookreader/EBook;->getTotalTrailingBytesSpace([BI)I

    move-result v5

    .line 418
    array-length v0, v2

    sub-int/2addr v0, v5

    new-array v4, v0, [B

    .line 422
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/bookreader/EBook;->fileHeader:Lcom/mobipocket/common/library/reader/book/MobiFileHeaderSecure;

    iget-short v0, v0, Lcom/mobipocket/common/library/reader/book/MobiFileHeaderSecure;->wSpare2:S

    if-eqz v0, :cond_3

    .line 424
    new-instance v0, Lcom/mobipocket/common/util/Cipher;

    invoke-direct {v0}, Lcom/mobipocket/common/util/Cipher;-><init>()V

    .line 425
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/bookreader/EBook;->fileHeader:Lcom/mobipocket/common/library/reader/book/MobiFileHeaderSecure;

    iget-short v1, v1, Lcom/mobipocket/common/library/reader/book/MobiFileHeaderSecure;->wVersion:S

    and-int/lit16 v1, v1, 0xff

    const/16 v6, 0x48

    if-ne v1, v6, :cond_2

    .line 427
    array-length v1, v2

    sub-int/2addr v1, v5

    iget-object v6, p0, Lcom/mobipocket/common/library/reader/bookreader/EBook;->fileHeader:Lcom/mobipocket/common/library/reader/book/MobiFileHeaderSecure;

    iget v6, v6, Lcom/mobipocket/common/library/reader/book/MobiFileHeaderSecure;->encoding:I

    invoke-static {v2, v1, v6}, Lcom/mobipocket/common/library/reader/bookreader/EBook;->getUTF8TrailingCharsSpace([BII)I

    move-result v10

    .line 428
    array-length v1, v2

    sub-int/2addr v1, v5

    sub-int v6, v1, v10

    .line 430
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/bookreader/EBook;->fileHeader:Lcom/mobipocket/common/library/reader/book/MobiFileHeaderSecure;

    invoke-virtual {v1}, Lcom/mobipocket/common/library/reader/book/MobiFileHeaderSecure;->getKey()[B

    move-result-object v1

    move v5, v3

    invoke-virtual/range {v0 .. v7}, Lcom/mobipocket/common/util/Cipher;->code([B[BI[BIIZ)V

    .line 431
    invoke-static {v2, v6, v4, v6, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move v0, v10

    .line 446
    :goto_1
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/bookreader/EBook;->fileHeader:Lcom/mobipocket/common/library/reader/book/MobiFileHeaderSecure;

    iget-short v1, v1, Lcom/mobipocket/common/library/reader/book/MobiFileHeaderSecure;->wVersion:S

    and-int/lit16 v1, v1, 0xff

    sparse-switch v1, :sswitch_data_0

    move v0, v3

    move v1, v9

    move v2, v3

    move-object v4, v11

    .line 492
    :goto_2
    add-int/2addr v0, v2

    .line 499
    if-nez v4, :cond_6

    move-object v0, v11

    .line 501
    goto/16 :goto_0

    .line 435
    :cond_2
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/bookreader/EBook;->fileHeader:Lcom/mobipocket/common/library/reader/book/MobiFileHeaderSecure;

    invoke-virtual {v1}, Lcom/mobipocket/common/library/reader/book/MobiFileHeaderSecure;->getKey()[B

    move-result-object v1

    array-length v6, v2

    sub-int/2addr v6, v5

    move v5, v3

    invoke-virtual/range {v0 .. v7}, Lcom/mobipocket/common/util/Cipher;->code([B[BI[BIIZ)V

    .line 437
    array-length v0, v4

    iget-object v1, p0, Lcom/mobipocket/common/library/reader/bookreader/EBook;->fileHeader:Lcom/mobipocket/common/library/reader/book/MobiFileHeaderSecure;

    iget v1, v1, Lcom/mobipocket/common/library/reader/book/MobiFileHeaderSecure;->encoding:I

    invoke-static {v4, v0, v1}, Lcom/mobipocket/common/library/reader/bookreader/EBook;->getUTF8TrailingCharsSpace([BII)I

    move-result v0

    goto :goto_1

    .line 442
    :cond_3
    array-length v0, v2

    sub-int/2addr v0, v5

    invoke-static {v2, v3, v4, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 444
    array-length v0, v4

    iget-object v1, p0, Lcom/mobipocket/common/library/reader/bookreader/EBook;->fileHeader:Lcom/mobipocket/common/library/reader/book/MobiFileHeaderSecure;

    iget v1, v1, Lcom/mobipocket/common/library/reader/book/MobiFileHeaderSecure;->encoding:I

    invoke-static {v4, v0, v1}, Lcom/mobipocket/common/library/reader/bookreader/EBook;->getUTF8TrailingCharsSpace([BII)I

    move-result v0

    goto :goto_1

    .line 452
    :sswitch_0
    array-length v1, v4

    .line 453
    iget-object v2, p0, Lcom/mobipocket/common/library/reader/bookreader/EBook;->fileHeader:Lcom/mobipocket/common/library/reader/book/MobiFileHeaderSecure;

    iget v2, v2, Lcom/mobipocket/common/library/reader/book/MobiFileHeaderSecure;->encoding:I

    if-ne v2, v12, :cond_c

    .line 456
    add-int/lit8 v0, v1, -0x1

    move v1, v9

    move v2, v0

    move v0, v3

    goto :goto_2

    .line 460
    :sswitch_1
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/bookreader/EBook;->fileHeader:Lcom/mobipocket/common/library/reader/book/MobiFileHeaderSecure;

    iget-short v1, v1, Lcom/mobipocket/common/library/reader/book/MobiFileHeaderSecure;->wRecSize:S

    add-int/lit8 v1, v1, 0x10

    new-array v1, v1, [B

    .line 462
    array-length v2, v4

    sub-int v0, v2, v0

    invoke-static {v4, v1, v0}, Lcom/mobipocket/common/library/reader/bookreader/EBook;->docstd_uncompress([B[BI)I

    move-result v0

    .line 464
    iget-object v2, p0, Lcom/mobipocket/common/library/reader/bookreader/EBook;->fileHeader:Lcom/mobipocket/common/library/reader/book/MobiFileHeaderSecure;

    iget v2, v2, Lcom/mobipocket/common/library/reader/book/MobiFileHeaderSecure;->encoding:I

    invoke-static {v1, v0, v4, v2}, Lcom/mobipocket/common/library/reader/bookreader/EBook;->writeUTF8TrailingChars([BI[BI)I

    move-result v2

    move-object v4, v1

    move v1, v9

    move v13, v0

    move v0, v2

    move v2, v13

    .line 465
    goto :goto_2

    .line 467
    :sswitch_2
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/bookreader/EBook;->huffDicDecoder:Lcom/mobipocket/common/library/reader/bookreader/HuffDicDecoder;

    if-nez v1, :cond_4

    .line 471
    :try_start_0
    new-instance v1, Lcom/mobipocket/common/library/reader/bookreader/HuffDicDecoder;

    iget-object v2, p0, Lcom/mobipocket/common/library/reader/bookreader/EBook;->book:Lcom/mobipocket/common/filesystem/ReadPDB;

    iget-object v5, p0, Lcom/mobipocket/common/library/reader/bookreader/EBook;->fileHeader:Lcom/mobipocket/common/library/reader/book/MobiFileHeaderSecure;

    iget v5, v5, Lcom/mobipocket/common/library/reader/book/MobiFileHeaderSecure;->cmp_hufdic:I

    iget-object v6, p0, Lcom/mobipocket/common/library/reader/bookreader/EBook;->fileHeader:Lcom/mobipocket/common/library/reader/book/MobiFileHeaderSecure;

    iget v6, v6, Lcom/mobipocket/common/library/reader/book/MobiFileHeaderSecure;->cmp_hufdiclen:I

    invoke-direct {v1, v2, v5, v6}, Lcom/mobipocket/common/library/reader/bookreader/HuffDicDecoder;-><init>(Lcom/mobipocket/common/filesystem/ReadPDB;II)V

    iput-object v1, p0, Lcom/mobipocket/common/library/reader/bookreader/EBook;->huffDicDecoder:Lcom/mobipocket/common/library/reader/bookreader/HuffDicDecoder;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 477
    :goto_3
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/bookreader/EBook;->huffDicDecoder:Lcom/mobipocket/common/library/reader/bookreader/HuffDicDecoder;

    if-nez v1, :cond_4

    move v1, v9

    move v2, v3

    move-object v4, v11

    .line 479
    goto :goto_2

    .line 474
    :catch_0
    move-exception v1

    iput-object v11, p0, Lcom/mobipocket/common/library/reader/bookreader/EBook;->huffDicDecoder:Lcom/mobipocket/common/library/reader/bookreader/HuffDicDecoder;

    goto :goto_3

    .line 482
    :cond_4
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/bookreader/EBook;->huffDicDirectAccessTable:Lcom/mobipocket/common/library/reader/bookreader/HuffDicDirectAccessTable;

    if-nez v1, :cond_5

    .line 483
    invoke-direct {p0}, Lcom/mobipocket/common/library/reader/bookreader/EBook;->initDAT()V

    .line 484
    :cond_5
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/bookreader/EBook;->huffDicDirectAccessTable:Lcom/mobipocket/common/library/reader/bookreader/HuffDicDirectAccessTable;

    iget v2, p0, Lcom/mobipocket/common/library/reader/bookreader/EBook;->currentRecord:I

    invoke-virtual {v1, v2}, Lcom/mobipocket/common/library/reader/bookreader/HuffDicDirectAccessTable;->getRecordSize(I)I

    move-result v1

    .line 485
    add-int v2, v1, v0

    new-array v2, v2, [B

    .line 486
    iget-object v5, p0, Lcom/mobipocket/common/library/reader/bookreader/EBook;->huffDicDecoder:Lcom/mobipocket/common/library/reader/bookreader/HuffDicDecoder;

    array-length v6, v4

    sub-int v0, v6, v0

    invoke-virtual {v5, v4, v2, v0}, Lcom/mobipocket/common/library/reader/bookreader/HuffDicDecoder;->uncompress([B[BI)I

    move-result v0

    .line 487
    iget-object v5, p0, Lcom/mobipocket/common/library/reader/bookreader/EBook;->fileHeader:Lcom/mobipocket/common/library/reader/book/MobiFileHeaderSecure;

    iget v5, v5, Lcom/mobipocket/common/library/reader/book/MobiFileHeaderSecure;->encoding:I

    invoke-static {v2, v0, v4, v5}, Lcom/mobipocket/common/library/reader/bookreader/EBook;->writeUTF8TrailingChars([BI[BI)I

    move-result v4

    move v13, v4

    move-object v4, v2

    move v2, v0

    move v0, v13

    .line 488
    goto/16 :goto_2

    .line 506
    :cond_6
    iget-object v2, p0, Lcom/mobipocket/common/library/reader/bookreader/EBook;->fileHeader:Lcom/mobipocket/common/library/reader/book/MobiFileHeaderSecure;

    iget v2, v2, Lcom/mobipocket/common/library/reader/book/MobiFileHeaderSecure;->encoding:I

    if-ne v2, v12, :cond_b

    if-eqz v4, :cond_b

    .line 507
    invoke-static {v4}, Lcom/mobipocket/common/library/reader/bookreader/TranslationTable;->getUTF8BeginOffset([B)I

    move-result v2

    .line 509
    :goto_4
    sub-int v3, v0, v2

    iget-object v5, p0, Lcom/mobipocket/common/library/reader/bookreader/EBook;->fileHeader:Lcom/mobipocket/common/library/reader/book/MobiFileHeaderSecure;

    iget v5, v5, Lcom/mobipocket/common/library/reader/book/MobiFileHeaderSecure;->encoding:I

    invoke-static {v4, v2, v3, v5}, Lcom/mobipocket/common/parser/UnicodeUtils;->charFromBuffer([BIII)[C

    move-result-object v2

    iput-object v2, v8, Lcom/mobipocket/common/library/reader/bookreader/EBook$SBuffer;->_text:[C

    .line 510
    iget-object v2, v8, Lcom/mobipocket/common/library/reader/bookreader/EBook$SBuffer;->_text:[C

    if-nez v2, :cond_7

    move-object v0, v11

    .line 512
    goto/16 :goto_0

    .line 516
    :cond_7
    iget v2, p0, Lcom/mobipocket/common/library/reader/bookreader/EBook;->currentRecord:I

    invoke-virtual {p0, v2}, Lcom/mobipocket/common/library/reader/bookreader/EBook;->getPosOfrecord(I)I

    move-result v2

    iput v2, v8, Lcom/mobipocket/common/library/reader/bookreader/EBook$SBuffer;->beg_pos:I

    .line 517
    iget-object v2, p0, Lcom/mobipocket/common/library/reader/bookreader/EBook;->fileHeader:Lcom/mobipocket/common/library/reader/book/MobiFileHeaderSecure;

    iget v2, v2, Lcom/mobipocket/common/library/reader/book/MobiFileHeaderSecure;->encoding:I

    if-ne v2, v12, :cond_8

    .line 519
    new-instance v2, Lcom/mobipocket/common/library/reader/bookreader/TranslationTable;

    iget v3, v8, Lcom/mobipocket/common/library/reader/bookreader/EBook$SBuffer;->beg_pos:I

    sub-int v3, p1, v3

    invoke-direct {v2, v4, v0, v3}, Lcom/mobipocket/common/library/reader/bookreader/TranslationTable;-><init>([BII)V

    invoke-static {v8, v2}, Lcom/mobipocket/common/library/reader/bookreader/EBook$SBuffer;->access$202(Lcom/mobipocket/common/library/reader/bookreader/EBook$SBuffer;Lcom/mobipocket/common/library/reader/bookreader/TranslationTable;)Lcom/mobipocket/common/library/reader/bookreader/TranslationTable;

    .line 521
    :cond_8
    iget v0, v8, Lcom/mobipocket/common/library/reader/bookreader/EBook$SBuffer;->beg_pos:I

    sub-int v0, p1, v0

    invoke-static {v8, v0}, Lcom/mobipocket/common/library/reader/bookreader/EBook$SBuffer;->access$100(Lcom/mobipocket/common/library/reader/bookreader/EBook$SBuffer;I)I

    .line 522
    iget-object v0, v8, Lcom/mobipocket/common/library/reader/bookreader/EBook$SBuffer;->_text:[C

    array-length v0, v0

    iput v0, v8, Lcom/mobipocket/common/library/reader/bookreader/EBook$SBuffer;->length:I

    .line 524
    invoke-static {v8, v1}, Lcom/mobipocket/common/library/reader/bookreader/EBook$SBuffer;->access$002(Lcom/mobipocket/common/library/reader/bookreader/EBook$SBuffer;I)I

    .line 526
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Buffer created:text nb characters="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, v8, Lcom/mobipocket/common/library/reader/bookreader/EBook$SBuffer;->length:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ,begin pos="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, v8, Lcom/mobipocket/common/library/reader/bookreader/EBook$SBuffer;->beg_pos:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", current Pos="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, v8, Lcom/mobipocket/common/library/reader/bookreader/EBook$SBuffer;->currentPos:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ,binary uncompressed length="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v8}, Lcom/mobipocket/common/library/reader/bookreader/EBook$SBuffer;->access$000(Lcom/mobipocket/common/library/reader/bookreader/EBook$SBuffer;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 534
    iget-object v0, v8, Lcom/mobipocket/common/library/reader/bookreader/EBook$SBuffer;->_text:[C

    if-eqz v0, :cond_a

    .line 547
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/bookreader/EBook;->lastSBuffer:Lcom/mobipocket/common/library/reader/bookreader/EBook$SBuffer;

    iput-object v0, p0, Lcom/mobipocket/common/library/reader/bookreader/EBook;->secondLastSBuffer:Lcom/mobipocket/common/library/reader/bookreader/EBook$SBuffer;

    .line 548
    iput-object v8, p0, Lcom/mobipocket/common/library/reader/bookreader/EBook;->lastSBuffer:Lcom/mobipocket/common/library/reader/bookreader/EBook$SBuffer;

    move-object v0, v8

    .line 549
    goto/16 :goto_0

    :cond_9
    move-object v0, v11

    .line 530
    goto/16 :goto_0

    :cond_a
    move-object v0, v11

    .line 553
    goto/16 :goto_0

    :cond_b
    move v2, v3

    goto/16 :goto_4

    :cond_c
    move v2, v1

    move v1, v9

    goto/16 :goto_2

    .line 446
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x48 -> :sswitch_2
    .end sparse-switch
.end method

.method public hasDefaultIndex()Z
    .locals 2

    .prologue
    .line 289
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/bookreader/EBook;->fileHeader:Lcom/mobipocket/common/library/reader/book/MobiFileHeaderSecure;

    iget v0, v1, Lcom/mobipocket/common/library/reader/book/MobiFileHeaderSecure;->idx_dic:I

    .line 290
    .local v0, defaultIndexRecIndex:I
    if-gtz v0, :cond_0

    .line 291
    const/4 v1, 0x0

    .line 293
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public hasNonCrossable()Z
    .locals 1

    .prologue
    .line 303
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/bookreader/EBook;->fileHeader:Lcom/mobipocket/common/library/reader/book/MobiFileHeaderSecure;

    iget v0, v0, Lcom/mobipocket/common/library/reader/book/MobiFileHeaderSecure;->trailingByteTypes:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public pageFromPosition(I)I
    .locals 2
    .parameter "position"

    .prologue
    const/4 v1, 0x1

    .line 680
    iget v0, p0, Lcom/mobipocket/common/library/reader/bookreader/EBook;->averageCharPerPage:I

    if-gtz v0, :cond_0

    move v0, v1

    .line 682
    :goto_0
    return v0

    .line 681
    :cond_0
    if-gez p1, :cond_1

    move v0, v1

    goto :goto_0

    .line 682
    :cond_1
    iget v0, p0, Lcom/mobipocket/common/library/reader/bookreader/EBook;->averageCharPerPage:I

    div-int v0, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public positionFromPage(I)I
    .locals 2
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 692
    if-ge p1, v0, :cond_0

    .line 694
    const/4 v0, 0x0

    .line 697
    :goto_0
    return v0

    :cond_0
    sub-int v0, p1, v0

    iget v1, p0, Lcom/mobipocket/common/library/reader/bookreader/EBook;->averageCharPerPage:I

    mul-int/2addr v0, v1

    goto :goto_0
.end method

.method public setAverageCharPerPage(III)V
    .locals 3
    .parameter "ClipWidth"
    .parameter "ClipHeigth"
    .parameter "defaultFontHeight"

    .prologue
    const/16 v2, 0x14

    .line 655
    mul-int v0, p1, p2

    mul-int/lit8 v0, v0, 0xe

    mul-int v1, p3, p3

    div-int/2addr v0, v1

    shr-int/lit8 v0, v0, 0x3

    iput v0, p0, Lcom/mobipocket/common/library/reader/bookreader/EBook;->averageCharPerPage:I

    .line 656
    iget v0, p0, Lcom/mobipocket/common/library/reader/bookreader/EBook;->averageCharPerPage:I

    if-ge v0, v2, :cond_0

    .line 658
    iput v2, p0, Lcom/mobipocket/common/library/reader/bookreader/EBook;->averageCharPerPage:I

    .line 663
    :cond_0
    return-void
.end method
