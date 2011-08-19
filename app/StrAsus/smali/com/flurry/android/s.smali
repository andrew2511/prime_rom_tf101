.class final Lcom/flurry/android/s;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/flurry/android/a;

.field private c:J

.field private d:Lcom/flurry/android/x;

.field private e:Ljava/util/Map;

.field private f:Ljava/util/Map;

.field private g:Ljava/util/Map;

.field private h:Ljava/util/Map;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/flurry/android/a;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Lcom/flurry/android/x;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Lcom/flurry/android/x;-><init>(I)V

    iput-object v0, p0, Lcom/flurry/android/s;->d:Lcom/flurry/android/x;

    .line 34
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/flurry/android/s;->e:Ljava/util/Map;

    .line 35
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/flurry/android/s;->f:Ljava/util/Map;

    .line 36
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/flurry/android/s;->g:Ljava/util/Map;

    .line 37
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/flurry/android/s;->h:Ljava/util/Map;

    .line 41
    iput-object p1, p0, Lcom/flurry/android/s;->a:Landroid/content/Context;

    .line 42
    iput-object p2, p0, Lcom/flurry/android/s;->b:Lcom/flurry/android/a;

    .line 43
    return-void
.end method

.method private static a(Ljava/util/Map;Ljava/util/Map;Z)Ljava/util/Map;
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 154
    if-eqz p2, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    move-object v1, v0

    .line 155
    :goto_0
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 157
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    .line 158
    if-eqz v3, :cond_1

    .line 159
    :goto_2
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_0
    move-object v1, p0

    .line 154
    goto :goto_0

    .line 158
    :cond_1
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    goto :goto_2

    .line 161
    :cond_2
    return-object v1
.end method

