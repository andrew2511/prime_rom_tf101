.class public Lorg/apache/xml/utils/FastStringBuffer;
.super Ljava/lang/Object;
.source "FastStringBuffer.java"


# static fields
.field private static final CARRY_WS:I = 0x4

.field static final DEBUG_FORCE_FIXED_CHUNKSIZE:Z = true

.field static final DEBUG_FORCE_INIT_BITS:I = 0x0

.field static final SINGLE_SPACE:[C = null

.field public static final SUPPRESS_BOTH:I = 0x3

.field public static final SUPPRESS_LEADING_WS:I = 0x1

.field public static final SUPPRESS_TRAILING_WS:I = 0x2


# instance fields
.field m_array:[[C

.field m_chunkBits:I

.field m_chunkMask:I

.field m_chunkSize:I

.field m_firstFree:I

.field m_innerFSB:Lorg/apache/xml/utils/FastStringBuffer;

.field m_lastChunk:I

.field m_maxChunkBits:I

.field m_rebundleBits:I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 1082
    const/4 v0, 0x1

    new-array v0, v0, [C

    const/4 v1, 0x0

    const/16 v2, 0x20

    aput-char v2, v0, v1

    sput-object v0, Lorg/apache/xml/utils/FastStringBuffer;->SINGLE_SPACE:[C

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    .prologue
    .line 260
    const/16 v0, 0xa

    const/16 v1, 0xf

    const/4 v2, 0x2

    invoke-direct {p0, v0, v1, v2}, Lorg/apache/xml/utils/FastStringBuffer;-><init>(III)V

    .line 261
    return-void
.end method

.method public constructor <init>(I)V
    .registers 4
    .parameter "initChunkBits"

    .prologue
    .line 246
    const/16 v0, 0xf

    const/4 v1, 0x2

    invoke-direct {p0, p1, v0, v1}, Lorg/apache/xml/utils/FastStringBuffer;-><init>(III)V

    .line 247
    return-void
.end method

.method public constructor <init>(II)V
    .registers 4
    .parameter "initChunkBits"
    .parameter "maxChunkBits"

    .prologue
    .line 232
    const/4 v0, 0x2

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/xml/utils/FastStringBuffer;-><init>(III)V

    .line 233
    return-void
.end method

.method public constructor <init>(III)V
    .registers 7
    .parameter "initChunkBits"
    .parameter "maxChunkBits"
    .parameter "rebundleBits"

    .prologue
    const/16 v0, 0xf

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 197
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    iput v0, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_chunkBits:I

    .line 108
    iput v0, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_maxChunkBits:I

    .line 118
    const/4 v0, 0x2

    iput v0, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_rebundleBits:I

    .line 153
    iput v2, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_lastChunk:I

    .line 162
    iput v2, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_firstFree:I

    .line 171
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_innerFSB:Lorg/apache/xml/utils/FastStringBuffer;

    .line 207
    move p2, p1

    .line 210
    const/16 v0, 0x10

    new-array v0, v0, [[C

    iput-object v0, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_array:[[C

    .line 213
    if-le p1, p2, :cond_1f

    .line 214
    move p1, p2

    .line 216
    :cond_1f
    iput p1, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_chunkBits:I

    .line 217
    iput p2, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_maxChunkBits:I

    .line 218
    iput p3, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_rebundleBits:I

    .line 219
    shl-int v0, v1, p1

    iput v0, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_chunkSize:I

    .line 220
    iget v0, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_chunkSize:I

    sub-int/2addr v0, v1

    iput v0, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_chunkMask:I

    .line 221
    iget-object v0, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_array:[[C

    iget v1, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_chunkSize:I

    new-array v1, v1, [C

    aput-object v1, v0, v2

    .line 222
    return-void
.end method

.method private constructor <init>(Lorg/apache/xml/utils/FastStringBuffer;)V
    .registers 5
    .parameter "source"

    .prologue
    const/16 v0, 0xf

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 1264
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    iput v0, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_chunkBits:I

    .line 108
    iput v0, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_maxChunkBits:I

    .line 118
    const/4 v0, 0x2

    iput v0, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_rebundleBits:I

    .line 153
    iput v1, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_lastChunk:I

    .line 162
    iput v1, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_firstFree:I

    .line 171
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_innerFSB:Lorg/apache/xml/utils/FastStringBuffer;

    .line 1267
    iget v0, p1, Lorg/apache/xml/utils/FastStringBuffer;->m_chunkBits:I

    iput v0, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_chunkBits:I

    .line 1268
    iget v0, p1, Lorg/apache/xml/utils/FastStringBuffer;->m_maxChunkBits:I

    iput v0, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_maxChunkBits:I

    .line 1269
    iget v0, p1, Lorg/apache/xml/utils/FastStringBuffer;->m_rebundleBits:I

    iput v0, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_rebundleBits:I

    .line 1270
    iget v0, p1, Lorg/apache/xml/utils/FastStringBuffer;->m_chunkSize:I

    iput v0, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_chunkSize:I

    .line 1271
    iget v0, p1, Lorg/apache/xml/utils/FastStringBuffer;->m_chunkMask:I

    iput v0, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_chunkMask:I

    .line 1272
    iget-object v0, p1, Lorg/apache/xml/utils/FastStringBuffer;->m_array:[[C

    iput-object v0, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_array:[[C

    .line 1273
    iget-object v0, p1, Lorg/apache/xml/utils/FastStringBuffer;->m_innerFSB:Lorg/apache/xml/utils/FastStringBuffer;

    iput-object v0, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_innerFSB:Lorg/apache/xml/utils/FastStringBuffer;

    .line 1277
    iget v0, p1, Lorg/apache/xml/utils/FastStringBuffer;->m_lastChunk:I

    sub-int/2addr v0, v2

    iput v0, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_lastChunk:I

    .line 1278
    iget v0, p1, Lorg/apache/xml/utils/FastStringBuffer;->m_chunkSize:I

    iput v0, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_firstFree:I

    .line 1281
    const/16 v0, 0x10

    new-array v0, v0, [[C

    iput-object v0, p1, Lorg/apache/xml/utils/FastStringBuffer;->m_array:[[C

    .line 1282
    iput-object p0, p1, Lorg/apache/xml/utils/FastStringBuffer;->m_innerFSB:Lorg/apache/xml/utils/FastStringBuffer;

    .line 1287
    iput v2, p1, Lorg/apache/xml/utils/FastStringBuffer;->m_lastChunk:I

    .line 1288
    iput v1, p1, Lorg/apache/xml/utils/FastStringBuffer;->m_firstFree:I

    .line 1289
    iget v0, p1, Lorg/apache/xml/utils/FastStringBuffer;->m_chunkBits:I

    iget v1, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_rebundleBits:I

    add-int/2addr v0, v1

    iput v0, p1, Lorg/apache/xml/utils/FastStringBuffer;->m_chunkBits:I

    .line 1290
    iget v0, p1, Lorg/apache/xml/utils/FastStringBuffer;->m_chunkBits:I

    shl-int v0, v2, v0

    iput v0, p1, Lorg/apache/xml/utils/FastStringBuffer;->m_chunkSize:I

    .line 1291
    iget v0, p1, Lorg/apache/xml/utils/FastStringBuffer;->m_chunkSize:I

    sub-int/2addr v0, v2

    iput v0, p1, Lorg/apache/xml/utils/FastStringBuffer;->m_chunkMask:I

    .line 1292
    return-void
.end method

.method private getChars(II[CI)V
    .registers 5
    .parameter "srcBegin"
    .parameter "srcEnd"
    .parameter "dst"
    .parameter "dstBegin"

    .prologue
    .line 1253
    return-void
.end method

.method static sendNormalizedSAXcharacters([CIILorg/xml/sax/ContentHandler;I)I
    .registers 14
    .parameter "ch"
    .parameter "start"
    .parameter "length"
    .parameter "handler"
    .parameter "edgeTreatmentFlags"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 1133
    and-int/lit8 v6, p4, 0x1

    if-eqz v6, :cond_1e

    move v2, v8

    .line 1135
    .local v2, processingLeadingWhitespace:Z
    :goto_7
    and-int/lit8 v6, p4, 0x4

    if-eqz v6, :cond_20

    move v3, v8

    .line 1136
    .local v3, seenWhitespace:Z
    :goto_c
    move v0, p1

    .line 1137
    .local v0, currPos:I
    add-int v1, p1, p2

    .line 1140
    .local v1, limit:I
    if-eqz v2, :cond_29

    .line 1142
    :goto_11
    if-ge v0, v1, :cond_22

    aget-char v6, p0, v0

    invoke-static {v6}, Lorg/apache/xml/utils/XMLCharacterRecognizer;->isWhiteSpace(C)Z

    move-result v6

    if-eqz v6, :cond_22

    .line 1143
    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    .end local v0           #currPos:I
    .end local v1           #limit:I
    .end local v2           #processingLeadingWhitespace:Z
    .end local v3           #seenWhitespace:Z
    :cond_1e
    move v2, v7

    .line 1133
    goto :goto_7

    .restart local v2       #processingLeadingWhitespace:Z
    :cond_20
    move v3, v7

    .line 1135
    goto :goto_c

    .line 1147
    .restart local v0       #currPos:I
    .restart local v1       #limit:I
    .restart local v3       #seenWhitespace:Z
    :cond_22
    if-ne v0, v1, :cond_29

    move v6, p4

    .line 1184
    :goto_25
    return v6

    .line 1179
    .local v4, startNonWhitespace:I
    .local v5, startWhitespace:I
    :cond_26
    if-eq v5, v0, :cond_29

    .line 1180
    const/4 v3, 0x1

    .line 1153
    .end local v4           #startNonWhitespace:I
    .end local v5           #startWhitespace:I
    :cond_29
    if-ge v0, v1, :cond_56

    .line 1154
    move v4, v0

    .line 1158
    .restart local v4       #startNonWhitespace:I
    :goto_2c
    if-ge v0, v1, :cond_39

    aget-char v6, p0, v0

    invoke-static {v6}, Lorg/apache/xml/utils/XMLCharacterRecognizer;->isWhiteSpace(C)Z

    move-result v6

    if-nez v6, :cond_39

    .line 1159
    add-int/lit8 v0, v0, 0x1

    goto :goto_2c

    .line 1163
    :cond_39
    if-eq v4, v0, :cond_48

    .line 1164
    if-eqz v3, :cond_43

    .line 1165
    sget-object v6, Lorg/apache/xml/utils/FastStringBuffer;->SINGLE_SPACE:[C

    invoke-interface {p3, v6, v7, v8}, Lorg/xml/sax/ContentHandler;->characters([CII)V

    .line 1166
    const/4 v3, 0x0

    .line 1168
    :cond_43
    sub-int v6, v0, v4

    invoke-interface {p3, p0, v4, v6}, Lorg/xml/sax/ContentHandler;->characters([CII)V

    .line 1172
    :cond_48
    move v5, v0

    .line 1176
    .restart local v5       #startWhitespace:I
    :goto_49
    if-ge v0, v1, :cond_26

    aget-char v6, p0, v0

    invoke-static {v6}, Lorg/apache/xml/utils/XMLCharacterRecognizer;->isWhiteSpace(C)Z

    move-result v6

    if-eqz v6, :cond_26

    .line 1177
    add-int/lit8 v0, v0, 0x1

    goto :goto_49

    .line 1184
    .end local v4           #startNonWhitespace:I
    .end local v5           #startWhitespace:I
    :cond_56
    if-eqz v3, :cond_5d

    const/4 v6, 0x4

    :goto_59
    and-int/lit8 v7, p4, 0x2

    or-int/2addr v6, v7

    goto :goto_25

    :cond_5d
    move v6, v7

    goto :goto_59
.end method

.method public static sendNormalizedSAXcharacters([CIILorg/xml/sax/ContentHandler;)V
    .registers 5
    .parameter "ch"
    .parameter "start"
    .parameter "length"
    .parameter "handler"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 1203
    const/4 v0, 0x3

    invoke-static {p0, p1, p2, p3, v0}, Lorg/apache/xml/utils/FastStringBuffer;->sendNormalizedSAXcharacters([CIILorg/xml/sax/ContentHandler;I)I

    .line 1205
    return-void
.end method

.method private final setLength(ILorg/apache/xml/utils/FastStringBuffer;)V
    .registers 4
    .parameter "l"
    .parameter "rootFSB"

    .prologue
    .line 360
    iget v0, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_chunkBits:I

    ushr-int v0, p1, v0

    iput v0, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_lastChunk:I

    .line 362
    iget v0, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_lastChunk:I

    if-nez v0, :cond_14

    iget-object v0, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_innerFSB:Lorg/apache/xml/utils/FastStringBuffer;

    if-eqz v0, :cond_14

    .line 364
    iget-object v0, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_innerFSB:Lorg/apache/xml/utils/FastStringBuffer;

    invoke-direct {v0, p1, p2}, Lorg/apache/xml/utils/FastStringBuffer;->setLength(ILorg/apache/xml/utils/FastStringBuffer;)V

    .line 383
    :goto_13
    return-void

    .line 371
    :cond_14
    iget v0, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_chunkBits:I

    iput v0, p2, Lorg/apache/xml/utils/FastStringBuffer;->m_chunkBits:I

    .line 372
    iget v0, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_maxChunkBits:I

    iput v0, p2, Lorg/apache/xml/utils/FastStringBuffer;->m_maxChunkBits:I

    .line 373
    iget v0, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_rebundleBits:I

    iput v0, p2, Lorg/apache/xml/utils/FastStringBuffer;->m_rebundleBits:I

    .line 374
    iget v0, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_chunkSize:I

    iput v0, p2, Lorg/apache/xml/utils/FastStringBuffer;->m_chunkSize:I

    .line 375
    iget v0, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_chunkMask:I

    iput v0, p2, Lorg/apache/xml/utils/FastStringBuffer;->m_chunkMask:I

    .line 376
    iget-object v0, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_array:[[C

    iput-object v0, p2, Lorg/apache/xml/utils/FastStringBuffer;->m_array:[[C

    .line 377
    iget-object v0, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_innerFSB:Lorg/apache/xml/utils/FastStringBuffer;

    iput-object v0, p2, Lorg/apache/xml/utils/FastStringBuffer;->m_innerFSB:Lorg/apache/xml/utils/FastStringBuffer;

    .line 378
    iget v0, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_lastChunk:I

    iput v0, p2, Lorg/apache/xml/utils/FastStringBuffer;->m_lastChunk:I

    .line 381
    iget v0, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_chunkMask:I

    and-int/2addr v0, p1

    iput v0, p2, Lorg/apache/xml/utils/FastStringBuffer;->m_firstFree:I

    goto :goto_13
.end method


# virtual methods
.method public final append(C)V
    .registers 9
    .parameter "value"

    .prologue
    const/4 v6, 0x0

    .line 424
    iget v3, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_firstFree:I

    iget v4, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_chunkSize:I

    if-ge v3, v4, :cond_16

    .line 425
    iget-object v3, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_array:[[C

    iget v4, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_lastChunk:I

    aget-object v0, v3, v4

    .line 465
    .local v0, chunk:[C
    :goto_d
    iget v3, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_firstFree:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_firstFree:I

    aput-char p1, v0, v3

    .line 466
    return-void

    .line 430
    .end local v0           #chunk:[C
    :cond_16
    iget-object v3, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_array:[[C

    array-length v1, v3

    .line 432
    .local v1, i:I
    iget v3, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_lastChunk:I

    add-int/lit8 v3, v3, 0x1

    if-ne v3, v1, :cond_2a

    .line 434
    add-int/lit8 v3, v1, 0x10

    new-array v2, v3, [[C

    .line 436
    .local v2, newarray:[[C
    iget-object v3, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_array:[[C

    invoke-static {v3, v6, v2, v6, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 438
    iput-object v2, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_array:[[C

    .line 442
    .end local v2           #newarray:[[C
    :cond_2a
    iget-object v3, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_array:[[C

    iget v4, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_lastChunk:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_lastChunk:I

    aget-object v0, v3, v4

    .line 444
    .restart local v0       #chunk:[C
    if-nez v0, :cond_55

    .line 448
    iget v3, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_lastChunk:I

    const/4 v4, 0x1

    iget v5, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_rebundleBits:I

    shl-int/2addr v4, v5

    if-ne v3, v4, :cond_4b

    iget v3, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_chunkBits:I

    iget v4, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_maxChunkBits:I

    if-ge v3, v4, :cond_4b

    .line 454
    new-instance v3, Lorg/apache/xml/utils/FastStringBuffer;

    invoke-direct {v3, p0}, Lorg/apache/xml/utils/FastStringBuffer;-><init>(Lorg/apache/xml/utils/FastStringBuffer;)V

    iput-object v3, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_innerFSB:Lorg/apache/xml/utils/FastStringBuffer;

    .line 458
    :cond_4b
    iget-object v3, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_array:[[C

    iget v4, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_lastChunk:I

    iget v5, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_chunkSize:I

    new-array v0, v5, [C

    .end local v0           #chunk:[C
    aput-object v0, v3, v4

    .line 461
    .restart local v0       #chunk:[C
    :cond_55
    iput v6, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_firstFree:I

    goto :goto_d
.end method

.method public final append(Ljava/lang/String;)V
    .registers 12
    .parameter "value"

    .prologue
    const/4 v9, 0x0

    .line 480
    if-nez p1, :cond_4

    .line 548
    :cond_3
    :goto_3
    return-void

    .line 482
    :cond_4
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    .line 484
    .local v5, strlen:I
    if-eqz v5, :cond_3

    .line 487
    const/4 v2, 0x0

    .line 488
    .local v2, copyfrom:I
    iget-object v6, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_array:[[C

    iget v7, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_lastChunk:I

    aget-object v1, v6, v7

    .line 489
    .local v1, chunk:[C
    iget v6, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_chunkSize:I

    iget v7, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_firstFree:I

    sub-int v0, v6, v7

    .line 492
    .local v0, available:I
    :cond_17
    :goto_17
    if-lez v5, :cond_71

    .line 496
    if-le v0, v5, :cond_1c

    .line 497
    move v0, v5

    .line 499
    :cond_1c
    add-int v6, v2, v0

    iget-object v7, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_array:[[C

    iget v8, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_lastChunk:I

    aget-object v7, v7, v8

    iget v8, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_firstFree:I

    invoke-virtual {p1, v2, v6, v7, v8}, Ljava/lang/String;->getChars(II[CI)V

    .line 502
    sub-int/2addr v5, v0

    .line 503
    add-int/2addr v2, v0

    .line 506
    if-lez v5, :cond_17

    .line 510
    iget-object v6, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_array:[[C

    array-length v3, v6

    .line 512
    .local v3, i:I
    iget v6, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_lastChunk:I

    add-int/lit8 v6, v6, 0x1

    if-ne v6, v3, :cond_41

    .line 514
    add-int/lit8 v6, v3, 0x10

    new-array v4, v6, [[C

    .line 516
    .local v4, newarray:[[C
    iget-object v6, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_array:[[C

    invoke-static {v6, v9, v4, v9, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 518
    iput-object v4, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_array:[[C

    .line 522
    .end local v4           #newarray:[[C
    :cond_41
    iget-object v6, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_array:[[C

    iget v7, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_lastChunk:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_lastChunk:I

    aget-object v1, v6, v7

    .line 524
    if-nez v1, :cond_6c

    .line 528
    iget v6, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_lastChunk:I

    const/4 v7, 0x1

    iget v8, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_rebundleBits:I

    shl-int/2addr v7, v8

    if-ne v6, v7, :cond_62

    iget v6, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_chunkBits:I

    iget v7, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_maxChunkBits:I

    if-ge v6, v7, :cond_62

    .line 534
    new-instance v6, Lorg/apache/xml/utils/FastStringBuffer;

    invoke-direct {v6, p0}, Lorg/apache/xml/utils/FastStringBuffer;-><init>(Lorg/apache/xml/utils/FastStringBuffer;)V

    iput-object v6, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_innerFSB:Lorg/apache/xml/utils/FastStringBuffer;

    .line 538
    :cond_62
    iget-object v6, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_array:[[C

    iget v7, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_lastChunk:I

    iget v8, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_chunkSize:I

    new-array v1, v8, [C

    .end local v1           #chunk:[C
    aput-object v1, v6, v7

    .line 541
    .restart local v1       #chunk:[C
    :cond_6c
    iget v0, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_chunkSize:I

    .line 542
    iput v9, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_firstFree:I

    goto :goto_17

    .line 547
    .end local v3           #i:I
    :cond_71
    iget v6, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_firstFree:I

    add-int/2addr v6, v0

    iput v6, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_firstFree:I

    goto :goto_3
.end method

.method public final append(Ljava/lang/StringBuffer;)V
    .registers 12
    .parameter "value"

    .prologue
    const/4 v9, 0x0

    .line 562
    if-nez p1, :cond_4

    .line 630
    :cond_3
    :goto_3
    return-void

    .line 564
    :cond_4
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->length()I

    move-result v5

    .line 566
    .local v5, strlen:I
    if-eqz v5, :cond_3

    .line 569
    const/4 v2, 0x0

    .line 570
    .local v2, copyfrom:I
    iget-object v6, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_array:[[C

    iget v7, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_lastChunk:I

    aget-object v1, v6, v7

    .line 571
    .local v1, chunk:[C
    iget v6, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_chunkSize:I

    iget v7, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_firstFree:I

    sub-int v0, v6, v7

    .line 574
    .local v0, available:I
    :cond_17
    :goto_17
    if-lez v5, :cond_71

    .line 578
    if-le v0, v5, :cond_1c

    .line 579
    move v0, v5

    .line 581
    :cond_1c
    add-int v6, v2, v0

    iget-object v7, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_array:[[C

    iget v8, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_lastChunk:I

    aget-object v7, v7, v8

    iget v8, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_firstFree:I

    invoke-virtual {p1, v2, v6, v7, v8}, Ljava/lang/StringBuffer;->getChars(II[CI)V

    .line 584
    sub-int/2addr v5, v0

    .line 585
    add-int/2addr v2, v0

    .line 588
    if-lez v5, :cond_17

    .line 592
    iget-object v6, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_array:[[C

    array-length v3, v6

    .line 594
    .local v3, i:I
    iget v6, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_lastChunk:I

    add-int/lit8 v6, v6, 0x1

    if-ne v6, v3, :cond_41

    .line 596
    add-int/lit8 v6, v3, 0x10

    new-array v4, v6, [[C

    .line 598
    .local v4, newarray:[[C
    iget-object v6, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_array:[[C

    invoke-static {v6, v9, v4, v9, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 600
    iput-object v4, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_array:[[C

    .line 604
    .end local v4           #newarray:[[C
    :cond_41
    iget-object v6, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_array:[[C

    iget v7, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_lastChunk:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_lastChunk:I

    aget-object v1, v6, v7

    .line 606
    if-nez v1, :cond_6c

    .line 610
    iget v6, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_lastChunk:I

    const/4 v7, 0x1

    iget v8, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_rebundleBits:I

    shl-int/2addr v7, v8

    if-ne v6, v7, :cond_62

    iget v6, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_chunkBits:I

    iget v7, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_maxChunkBits:I

    if-ge v6, v7, :cond_62

    .line 616
    new-instance v6, Lorg/apache/xml/utils/FastStringBuffer;

    invoke-direct {v6, p0}, Lorg/apache/xml/utils/FastStringBuffer;-><init>(Lorg/apache/xml/utils/FastStringBuffer;)V

    iput-object v6, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_innerFSB:Lorg/apache/xml/utils/FastStringBuffer;

    .line 620
    :cond_62
    iget-object v6, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_array:[[C

    iget v7, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_lastChunk:I

    iget v8, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_chunkSize:I

    new-array v1, v8, [C

    .end local v1           #chunk:[C
    aput-object v1, v6, v7

    .line 623
    .restart local v1       #chunk:[C
    :cond_6c
    iget v0, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_chunkSize:I

    .line 624
    iput v9, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_firstFree:I

    goto :goto_17

    .line 629
    .end local v3           #i:I
    :cond_71
    iget v6, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_firstFree:I

    add-int/2addr v6, v0

    iput v6, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_firstFree:I

    goto :goto_3
.end method

.method public final append(Lorg/apache/xml/utils/FastStringBuffer;)V
    .registers 16
    .parameter "value"

    .prologue
    .line 732
    if-nez p1, :cond_3

    .line 813
    :cond_2
    :goto_2
    return-void

    .line 734
    :cond_3
    invoke-virtual {p1}, Lorg/apache/xml/utils/FastStringBuffer;->length()I

    move-result v8

    .line 736
    .local v8, strlen:I
    if-eqz v8, :cond_2

    .line 739
    const/4 v2, 0x0

    .line 740
    .local v2, copyfrom:I
    iget-object v9, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_array:[[C

    iget v10, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_lastChunk:I

    aget-object v1, v9, v10

    .line 741
    .local v1, chunk:[C
    iget v9, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_chunkSize:I

    iget v10, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_firstFree:I

    sub-int v0, v9, v10

    .line 744
    .local v0, available:I
    :cond_16
    :goto_16
    if-lez v8, :cond_a1

    .line 748
    if-le v0, v8, :cond_1b

    .line 749
    move v0, v8

    .line 751
    :cond_1b
    iget v9, p1, Lorg/apache/xml/utils/FastStringBuffer;->m_chunkSize:I

    add-int/2addr v9, v2

    const/4 v10, 0x1

    sub-int/2addr v9, v10

    iget v10, p1, Lorg/apache/xml/utils/FastStringBuffer;->m_chunkBits:I

    ushr-int v6, v9, v10

    .line 753
    .local v6, sourcechunk:I
    iget v9, p1, Lorg/apache/xml/utils/FastStringBuffer;->m_chunkMask:I

    and-int v7, v2, v9

    .line 754
    .local v7, sourcecolumn:I
    iget v9, p1, Lorg/apache/xml/utils/FastStringBuffer;->m_chunkSize:I

    sub-int v5, v9, v7

    .line 756
    .local v5, runlength:I
    if-le v5, v0, :cond_2f

    .line 757
    move v5, v0

    .line 759
    :cond_2f
    iget-object v9, p1, Lorg/apache/xml/utils/FastStringBuffer;->m_array:[[C

    aget-object v9, v9, v6

    iget-object v10, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_array:[[C

    iget v11, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_lastChunk:I

    aget-object v10, v10, v11

    iget v11, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_firstFree:I

    invoke-static {v9, v7, v10, v11, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 762
    if-eq v5, v0, :cond_55

    .line 763
    iget-object v9, p1, Lorg/apache/xml/utils/FastStringBuffer;->m_array:[[C

    add-int/lit8 v10, v6, 0x1

    aget-object v9, v9, v10

    const/4 v10, 0x0

    iget-object v11, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_array:[[C

    iget v12, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_lastChunk:I

    aget-object v11, v11, v12

    iget v12, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_firstFree:I

    add-int/2addr v12, v5

    sub-int v13, v0, v5

    invoke-static {v9, v10, v11, v12, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 767
    :cond_55
    sub-int/2addr v8, v0

    .line 768
    add-int/2addr v2, v0

    .line 771
    if-lez v8, :cond_16

    .line 775
    iget-object v9, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_array:[[C

    array-length v3, v9

    .line 777
    .local v3, i:I
    iget v9, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_lastChunk:I

    add-int/lit8 v9, v9, 0x1

    if-ne v9, v3, :cond_6f

    .line 779
    add-int/lit8 v9, v3, 0x10

    new-array v4, v9, [[C

    .line 781
    .local v4, newarray:[[C
    iget-object v9, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_array:[[C

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static {v9, v10, v4, v11, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 783
    iput-object v4, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_array:[[C

    .line 787
    .end local v4           #newarray:[[C
    :cond_6f
    iget-object v9, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_array:[[C

    iget v10, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_lastChunk:I

    add-int/lit8 v10, v10, 0x1

    iput v10, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_lastChunk:I

    aget-object v1, v9, v10

    .line 789
    if-nez v1, :cond_9a

    .line 793
    iget v9, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_lastChunk:I

    const/4 v10, 0x1

    iget v11, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_rebundleBits:I

    shl-int/2addr v10, v11

    if-ne v9, v10, :cond_90

    iget v9, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_chunkBits:I

    iget v10, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_maxChunkBits:I

    if-ge v9, v10, :cond_90

    .line 799
    new-instance v9, Lorg/apache/xml/utils/FastStringBuffer;

    invoke-direct {v9, p0}, Lorg/apache/xml/utils/FastStringBuffer;-><init>(Lorg/apache/xml/utils/FastStringBuffer;)V

    iput-object v9, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_innerFSB:Lorg/apache/xml/utils/FastStringBuffer;

    .line 803
    :cond_90
    iget-object v9, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_array:[[C

    iget v10, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_lastChunk:I

    iget v11, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_chunkSize:I

    new-array v1, v11, [C

    .end local v1           #chunk:[C
    aput-object v1, v9, v10

    .line 806
    .restart local v1       #chunk:[C
    :cond_9a
    iget v0, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_chunkSize:I

    .line 807
    const/4 v9, 0x0

    iput v9, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_firstFree:I

    goto/16 :goto_16

    .line 812
    .end local v3           #i:I
    .end local v5           #runlength:I
    .end local v6           #sourcechunk:I
    .end local v7           #sourcecolumn:I
    :cond_a1
    iget v9, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_firstFree:I

    add-int/2addr v9, v0

    iput v9, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_firstFree:I

    goto/16 :goto_2
.end method

.method public final append([CII)V
    .registers 14
    .parameter "chars"
    .parameter "start"
    .parameter "length"

    .prologue
    const/4 v9, 0x0

    .line 647
    move v5, p3

    .line 649
    .local v5, strlen:I
    if-nez v5, :cond_5

    .line 713
    :goto_4
    return-void

    .line 652
    :cond_5
    move v2, p2

    .line 653
    .local v2, copyfrom:I
    iget-object v6, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_array:[[C

    iget v7, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_lastChunk:I

    aget-object v1, v6, v7

    .line 654
    .local v1, chunk:[C
    iget v6, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_chunkSize:I

    iget v7, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_firstFree:I

    sub-int v0, v6, v7

    .line 657
    .local v0, available:I
    :cond_12
    :goto_12
    if-lez v5, :cond_6a

    .line 661
    if-le v0, v5, :cond_17

    .line 662
    move v0, v5

    .line 664
    :cond_17
    iget-object v6, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_array:[[C

    iget v7, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_lastChunk:I

    aget-object v6, v6, v7

    iget v7, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_firstFree:I

    invoke-static {p1, v2, v6, v7, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 667
    sub-int/2addr v5, v0

    .line 668
    add-int/2addr v2, v0

    .line 671
    if-lez v5, :cond_12

    .line 675
    iget-object v6, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_array:[[C

    array-length v3, v6

    .line 677
    .local v3, i:I
    iget v6, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_lastChunk:I

    add-int/lit8 v6, v6, 0x1

    if-ne v6, v3, :cond_3a

    .line 679
    add-int/lit8 v6, v3, 0x10

    new-array v4, v6, [[C

    .line 681
    .local v4, newarray:[[C
    iget-object v6, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_array:[[C

    invoke-static {v6, v9, v4, v9, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 683
    iput-object v4, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_array:[[C

    .line 687
    .end local v4           #newarray:[[C
    :cond_3a
    iget-object v6, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_array:[[C

    iget v7, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_lastChunk:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_lastChunk:I

    aget-object v1, v6, v7

    .line 689
    if-nez v1, :cond_65

    .line 693
    iget v6, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_lastChunk:I

    const/4 v7, 0x1

    iget v8, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_rebundleBits:I

    shl-int/2addr v7, v8

    if-ne v6, v7, :cond_5b

    iget v6, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_chunkBits:I

    iget v7, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_maxChunkBits:I

    if-ge v6, v7, :cond_5b

    .line 699
    new-instance v6, Lorg/apache/xml/utils/FastStringBuffer;

    invoke-direct {v6, p0}, Lorg/apache/xml/utils/FastStringBuffer;-><init>(Lorg/apache/xml/utils/FastStringBuffer;)V

    iput-object v6, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_innerFSB:Lorg/apache/xml/utils/FastStringBuffer;

    .line 703
    :cond_5b
    iget-object v6, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_array:[[C

    iget v7, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_lastChunk:I

    iget v8, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_chunkSize:I

    new-array v1, v8, [C

    .end local v1           #chunk:[C
    aput-object v1, v6, v7

    .line 706
    .restart local v1       #chunk:[C
    :cond_65
    iget v0, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_chunkSize:I

    .line 707
    iput v9, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_firstFree:I

    goto :goto_12

    .line 712
    .end local v3           #i:I
    :cond_6a
    iget v6, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_firstFree:I

    add-int/2addr v6, v0

    iput v6, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_firstFree:I

    goto :goto_4
.end method

.method public charAt(I)C
    .registers 5
    .parameter "pos"

    .prologue
    .line 950
    iget v1, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_chunkBits:I

    ushr-int v0, p1, v1

    .line 952
    .local v0, startChunk:I
    if-nez v0, :cond_14

    iget-object v1, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_innerFSB:Lorg/apache/xml/utils/FastStringBuffer;

    if-eqz v1, :cond_14

    .line 953
    iget-object v1, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_innerFSB:Lorg/apache/xml/utils/FastStringBuffer;

    iget v2, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_chunkMask:I

    and-int/2addr v2, p1

    invoke-virtual {v1, v2}, Lorg/apache/xml/utils/FastStringBuffer;->charAt(I)C

    move-result v1

    .line 955
    :goto_13
    return v1

    :cond_14
    iget-object v1, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_array:[[C

    aget-object v1, v1, v0

    iget v2, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_chunkMask:I

    and-int/2addr v2, p1

    aget-char v1, v1, v2

    goto :goto_13
.end method

.method protected getOneChunkString(III)Ljava/lang/String;
    .registers 6
    .parameter "startChunk"
    .parameter "startColumn"
    .parameter "length"

    .prologue
    .line 875
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_array:[[C

    aget-object v1, v1, p1

    invoke-direct {v0, v1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    return-object v0
.end method

.method public getString(II)Ljava/lang/String;
    .registers 7
    .parameter "start"
    .parameter "length"

    .prologue
    .line 864
    iget v2, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_chunkMask:I

    and-int v1, p1, v2

    .line 865
    .local v1, startColumn:I
    iget v2, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_chunkBits:I

    ushr-int v0, p1, v2

    .line 866
    .local v0, startChunk:I
    add-int v2, v1, p2

    iget v3, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_chunkMask:I

    if-ge v2, v3, :cond_17

    iget-object v2, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_innerFSB:Lorg/apache/xml/utils/FastStringBuffer;

    if-nez v2, :cond_17

    .line 867
    invoke-virtual {p0, v0, v1, p2}, Lorg/apache/xml/utils/FastStringBuffer;->getOneChunkString(III)Ljava/lang/String;

    move-result-object v2

    .line 869
    :goto_16
    return-object v2

    :cond_17
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2, p2}, Ljava/lang/StringBuffer;-><init>(I)V

    invoke-virtual {p0, v2, v0, v1, p2}, Lorg/apache/xml/utils/FastStringBuffer;->getString(Ljava/lang/StringBuffer;III)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_16
.end method

.method getString(Ljava/lang/StringBuffer;II)Ljava/lang/StringBuffer;
    .registers 6
    .parameter "sb"
    .parameter "start"
    .parameter "length"

    .prologue
    .line 886
    iget v0, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_chunkBits:I

    ushr-int v0, p2, v0

    iget v1, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_chunkMask:I

    and-int/2addr v1, p2

    invoke-virtual {p0, p1, v0, v1, p3}, Lorg/apache/xml/utils/FastStringBuffer;->getString(Ljava/lang/StringBuffer;III)Ljava/lang/StringBuffer;

    move-result-object v0

    return-object v0
.end method

.method getString(Ljava/lang/StringBuffer;III)Ljava/lang/StringBuffer;
    .registers 11
    .parameter "sb"
    .parameter "startChunk"
    .parameter "startColumn"
    .parameter "length"

    .prologue
    .line 917
    iget v4, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_chunkBits:I

    shl-int v4, p2, v4

    add-int/2addr v4, p3

    add-int v1, v4, p4

    .line 918
    .local v1, stop:I
    iget v4, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_chunkBits:I

    ushr-int v2, v1, v4

    .line 919
    .local v2, stopChunk:I
    iget v4, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_chunkMask:I

    and-int v3, v1, v4

    .line 923
    .local v3, stopColumn:I
    move v0, p2

    .local v0, i:I
    :goto_10
    if-ge v0, v2, :cond_2f

    .line 925
    if-nez v0, :cond_24

    iget-object v4, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_innerFSB:Lorg/apache/xml/utils/FastStringBuffer;

    if-eqz v4, :cond_24

    .line 926
    iget-object v4, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_innerFSB:Lorg/apache/xml/utils/FastStringBuffer;

    iget v5, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_chunkSize:I

    sub-int/2addr v5, p3

    invoke-virtual {v4, p1, p3, v5}, Lorg/apache/xml/utils/FastStringBuffer;->getString(Ljava/lang/StringBuffer;II)Ljava/lang/StringBuffer;

    .line 930
    :goto_20
    const/4 p3, 0x0

    .line 923
    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    .line 928
    :cond_24
    iget-object v4, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_array:[[C

    aget-object v4, v4, v0

    iget v5, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_chunkSize:I

    sub-int/2addr v5, p3

    invoke-virtual {p1, v4, p3, v5}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    goto :goto_20

    .line 933
    :cond_2f
    if-nez v2, :cond_3d

    iget-object v4, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_innerFSB:Lorg/apache/xml/utils/FastStringBuffer;

    if-eqz v4, :cond_3d

    .line 934
    iget-object v4, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_innerFSB:Lorg/apache/xml/utils/FastStringBuffer;

    sub-int v5, v3, p3

    invoke-virtual {v4, p1, p3, v5}, Lorg/apache/xml/utils/FastStringBuffer;->getString(Ljava/lang/StringBuffer;II)Ljava/lang/StringBuffer;

    .line 938
    :cond_3c
    :goto_3c
    return-object p1

    .line 935
    :cond_3d
    if-le v3, p3, :cond_3c

    .line 936
    iget-object v4, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_array:[[C

    aget-object v4, v4, v2

    sub-int v5, v3, p3

    invoke-virtual {p1, v4, p3, v5}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    goto :goto_3c
.end method

.method public isWhitespace(II)Z
    .registers 9
    .parameter "start"
    .parameter "length"

    .prologue
    .line 827
    iget v5, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_chunkBits:I

    ushr-int v3, p1, v5

    .line 828
    .local v3, sourcechunk:I
    iget v5, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_chunkMask:I

    and-int v4, p1, v5

    .line 829
    .local v4, sourcecolumn:I
    iget v5, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_chunkSize:I

    sub-int v0, v5, v4

    .line 832
    .local v0, available:I
    :goto_c
    if-lez p2, :cond_33

    .line 834
    if-gt p2, v0, :cond_21

    move v2, p2

    .line 836
    .local v2, runlength:I
    :goto_11
    if-nez v3, :cond_23

    iget-object v5, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_innerFSB:Lorg/apache/xml/utils/FastStringBuffer;

    if-eqz v5, :cond_23

    .line 837
    iget-object v5, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_innerFSB:Lorg/apache/xml/utils/FastStringBuffer;

    invoke-virtual {v5, v4, v2}, Lorg/apache/xml/utils/FastStringBuffer;->isWhitespace(II)Z

    move-result v1

    .line 842
    .local v1, chunkOK:Z
    :goto_1d
    if-nez v1, :cond_2c

    .line 843
    const/4 v5, 0x0

    .line 853
    .end local v1           #chunkOK:Z
    .end local v2           #runlength:I
    :goto_20
    return v5

    :cond_21
    move v2, v0

    .line 834
    goto :goto_11

    .line 839
    .restart local v2       #runlength:I
    :cond_23
    iget-object v5, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_array:[[C

    aget-object v5, v5, v3

    invoke-static {v5, v4, v2}, Lorg/apache/xml/utils/XMLCharacterRecognizer;->isWhiteSpace([CII)Z

    move-result v1

    .restart local v1       #chunkOK:Z
    goto :goto_1d

    .line 845
    :cond_2c
    sub-int/2addr p2, v2

    .line 847
    add-int/lit8 v3, v3, 0x1

    .line 849
    const/4 v4, 0x0

    .line 850
    iget v0, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_chunkSize:I

    .line 851
    goto :goto_c

    .line 853
    .end local v1           #chunkOK:Z
    .end local v2           #runlength:I
    :cond_33
    const/4 v5, 0x1

    goto :goto_20
.end method

.method public final length()I
    .registers 3

    .prologue
    .line 280
    iget v0, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_lastChunk:I

    iget v1, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_chunkBits:I

    shl-int/2addr v0, v1

    iget v1, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_firstFree:I

    add-int/2addr v0, v1

    return v0
.end method

.method public final reset()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 291
    iput v3, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_lastChunk:I

    .line 292
    iput v3, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_firstFree:I

    .line 295
    move-object v0, p0

    .line 297
    .local v0, innermost:Lorg/apache/xml/utils/FastStringBuffer;
    :goto_6
    iget-object v1, v0, Lorg/apache/xml/utils/FastStringBuffer;->m_innerFSB:Lorg/apache/xml/utils/FastStringBuffer;

    if-eqz v1, :cond_d

    .line 299
    iget-object v0, v0, Lorg/apache/xml/utils/FastStringBuffer;->m_innerFSB:Lorg/apache/xml/utils/FastStringBuffer;

    goto :goto_6

    .line 302
    :cond_d
    iget v1, v0, Lorg/apache/xml/utils/FastStringBuffer;->m_chunkBits:I

    iput v1, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_chunkBits:I

    .line 303
    iget v1, v0, Lorg/apache/xml/utils/FastStringBuffer;->m_chunkSize:I

    iput v1, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_chunkSize:I

    .line 304
    iget v1, v0, Lorg/apache/xml/utils/FastStringBuffer;->m_chunkMask:I

    iput v1, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_chunkMask:I

    .line 307
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_innerFSB:Lorg/apache/xml/utils/FastStringBuffer;

    .line 308
    const/16 v1, 0x10

    filled-new-array {v1, v3}, [I

    move-result-object v1

    sget-object v2, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    invoke-static {v2, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[C

    iput-object v1, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_array:[[C

    .line 309
    iget-object v1, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_array:[[C

    iget v2, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_chunkSize:I

    new-array v2, v2, [C

    aput-object v2, v1, v3

    .line 310
    return-void
.end method

.method public sendNormalizedSAXcharacters(Lorg/xml/sax/ContentHandler;II)I
    .registers 14
    .parameter "ch"
    .parameter "start"
    .parameter "length"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 1045
    const/4 v3, 0x1

    .line 1047
    .local v3, stateForNextChunk:I
    add-int v4, p2, p3

    .line 1048
    .local v4, stop:I
    iget v7, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_chunkBits:I

    ushr-int v1, p2, v7

    .line 1049
    .local v1, startChunk:I
    iget v7, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_chunkMask:I

    and-int v2, p2, v7

    .line 1050
    .local v2, startColumn:I
    iget v7, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_chunkBits:I

    ushr-int v5, v4, v7

    .line 1051
    .local v5, stopChunk:I
    iget v7, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_chunkMask:I

    and-int v6, v4, v7

    .line 1053
    .local v6, stopColumn:I
    move v0, v1

    .local v0, i:I
    :goto_14
    if-ge v0, v5, :cond_35

    .line 1055
    if-nez v0, :cond_29

    iget-object v7, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_innerFSB:Lorg/apache/xml/utils/FastStringBuffer;

    if-eqz v7, :cond_29

    .line 1056
    iget-object v7, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_innerFSB:Lorg/apache/xml/utils/FastStringBuffer;

    iget v8, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_chunkSize:I

    sub-int/2addr v8, v2

    invoke-virtual {v7, p1, v2, v8}, Lorg/apache/xml/utils/FastStringBuffer;->sendNormalizedSAXcharacters(Lorg/xml/sax/ContentHandler;II)I

    move-result v3

    .line 1065
    :goto_25
    const/4 v2, 0x0

    .line 1053
    add-int/lit8 v0, v0, 0x1

    goto :goto_14

    .line 1060
    :cond_29
    iget-object v7, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_array:[[C

    aget-object v7, v7, v0

    iget v8, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_chunkSize:I

    sub-int/2addr v8, v2

    invoke-static {v7, v2, v8, p1, v3}, Lorg/apache/xml/utils/FastStringBuffer;->sendNormalizedSAXcharacters([CIILorg/xml/sax/ContentHandler;I)I

    move-result v3

    goto :goto_25

    .line 1069
    :cond_35
    if-nez v5, :cond_44

    iget-object v7, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_innerFSB:Lorg/apache/xml/utils/FastStringBuffer;

    if-eqz v7, :cond_44

    .line 1070
    iget-object v7, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_innerFSB:Lorg/apache/xml/utils/FastStringBuffer;

    sub-int v8, v6, v2

    invoke-virtual {v7, p1, v2, v8}, Lorg/apache/xml/utils/FastStringBuffer;->sendNormalizedSAXcharacters(Lorg/xml/sax/ContentHandler;II)I

    move-result v3

    .line 1079
    :cond_43
    :goto_43
    return v3

    .line 1072
    :cond_44
    if-le v6, v2, :cond_43

    .line 1074
    iget-object v7, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_array:[[C

    aget-object v7, v7, v5

    sub-int v8, v6, v2

    or-int/lit8 v9, v3, 0x2

    invoke-static {v7, v2, v8, p1, v9}, Lorg/apache/xml/utils/FastStringBuffer;->sendNormalizedSAXcharacters([CIILorg/xml/sax/ContentHandler;I)I

    move-result v3

    goto :goto_43
.end method

.method public sendSAXComment(Lorg/xml/sax/ext/LexicalHandler;II)V
    .registers 7
    .parameter "ch"
    .parameter "start"
    .parameter "length"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 1225
    invoke-virtual {p0, p2, p3}, Lorg/apache/xml/utils/FastStringBuffer;->getString(II)Ljava/lang/String;

    move-result-object v0

    .line 1226
    .local v0, comment:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {p1, v1, v2, p3}, Lorg/xml/sax/ext/LexicalHandler;->comment([CII)V

    .line 1227
    return-void
.end method

.method public sendSAXcharacters(Lorg/xml/sax/ContentHandler;II)V
    .registers 12
    .parameter "ch"
    .parameter "start"
    .parameter "length"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 982
    iget v6, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_chunkBits:I

    ushr-int v1, p2, v6

    .line 983
    .local v1, startChunk:I
    iget v6, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_chunkMask:I

    and-int v2, p2, v6

    .line 984
    .local v2, startColumn:I
    add-int v6, v2, p3

    iget v7, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_chunkMask:I

    if-ge v6, v7, :cond_1a

    iget-object v6, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_innerFSB:Lorg/apache/xml/utils/FastStringBuffer;

    if-nez v6, :cond_1a

    .line 985
    iget-object v6, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_array:[[C

    aget-object v6, v6, v1

    invoke-interface {p1, v6, v2, p3}, Lorg/xml/sax/ContentHandler;->characters([CII)V

    .line 1012
    :cond_19
    :goto_19
    return-void

    .line 989
    :cond_1a
    add-int v3, p2, p3

    .line 990
    .local v3, stop:I
    iget v6, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_chunkBits:I

    ushr-int v4, v3, v6

    .line 991
    .local v4, stopChunk:I
    iget v6, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_chunkMask:I

    and-int v5, v3, v6

    .line 993
    .local v5, stopColumn:I
    move v0, v1

    .local v0, i:I
    :goto_25
    if-ge v0, v4, :cond_44

    .line 995
    if-nez v0, :cond_39

    iget-object v6, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_innerFSB:Lorg/apache/xml/utils/FastStringBuffer;

    if-eqz v6, :cond_39

    .line 996
    iget-object v6, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_innerFSB:Lorg/apache/xml/utils/FastStringBuffer;

    iget v7, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_chunkSize:I

    sub-int/2addr v7, v2

    invoke-virtual {v6, p1, v2, v7}, Lorg/apache/xml/utils/FastStringBuffer;->sendSAXcharacters(Lorg/xml/sax/ContentHandler;II)V

    .line 1001
    :goto_35
    const/4 v2, 0x0

    .line 993
    add-int/lit8 v0, v0, 0x1

    goto :goto_25

    .line 999
    :cond_39
    iget-object v6, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_array:[[C

    aget-object v6, v6, v0

    iget v7, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_chunkSize:I

    sub-int/2addr v7, v2

    invoke-interface {p1, v6, v2, v7}, Lorg/xml/sax/ContentHandler;->characters([CII)V

    goto :goto_35

    .line 1005
    :cond_44
    if-nez v4, :cond_52

    iget-object v6, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_innerFSB:Lorg/apache/xml/utils/FastStringBuffer;

    if-eqz v6, :cond_52

    .line 1006
    iget-object v6, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_innerFSB:Lorg/apache/xml/utils/FastStringBuffer;

    sub-int v7, v5, v2

    invoke-virtual {v6, p1, v2, v7}, Lorg/apache/xml/utils/FastStringBuffer;->sendSAXcharacters(Lorg/xml/sax/ContentHandler;II)V

    goto :goto_19

    .line 1007
    :cond_52
    if-le v5, v2, :cond_19

    .line 1009
    iget-object v6, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_array:[[C

    aget-object v6, v6, v4

    sub-int v7, v5, v2

    invoke-interface {p1, v6, v2, v7}, Lorg/xml/sax/ContentHandler;->characters([CII)V

    goto :goto_19
.end method

.method public final setLength(I)V
    .registers 4
    .parameter "l"

    .prologue
    .line 326
    iget v0, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_chunkBits:I

    ushr-int v0, p1, v0

    iput v0, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_lastChunk:I

    .line 328
    iget v0, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_lastChunk:I

    if-nez v0, :cond_14

    iget-object v0, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_innerFSB:Lorg/apache/xml/utils/FastStringBuffer;

    if-eqz v0, :cond_14

    .line 331
    iget-object v0, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_innerFSB:Lorg/apache/xml/utils/FastStringBuffer;

    invoke-direct {v0, p1, p0}, Lorg/apache/xml/utils/FastStringBuffer;->setLength(ILorg/apache/xml/utils/FastStringBuffer;)V

    .line 348
    :cond_13
    :goto_13
    return-void

    .line 335
    :cond_14
    iget v0, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_chunkMask:I

    and-int/2addr v0, p1

    iput v0, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_firstFree:I

    .line 342
    iget v0, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_firstFree:I

    if-nez v0, :cond_13

    iget v0, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_lastChunk:I

    if-lez v0, :cond_13

    .line 344
    iget v0, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_lastChunk:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_lastChunk:I

    .line 345
    iget v0, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_chunkSize:I

    iput v0, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_firstFree:I

    goto :goto_13
.end method

.method public final size()I
    .registers 3

    .prologue
    .line 270
    iget v0, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_lastChunk:I

    iget v1, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_chunkBits:I

    shl-int/2addr v0, v1

    iget v1, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_firstFree:I

    add-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 401
    iget v1, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_lastChunk:I

    iget v2, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_chunkBits:I

    shl-int/2addr v1, v2

    iget v2, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_firstFree:I

    add-int v0, v1, v2

    .line 403
    .local v0, length:I
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1, v0}, Ljava/lang/StringBuffer;-><init>(I)V

    invoke-virtual {p0, v1, v3, v3, v0}, Lorg/apache/xml/utils/FastStringBuffer;->getString(Ljava/lang/StringBuffer;III)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
