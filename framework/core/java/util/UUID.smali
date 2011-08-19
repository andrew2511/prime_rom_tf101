.class public final Ljava/util/UUID;
.super Ljava/lang/Object;
.source "UUID.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Comparable",
        "<",
        "Ljava/util/UUID;",
        ">;"
    }
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field static final synthetic $assertionsDisabled:Z = false

.field private static rng:Ljava/security/SecureRandom; = null

.field private static final serialVersionUID:J = -0x4366fc0867927ad1L


# instance fields
.field private transient clockSequence:I

.field private transient hash:I

.field private leastSigBits:J

.field private mostSigBits:J

.field private transient node:J

.field private transient timestamp:J

.field private transient variant:I

.field private transient version:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 41
    const-class v0, Ljava/util/UUID;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_9
    sput-boolean v0, Ljava/util/UUID;->$assertionsDisabled:Z

    return-void

    :cond_c
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public constructor <init>(JJ)V
    .registers 5
    .parameter "mostSigBits"
    .parameter "leastSigBits"

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput-wide p1, p0, Ljava/util/UUID;->mostSigBits:J

    .line 69
    iput-wide p3, p0, Ljava/util/UUID;->leastSigBits:J

    .line 70
    invoke-direct {p0}, Ljava/util/UUID;->init()V

    .line 71
    return-void
.end method