.method private a(Ljava/io/DataInputStream;)V
    .locals 8
    .parameter

    .prologue
    const/4 v7, 0x0

    .line 273
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v0

    .line 274
    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    .line 335
    :cond_0
    return-void

    .line 279
    :cond_1
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/flurry/android/s;->c:J

    .line 281
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v0

    .line 282
    new-instance v1, Lcom/flurry/android/x;

    const/16 v2, 0x14

    invoke-direct {v1, v2}, Lcom/flurry/android/x;-><init>(I)V

    iput-object v1, p0, Lcom/flurry/android/s;->d:Lcom/flurry/android/x;

    move v1, v7

    .line 283
    :goto_0
    if-ge v1, v0, :cond_2

    .line 285
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v2

    .line 286
    new-instance v4, Lcom/flurry/android/AdImage;

    invoke-direct {v4}, Lcom/flurry/android/AdImage;-><init>()V

    .line 287
    invoke-virtual {v4, p1}, Lcom/flurry/android/AdImage;->load(Ljava/io/DataInput;)V

    .line 288
    iget-object v5, p0, Lcom/flurry/android/s;->d:Lcom/flurry/android/x;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v5, v2, v4}, Lcom/flurry/android/x;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 283
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 291
    :cond_2
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v0

    .line 292
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1, v0}, Ljava/util/HashMap;-><init>(I)V

    iput-object v1, p0, Lcom/flurry/android/s;->f:Ljava/util/Map;

    move v1, v7

    .line 293
    :goto_1
    if-ge v1, v0, :cond_3

    .line 295
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v2

    .line 296
    new-instance v3, Lcom/flurry/android/e;

    invoke-direct {v3, p1}, Lcom/flurry/android/e;-><init>(Ljava/io/DataInput;)V

    .line 298
    iget-object v4, p0, Lcom/flurry/android/s;->f:Ljava/util/Map;

    invoke-interface {v4, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 293
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 301
    :cond_3
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v0

    .line 302
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1, v0}, Ljava/util/HashMap;-><init>(I)V

    iput-object v1, p0, Lcom/flurry/android/s;->e:Ljava/util/Map;

    move v1, v7

    .line 303
    :goto_2
    if-ge v1, v0, :cond_5

    .line 305
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v2

    .line 306
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v3

    .line 307
    new-array v4, v3, [Lcom/flurry/android/o;

    move v5, v7

    .line 308
    :goto_3
    if-ge v5, v3, :cond_4

    .line 310
    new-instance v6, Lcom/flurry/android/o;

    invoke-direct {v6}, Lcom/flurry/android/o;-><init>()V

    .line 311
    invoke-virtual {v6, p1}, Lcom/flurry/android/o;->a(Ljava/io/DataInput;)V

    .line 312
    aput-object v6, v4, v5

    .line 308
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 314
    :cond_4
    iget-object v3, p0, Lcom/flurry/android/s;->e:Ljava/util/Map;

    invoke-interface {v3, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 303
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 317
    :cond_5
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v0

    .line 318
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/flurry/android/s;->g:Ljava/util/Map;

    move v1, v7

    .line 319
    :goto_4
    if-ge v1, v0, :cond_6

    .line 321
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readByte()B

    move-result v2

    .line 322
    new-instance v3, Lcom/flurry/android/c;

    invoke-direct {v3}, Lcom/flurry/android/c;-><init>()V

    .line 323
    invoke-virtual {v3, p1}, Lcom/flurry/android/c;->b(Ljava/io/DataInput;)V

    .line 324
    iget-object v4, p0, Lcom/flurry/android/s;->g:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-interface {v4, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 319
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 327
    :cond_6
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v0

    .line 328
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1, v0}, Ljava/util/HashMap;-><init>(I)V

    iput-object v1, p0, Lcom/flurry/android/s;->h:Ljava/util/Map;

    move v1, v7

    .line 329
    :goto_5
    if-ge v1, v0, :cond_0

    .line 331
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readShort()S

    move-result v2

    .line 332
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v3

    .line 333
    iget-object v5, p0, Lcom/flurry/android/s;->h:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v2

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v5, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 329
    add-int/lit8 v1, v1, 0x1

    goto :goto_5
.end method

.method private a(Ljava/io/DataOutputStream;)V
    .locals 10
    .parameter

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 339
    invoke-virtual {p1, v9}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 341
    iget-wide v1, p0, Lcom/flurry/android/s;->c:J

    invoke-virtual {p1, v1, v2}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 343
    iget-object v1, p0, Lcom/flurry/android/s;->d:Lcom/flurry/android/x;

    invoke-virtual {v1}, Lcom/flurry/android/x;->a()Ljava/util/Collection;

    move-result-object v1

    .line 344
    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 345
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 347
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {p1, v4, v5}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 348
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/flurry/android/AdImage;

    invoke-virtual {v1, p1}, Lcom/flurry/android/AdImage;->persist(Ljava/io/DataOutput;)V

    goto :goto_0

    .line 351
    :cond_0
    iget-object v1, p0, Lcom/flurry/android/s;->f:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    .line 352
    invoke-virtual {p1, v1}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 353
    iget-object v1, p0, Lcom/flurry/android/s;->f:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Ljava/util/Map$Entry;

    move-object v2, v0

    .line 355
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 356
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/flurry/android/e;

    iget-object v2, v1, Lcom/flurry/android/e;->a:Ljava/lang/String;

    invoke-interface {p1, v2}, Ljava/io/DataOutput;->writeUTF(Ljava/lang/String;)V

    iget-byte v2, v1, Lcom/flurry/android/e;->b:B

    invoke-interface {p1, v2}, Ljava/io/DataOutput;->writeByte(I)V

    iget-byte v1, v1, Lcom/flurry/android/e;->c:B

    invoke-interface {p1, v1}, Ljava/io/DataOutput;->writeByte(I)V

    goto :goto_1

    .line 359
    :cond_1
    iget-object v1, p0, Lcom/flurry/android/s;->e:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    .line 360
    invoke-virtual {p1, v1}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 361
    iget-object v1, p0, Lcom/flurry/android/s;->e:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 363
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 364
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/flurry/android/o;

    .line 365
    if-nez v1, :cond_4

    move v2, v8

    .line 366
    :goto_2
    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->writeShort(I)V

    move v4, v8

    .line 367
    :goto_3
    if-ge v4, v2, :cond_2

    .line 369
    aget-object v5, v1, v4

    iget-wide v6, v5, Lcom/flurry/android/o;->a:J

    invoke-interface {p1, v6, v7}, Ljava/io/DataOutput;->writeLong(J)V

    iget-wide v6, v5, Lcom/flurry/android/o;->b:J

    invoke-interface {p1, v6, v7}, Ljava/io/DataOutput;->writeLong(J)V

    iget-object v6, v5, Lcom/flurry/android/o;->d:Ljava/lang/String;

    invoke-interface {p1, v6}, Ljava/io/DataOutput;->writeUTF(Ljava/lang/String;)V

    iget-object v6, v5, Lcom/flurry/android/o;->c:Ljava/lang/String;

    invoke-interface {p1, v6}, Ljava/io/DataOutput;->writeUTF(Ljava/lang/String;)V

    iget-wide v6, v5, Lcom/flurry/android/o;->e:J

    invoke-interface {p1, v6, v7}, Ljava/io/DataOutput;->writeLong(J)V

    iget-object v6, v5, Lcom/flurry/android/o;->f:Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-interface {p1, v6, v7}, Ljava/io/DataOutput;->writeLong(J)V

    iget-object v6, v5, Lcom/flurry/android/o;->g:[B

    array-length v6, v6

    invoke-interface {p1, v6}, Ljava/io/DataOutput;->writeByte(I)V

    iget-object v6, v5, Lcom/flurry/android/o;->g:[B

    invoke-interface {p1, v6}, Ljava/io/DataOutput;->write([B)V

    iget-object v6, v5, Lcom/flurry/android/o;->h:Lcom/flurry/android/AdImage;

    if-eqz v6, :cond_5

    move v6, v9

    :goto_4
    invoke-interface {p1, v6}, Ljava/io/DataOutput;->writeBoolean(Z)V

    if-eqz v6, :cond_3

    iget-object v5, v5, Lcom/flurry/android/o;->h:Lcom/flurry/android/AdImage;

    invoke-virtual {v5, p1}, Lcom/flurry/android/AdImage;->persist(Ljava/io/DataOutput;)V

    .line 367
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 365
    :cond_4
    array-length v2, v1

    goto :goto_2

    :cond_5
    move v6, v8

    .line 369
    goto :goto_4

    .line 373
    :cond_6
    iget-object v1, p0, Lcom/flurry/android/s;->g:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    .line 374
    invoke-virtual {p1, v1}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 375
    iget-object v1, p0, Lcom/flurry/android/s;->g:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 377
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Byte;

    invoke-virtual {v2}, Ljava/lang/Byte;->byteValue()B

    move-result v2

    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 378
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/flurry/android/c;

    invoke-virtual {v1, p1}, Lcom/flurry/android/c;->a(Ljava/io/DataOutput;)V

    goto :goto_5

    .line 381
    :cond_7
    iget-object v1, p0, Lcom/flurry/android/s;->h:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    .line 382
    invoke-virtual {p1, v1}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 383
    iget-object v1, p0, Lcom/flurry/android/s;->h:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Ljava/util/Map$Entry;

    move-object v1, v0

    .line 385
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Short;

    invoke-virtual {p0}, Ljava/lang/Short;->shortValue()S

    move-result v3

    invoke-virtual {p1, v3}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 386
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {p1, v3, v4}, Ljava/io/DataOutputStream;->writeLong(J)V

    goto :goto_6

    .line 388
    :cond_8
    return-void
.end method

.method private f()V
    .locals 8

    .prologue
    .line 215
    iget-object v0, p0, Lcom/flurry/android/s;->g:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    goto :goto_0

    .line 221
    :cond_0
    iget-object v0, p0, Lcom/flurry/android/s;->e:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/flurry/android/o;

    .line 224
    if-eqz v0, :cond_1

    .line 226
    array-length v3, v0

    const/4 v1, 0x0

    move v4, v1

    :goto_1
    if-ge v4, v3, :cond_1

    aget-object v5, v0, v4

    .line 228
    iget-object v1, v5, Lcom/flurry/android/o;->f:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    iget-object v1, p0, Lcom/flurry/android/s;->d:Lcom/flurry/android/x;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/flurry/android/x;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/flurry/android/AdImage;

    iput-object v1, v5, Lcom/flurry/android/o;->h:Lcom/flurry/android/AdImage;

    .line 226
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    goto :goto_1

    .line 233
    :cond_2
    iget-object v0, p0, Lcom/flurry/android/s;->f:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/android/e;

    .line 236
    iget-object v1, v0, Lcom/flurry/android/e;->d:Lcom/flurry/android/c;

    if-nez v1, :cond_4

    iget-byte v1, v0, Lcom/flurry/android/e;->c:B

    iget-object v3, p0, Lcom/flurry/android/s;->g:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/flurry/android/c;

    iput-object v1, v0, Lcom/flurry/android/e;->d:Lcom/flurry/android/c;

    :cond_4
    iget-object v1, v0, Lcom/flurry/android/e;->d:Lcom/flurry/android/c;

    if-nez v1, :cond_3

    const-string v1, "FlurryAgent"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No ad theme found for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-byte v0, v0, Lcom/flurry/android/e;->c:B

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/flurry/android/z;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 238
    :cond_5
    return-void
.end method

.method private g()Ljava/lang/String;
    .locals 3

    .prologue
    .line 398
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ".flurryappcircle."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/flurry/android/s;->b:Lcom/flurry/android/a;

    iget-object v1, v1, Lcom/flurry/android/a;->a:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x10

    invoke-static {v1, v2}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method final a(J)Lcom/flurry/android/AdImage;
    .locals 2
    .parameter

    .prologue
    .line 72
    iget-object v0, p0, Lcom/flurry/android/s;->d:Lcom/flurry/android/x;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/flurry/android/x;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/flurry/android/AdImage;

    return-object p0
.end method

.method final a(S)Lcom/flurry/android/AdImage;
    .locals 2
    .parameter

    .prologue
    .line 77
    iget-object v0, p0, Lcom/flurry/android/s;->h:Ljava/util/Map;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 78
    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/flurry/android/s;->d:Lcom/flurry/android/x;

    invoke-virtual {v1, v0}, Lcom/flurry/android/x;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/flurry/android/AdImage;

    move-object v0, p0

    goto :goto_0
.end method

.method final a()Ljava/util/Set;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/flurry/android/s;->d:Lcom/flurry/android/x;

    invoke-virtual {v0}, Lcom/flurry/android/x;->b()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method final a(Ljava/util/Map;)V
    .locals 4
    .parameter

    .prologue
    .line 113
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/flurry/android/s;->c:J

    .line 114
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 116
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 118
    iget-object v2, p0, Lcom/flurry/android/s;->d:Lcom/flurry/android/x;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Lcom/flurry/android/x;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 121
    :cond_1
    return-void
.end method

.method final a(Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 131
    if-eqz p1, :cond_0

    .line 133
    iget-object v0, p0, Lcom/flurry/android/s;->e:Ljava/util/Map;

    invoke-static {v0, p1, v1}, Lcom/flurry/android/s;->a(Ljava/util/Map;Ljava/util/Map;Z)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/android/s;->e:Ljava/util/Map;

    .line 136
    :cond_0
    if-eqz p2, :cond_1

    .line 138
    iget-object v0, p0, Lcom/flurry/android/s;->f:Ljava/util/Map;

    invoke-static {v0, p2, v1}, Lcom/flurry/android/s;->a(Ljava/util/Map;Ljava/util/Map;Z)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/android/s;->f:Ljava/util/Map;

    .line 141
    :cond_1
    if-eqz p3, :cond_2

    .line 143
    iget-object v0, p0, Lcom/flurry/android/s;->g:Ljava/util/Map;

    invoke-static {v0, p3, v1}, Lcom/flurry/android/s;->a(Ljava/util/Map;Ljava/util/Map;Z)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/android/s;->g:Ljava/util/Map;

    .line 146
    :cond_2
    iget-object v0, p0, Lcom/flurry/android/s;->h:Ljava/util/Map;

    if-eqz v0, :cond_3

    .line 148
    iget-object v0, p0, Lcom/flurry/android/s;->h:Ljava/util/Map;

    const/4 v1, 0x0

    invoke-static {v0, p4, v1}, Lcom/flurry/android/s;->a(Ljava/util/Map;Ljava/util/Map;Z)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/android/s;->h:Ljava/util/Map;

    .line 150
    :cond_3
    return-void
.end method

.method final a(Ljava/lang/String;)[Lcom/flurry/android/o;
    .locals 2
    .parameter

    .prologue
    .line 52
    iget-object v0, p0, Lcom/flurry/android/s;->e:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/flurry/android/o;

    .line 53
    if-nez v0, :cond_0

    .line 55
    iget-object v0, p0, Lcom/flurry/android/s;->e:Ljava/util/Map;

    const-string v1, ""

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lcom/flurry/android/o;

    move-object v0, p0

    .line 57
    :cond_0
    return-object v0
.end method

.method final b(Ljava/lang/String;)Lcom/flurry/android/e;
    .locals 2
    .parameter

    .prologue
    .line 88
    iget-object v0, p0, Lcom/flurry/android/s;->f:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/android/e;

    .line 89
    if-nez v0, :cond_0

    .line 91
    iget-object v0, p0, Lcom/flurry/android/s;->f:Ljava/util/Map;

    const-string v1, ""

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/flurry/android/e;

    move-object v0, p0

    .line 93
    :cond_0
    return-object v0
.end method

.method final b()Z
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/flurry/android/s;->e:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/flurry/android/s;->e:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final c()J
    .locals 2

    .prologue
    .line 166
    iget-wide v0, p0, Lcom/flurry/android/s;->c:J

    return-wide v0
.end method

.method final d()V
    .locals 7

    .prologue
    .line 171
    const/4 v0, 0x0

    .line 173
    iget-object v1, p0, Lcom/flurry/android/s;->a:Landroid/content/Context;

    invoke-direct {p0}, Lcom/flurry/android/s;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 174
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 178
    const/4 v2, 0x0

    .line 181
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 182
    new-instance v4, Ljava/io/DataInputStream;

    invoke-direct {v4, v3}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 184
    :try_start_1
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v2

    .line 185
    const v3, 0xb5fb

    if-ne v2, v3, :cond_0

    .line 187
    invoke-direct {p0, v4}, Lcom/flurry/android/s;->a(Ljava/io/DataInputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 188
    const/4 v0, 0x1

    .line 203
    :cond_0
    invoke-static {v4}, Lcom/flurry/android/h;->a(Ljava/io/Closeable;)V

    .line 206
    :goto_0
    if-eqz v0, :cond_1

    .line 208
    invoke-direct {p0}, Lcom/flurry/android/s;->f()V

    .line 211
    :cond_1
    return-void

    .line 191
    :catch_0
    move-exception v3

    move-object v6, v3

    move-object v3, v2

    move-object v2, v6

    .line 193
    :goto_1
    :try_start_2
    const-string v4, "FlurryAgent"

    const-string v5, "Discarding cache"

    invoke-static {v4, v5, v2}, Lcom/flurry/android/z;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 195
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v1

    .line 196
    if-nez v1, :cond_2

    .line 198
    const-string v1, "FlurryAgent"

    const-string v2, "Cannot delete cached ads"

    invoke-static {v1, v2}, Lcom/flurry/android/z;->b(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 203
    :cond_2
    invoke-static {v3}, Lcom/flurry/android/h;->a(Ljava/io/Closeable;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v1, v2

    :goto_2
    invoke-static {v1}, Lcom/flurry/android/h;->a(Ljava/io/Closeable;)V

    throw v0

    :catchall_1
    move-exception v0

    move-object v1, v4

    goto :goto_2

    :catchall_2
    move-exception v0

    move-object v1, v3

    goto :goto_2

    .line 191
    :catch_1
    move-exception v2

    move-object v3, v4

    goto :goto_1
.end method

.method final e()V
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 243
    .line 247
    :try_start_0
    iget-object v0, p0, Lcom/flurry/android/s;->a:Landroid/content/Context;

    invoke-direct {p0}, Lcom/flurry/android/s;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 248
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    .line 249
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result v2

    .line 250
    if-nez v2, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 252
    const-string v0, "FlurryAgent"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to create persistent dir: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/flurry/android/z;->b(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 267
    invoke-static {v4}, Lcom/flurry/android/h;->a(Ljava/io/Closeable;)V

    .line 268
    :goto_0
    return-void

    .line 255
    :cond_0
    :try_start_1
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 256
    new-instance v0, Ljava/io/DataOutputStream;

    invoke-direct {v0, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 257
    const v1, 0xb5fb

    :try_start_2
    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 259
    invoke-direct {p0, v0}, Lcom/flurry/android/s;->a(Ljava/io/DataOutputStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    .line 267
    invoke-static {v0}, Lcom/flurry/android/h;->a(Ljava/io/Closeable;)V

    goto :goto_0

    .line 261
    :catch_0
    move-exception v0

    move-object v1, v4

    .line 263
    :goto_1
    :try_start_3
    const-string v2, "FlurryAgent"

    const-string v3, ""

    invoke-static {v2, v3, v0}, Lcom/flurry/android/z;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 267
    invoke-static {v1}, Lcom/flurry/android/h;->a(Ljava/io/Closeable;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v1, v4

    :goto_2
    invoke-static {v1}, Lcom/flurry/android/h;->a(Ljava/io/Closeable;)V

    throw v0

    :catchall_1
    move-exception v1

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    goto :goto_2

    :catchall_2
    move-exception v0

    goto :goto_2

    .line 261
    :catch_1
    move-exception v1

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    goto :goto_1
.end method
