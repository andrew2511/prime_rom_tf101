.class public Lorg/apache/harmony/security/provider/cert/Cache;
.super Ljava/lang/Object;
.source "Cache.java"


# static fields
.field private static final HASH_MASK:J = -0x10000L

.field private static final INDEX_MASK:I = 0xffff

.field private static final PREFIX_HASH_MASK:J = -0x100000000L


# instance fields
.field private final cache:[Ljava/lang/Object;

.field private cache_is_full:Z

.field private final cache_size:I

.field private final encodings:[[B

.field private final hashes:[J

.field private final hashes_idx:[J

.field private last_cached:I

.field private final prefix_size:I


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    .line 173
    const/16 v0, 0x1c

    const/16 v1, 0x9

    invoke-direct {p0, v0, v1}, Lorg/apache/harmony/security/provider/cert/Cache;-><init>(II)V

    .line 174
    return-void
.end method

.method public constructor <init>(I)V
    .registers 3
    .parameter "pref_size"

    .prologue
    .line 166
    const/16 v0, 0x9

    invoke-direct {p0, p1, v0}, Lorg/apache/harmony/security/provider/cert/Cache;-><init>(II)V

    .line 167
    return-void
.end method

.method public constructor <init>(II)V
    .registers 4
    .parameter "pref_size"
    .parameter "size"

    .prologue
    const/4 v0, 0x0

    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 122
    iput v0, p0, Lorg/apache/harmony/security/provider/cert/Cache;->last_cached:I

    .line 124
    iput-boolean v0, p0, Lorg/apache/harmony/security/provider/cert/Cache;->cache_is_full:Z

    .line 133
    iput p2, p0, Lorg/apache/harmony/security/provider/cert/Cache;->cache_size:I

    .line 134
    iput p1, p0, Lorg/apache/harmony/security/provider/cert/Cache;->prefix_size:I

    .line 135
    iget v0, p0, Lorg/apache/harmony/security/provider/cert/Cache;->cache_size:I

    new-array v0, v0, [J

    iput-object v0, p0, Lorg/apache/harmony/security/provider/cert/Cache;->hashes:[J

    .line 136
    iget v0, p0, Lorg/apache/harmony/security/provider/cert/Cache;->cache_size:I

    new-array v0, v0, [J

    iput-object v0, p0, Lorg/apache/harmony/security/provider/cert/Cache;->hashes_idx:[J

    .line 137
    iget v0, p0, Lorg/apache/harmony/security/provider/cert/Cache;->cache_size:I

    new-array v0, v0, [[B

    iput-object v0, p0, Lorg/apache/harmony/security/provider/cert/Cache;->encodings:[[B

    .line 138
    iget v0, p0, Lorg/apache/harmony/security/provider/cert/Cache;->cache_size:I

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lorg/apache/harmony/security/provider/cert/Cache;->cache:[Ljava/lang/Object;

    .line 139
    return-void
.end method

.method private getSuffHash([B)J
    .registers 7
    .parameter "arr"

    .prologue
    .line 337
    const-wide/16 v0, 0x0

    .line 338
    .local v0, hash_addon:J
    array-length v3, p1

    const/4 v4, 0x1

    sub-int v2, v3, v4

    .local v2, i:I
    :goto_6
    array-length v3, p1

    iget v4, p0, Lorg/apache/harmony/security/provider/cert/Cache;->prefix_size:I

    sub-int/2addr v3, v4

    if-le v2, v3, :cond_15

    .line 339
    aget-byte v3, p1, v2

    and-int/lit16 v3, v3, 0xff

    int-to-long v3, v3

    add-long/2addr v0, v3

    .line 338
    add-int/lit8 v2, v2, -0x1

    goto :goto_6

    .line 341
    :cond_15
    const/16 v3, 0x10

    shl-long v3, v0, v3

    return-wide v3
.end method


# virtual methods
.method public contains(J)Z
    .registers 10
    .parameter "prefix_hash"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 211
    const-wide/16 v1, 0x0

    cmp-long v1, p1, v1

    if-nez v1, :cond_a

    move v1, v5

    .line 218
    :goto_9
    return v1

    .line 214
    :cond_a
    iget-object v1, p0, Lorg/apache/harmony/security/provider/cert/Cache;->hashes_idx:[J

    invoke-static {v1, p1, p2}, Ljava/util/Arrays;->binarySearch([JJ)I

    move-result v1

    mul-int/lit8 v1, v1, -0x1

    sub-int v0, v1, v6

    .line 215
    .local v0, idx:I
    iget v1, p0, Lorg/apache/harmony/security/provider/cert/Cache;->cache_size:I

    if-ne v0, v1, :cond_1a

    move v1, v5

    .line 216
    goto :goto_9

    .line 218
    :cond_1a
    iget-object v1, p0, Lorg/apache/harmony/security/provider/cert/Cache;->hashes_idx:[J

    aget-wide v1, v1, v0

    const-wide v3, -0x100000000L

    and-long/2addr v1, v3

    cmp-long v1, v1, p1

    if-nez v1, :cond_2a

    move v1, v6

    goto :goto_9

    :cond_2a
    move v1, v5

    goto :goto_9
.end method

.method public get(J[B)Ljava/lang/Object;
    .registers 12
    .parameter "hash"
    .parameter "encoding"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 234
    invoke-direct {p0, p3}, Lorg/apache/harmony/security/provider/cert/Cache;->getSuffHash([B)J

    move-result-wide v2

    or-long/2addr p1, v2

    .line 235
    const-wide/16 v2, 0x0

    cmp-long v2, p1, v2

    if-nez v2, :cond_f

    move-object v2, v6

    .line 252
    :goto_e
    return-object v2

    .line 238
    :cond_f
    iget-object v2, p0, Lorg/apache/harmony/security/provider/cert/Cache;->hashes_idx:[J

    invoke-static {v2, p1, p2}, Ljava/util/Arrays;->binarySearch([JJ)I

    move-result v2

    mul-int/lit8 v2, v2, -0x1

    sub-int v1, v2, v7

    .line 239
    .local v1, idx:I
    iget v2, p0, Lorg/apache/harmony/security/provider/cert/Cache;->cache_size:I

    if-ne v1, v2, :cond_1f

    move-object v2, v6

    .line 240
    goto :goto_e

    .line 242
    :cond_1f
    iget-object v2, p0, Lorg/apache/harmony/security/provider/cert/Cache;->hashes_idx:[J

    aget-wide v2, v2, v1

    const-wide/32 v4, -0x10000

    and-long/2addr v2, v4

    cmp-long v2, v2, p1

    if-nez v2, :cond_4d

    .line 243
    iget-object v2, p0, Lorg/apache/harmony/security/provider/cert/Cache;->hashes_idx:[J

    aget-wide v2, v2, v1

    const-wide/32 v4, 0xffff

    and-long/2addr v2, v4

    long-to-int v2, v2

    sub-int v0, v2, v7

    .line 244
    .local v0, i:I
    iget-object v2, p0, Lorg/apache/harmony/security/provider/cert/Cache;->encodings:[[B

    aget-object v2, v2, v0

    invoke-static {p3, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-eqz v2, :cond_45

    .line 245
    iget-object v2, p0, Lorg/apache/harmony/security/provider/cert/Cache;->cache:[Ljava/lang/Object;

    aget-object v2, v2, v0

    goto :goto_e

    .line 247
    :cond_45
    add-int/lit8 v1, v1, 0x1

    .line 248
    iget v2, p0, Lorg/apache/harmony/security/provider/cert/Cache;->cache_size:I

    if-ne v1, v2, :cond_1f

    move-object v2, v6

    .line 249
    goto :goto_e

    .end local v0           #i:I
    :cond_4d
    move-object v2, v6

    .line 252
    goto :goto_e
.end method

.method public getHash([B)J
    .registers 7
    .parameter "arr"

    .prologue
    .line 190
    const-wide/16 v0, 0x0

    .line 191
    .local v0, hash:J
    const/4 v2, 0x1

    .local v2, i:I
    :goto_3
    iget v3, p0, Lorg/apache/harmony/security/provider/cert/Cache;->prefix_size:I

    if-ge v2, v3, :cond_10

    .line 192
    aget-byte v3, p1, v2

    and-int/lit16 v3, v3, 0xff

    int-to-long v3, v3

    add-long/2addr v0, v3

    .line 191
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 196
    :cond_10
    const/16 v3, 0x20

    shl-long/2addr v0, v3

    .line 197
    return-wide v0
.end method

.method public put(J[BLjava/lang/Object;)V
    .registers 17
    .parameter "hash"
    .parameter "encoding"
    .parameter "object"

    .prologue
    .line 263
    iget v7, p0, Lorg/apache/harmony/security/provider/cert/Cache;->last_cached:I

    iget v8, p0, Lorg/apache/harmony/security/provider/cert/Cache;->cache_size:I

    if-ne v7, v8, :cond_c

    .line 267
    const/4 v7, 0x0

    iput v7, p0, Lorg/apache/harmony/security/provider/cert/Cache;->last_cached:I

    .line 268
    const/4 v7, 0x1

    iput-boolean v7, p0, Lorg/apache/harmony/security/provider/cert/Cache;->cache_is_full:Z

    .line 271
    :cond_c
    iget v3, p0, Lorg/apache/harmony/security/provider/cert/Cache;->last_cached:I

    add-int/lit8 v7, v3, 0x1

    iput v7, p0, Lorg/apache/harmony/security/provider/cert/Cache;->last_cached:I

    .line 274
    .local v3, index:I
    invoke-direct {p0, p3}, Lorg/apache/harmony/security/provider/cert/Cache;->getSuffHash([B)J

    move-result-wide v7

    or-long/2addr p1, v7

    .line 276
    iget-boolean v7, p0, Lorg/apache/harmony/security/provider/cert/Cache;->cache_is_full:Z

    if-eqz v7, :cond_bd

    .line 278
    iget-object v7, p0, Lorg/apache/harmony/security/provider/cert/Cache;->hashes:[J

    aget-wide v7, v7, v3

    add-int/lit8 v9, v3, 0x1

    int-to-long v9, v9

    or-long v1, v7, v9

    .line 279
    .local v1, idx_hash:J
    iget-object v7, p0, Lorg/apache/harmony/security/provider/cert/Cache;->hashes_idx:[J

    invoke-static {v7, v1, v2}, Ljava/util/Arrays;->binarySearch([JJ)I

    move-result v0

    .line 280
    .local v0, idx:I
    if-gez v0, :cond_47

    .line 283
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "WARNING! "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 284
    add-int/lit8 v7, v0, 0x1

    neg-int v0, v7

    .line 286
    :cond_47
    add-int/lit8 v7, v3, 0x1

    int-to-long v7, v7

    or-long v4, p1, v7

    .line 287
    .local v4, new_hash_idx:J
    iget-object v7, p0, Lorg/apache/harmony/security/provider/cert/Cache;->hashes_idx:[J

    invoke-static {v7, v4, v5}, Ljava/util/Arrays;->binarySearch([JJ)I

    move-result v6

    .line 288
    .local v6, new_idx:I
    if-ltz v6, :cond_8c

    .line 290
    if-eq v0, v6, :cond_7f

    .line 293
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v8, "WARNING: "

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 294
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, ">> idx: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " new_idx: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 328
    .end local v4           #new_hash_idx:J
    .end local v6           #new_idx:I
    :cond_7f
    :goto_7f
    iget-object v7, p0, Lorg/apache/harmony/security/provider/cert/Cache;->hashes:[J

    aput-wide p1, v7, v3

    .line 329
    iget-object v7, p0, Lorg/apache/harmony/security/provider/cert/Cache;->encodings:[[B

    aput-object p3, v7, v3

    .line 330
    iget-object v7, p0, Lorg/apache/harmony/security/provider/cert/Cache;->cache:[Ljava/lang/Object;

    aput-object p4, v7, v3

    .line 331
    return-void

    .line 297
    .restart local v4       #new_hash_idx:J
    .restart local v6       #new_idx:I
    :cond_8c
    add-int/lit8 v7, v6, 0x1

    neg-int v6, v7

    .line 299
    if-le v6, v0, :cond_a6

    .line 300
    iget-object v7, p0, Lorg/apache/harmony/security/provider/cert/Cache;->hashes_idx:[J

    add-int/lit8 v8, v0, 0x1

    iget-object v9, p0, Lorg/apache/harmony/security/provider/cert/Cache;->hashes_idx:[J

    sub-int v10, v6, v0

    const/4 v11, 0x1

    sub-int/2addr v10, v11

    invoke-static {v7, v8, v9, v0, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 302
    iget-object v7, p0, Lorg/apache/harmony/security/provider/cert/Cache;->hashes_idx:[J

    const/4 v8, 0x1

    sub-int v8, v6, v8

    aput-wide v4, v7, v8

    goto :goto_7f

    .line 303
    :cond_a6
    if-le v0, v6, :cond_b8

    .line 304
    iget-object v7, p0, Lorg/apache/harmony/security/provider/cert/Cache;->hashes_idx:[J

    iget-object v8, p0, Lorg/apache/harmony/security/provider/cert/Cache;->hashes_idx:[J

    add-int/lit8 v9, v6, 0x1

    sub-int v10, v0, v6

    invoke-static {v7, v6, v8, v9, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 306
    iget-object v7, p0, Lorg/apache/harmony/security/provider/cert/Cache;->hashes_idx:[J

    aput-wide v4, v7, v6

    goto :goto_7f

    .line 308
    :cond_b8
    iget-object v7, p0, Lorg/apache/harmony/security/provider/cert/Cache;->hashes_idx:[J

    aput-wide v4, v7, v6

    goto :goto_7f

    .line 312
    .end local v0           #idx:I
    .end local v1           #idx_hash:J
    .end local v4           #new_hash_idx:J
    .end local v6           #new_idx:I
    :cond_bd
    add-int/lit8 v7, v3, 0x1

    int-to-long v7, v7

    or-long v1, p1, v7

    .line 313
    .restart local v1       #idx_hash:J
    iget-object v7, p0, Lorg/apache/harmony/security/provider/cert/Cache;->hashes_idx:[J

    invoke-static {v7, v1, v2}, Ljava/util/Arrays;->binarySearch([JJ)I

    move-result v0

    .line 314
    .restart local v0       #idx:I
    if-gez v0, :cond_cd

    .line 316
    add-int/lit8 v7, v0, 0x1

    neg-int v0, v7

    .line 318
    :cond_cd
    const/4 v7, 0x1

    sub-int/2addr v0, v7

    .line 319
    iget v7, p0, Lorg/apache/harmony/security/provider/cert/Cache;->cache_size:I

    sub-int/2addr v7, v3

    const/4 v8, 0x1

    sub-int/2addr v7, v8

    if-eq v0, v7, :cond_ec

    .line 321
    iget-object v7, p0, Lorg/apache/harmony/security/provider/cert/Cache;->hashes_idx:[J

    iget v8, p0, Lorg/apache/harmony/security/provider/cert/Cache;->cache_size:I

    sub-int/2addr v8, v3

    iget-object v9, p0, Lorg/apache/harmony/security/provider/cert/Cache;->hashes_idx:[J

    iget v10, p0, Lorg/apache/harmony/security/provider/cert/Cache;->cache_size:I

    sub-int/2addr v10, v3

    const/4 v11, 0x1

    sub-int/2addr v10, v11

    iget v11, p0, Lorg/apache/harmony/security/provider/cert/Cache;->cache_size:I

    sub-int/2addr v11, v3

    sub-int v11, v0, v11

    add-int/lit8 v11, v11, 0x1

    invoke-static {v7, v8, v9, v10, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 325
    :cond_ec
    iget-object v7, p0, Lorg/apache/harmony/security/provider/cert/Cache;->hashes_idx:[J

    aput-wide v1, v7, v0

    goto :goto_7f
.end method
