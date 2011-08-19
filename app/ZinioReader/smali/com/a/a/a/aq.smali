.class final Lcom/a/a/a/aq;
.super Ljava/util/AbstractMap;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/util/concurrent/ConcurrentMap;


# static fields
.field private static p:Lcom/a/a/a/aw;

.field private static q:Ljava/util/Queue;


# instance fields
.field final transient a:[Lcom/a/a/a/h;

.field final b:Lcom/a/a/b/g;

.field final c:Lcom/a/a/b/g;

.field final d:Lcom/a/a/a/ap;

.field final e:Z

.field final f:Z

.field final g:Ljava/util/Queue;

.field final transient h:Lcom/a/a/a/av;

.field private transient i:I

.field private transient j:I

.field private k:Lcom/a/a/a/ap;

.field private l:J

.field private m:I

.field private n:Lcom/a/a/a/e;

.field private o:I

.field private r:Ljava/util/Set;

.field private s:Ljava/util/Collection;

.field private t:Ljava/util/Set;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 593
    new-instance v0, Lcom/a/a/a/ai;

    invoke-direct {v0}, Lcom/a/a/a/ai;-><init>()V

    sput-object v0, Lcom/a/a/a/aq;->p:Lcom/a/a/a/aw;

    .line 749
    new-instance v0, Lcom/a/a/a/aj;

    invoke-direct {v0}, Lcom/a/a/a/aj;-><init>()V

    sput-object v0, Lcom/a/a/a/aq;->q:Ljava/util/Queue;

    return-void
.end method

.method constructor <init>(Lcom/a/a/a/ao;)V
    .locals 10
    .parameter

    .prologue
    const-wide/16 v8, 0x0

    const/high16 v4, 0x4000

    const/4 v7, -0x1

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 191
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    .line 192
    invoke-virtual {p1}, Lcom/a/a/a/ao;->e()Lcom/a/a/a/ap;

    move-result-object v0

    iput-object v0, p0, Lcom/a/a/a/aq;->k:Lcom/a/a/a/ap;

    .line 193
    invoke-virtual {p1}, Lcom/a/a/a/ao;->g()Lcom/a/a/a/ap;

    move-result-object v0

    iput-object v0, p0, Lcom/a/a/a/aq;->d:Lcom/a/a/a/ap;

    .line 195
    iget-object v0, p1, Lcom/a/a/a/ao;->c:Lcom/a/a/b/g;

    invoke-virtual {p1}, Lcom/a/a/a/ao;->e()Lcom/a/a/a/ap;

    move-result-object v1

    invoke-virtual {v1}, Lcom/a/a/a/ap;->a()Lcom/a/a/b/g;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/a/a/b/o;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/a/b/g;

    iput-object v0, p0, Lcom/a/a/a/aq;->b:Lcom/a/a/b/g;

    .line 196
    iget-object v0, p1, Lcom/a/a/a/ao;->d:Lcom/a/a/b/g;

    invoke-virtual {p1}, Lcom/a/a/a/ao;->g()Lcom/a/a/a/ap;

    move-result-object v1

    invoke-virtual {v1}, Lcom/a/a/a/ap;->a()Lcom/a/a/b/g;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/a/a/b/o;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/a/b/g;

    iput-object v0, p0, Lcom/a/a/a/aq;->c:Lcom/a/a/b/g;

    .line 198
    iget-wide v0, p1, Lcom/a/a/a/ao;->b:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    move-wide v0, v8

    :goto_0
    iput-wide v0, p0, Lcom/a/a/a/aq;->l:J

    .line 199
    iget v0, p1, Lcom/a/a/a/ao;->a:I

    iput v0, p0, Lcom/a/a/a/aq;->m:I

    .line 201
    iget v0, p0, Lcom/a/a/a/aq;->m:I

    if-eq v0, v7, :cond_3

    move v0, v6

    :goto_1
    iput-boolean v0, p0, Lcom/a/a/a/aq;->f:Z

    .line 202
    iget-wide v0, p0, Lcom/a/a/a/aq;->l:J

    cmp-long v0, v0, v8

    if-lez v0, :cond_4

    move v0, v6

    :goto_2
    iput-boolean v0, p0, Lcom/a/a/a/aq;->e:Z

    .line 204
    iget-object v0, p0, Lcom/a/a/a/aq;->k:Lcom/a/a/a/ap;

    iget-boolean v1, p0, Lcom/a/a/a/aq;->e:Z

    iget-boolean v2, p0, Lcom/a/a/a/aq;->f:Z

    invoke-static {v0, v1, v2}, Lcom/a/a/a/av;->a(Lcom/a/a/a/ap;ZZ)Lcom/a/a/a/av;

    move-result-object v0

    iput-object v0, p0, Lcom/a/a/a/aq;->h:Lcom/a/a/a/av;

    .line 206
    iget-object v0, p1, Lcom/a/a/a/ao;->e:Lcom/a/a/a/e;

    .line 208
    if-eqz v0, :cond_0

    sget-object v1, Lcom/a/a/a/x;->a:Lcom/a/a/a/x;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 211
    :cond_0
    sget-object v0, Lcom/a/a/a/aq;->q:Ljava/util/Queue;

    .line 212
    iput-object v0, p0, Lcom/a/a/a/aq;->g:Ljava/util/Queue;

    .line 215
    sget-object v0, Lcom/a/a/a/x;->a:Lcom/a/a/a/x;

    .line 217
    iput-object v0, p0, Lcom/a/a/a/aq;->n:Lcom/a/a/a/e;

    .line 224
    :goto_3
    invoke-virtual {p1}, Lcom/a/a/a/ao;->d()I

    move-result v0

    const/high16 v1, 0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/a/a/a/aq;->o:I

    .line 227
    invoke-virtual {p1}, Lcom/a/a/a/ao;->b()I

    move-result v0

    .line 228
    if-le v0, v4, :cond_c

    move v1, v4

    :goto_4
    move v0, v5

    move v2, v6

    .line 238
    :goto_5
    iget v3, p0, Lcom/a/a/a/aq;->o:I

    if-ge v2, v3, :cond_6

    iget-boolean v3, p0, Lcom/a/a/a/aq;->f:Z

    if-eqz v3, :cond_1

    mul-int/lit8 v3, v2, 0x2

    iget v4, p0, Lcom/a/a/a/aq;->m:I

    if-gt v3, v4, :cond_6

    .line 239
    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 240
    shl-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 198
    :cond_2
    iget-wide v0, p1, Lcom/a/a/a/ao;->b:J

    goto :goto_0

    :cond_3
    move v0, v5

    .line 201
    goto :goto_1

    :cond_4
    move v0, v5

    .line 202
    goto :goto_2

    .line 219
    :cond_5
    new-instance v1, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v1, p0, Lcom/a/a/a/aq;->g:Ljava/util/Queue;

    .line 221
    iput-object v0, p0, Lcom/a/a/a/aq;->n:Lcom/a/a/a/e;

    goto :goto_3

    .line 242
    :cond_6
    const/16 v3, 0x20

    sub-int v0, v3, v0

    iput v0, p0, Lcom/a/a/a/aq;->j:I

    .line 243
    sub-int v0, v2, v6

    iput v0, p0, Lcom/a/a/a/aq;->i:I

    .line 245
    const-class v0, Lcom/a/a/a/h;

    invoke-static {v0, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/a/a/a/h;

    iput-object v0, p0, Lcom/a/a/a/aq;->a:[Lcom/a/a/a/h;

    .line 247
    div-int v0, v1, v2

    .line 248
    mul-int v3, v0, v2

    if-ge v3, v1, :cond_7

    .line 249
    add-int/lit8 v0, v0, 0x1

    :cond_7
    move v1, v6

    .line 253
    :goto_6
    if-ge v1, v0, :cond_8

    .line 254
    shl-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 257
    :cond_8
    iget-boolean v0, p0, Lcom/a/a/a/aq;->f:Z

    if-eqz v0, :cond_a

    .line 259
    iget v0, p0, Lcom/a/a/a/aq;->m:I

    div-int/2addr v0, v2

    add-int/lit8 v0, v0, 0x1

    .line 260
    iget v3, p0, Lcom/a/a/a/aq;->m:I

    rem-int v2, v3, v2

    move v3, v0

    move v0, v5

    .line 261
    :goto_7
    iget-object v4, p0, Lcom/a/a/a/aq;->a:[Lcom/a/a/a/h;

    array-length v4, v4

    if-ge v0, v4, :cond_b

    .line 262
    if-ne v0, v2, :cond_9

    .line 263
    add-int/lit8 v3, v3, -0x1

    .line 265
    :cond_9
    iget-object v4, p0, Lcom/a/a/a/aq;->a:[Lcom/a/a/a/h;

    new-instance v5, Lcom/a/a/a/h;

    invoke-direct {v5, p0, v1, v3}, Lcom/a/a/a/h;-><init>(Lcom/a/a/a/aq;II)V

    aput-object v5, v4, v0

    .line 261
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_a
    move v0, v5

    .line 268
    :goto_8
    iget-object v2, p0, Lcom/a/a/a/aq;->a:[Lcom/a/a/a/h;

    array-length v2, v2

    if-ge v0, v2, :cond_b

    .line 269
    iget-object v2, p0, Lcom/a/a/a/aq;->a:[Lcom/a/a/a/h;

    new-instance v3, Lcom/a/a/a/h;

    invoke-direct {v3, p0, v1, v7}, Lcom/a/a/a/h;-><init>(Lcom/a/a/a/aq;II)V

    aput-object v3, v2, v0

    .line 268
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 273
    :cond_b
    return-void

    :cond_c
    move v1, v0

    goto :goto_4
.end method

.method private a(Ljava/lang/Object;)I
    .locals 3
    .parameter

    .prologue
    .line 1413
    iget-object v0, p0, Lcom/a/a/a/aq;->b:Lcom/a/a/b/g;

    invoke-static {p1}, Lcom/a/a/b/l;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/a/a/b/g;->a(Ljava/lang/Object;)I

    move-result v0

    .line 1414
    shl-int/lit8 v1, v0, 0xf

    xor-int/lit16 v1, v1, -0x3283

    add-int/2addr v0, v1

    ushr-int/lit8 v1, v0, 0xa

    xor-int/2addr v0, v1

    shl-int/lit8 v1, v0, 0x3

    add-int/2addr v0, v1

    ushr-int/lit8 v1, v0, 0x6

    xor-int/2addr v0, v1

    shl-int/lit8 v1, v0, 0x2

    shl-int/lit8 v2, v0, 0xe

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    ushr-int/lit8 v1, v0, 0x10

    xor-int/2addr v0, v1

    return v0
.end method

.method private a(I)Lcom/a/a/a/h;
    .locals 3
    .parameter

    .prologue
    .line 1524
    iget-object v0, p0, Lcom/a/a/a/aq;->a:[Lcom/a/a/a/h;

    iget v1, p0, Lcom/a/a/a/aq;->j:I

    ushr-int v1, p1, v1

    iget v2, p0, Lcom/a/a/a/aq;->i:I

    and-int/2addr v1, v2

    aget-object v0, v0, v1

    return-object v0
.end method

.method static a(Lcom/a/a/a/ak;)V
    .locals 1
    .parameter
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "Segment.this"
    .end annotation

    .prologue
    .line 1444
    sget-object v0, Lcom/a/a/a/a;->a:Lcom/a/a/a/a;

    invoke-interface {p0, v0}, Lcom/a/a/a/ak;->a(Lcom/a/a/a/ak;)V

    .line 1445
    sget-object v0, Lcom/a/a/a/a;->a:Lcom/a/a/a/a;

    invoke-interface {p0, v0}, Lcom/a/a/a/ak;->b(Lcom/a/a/a/ak;)V

    .line 1446
    return-void
.end method

.method static a(Lcom/a/a/a/ak;Lcom/a/a/a/ak;)V
    .locals 0
    .parameter
    .parameter
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "Segment.this"
    .end annotation

    .prologue
    .line 1438
    invoke-interface {p0, p1}, Lcom/a/a/a/ak;->a(Lcom/a/a/a/ak;)V

    .line 1439
    invoke-interface {p1, p0}, Lcom/a/a/a/ak;->b(Lcom/a/a/a/ak;)V

    .line 1440
    return-void
.end method

.method static a(Lcom/a/a/a/ba;)V
    .locals 1
    .parameter
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "Segment.this"
    .end annotation

    .prologue
    .line 1500
    sget-object v0, Lcom/a/a/a/d;->a:Lcom/a/a/a/d;

    invoke-interface {p0, v0}, Lcom/a/a/a/ba;->a(Lcom/a/a/a/ba;)V

    .line 1501
    sget-object v0, Lcom/a/a/a/d;->a:Lcom/a/a/a/d;

    invoke-interface {p0, v0}, Lcom/a/a/a/ba;->b(Lcom/a/a/a/ba;)V

    .line 1502
    return-void
.end method

.method static a(Lcom/a/a/a/ba;Lcom/a/a/a/ba;)V
    .locals 0
    .parameter
    .parameter
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "Segment.this"
    .end annotation

    .prologue
    .line 1494
    invoke-interface {p0, p1}, Lcom/a/a/a/ba;->a(Lcom/a/a/a/ba;)V

    .line 1495
    invoke-interface {p1, p0}, Lcom/a/a/a/ba;->b(Lcom/a/a/a/ba;)V

    .line 1496
    return-void
.end method

.method static a(Lcom/a/a/a/bj;Lcom/a/a/a/aw;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1394
    invoke-interface {p0, p1}, Lcom/a/a/a/bj;->a(Lcom/a/a/a/aw;)V

    .line 1395
    return-void
.end method

.method static synthetic b()Lcom/a/a/a/aw;
    .locals 1

    .prologue
    .line 63
    sget-object v0, Lcom/a/a/a/aq;->p:Lcom/a/a/a/aw;

    return-object v0
.end method


# virtual methods
.method final a(Lcom/a/a/a/bj;Lcom/a/a/a/bj;)Lcom/a/a/a/bj;
    .locals 2
    .parameter
    .parameter
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "Segment.this"
    .end annotation

    .prologue
    .line 1400
    invoke-interface {p1}, Lcom/a/a/a/bj;->f()Lcom/a/a/a/aw;

    move-result-object v0

    .line 1401
    iget-object v1, p0, Lcom/a/a/a/aq;->h:Lcom/a/a/a/av;

    invoke-virtual {v1, p0, p1, p2}, Lcom/a/a/a/av;->a(Lcom/a/a/a/aq;Lcom/a/a/a/bj;Lcom/a/a/a/bj;)Lcom/a/a/a/bj;

    move-result-object v1

    .line 1403
    invoke-interface {v0, v1}, Lcom/a/a/a/aw;->a(Lcom/a/a/a/bj;)Lcom/a/a/a/aw;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/a/a/a/bj;->a(Lcom/a/a/a/aw;)V

    .line 1404
    return-object v1
.end method

.method final a()V
    .locals 1

    .prologue
    .line 1485
    :goto_0
    iget-object v0, p0, Lcom/a/a/a/aq;->g:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/a/a/bj;

    if-eqz v0, :cond_0

    .line 1486
    invoke-interface {v0}, Lcom/a/a/a/bj;->d()Ljava/lang/Object;

    invoke-interface {v0}, Lcom/a/a/a/bj;->f()Lcom/a/a/a/aw;

    move-result-object v0

    invoke-interface {v0}, Lcom/a/a/a/aw;->get()Ljava/lang/Object;

    goto :goto_0

    .line 1489
    :cond_0
    return-void
.end method

.method final a(Lcom/a/a/a/bj;)V
    .locals 4
    .parameter

    .prologue
    .line 1418
    invoke-interface {p1}, Lcom/a/a/a/bj;->h()I

    move-result v0

    .line 1419
    invoke-direct {p0, v0}, Lcom/a/a/a/aq;->a(I)Lcom/a/a/a/h;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/a/a/a/h;->a(Lcom/a/a/a/bj;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1423
    iget-object v1, p0, Lcom/a/a/a/aq;->h:Lcom/a/a/a/av;

    invoke-interface {p1}, Lcom/a/a/a/bj;->d()Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, p0, v2, v0, v3}, Lcom/a/a/a/av;->a(Lcom/a/a/a/aq;Ljava/lang/Object;ILcom/a/a/a/bj;)Lcom/a/a/a/bj;

    move-result-object v0

    .line 1425
    iget-object v1, p0, Lcom/a/a/a/aq;->g:Ljava/util/Queue;

    invoke-interface {v1, v0}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 1427
    :cond_0
    return-void
.end method

.method final a(Lcom/a/a/a/ak;J)Z
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 1460
    invoke-interface {p1}, Lcom/a/a/a/ak;->c_()J

    move-result-wide v0

    sub-long v0, p2, v0

    iget-wide v2, p0, Lcom/a/a/a/aq;->l:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final b(Lcom/a/a/a/bj;)Z
    .locals 2
    .parameter

    .prologue
    .line 1430
    invoke-interface {p1}, Lcom/a/a/a/bj;->h()I

    move-result v0

    .line 1431
    invoke-direct {p0, v0}, Lcom/a/a/a/aq;->a(I)Lcom/a/a/a/h;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/a/a/a/h;->b(Lcom/a/a/a/bj;I)Z

    move-result v0

    return v0
.end method

.method final c(Lcom/a/a/a/bj;)Z
    .locals 2
    .parameter

    .prologue
    .line 1452
    check-cast p1, Lcom/a/a/a/ak;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1}, Lcom/a/a/a/aq;->a(Lcom/a/a/a/ak;J)Z

    move-result v0

    return v0
.end method

.method public final clear()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 2562
    iget-object v0, p0, Lcom/a/a/a/aq;->a:[Lcom/a/a/a/h;

    array-length v1, v0

    move v2, v7

    :goto_0
    if-ge v2, v1, :cond_4

    aget-object v3, v0, v2

    .line 2563
    iget v4, v3, Lcom/a/a/a/h;->a:I

    if-eqz v4, :cond_3

    invoke-virtual {v3}, Lcom/a/a/a/h;->lock()V

    :try_start_0
    iget-object v4, v3, Lcom/a/a/a/h;->c:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    move v5, v7

    :goto_1
    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v6

    if-ge v5, v6, :cond_0

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_0
    iget-object v4, v3, Lcom/a/a/a/h;->e:Lcom/a/a/a/ak;

    invoke-interface {v4}, Lcom/a/a/a/ak;->b()Lcom/a/a/a/ak;

    move-result-object v4

    :goto_2
    iget-object v5, v3, Lcom/a/a/a/h;->e:Lcom/a/a/a/ak;

    if-eq v4, v5, :cond_1

    invoke-interface {v4}, Lcom/a/a/a/ak;->b()Lcom/a/a/a/ak;

    move-result-object v5

    invoke-static {v4}, Lcom/a/a/a/aq;->a(Lcom/a/a/a/ak;)V

    move-object v4, v5

    goto :goto_2

    :cond_1
    iget-object v4, v3, Lcom/a/a/a/h;->e:Lcom/a/a/a/ak;

    iget-object v5, v3, Lcom/a/a/a/h;->e:Lcom/a/a/a/ak;

    invoke-interface {v4, v5}, Lcom/a/a/a/ak;->a(Lcom/a/a/a/ak;)V

    iget-object v4, v3, Lcom/a/a/a/h;->e:Lcom/a/a/a/ak;

    iget-object v5, v3, Lcom/a/a/a/h;->e:Lcom/a/a/a/ak;

    invoke-interface {v4, v5}, Lcom/a/a/a/ak;->b(Lcom/a/a/a/ak;)V

    iget-object v4, v3, Lcom/a/a/a/h;->d:Lcom/a/a/a/ba;

    invoke-interface {v4}, Lcom/a/a/a/ba;->a()Lcom/a/a/a/ba;

    move-result-object v4

    :goto_3
    iget-object v5, v3, Lcom/a/a/a/h;->d:Lcom/a/a/a/ba;

    if-eq v4, v5, :cond_2

    invoke-interface {v4}, Lcom/a/a/a/ba;->a()Lcom/a/a/a/ba;

    move-result-object v5

    invoke-static {v4}, Lcom/a/a/a/aq;->a(Lcom/a/a/a/ba;)V

    move-object v4, v5

    goto :goto_3

    :cond_2
    iget-object v4, v3, Lcom/a/a/a/h;->d:Lcom/a/a/a/ba;

    iget-object v5, v3, Lcom/a/a/a/h;->d:Lcom/a/a/a/ba;

    invoke-interface {v4, v5}, Lcom/a/a/a/ba;->a(Lcom/a/a/a/ba;)V

    iget-object v4, v3, Lcom/a/a/a/h;->d:Lcom/a/a/a/ba;

    iget-object v5, v3, Lcom/a/a/a/h;->d:Lcom/a/a/a/ba;

    invoke-interface {v4, v5}, Lcom/a/a/a/ba;->b(Lcom/a/a/a/ba;)V

    iget v4, v3, Lcom/a/a/a/h;->b:I

    add-int/lit8 v4, v4, 0x1

    iput v4, v3, Lcom/a/a/a/h;->b:I

    const/4 v4, 0x0

    iput v4, v3, Lcom/a/a/a/h;->a:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v3}, Lcom/a/a/a/h;->unlock()V

    .line 2562
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2563
    :catchall_0
    move-exception v0

    invoke-virtual {v3}, Lcom/a/a/a/h;->unlock()V

    throw v0

    .line 2565
    :cond_4
    return-void
.end method

.method public final containsKey(Ljava/lang/Object;)Z
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x0

    .line 2448
    invoke-direct {p0, p1}, Lcom/a/a/a/aq;->a(Ljava/lang/Object;)I

    move-result v0

    .line 2449
    invoke-direct {p0, v0}, Lcom/a/a/a/aq;->a(I)Lcom/a/a/a/h;

    move-result-object v1

    iget v2, v1, Lcom/a/a/a/h;->a:I

    if-eqz v2, :cond_2

    invoke-virtual {v1, v0}, Lcom/a/a/a/h;->a(I)Lcom/a/a/a/bj;

    move-result-object v2

    :goto_0
    if-eqz v2, :cond_2

    invoke-interface {v2}, Lcom/a/a/a/bj;->h()I

    move-result v3

    if-ne v3, v0, :cond_1

    invoke-interface {v2}, Lcom/a/a/a/bj;->d()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_1

    iget-object v4, v1, Lcom/a/a/a/h;->f:Lcom/a/a/a/aq;

    iget-object v4, v4, Lcom/a/a/a/aq;->b:Lcom/a/a/b/g;

    invoke-interface {v4, v3, p1}, Lcom/a/a/b/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v0, v1, Lcom/a/a/a/h;->f:Lcom/a/a/a/aq;

    invoke-virtual {v0, v2}, Lcom/a/a/a/aq;->d(Lcom/a/a/a/bj;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_0
    move v0, v5

    goto :goto_1

    :cond_1
    invoke-interface {v2}, Lcom/a/a/a/bj;->i()Lcom/a/a/a/bj;

    move-result-object v2

    goto :goto_0

    :cond_2
    move v0, v5

    goto :goto_1
.end method

.method public final containsValue(Ljava/lang/Object;)Z
    .locals 8
    .parameter

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 2454
    const-string v0, "value"

    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/NullPointerException;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2458
    :cond_0
    iget-object v0, p0, Lcom/a/a/a/aq;->a:[Lcom/a/a/a/h;

    .line 2459
    array-length v1, v0

    new-array v1, v1, [I

    move v2, v6

    .line 2462
    :goto_0
    const/4 v3, 0x2

    if-ge v2, v3, :cond_5

    move v3, v6

    move v4, v6

    .line 2464
    :goto_1
    array-length v5, v0

    if-ge v3, v5, :cond_2

    .line 2467
    aget-object v5, v0, v3

    iget v5, v5, Lcom/a/a/a/h;->b:I

    aput v5, v1, v3

    add-int/2addr v4, v5

    .line 2469
    aget-object v5, v0, v3

    invoke-virtual {v5, p1}, Lcom/a/a/a/h;->a(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    move v0, v7

    .line 2505
    :goto_2
    return v0

    .line 2464
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 2474
    :cond_2
    if-eqz v4, :cond_c

    move v3, v6

    .line 2475
    :goto_3
    array-length v4, v0

    if-ge v3, v4, :cond_c

    .line 2478
    aget v4, v1, v3

    aget-object v5, v0, v3

    iget v5, v5, Lcom/a/a/a/h;->b:I

    if-eq v4, v5, :cond_3

    move v3, v6

    .line 2485
    :goto_4
    if-eqz v3, :cond_4

    move v0, v6

    .line 2486
    goto :goto_2

    .line 2475
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 2462
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2491
    :cond_5
    array-length v1, v0

    move v2, v6

    :goto_5
    if-ge v2, v1, :cond_6

    aget-object v3, v0, v2

    .line 2492
    invoke-virtual {v3}, Lcom/a/a/a/h;->lock()V

    .line 2491
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 2495
    :cond_6
    :try_start_0
    array-length v1, v0

    move v2, v6

    :goto_6
    if-ge v2, v1, :cond_9

    aget-object v3, v0, v2

    .line 2496
    invoke-virtual {v3, p1}, Lcom/a/a/a/h;->a(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_8

    .line 2497
    array-length v1, v0

    move v2, v6

    :goto_7
    if-ge v2, v1, :cond_7

    aget-object v3, v0, v2

    .line 2502
    invoke-virtual {v3}, Lcom/a/a/a/h;->unlock()V

    .line 2501
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_7
    move v0, v7

    goto :goto_2

    .line 2495
    :cond_8
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 2501
    :cond_9
    array-length v1, v0

    move v2, v6

    :goto_8
    if-ge v2, v1, :cond_b

    aget-object v3, v0, v2

    .line 2502
    invoke-virtual {v3}, Lcom/a/a/a/h;->unlock()V

    .line 2501
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :catchall_0
    move-exception v1

    array-length v2, v0

    move v3, v6

    :goto_9
    if-ge v3, v2, :cond_a

    aget-object v4, v0, v3

    .line 2502
    invoke-virtual {v4}, Lcom/a/a/a/h;->unlock()V

    .line 2501
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    :cond_a
    throw v1

    :cond_b
    move v0, v6

    .line 2505
    goto :goto_2

    :cond_c
    move v3, v7

    goto :goto_4
.end method

.method final d(Lcom/a/a/a/bj;)Ljava/lang/Object;
    .locals 2
    .parameter

    .prologue
    .line 1470
    invoke-interface {p1}, Lcom/a/a/a/bj;->f()Lcom/a/a/a/aw;

    move-result-object v0

    invoke-interface {v0}, Lcom/a/a/a/aw;->get()Ljava/lang/Object;

    move-result-object v0

    .line 1471
    iget-boolean v1, p0, Lcom/a/a/a/aq;->e:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0, p1}, Lcom/a/a/a/aq;->c(Lcom/a/a/a/bj;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    return-object v0
.end method

.method public final entrySet()Ljava/util/Set;
    .locals 1

    .prologue
    .line 2584
    iget-object v0, p0, Lcom/a/a/a/aq;->t:Ljava/util/Set;

    .line 2585
    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/a/a/a/au;

    invoke-direct {v0, p0}, Lcom/a/a/a/au;-><init>(Lcom/a/a/a/aq;)V

    iput-object v0, p0, Lcom/a/a/a/aq;->t:Ljava/util/Set;

    goto :goto_0
.end method

.method public final get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .parameter

    .prologue
    .line 2443
    invoke-direct {p0, p1}, Lcom/a/a/a/aq;->a(Ljava/lang/Object;)I

    move-result v0

    .line 2444
    invoke-direct {p0, v0}, Lcom/a/a/a/aq;->a(I)Lcom/a/a/a/h;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/a/a/a/h;->a(Ljava/lang/Object;I)Lcom/a/a/a/bj;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-interface {v0}, Lcom/a/a/a/bj;->f()Lcom/a/a/a/aw;

    move-result-object v0

    invoke-interface {v0}, Lcom/a/a/a/aw;->get()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public final isEmpty()Z
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 2366
    iget-object v0, p0, Lcom/a/a/a/aq;->a:[Lcom/a/a/a/h;

    .line 2376
    array-length v1, v0

    new-array v1, v1, [I

    move v2, v5

    move v3, v5

    .line 2378
    :goto_0
    array-length v4, v0

    if-ge v2, v4, :cond_1

    .line 2379
    aget-object v4, v0, v2

    iget v4, v4, Lcom/a/a/a/h;->a:I

    if-eqz v4, :cond_0

    move v0, v5

    .line 2396
    :goto_1
    return v0

    .line 2382
    :cond_0
    aget-object v4, v0, v2

    iget v4, v4, Lcom/a/a/a/h;->b:I

    aput v4, v1, v2

    add-int/2addr v3, v4

    .line 2378
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2388
    :cond_1
    if-eqz v3, :cond_4

    move v2, v5

    .line 2389
    :goto_2
    array-length v3, v0

    if-ge v2, v3, :cond_4

    .line 2390
    aget-object v3, v0, v2

    iget v3, v3, Lcom/a/a/a/h;->a:I

    if-nez v3, :cond_2

    aget v3, v1, v2

    aget-object v4, v0, v2

    iget v4, v4, Lcom/a/a/a/h;->b:I

    if-eq v3, v4, :cond_3

    :cond_2
    move v0, v5

    .line 2392
    goto :goto_1

    .line 2389
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 2396
    :cond_4
    const/4 v0, 0x1

    goto :goto_1
.end method

.method public final keySet()Ljava/util/Set;
    .locals 1

    .prologue
    .line 2570
    iget-object v0, p0, Lcom/a/a/a/aq;->r:Ljava/util/Set;

    .line 2571
    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/a/a/a/bh;

    invoke-direct {v0, p0}, Lcom/a/a/a/bh;-><init>(Lcom/a/a/a/aq;)V

    iput-object v0, p0, Lcom/a/a/a/aq;->r:Ljava/util/Set;

    goto :goto_0
.end method

.method public final put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 2509
    invoke-direct {p0, p1}, Lcom/a/a/a/aq;->a(Ljava/lang/Object;)I

    move-result v0

    .line 2510
    invoke-direct {p0, v0}, Lcom/a/a/a/aq;->a(I)Lcom/a/a/a/h;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v0, p2, v2}, Lcom/a/a/a/h;->a(Ljava/lang/Object;ILjava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final putAll(Ljava/util/Map;)V
    .locals 3
    .parameter

    .prologue
    .line 2519
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 2520
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v2, v0}, Lcom/a/a/a/aq;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 2522
    :cond_0
    return-void
.end method

.method public final putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 2514
    invoke-direct {p0, p1}, Lcom/a/a/a/aq;->a(Ljava/lang/Object;)I

    move-result v0

    .line 2515
    invoke-direct {p0, v0}, Lcom/a/a/a/aq;->a(I)Lcom/a/a/a/h;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v0, p2, v2}, Lcom/a/a/a/h;->a(Ljava/lang/Object;ILjava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .parameter

    .prologue
    .line 2525
    invoke-direct {p0, p1}, Lcom/a/a/a/aq;->a(Ljava/lang/Object;)I

    move-result v0

    .line 2526
    invoke-direct {p0, v0}, Lcom/a/a/a/aq;->a(I)Lcom/a/a/a/h;

    move-result-object v1

    iget-boolean v2, p0, Lcom/a/a/a/aq;->e:Z

    invoke-virtual {v1, p1, v0, v2}, Lcom/a/a/a/h;->a(Ljava/lang/Object;IZ)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final remove(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 2535
    invoke-direct {p0, p1}, Lcom/a/a/a/aq;->a(Ljava/lang/Object;)I

    move-result v0

    .line 2536
    invoke-direct {p0, v0}, Lcom/a/a/a/aq;->a(I)Lcom/a/a/a/h;

    move-result-object v1

    invoke-virtual {v1, p1, v0, p2}, Lcom/a/a/a/h;->b(Ljava/lang/Object;ILjava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final replace(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 2557
    invoke-direct {p0, p1}, Lcom/a/a/a/aq;->a(Ljava/lang/Object;)I

    move-result v0

    .line 2558
    invoke-direct {p0, v0}, Lcom/a/a/a/aq;->a(I)Lcom/a/a/a/h;

    move-result-object v1

    invoke-virtual {v1, p1, v0, p2}, Lcom/a/a/a/h;->a(Ljava/lang/Object;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final replace(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2545
    invoke-direct {p0, p1}, Lcom/a/a/a/aq;->a(Ljava/lang/Object;)I

    move-result v0

    .line 2546
    invoke-direct {p0, v0}, Lcom/a/a/a/aq;->a(I)Lcom/a/a/a/h;

    move-result-object v1

    invoke-virtual {v1, p1, v0, p2, p3}, Lcom/a/a/a/h;->a(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final size()I
    .locals 14

    .prologue
    const-wide/16 v12, 0x0

    const/4 v11, 0x0

    .line 2400
    iget-object v0, p0, Lcom/a/a/a/aq;->a:[Lcom/a/a/a/h;

    .line 2403
    array-length v1, v0

    new-array v1, v1, [I

    move v2, v11

    move-wide v3, v12

    move-wide v5, v12

    .line 2406
    :goto_0
    const/4 v7, 0x2

    if-ge v2, v7, :cond_2

    move v3, v11

    move v4, v11

    move-wide v5, v12

    .line 2410
    :goto_1
    array-length v7, v0

    if-ge v3, v7, :cond_0

    .line 2411
    aget-object v7, v0, v3

    iget v7, v7, Lcom/a/a/a/h;->a:I

    int-to-long v7, v7

    add-long/2addr v5, v7

    .line 2412
    aget-object v7, v0, v3

    iget v7, v7, Lcom/a/a/a/h;->b:I

    aput v7, v1, v3

    add-int/2addr v4, v7

    .line 2410
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 2414
    :cond_0
    if-eqz v4, :cond_9

    move v3, v11

    move-wide v7, v12

    .line 2415
    :goto_2
    array-length v4, v0

    if-ge v3, v4, :cond_8

    .line 2416
    aget-object v4, v0, v3

    iget v4, v4, Lcom/a/a/a/h;->a:I

    int-to-long v9, v4

    add-long/2addr v7, v9

    .line 2417
    aget v4, v1, v3

    aget-object v9, v0, v3

    iget v9, v9, Lcom/a/a/a/h;->b:I

    if-eq v4, v9, :cond_1

    .line 2418
    const-wide/16 v3, -0x1

    .line 2423
    :goto_3
    cmp-long v7, v3, v5

    if-eqz v7, :cond_2

    .line 2424
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2415
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_2
    move-wide v1, v3

    move-wide v3, v5

    .line 2427
    cmp-long v1, v1, v3

    if-eqz v1, :cond_5

    .line 2429
    array-length v1, v0

    move v2, v11

    :goto_4
    if-ge v2, v1, :cond_3

    aget-object v3, v0, v2

    .line 2430
    invoke-virtual {v3}, Lcom/a/a/a/h;->lock()V

    .line 2429
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 2432
    :cond_3
    array-length v1, v0

    move v2, v11

    move-wide v3, v12

    :goto_5
    if-ge v2, v1, :cond_4

    aget-object v5, v0, v2

    .line 2433
    iget v5, v5, Lcom/a/a/a/h;->a:I

    int-to-long v5, v5

    add-long/2addr v3, v5

    .line 2432
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 2435
    :cond_4
    array-length v1, v0

    move v2, v11

    :goto_6
    if-ge v2, v1, :cond_5

    aget-object v5, v0, v2

    .line 2436
    invoke-virtual {v5}, Lcom/a/a/a/h;->unlock()V

    .line 2435
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_5
    move-wide v0, v3

    .line 2439
    const-wide/32 v2, 0x7fffffff

    cmp-long v2, v0, v2

    if-lez v2, :cond_6

    const v0, 0x7fffffff

    :goto_7
    return v0

    :cond_6
    const-wide/32 v2, -0x80000000

    cmp-long v2, v0, v2

    if-gez v2, :cond_7

    const/high16 v0, -0x8000

    goto :goto_7

    :cond_7
    long-to-int v0, v0

    goto :goto_7

    :cond_8
    move-wide v3, v7

    goto :goto_3

    :cond_9
    move-wide v3, v12

    goto :goto_3
.end method

.method public final values()Ljava/util/Collection;
    .locals 1

    .prologue
    .line 2577
    iget-object v0, p0, Lcom/a/a/a/aq;->s:Ljava/util/Collection;

    .line 2578
    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/a/a/a/i;

    invoke-direct {v0, p0}, Lcom/a/a/a/i;-><init>(Lcom/a/a/a/aq;)V

    iput-object v0, p0, Lcom/a/a/a/aq;->s:Ljava/util/Collection;

    goto :goto_0
.end method
