.class public final Lorg/apache/xml/serializer/EncodingInfo;
.super Ljava/lang/Object;
.source "EncodingInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/xml/serializer/EncodingInfo$1;,
        Lorg/apache/xml/serializer/EncodingInfo$EncodingImpl;,
        Lorg/apache/xml/serializer/EncodingInfo$InEncoding;
    }
.end annotation


# instance fields
.field final javaName:Ljava/lang/String;

.field private m_encoding:Lorg/apache/xml/serializer/EncodingInfo$InEncoding;

.field private final m_highCharInContiguousGroup:C

.field final name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;C)V
    .registers 4
    .parameter "name"
    .parameter "javaName"
    .parameter "highChar"

    .prologue
    .line 150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 152
    iput-object p1, p0, Lorg/apache/xml/serializer/EncodingInfo;->name:Ljava/lang/String;

    .line 153
    iput-object p2, p0, Lorg/apache/xml/serializer/EncodingInfo;->javaName:Ljava/lang/String;

    .line 154
    iput-char p3, p0, Lorg/apache/xml/serializer/EncodingInfo;->m_highCharInContiguousGroup:C

    .line 155
    return-void
.end method

.method static synthetic access$100(CLjava/lang/String;)Z
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60
    invoke-static {p0, p1}, Lorg/apache/xml/serializer/EncodingInfo;->inEncoding(CLjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(CCLjava/lang/String;)Z
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 60
    invoke-static {p0, p1, p2}, Lorg/apache/xml/serializer/EncodingInfo;->inEncoding(CCLjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static inEncoding(CCLjava/lang/String;)Z
    .registers 9
    .parameter "high"
    .parameter "low"
    .parameter "encoding"

    .prologue
    .line 467
    const/4 v5, 0x2

    :try_start_1
    new-array v1, v5, [C

    .line 468
    .local v1, cArray:[C
    const/4 v5, 0x0

    aput-char p0, v1, v5

    .line 469
    const/4 v5, 0x1

    aput-char p1, v1, v5

    .line 471
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v1}, Ljava/lang/String;-><init>([C)V

    .line 474
    .local v4, s:Ljava/lang/String;
    invoke-virtual {v4, p2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 475
    .local v0, bArray:[B
    invoke-static {p0, v0}, Lorg/apache/xml/serializer/EncodingInfo;->inEncoding(C[B)Z
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_15} :catch_17

    move-result v3

    .line 480
    .end local v0           #bArray:[B
    .end local v1           #cArray:[C
    .end local v4           #s:Ljava/lang/String;
    .local v3, isInEncoding:Z
    :goto_16
    return v3

    .line 476
    .end local v3           #isInEncoding:Z
    :catch_17
    move-exception v5

    move-object v2, v5

    .line 477
    .local v2, e:Ljava/lang/Exception;
    const/4 v3, 0x0

    .restart local v3       #isInEncoding:Z
    goto :goto_16
.end method

.method private static inEncoding(CLjava/lang/String;)Z
    .registers 8
    .parameter "ch"
    .parameter "encoding"

    .prologue
    .line 428
    const/4 v5, 0x1

    :try_start_1
    new-array v1, v5, [C

    .line 429
    .local v1, cArray:[C
    const/4 v5, 0x0

    aput-char p0, v1, v5

    .line 431
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v1}, Ljava/lang/String;-><init>([C)V

    .line 434
    .local v4, s:Ljava/lang/String;
    invoke-virtual {v4, p1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 435
    .local v0, bArray:[B
    invoke-static {p0, v0}, Lorg/apache/xml/serializer/EncodingInfo;->inEncoding(C[B)Z
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_12} :catch_14

    move-result v3

    .line 446
    .end local v0           #bArray:[B
    .end local v1           #cArray:[C
    .end local v4           #s:Ljava/lang/String;
    .local v3, isInEncoding:Z
    :cond_13
    :goto_13
    return v3

    .line 437
    .end local v3           #isInEncoding:Z
    :catch_14
    move-exception v5

    move-object v2, v5

    .line 438
    .local v2, e:Ljava/lang/Exception;
    const/4 v3, 0x0

    .line 443
    .restart local v3       #isInEncoding:Z
    if-nez p1, :cond_13

    .line 444
    const/4 v3, 0x1

    goto :goto_13
.end method

.method private static inEncoding(C[B)Z
    .registers 6
    .parameter "ch"
    .parameter "data"

    .prologue
    const/16 v3, 0x3f

    const/4 v2, 0x0

    .line 500
    if-eqz p1, :cond_8

    array-length v1, p1

    if-nez v1, :cond_a

    .line 501
    :cond_8
    const/4 v0, 0x0

    .line 530
    .local v0, isInEncoding:Z
    :goto_9
    return v0

    .line 504
    .end local v0           #isInEncoding:Z
    :cond_a
    aget-byte v1, p1, v2

    if-nez v1, :cond_10

    .line 505
    const/4 v0, 0x0

    .restart local v0       #isInEncoding:Z
    goto :goto_9

    .line 506
    .end local v0           #isInEncoding:Z
    :cond_10
    aget-byte v1, p1, v2

    if-ne v1, v3, :cond_18

    if-eq p0, v3, :cond_18

    .line 507
    const/4 v0, 0x0

    .restart local v0       #isInEncoding:Z
    goto :goto_9

    .line 527
    .end local v0           #isInEncoding:Z
    :cond_18
    const/4 v0, 0x1

    .restart local v0       #isInEncoding:Z
    goto :goto_9
.end method


# virtual methods
.method public final getHighChar()C
    .registers 2

    .prologue
    .line 559
    iget-char v0, p0, Lorg/apache/xml/serializer/EncodingInfo;->m_highCharInContiguousGroup:C

    return v0
.end method

.method public isInEncoding(C)Z
    .registers 4
    .parameter "ch"

    .prologue
    .line 105
    iget-object v0, p0, Lorg/apache/xml/serializer/EncodingInfo;->m_encoding:Lorg/apache/xml/serializer/EncodingInfo$InEncoding;

    if-nez v0, :cond_c

    .line 106
    new-instance v0, Lorg/apache/xml/serializer/EncodingInfo$EncodingImpl;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/apache/xml/serializer/EncodingInfo$EncodingImpl;-><init>(Lorg/apache/xml/serializer/EncodingInfo;Lorg/apache/xml/serializer/EncodingInfo$1;)V

    iput-object v0, p0, Lorg/apache/xml/serializer/EncodingInfo;->m_encoding:Lorg/apache/xml/serializer/EncodingInfo$InEncoding;

    .line 113
    :cond_c
    iget-object v0, p0, Lorg/apache/xml/serializer/EncodingInfo;->m_encoding:Lorg/apache/xml/serializer/EncodingInfo$InEncoding;

    invoke-interface {v0, p1}, Lorg/apache/xml/serializer/EncodingInfo$InEncoding;->isInEncoding(C)Z

    move-result v0

    return v0
.end method

.method public isInEncoding(CC)Z
    .registers 5
    .parameter "high"
    .parameter "low"

    .prologue
    .line 126
    iget-object v0, p0, Lorg/apache/xml/serializer/EncodingInfo;->m_encoding:Lorg/apache/xml/serializer/EncodingInfo$InEncoding;

    if-nez v0, :cond_c

    .line 127
    new-instance v0, Lorg/apache/xml/serializer/EncodingInfo$EncodingImpl;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/apache/xml/serializer/EncodingInfo$EncodingImpl;-><init>(Lorg/apache/xml/serializer/EncodingInfo;Lorg/apache/xml/serializer/EncodingInfo$1;)V

    iput-object v0, p0, Lorg/apache/xml/serializer/EncodingInfo;->m_encoding:Lorg/apache/xml/serializer/EncodingInfo$InEncoding;

    .line 134
    :cond_c
    iget-object v0, p0, Lorg/apache/xml/serializer/EncodingInfo;->m_encoding:Lorg/apache/xml/serializer/EncodingInfo$InEncoding;

    invoke-interface {v0, p1, p2}, Lorg/apache/xml/serializer/EncodingInfo$InEncoding;->isInEncoding(CC)Z

    move-result v0

    return v0
.end method