.method public static fromString(Ljava/lang/String;)Ljava/util/UUID;
    .registers 11
    .parameter "uuid"

    .prologue
    .line 182
    if-nez p0, :cond_8

    .line 183
    new-instance p0, Ljava/lang/NullPointerException;

    .end local p0
    invoke-direct {p0}, Ljava/lang/NullPointerException;-><init>()V

    throw p0

    .line 186
    .restart local p0
    :cond_8
    const/4 v0, 0x5

    new-array v2, v0, [I

    .line 187
    .local v2, position:[I
    const/4 v1, 0x1

    .line 188
    .local v1, lastPosition:I
    const/4 v3, 0x0

    .line 190
    .local v3, startPosition:I
    const/4 v0, 0x0

    .line 191
    .local v0, i:I
    :goto_e
    array-length v4, v2

    if-ge v0, v4, :cond_24

    if-lez v1, :cond_24

    .line 192
    const-string v1, "-"

    .end local v1           #lastPosition:I
    invoke-virtual {p0, v1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    aput v1, v2, v0

    .line 193
    aget v1, v2, v0

    .line 194
    .restart local v1       #lastPosition:I
    aget v3, v2, v0

    .end local v3           #startPosition:I
    add-int/lit8 v3, v3, 0x1

    .line 191
    .restart local v3       #startPosition:I
    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    .line 198
    :cond_24
    array-length v3, v2

    .end local v3           #startPosition:I
    if-ne v0, v3, :cond_2a

    const/4 v0, -0x1

    if-eq v1, v0, :cond_43

    .line 199
    .end local v0           #i:I
    :cond_2a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    .end local v1           #lastPosition:I
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid UUID: "

    .end local v2           #position:[I
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    .end local p0
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 202
    .restart local v1       #lastPosition:I
    .restart local v2       #position:[I
    .restart local p0
    :cond_43
    const/4 v0, 0x0

    const/4 v1, 0x0

    aget v1, v2, v1

    .end local v1           #lastPosition:I
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x10

    invoke-static {v0, v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v4

    .line 203
    .local v4, m1:J
    const/4 v0, 0x0

    aget v0, v2, v0

    add-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    aget v1, v2, v1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x10

    invoke-static {v0, v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v6

    .line 204
    .local v6, m2:J
    const/4 v0, 0x1

    aget v0, v2, v0

    add-int/lit8 v0, v0, 0x1

    const/4 v1, 0x2

    aget v1, v2, v1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x10

    invoke-static {v0, v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v8

    .line 206
    .local v8, m3:J
    const/4 v0, 0x2

    aget v0, v2, v0

    add-int/lit8 v0, v0, 0x1

    const/4 v1, 0x3

    aget v1, v2, v1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x10

    invoke-static {v0, v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v0

    .line 207
    .local v0, lsb1:J
    const/4 v3, 0x3

    aget v2, v2, v3

    .end local v2           #position:[I
    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .end local p0
    const/16 v2, 0x10

    invoke-static {p0, v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v2

    .line 209
    .local v2, lsb2:J
    const/16 p0, 0x20

    shl-long/2addr v4, p0

    const/16 p0, 0x10

    shl-long/2addr v6, p0

    or-long/2addr v4, v6

    or-long/2addr v4, v8

    .line 210
    .local v4, msb:J
    const/16 p0, 0x30

    shl-long/2addr v0, p0

    or-long/2addr v0, v2

    .line 212
    .local v0, lsb:J
    new-instance p0, Ljava/util/UUID;

    .end local v6           #m2:J
    invoke-direct {p0, v4, v5, v0, v1}, Ljava/util/UUID;-><init>(JJ)V

    return-object p0
.end method

.method private init()V
    .registers 14

    .prologue
    .line 80
    iget-wide v8, p0, Ljava/util/UUID;->mostSigBits:J

    iget-wide v10, p0, Ljava/util/UUID;->mostSigBits:J

    const/16 v12, 0x20

    ushr-long/2addr v10, v12

    xor-long/2addr v8, v10

    long-to-int v1, v8

    .line 81
    .local v1, msbHash:I
    iget-wide v8, p0, Ljava/util/UUID;->leastSigBits:J

    iget-wide v10, p0, Ljava/util/UUID;->leastSigBits:J

    const/16 v12, 0x20

    ushr-long/2addr v10, v12

    xor-long/2addr v8, v10

    long-to-int v0, v8

    .line 82
    .local v0, lsbHash:I
    xor-int v8, v1, v0

    iput v8, p0, Ljava/util/UUID;->hash:I

    .line 85
    iget-wide v8, p0, Ljava/util/UUID;->leastSigBits:J

    const-wide/high16 v10, -0x8000

    and-long/2addr v8, v10

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-nez v8, :cond_3b

    .line 87
    const/4 v8, 0x0

    iput v8, p0, Ljava/util/UUID;->variant:I

    .line 97
    :goto_24
    iget-wide v8, p0, Ljava/util/UUID;->mostSigBits:J

    const-wide/32 v10, 0xf000

    and-long/2addr v8, v10

    const/16 v10, 0xc

    ushr-long/2addr v8, v10

    long-to-int v8, v8

    iput v8, p0, Ljava/util/UUID;->version:I

    .line 99
    iget v8, p0, Ljava/util/UUID;->variant:I

    const/4 v9, 0x2

    if-eq v8, v9, :cond_56

    iget v8, p0, Ljava/util/UUID;->version:I

    const/4 v9, 0x1

    if-eq v8, v9, :cond_56

    .line 114
    :goto_3a
    return-void

    .line 88
    :cond_3b
    iget-wide v8, p0, Ljava/util/UUID;->leastSigBits:J

    const-wide/high16 v10, 0x4000

    and-long/2addr v8, v10

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-eqz v8, :cond_52

    .line 90
    iget-wide v8, p0, Ljava/util/UUID;->leastSigBits:J

    const-wide/high16 v10, -0x2000

    and-long/2addr v8, v10

    const/16 v10, 0x3d

    ushr-long/2addr v8, v10

    long-to-int v8, v8

    iput v8, p0, Ljava/util/UUID;->variant:I

    goto :goto_24

    .line 93
    :cond_52
    const/4 v8, 0x2

    iput v8, p0, Ljava/util/UUID;->variant:I

    goto :goto_24

    .line 104
    :cond_56
    iget-wide v8, p0, Ljava/util/UUID;->mostSigBits:J

    const-wide v10, -0x100000000L

    and-long/2addr v8, v10

    const/16 v10, 0x20

    ushr-long v4, v8, v10

    .line 105
    .local v4, timeLow:J
    iget-wide v8, p0, Ljava/util/UUID;->mostSigBits:J

    const-wide v10, 0xffff0000L

    and-long/2addr v8, v10

    const/16 v10, 0x10

    shl-long v6, v8, v10

    .line 106
    .local v6, timeMid:J
    iget-wide v8, p0, Ljava/util/UUID;->mostSigBits:J

    const-wide/16 v10, 0xfff

    and-long/2addr v8, v10

    const/16 v10, 0x30

    shl-long v2, v8, v10

    .line 107
    .local v2, timeHigh:J
    or-long v8, v4, v6

    or-long/2addr v8, v2

    iput-wide v8, p0, Ljava/util/UUID;->timestamp:J

    .line 110
    iget-wide v8, p0, Ljava/util/UUID;->leastSigBits:J

    const-wide/high16 v10, 0x3fff

    and-long/2addr v8, v10

    const/16 v10, 0x30

    ushr-long/2addr v8, v10

    long-to-int v8, v8

    iput v8, p0, Ljava/util/UUID;->clockSequence:I

    .line 113
    iget-wide v8, p0, Ljava/util/UUID;->leastSigBits:J

    const-wide v10, 0xffffffffffffL

    and-long/2addr v8, v10

    iput-wide v8, p0, Ljava/util/UUID;->node:J

    goto :goto_3a
.end method

.method private static makeUuid([BI)Ljava/util/UUID;
    .registers 9
    .parameter "hash"
    .parameter "version"

    .prologue
    .line 157
    const/4 v4, 0x0

    sget-object v5, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-static {p0, v4, v5}, Lorg/apache/harmony/luni/platform/OSMemory;->peekLong([BILjava/nio/ByteOrder;)J

    move-result-wide v2

    .line 158
    .local v2, msb:J
    const/16 v4, 0x8

    sget-object v5, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-static {p0, v4, v5}, Lorg/apache/harmony/luni/platform/OSMemory;->peekLong([BILjava/nio/ByteOrder;)J

    move-result-wide v0

    .line 160
    .local v0, lsb:J
    const-wide/32 v4, -0xf001

    and-long/2addr v2, v4

    .line 161
    int-to-long v4, p1

    const/16 v6, 0xc

    shl-long/2addr v4, v6

    or-long/2addr v2, v4

    .line 164
    const-wide v4, 0x3fffffffffffffffL

    and-long/2addr v0, v4

    .line 165
    const-wide/high16 v4, -0x8000

    or-long/2addr v0, v4

    .line 166
    new-instance v4, Ljava/util/UUID;

    invoke-direct {v4, v2, v3, v0, v1}, Ljava/util/UUID;-><init>(JJ)V

    return-object v4
.end method

.method public static nameUUIDFromBytes([B)Ljava/util/UUID;
    .registers 5
    .parameter "name"

    .prologue
    .line 145
    if-nez p0, :cond_8

    .line 146
    new-instance v2, Ljava/lang/NullPointerException;

    invoke-direct {v2}, Ljava/lang/NullPointerException;-><init>()V

    throw v2

    .line 149
    :cond_8
    :try_start_8
    const-string v2, "MD5"

    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    .line 150
    .local v1, md:Ljava/security/MessageDigest;
    invoke-virtual {v1, p0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v2

    const/4 v3, 0x3

    invoke-static {v2, v3}, Ljava/util/UUID;->makeUuid([BI)Ljava/util/UUID;
    :try_end_16
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_8 .. :try_end_16} :catch_18

    move-result-object v2

    return-object v2

    .line 151
    .end local v1           #md:Ljava/security/MessageDigest;
    :catch_18
    move-exception v2

    move-object v0, v2

    .line 152
    .local v0, e:Ljava/security/NoSuchAlgorithmException;
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2
.end method

.method public static randomUUID()Ljava/util/UUID;
    .registers 3

    .prologue
    .line 124
    const/16 v1, 0x10

    new-array v0, v1, [B

    .line 126
    .local v0, data:[B
    const-class v1, Ljava/util/UUID;

    monitor-enter v1

    .line 127
    :try_start_7
    sget-object v2, Ljava/util/UUID;->rng:Ljava/security/SecureRandom;

    if-nez v2, :cond_12

    .line 128
    new-instance v2, Ljava/security/SecureRandom;

    invoke-direct {v2}, Ljava/security/SecureRandom;-><init>()V

    sput-object v2, Ljava/util/UUID;->rng:Ljava/security/SecureRandom;

    .line 130
    :cond_12
    monitor-exit v1
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_1e

    .line 131
    sget-object v1, Ljava/util/UUID;->rng:Ljava/security/SecureRandom;

    invoke-virtual {v1, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 132
    const/4 v1, 0x4

    invoke-static {v0, v1}, Ljava/util/UUID;->makeUuid([BI)Ljava/util/UUID;

    move-result-object v1

    return-object v1

    .line 130
    :catchall_1e
    move-exception v2

    :try_start_1f
    monitor-exit v1
    :try_end_20
    .catchall {:try_start_1f .. :try_end_20} :catchall_1e

    throw v2
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .registers 2
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 458
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 460
    invoke-direct {p0}, Ljava/util/UUID;->init()V

    .line 461
    return-void
.end method


# virtual methods
.method public clockSequence()I
    .registers 3

    .prologue
    .line 297
    iget v0, p0, Ljava/util/UUID;->version:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_b

    .line 298
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 300
    :cond_b
    iget v0, p0, Ljava/util/UUID;->clockSequence:I

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 3
    .parameter "x0"

    .prologue
    .line 41
    check-cast p1, Ljava/util/UUID;

    .end local p1
    invoke-virtual {p0, p1}, Ljava/util/UUID;->compareTo(Ljava/util/UUID;)I

    move-result v0

    return v0
.end method

.method public compareTo(Ljava/util/UUID;)I
    .registers 9
    .parameter "uuid"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, -0x1

    .line 331
    if-ne p1, p0, :cond_7

    move v0, v5

    .line 347
    :goto_6
    return v0

    .line 335
    :cond_7
    iget-wide v0, p0, Ljava/util/UUID;->mostSigBits:J

    iget-wide v2, p1, Ljava/util/UUID;->mostSigBits:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1b

    .line 336
    iget-wide v0, p0, Ljava/util/UUID;->mostSigBits:J

    iget-wide v2, p1, Ljava/util/UUID;->mostSigBits:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_19

    move v0, v4

    goto :goto_6

    :cond_19
    move v0, v6

    goto :goto_6

    .line 339
    :cond_1b
    sget-boolean v0, Ljava/util/UUID;->$assertionsDisabled:Z

    if-nez v0, :cond_2d

    iget-wide v0, p0, Ljava/util/UUID;->mostSigBits:J

    iget-wide v2, p1, Ljava/util/UUID;->mostSigBits:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2d

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 341
    :cond_2d
    iget-wide v0, p0, Ljava/util/UUID;->leastSigBits:J

    iget-wide v2, p1, Ljava/util/UUID;->leastSigBits:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_41

    .line 342
    iget-wide v0, p0, Ljava/util/UUID;->leastSigBits:J

    iget-wide v2, p1, Ljava/util/UUID;->leastSigBits:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_3f

    move v0, v4

    goto :goto_6

    :cond_3f
    move v0, v6

    goto :goto_6

    .line 345
    :cond_41
    sget-boolean v0, Ljava/util/UUID;->$assertionsDisabled:Z

    if-nez v0, :cond_53

    iget-wide v0, p0, Ljava/util/UUID;->leastSigBits:J

    iget-wide v2, p1, Ljava/util/UUID;->leastSigBits:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_53

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_53
    move v0, v5

    .line 347
    goto :goto_6
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 10
    .parameter "object"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 363
    if-nez p1, :cond_6

    move v2, v6

    .line 377
    :goto_5
    return v2

    .line 367
    :cond_6
    if-ne p0, p1, :cond_a

    move v2, v7

    .line 368
    goto :goto_5

    .line 371
    :cond_a
    instance-of v2, p1, Ljava/util/UUID;

    if-nez v2, :cond_10

    move v2, v6

    .line 372
    goto :goto_5

    .line 375
    :cond_10
    move-object v0, p1

    check-cast v0, Ljava/util/UUID;

    move-object v1, v0

    .line 377
    .local v1, that:Ljava/util/UUID;
    iget-wide v2, p0, Ljava/util/UUID;->leastSigBits:J

    iget-wide v4, v1, Ljava/util/UUID;->leastSigBits:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_26

    iget-wide v2, p0, Ljava/util/UUID;->mostSigBits:J

    iget-wide v4, v1, Ljava/util/UUID;->mostSigBits:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_26

    move v2, v7

    goto :goto_5

    :cond_26
    move v2, v6

    goto :goto_5
.end method

.method public getLeastSignificantBits()J
    .registers 3

    .prologue
    .line 222
    iget-wide v0, p0, Ljava/util/UUID;->leastSigBits:J

    return-wide v0
.end method

.method public getMostSignificantBits()J
    .registers 3

    .prologue
    .line 232
    iget-wide v0, p0, Ljava/util/UUID;->mostSigBits:J

    return-wide v0
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 390
    iget v0, p0, Ljava/util/UUID;->hash:I

    return v0
.end method

.method public node()J
    .registers 3

    .prologue
    .line 313
    iget v0, p0, Ljava/util/UUID;->version:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_b

    .line 314
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 316
    :cond_b
    iget-wide v0, p0, Ljava/util/UUID;->node:J

    return-wide v0
.end method

.method public timestamp()J
    .registers 3

    .prologue
    .line 281
    iget v0, p0, Ljava/util/UUID;->version:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_b

    .line 282
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 284
    :cond_b
    iget-wide v0, p0, Ljava/util/UUID;->timestamp:J

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .registers 11

    .prologue
    const/16 v9, 0x30

    const/16 v8, 0x2d

    const/16 v7, 0x10

    .line 420
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v5, 0x24

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 421
    .local v0, builder:Ljava/lang/StringBuilder;
    iget-wide v5, p0, Ljava/util/UUID;->mostSigBits:J

    invoke-static {v5, v6}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v4

    .line 422
    .local v4, msbStr:Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v5, v7, :cond_28

    .line 423
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    sub-int v1, v7, v5

    .line 424
    .local v1, diff:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_20
    if-ge v2, v1, :cond_28

    .line 425
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 424
    add-int/lit8 v2, v2, 0x1

    goto :goto_20

    .line 428
    .end local v1           #diff:I
    .end local v2           #i:I
    :cond_28
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 429
    const/16 v5, 0x8

    invoke-virtual {v0, v5, v8}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    .line 430
    const/16 v5, 0xd

    invoke-virtual {v0, v5, v8}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    .line 431
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 432
    iget-wide v5, p0, Ljava/util/UUID;->leastSigBits:J

    invoke-static {v5, v6}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v3

    .line 433
    .local v3, lsbStr:Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v5, v7, :cond_53

    .line 434
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    sub-int v1, v7, v5

    .line 435
    .restart local v1       #diff:I
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_4b
    if-ge v2, v1, :cond_53

    .line 436
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 435
    add-int/lit8 v2, v2, 0x1

    goto :goto_4b

    .line 439
    .end local v1           #diff:I
    .end local v2           #i:I
    :cond_53
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 440
    const/16 v5, 0x17

    invoke-virtual {v0, v5, v8}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    .line 441
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method public variant()I
    .registers 2

    .prologue
    .line 268
    iget v0, p0, Ljava/util/UUID;->variant:I

    return v0
.end method

.method public version()I
    .registers 2

    .prologue
    .line 251
    iget v0, p0, Ljava/util/UUID;->version:I

    return v0
.end method
