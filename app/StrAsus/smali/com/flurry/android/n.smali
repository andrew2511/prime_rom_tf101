.class final Lcom/flurry/android/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field static a:Ljava/lang/String;

.field static b:Ljava/lang/String;

.field private static volatile c:Ljava/lang/String;

.field private static volatile d:Ljava/lang/String;

.field private static volatile e:Ljava/lang/String;


# instance fields
.field private f:Landroid/content/Context;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:J

.field private l:J

.field private m:J

.field private n:Lcom/flurry/android/s;

.field private o:Ljava/util/List;

.field private p:Ljava/util/Map;

.field private q:Landroid/os/Handler;

.field private r:Z

.field private transient s:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const-string v0, "market://"

    sput-object v0, Lcom/flurry/android/n;->c:Ljava/lang/String;

    .line 34
    const-string v0, "market://details?id="

    sput-object v0, Lcom/flurry/android/n;->d:Ljava/lang/String;

    .line 35
    const-string v0, "market://search?q=pname:"

    sput-object v0, Lcom/flurry/android/n;->e:Ljava/lang/String;

    .line 41
    const-string v0, "FlurryAgent"

    sput-object v0, Lcom/flurry/android/n;->a:Ljava/lang/String;

    .line 42
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    .line 46
    invoke-virtual {v0}, Ljava/util/Random;->nextInt()I

    .line 55
    const-string v0, ""

    sput-object v0, Lcom/flurry/android/n;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/flurry/android/a;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/flurry/android/n;->o:Ljava/util/List;

    .line 69
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/flurry/android/n;->p:Ljava/util/Map;

    .line 76
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/flurry/android/n;->s:Ljava/util/Map;

    .line 82
    iput-object p1, p0, Lcom/flurry/android/n;->f:Landroid/content/Context;

    .line 83
    iget-object v0, p2, Lcom/flurry/android/a;->f:Ljava/lang/String;

    iput-object v0, p0, Lcom/flurry/android/n;->g:Ljava/lang/String;

    .line 84
    iget-object v0, p2, Lcom/flurry/android/a;->g:Ljava/lang/String;

    iput-object v0, p0, Lcom/flurry/android/n;->h:Ljava/lang/String;

    .line 85
    iget-object v0, p2, Lcom/flurry/android/a;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/flurry/android/n;->i:Ljava/lang/String;

    .line 86
    iget-object v0, p2, Lcom/flurry/android/a;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/flurry/android/n;->j:Ljava/lang/String;

    .line 87
    iget-wide v0, p2, Lcom/flurry/android/a;->c:J

    iput-wide v0, p0, Lcom/flurry/android/n;->k:J

    .line 88
    iget-wide v0, p2, Lcom/flurry/android/a;->d:J

    iput-wide v0, p0, Lcom/flurry/android/n;->l:J

    .line 89
    iget-wide v0, p2, Lcom/flurry/android/a;->e:J

    iput-wide v0, p0, Lcom/flurry/android/n;->m:J

    .line 90
    iget-object v0, p2, Lcom/flurry/android/a;->h:Landroid/os/Handler;

    iput-object v0, p0, Lcom/flurry/android/n;->q:Landroid/os/Handler;

    .line 92
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 94
    new-instance v0, Lcom/flurry/android/s;

    iget-object v1, p0, Lcom/flurry/android/n;->f:Landroid/content/Context;

    invoke-direct {v0, v1, p2}, Lcom/flurry/android/s;-><init>(Landroid/content/Context;Lcom/flurry/android/a;)V

    iput-object v0, p0, Lcom/flurry/android/n;->n:Lcom/flurry/android/s;

    .line 95
    return-void
.end method

.method private a(Lcom/flurry/android/y;Ljava/lang/Long;)Ljava/lang/String;
    .locals 6
    .parameter
    .parameter

    .prologue
    .line 466
    iget-object v0, p1, Lcom/flurry/android/y;->b:Lcom/flurry/android/o;

    .line 467
    invoke-virtual {p1}, Lcom/flurry/android/y;->a()J

    move-result-wide v1

    .line 471
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "?apik="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/flurry/android/n;->i:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "&cid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, v0, Lcom/flurry/android/o;->e:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "&adid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, v0, Lcom/flurry/android/o;->a:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "&pid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/flurry/android/n;->j:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "&iid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/flurry/android/n;->k:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "&sid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/flurry/android/n;->l:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "&its="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&hid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/flurry/android/y;->a:Ljava/lang/String;

    invoke-static {v2}, Lcom/flurry/android/h;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&ac="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, v0, Lcom/flurry/android/o;->g:[B

    invoke-static {v0}, Lcom/flurry/android/n;->a([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 483
    iget-object v0, p0, Lcom/flurry/android/n;->p:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/flurry/android/n;->p:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 485
    iget-object v0, p0, Lcom/flurry/android/n;->p:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map$Entry;

    .line 487
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "c_"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/flurry/android/h;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 488
    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Lcom/flurry/android/h;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 489
    const-string v4, "&"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 496
    :cond_0
    const-string v0, "&ats="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 497
    if-eqz p2, :cond_1

    .line 499
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 502
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static a([B)Ljava/lang/String;
    .locals 4
    .parameter

    .prologue
    const/16 v3, 0xa

    .line 507
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 508
    const/4 v1, 0x0

    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_2

    .line 510
    aget-byte v2, p0, v1

    shr-int/lit8 v2, v2, 0x4

    and-int/lit8 v2, v2, 0xf

    .line 511
    if-ge v2, v3, :cond_0

    .line 513
    add-int/lit8 v2, v2, 0x30

    int-to-char v2, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 520
    :goto_1
    aget-byte v2, p0, v1

    and-int/lit8 v2, v2, 0xf

    .line 521
    if-ge v2, v3, :cond_1

    .line 523
    add-int/lit8 v2, v2, 0x30

    int-to-char v2, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 508
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 517
    :cond_0
    add-int/lit8 v2, v2, 0x41

    sub-int/2addr v2, v3

    int-to-char v2, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 527
    :cond_1
    add-int/lit8 v2, v2, 0x41

    sub-int/2addr v2, v3

    int-to-char v2, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 530
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/util/List;Ljava/lang/Long;)Ljava/util/List;
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x0

    .line 383
    iget-object v0, p0, Lcom/flurry/android/n;->n:Lcom/flurry/android/s;

    invoke-virtual {v0}, Lcom/flurry/android/s;->b()Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 385
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 408
    :goto_0
    return-object v0

    .line 388
    :cond_0
    iget-object v0, p0, Lcom/flurry/android/n;->n:Lcom/flurry/android/s;

    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {v0, p0}, Lcom/flurry/android/s;->a(Ljava/lang/String;)[Lcom/flurry/android/o;

    move-result-object v0

    .line 390
    if-eqz v0, :cond_3

    array-length v1, v0

    if-lez v1, :cond_3

    .line 392
    new-instance v1, Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 393
    if-eqz p2, :cond_2

    .line 395
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 397
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/flurry/android/o;

    .line 398
    iget-wide v2, p0, Lcom/flurry/android/o;->a:J

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    .line 400
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 405
    :cond_2
    invoke-static {v1}, Ljava/util/Collections;->shuffle(Ljava/util/List;)V

    .line 406
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-interface {v1, v6, v0}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 408
    :cond_3
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method private declared-synchronized a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Long;)V
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 170
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/flurry/android/n;->a(Ljava/util/List;Ljava/lang/Long;)Ljava/util/List;

    move-result-object v0

    .line 171
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 173
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/flurry/android/n;->m:J

    sub-long/2addr v1, v3

    .line 174
    new-instance v3, Lcom/flurry/android/y;

    const/4 v4, 0x2

    invoke-direct {v3, p2, v4, v1, v2}, Lcom/flurry/android/y;-><init>(Ljava/lang/String;BJ)V

    .line 175
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/android/o;

    iput-object v0, v3, Lcom/flurry/android/y;->b:Lcom/flurry/android/o;

    .line 176
    invoke-direct {p0, v3}, Lcom/flurry/android/n;->a(Lcom/flurry/android/y;)V

    .line 178
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/flurry/android/n;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-direct {p0, v3, v1}, Lcom/flurry/android/n;->a(Lcom/flurry/android/y;Ljava/lang/Long;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 179
    invoke-static {p1, v3, v0}, Lcom/flurry/android/n;->b(Landroid/content/Context;Lcom/flurry/android/y;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 186
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 182
    :catch_0
    move-exception v0

    .line 184
    :try_start_1
    sget-object v1, Lcom/flurry/android/n;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to launch promotional canvas for hook: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/flurry/android/z;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 170
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic a(Lcom/flurry/android/n;Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 30
    sget-object v0, Lcom/flurry/android/n;->c:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    sget-object v1, Lcom/flurry/android/n;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot launch Marketplace url "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/flurry/android/z;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/flurry/android/n;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected android market url scheme: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/flurry/android/z;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private a(Lcom/flurry/android/y;)V
    .locals 3
    .parameter

    .prologue
    .line 371
    iget-object v0, p0, Lcom/flurry/android/n;->o:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0x7fff

    if-ge v0, v1, :cond_0

    .line 373
    iget-object v0, p0, Lcom/flurry/android/n;->o:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 374
    iget-object v0, p0, Lcom/flurry/android/n;->s:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/flurry/android/y;->a()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 376
    :cond_0
    return-void
.end method

.method static synthetic b(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 30
    invoke-static {p0}, Lcom/flurry/android/n;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static b(Landroid/content/Context;Lcom/flurry/android/y;Ljava/lang/String;)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 453
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.flurry.android.ACTION_CATALOG"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 454
    const-string v1, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 455
    const-string v1, "u"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 456
    if-eqz p1, :cond_0

    .line 459
    const-string v1, "o"

    invoke-virtual {p1}, Lcom/flurry/android/y;->a()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 461
    :cond_0
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 462
    return-void
.end method

.method private static c(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter

    .prologue
    .line 241
    :try_start_0
    sget-object v0, Lcom/flurry/android/n;->c:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 243
    new-instance v0, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v0, p0}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 244
    new-instance v1, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v1}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 245
    invoke-interface {v1, v0}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    .line 247
    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v1

    .line 249
    const/16 v2, 0xc8

    if-ne v1, v2, :cond_0

    .line 251
    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object v0

    .line 265
    :goto_0
    return-object v0

    .line 257
    :cond_0
    sget-object v0, Lcom/flurry/android/n;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot process with responseCode "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/flurry/android/z;->c(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    move-object v0, p0

    goto :goto_0

    .line 262
    :catch_0
    move-exception v0

    .line 264
    sget-object v1, Lcom/flurry/android/n;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed on url: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/flurry/android/z;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 265
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method final declared-synchronized a(Landroid/content/Context;Ljava/lang/String;I)Landroid/view/View;
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 348
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/flurry/android/n;->a(Landroid/content/Context;Ljava/util/List;Ljava/lang/Long;IZ)Ljava/util/List;

    move-result-object v0

    .line 351
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 353
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/android/r;

    .line 354
    invoke-virtual {v0, p0}, Lcom/flurry/android/r;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 366
    :goto_0
    monitor-exit p0

    return-object v0

    .line 359
    :cond_0
    :try_start_1
    sget-object v0, Lcom/flurry/android/n;->a:Ljava/lang/String;

    const-string v1, "No ads from server"

    invoke-static {v0, v1}, Lcom/flurry/android/z;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 361
    sget-object v1, Lcom/flurry/android/n;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 362
    const/4 v1, 0x1

    const/high16 v2, 0x41a0

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 348
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final a(J)Lcom/flurry/android/AdImage;
    .locals 1
    .parameter

    .prologue
    .line 138
    iget-object v0, p0, Lcom/flurry/android/n;->n:Lcom/flurry/android/s;

    invoke-virtual {v0, p1, p2}, Lcom/flurry/android/s;->a(J)Lcom/flurry/android/AdImage;

    move-result-object v0

    return-object v0
.end method

.method final declared-synchronized a(Ljava/lang/String;)Lcom/flurry/android/Offer;
    .locals 5
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 292
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/flurry/android/n;->a(Ljava/util/List;Ljava/lang/Long;)Ljava/util/List;

    move-result-object v0

    .line 293
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    move-object v0, v2

    .line 303
    :goto_0
    monitor-exit p0

    return-object v0

    .line 298
    :cond_1
    const/4 v1, 0x0

    :try_start_1
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/android/o;

    .line 299
    new-instance v1, Lcom/flurry/android/y;

    const/4 v2, 0x2

    invoke-virtual {p0}, Lcom/flurry/android/n;->i()J

    move-result-wide v3

    invoke-direct {v1, p1, v2, v3, v4}, Lcom/flurry/android/y;-><init>(Ljava/lang/String;BJ)V

    .line 300
    iput-object v0, v1, Lcom/flurry/android/y;->b:Lcom/flurry/android/o;

    .line 301
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/flurry/android/FlurryAgent;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lcom/flurry/android/y;->a()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lcom/flurry/android/n;->a(Lcom/flurry/android/y;Ljava/lang/Long;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 303
    new-instance v2, Lcom/flurry/android/Offer;

    iget-object v3, v0, Lcom/flurry/android/o;->d:Ljava/lang/String;

    iget-object v0, v0, Lcom/flurry/android/o;->h:Lcom/flurry/android/AdImage;

    invoke-direct {v2, v3, v1, v0}, Lcom/flurry/android/Offer;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/flurry/android/AdImage;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v0, v2

    goto :goto_0

    .line 292
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final declared-synchronized a(Landroid/content/Context;Ljava/util/List;Ljava/lang/Long;IZ)Ljava/util/List;
    .locals 11
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 308
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/flurry/android/n;->n:Lcom/flurry/android/s;

    invoke-virtual {v0}, Lcom/flurry/android/s;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    if-eqz p2, :cond_2

    .line 310
    invoke-direct {p0, p2, p3}, Lcom/flurry/android/n;->a(Ljava/util/List;Ljava/lang/Long;)Ljava/util/List;

    move-result-object v7

    .line 312
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v8

    .line 313
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 314
    const/4 v0, 0x0

    move v10, v0

    :goto_0
    if-ge v10, v8, :cond_1

    .line 316
    invoke-interface {p2, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    .line 317
    iget-object v0, p0, Lcom/flurry/android/n;->n:Lcom/flurry/android/s;

    invoke-virtual {v0, p3}, Lcom/flurry/android/s;->b(Ljava/lang/String;)Lcom/flurry/android/e;

    move-result-object v4

    .line 318
    if-eqz v4, :cond_0

    .line 320
    new-instance v3, Lcom/flurry/android/y;

    invoke-interface {p2, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/flurry/android/n;->i()J

    move-result-wide v1

    invoke-direct {v3, p3, v0, v1, v2}, Lcom/flurry/android/y;-><init>(Ljava/lang/String;BJ)V

    .line 322
    invoke-direct {p0, v3}, Lcom/flurry/android/n;->a(Lcom/flurry/android/y;)V

    .line 324
    invoke-interface {v7, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/flurry/android/o;

    .line 325
    iput-object p3, v3, Lcom/flurry/android/y;->b:Lcom/flurry/android/o;

    .line 326
    new-instance v0, Lcom/flurry/android/i;

    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/flurry/android/n;->i()J

    move-result-wide v5

    invoke-direct {v0, v1, v5, v6}, Lcom/flurry/android/i;-><init>(BJ)V

    invoke-virtual {v3, v0}, Lcom/flurry/android/y;->a(Lcom/flurry/android/i;)V

    .line 329
    new-instance v0, Lcom/flurry/android/r;

    move-object v1, p1

    move-object v2, p0

    move v5, p4

    move/from16 v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/flurry/android/r;-><init>(Landroid/content/Context;Lcom/flurry/android/n;Lcom/flurry/android/y;Lcom/flurry/android/e;IZ)V

    .line 330
    const/4 v1, 0x0

    invoke-direct {p0, v3, v1}, Lcom/flurry/android/n;->a(Lcom/flurry/android/y;Ljava/lang/Long;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/flurry/android/r;->a(Ljava/lang/String;)V

    .line 331
    new-instance v1, Lcom/flurry/android/i;

    const/4 v2, 0x3

    invoke-virtual {p0}, Lcom/flurry/android/n;->i()J

    move-result-wide v4

    invoke-direct {v1, v2, v4, v5}, Lcom/flurry/android/i;-><init>(BJ)V

    invoke-virtual {v3, v1}, Lcom/flurry/android/y;->a(Lcom/flurry/android/i;)V

    .line 332
    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 314
    :goto_1
    add-int/lit8 v0, v10, 0x1

    move v10, v0

    goto :goto_0

    .line 336
    :cond_0
    sget-object v0, Lcom/flurry/android/n;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot find hook: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/flurry/android/z;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 308
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_1
    move-object v0, v9

    .line 342
    :goto_2
    monitor-exit p0

    return-object v0

    :cond_2
    :try_start_1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_2
.end method

.method final a()V
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/flurry/android/n;->n:Lcom/flurry/android/s;

    invoke-virtual {v0}, Lcom/flurry/android/s;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 106
    iget-object v0, p0, Lcom/flurry/android/n;->n:Lcom/flurry/android/s;

    invoke-virtual {v0}, Lcom/flurry/android/s;->d()V

    .line 108
    :cond_0
    return-void
.end method

.method final declared-synchronized a(Landroid/content/Context;Lcom/flurry/android/y;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 208
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/flurry/android/n;->q:Landroid/os/Handler;

    new-instance v1, Lcom/flurry/android/ab;

    invoke-direct {v1, p0, p3, p1, p2}, Lcom/flurry/android/ab;-><init>(Lcom/flurry/android/n;Ljava/lang/String;Landroid/content/Context;Lcom/flurry/android/y;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 234
    monitor-exit p0

    return-void

    .line 208
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final declared-synchronized a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 163
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0, p1, p2, v0}, Lcom/flurry/android/n;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Long;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 164
    monitor-exit p0

    return-void

    .line 163
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final declared-synchronized a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 436
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/flurry/android/n;->p:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 437
    monitor-exit p0

    return-void

    .line 436
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final a(Ljava/util/Map;)V
    .locals 1
    .parameter

    .prologue
    .line 117
    iget-object v0, p0, Lcom/flurry/android/n;->n:Lcom/flurry/android/s;

    invoke-virtual {v0, p1}, Lcom/flurry/android/s;->a(Ljava/util/Map;)V

    .line 118
    return-void
.end method

.method final a(Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 123
    iget-object v0, p0, Lcom/flurry/android/n;->n:Lcom/flurry/android/s;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/flurry/android/s;->a(Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)V

    .line 124
    return-void
.end method

.method final a(Z)V
    .locals 0
    .parameter

    .prologue
    .line 190
    iput-boolean p1, p0, Lcom/flurry/android/n;->r:Z

    .line 191
    return-void
.end method

.method final b(J)Lcom/flurry/android/y;
    .locals 2
    .parameter

    .prologue
    .line 153
    iget-object v0, p0, Lcom/flurry/android/n;->s:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/flurry/android/y;

    return-object p0
.end method

.method final b()V
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/flurry/android/n;->n:Lcom/flurry/android/s;

    invoke-virtual {v0}, Lcom/flurry/android/s;->e()V

    .line 113
    return-void
.end method

.method final c()J
    .locals 2

    .prologue
    .line 128
    iget-object v0, p0, Lcom/flurry/android/n;->n:Lcom/flurry/android/s;

    invoke-virtual {v0}, Lcom/flurry/android/s;->c()J

    move-result-wide v0

    return-wide v0
.end method

.method final d()Ljava/util/Set;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/flurry/android/n;->n:Lcom/flurry/android/s;

    invoke-virtual {v0}, Lcom/flurry/android/s;->a()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method final e()Ljava/util/List;
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcom/flurry/android/n;->o:Ljava/util/List;

    return-object v0
.end method

.method final f()V
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lcom/flurry/android/n;->s:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 159
    return-void
.end method

.method final g()Z
    .locals 1

    .prologue
    .line 195
    iget-boolean v0, p0, Lcom/flurry/android/n;->r:Z

    return v0
.end method

.method final h()Ljava/lang/String;
    .locals 1

    .prologue
    .line 200
    iget-object v0, p0, Lcom/flurry/android/n;->g:Ljava/lang/String;

    return-object v0
.end method

.method final i()J
    .locals 4

    .prologue
    .line 413
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/flurry/android/n;->m:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method final declared-synchronized j()V
    .locals 1

    .prologue
    .line 441
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/flurry/android/n;->p:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 442
    monitor-exit p0

    return-void

    .line 441
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final k()Lcom/flurry/android/AdImage;
    .locals 2

    .prologue
    .line 547
    iget-object v0, p0, Lcom/flurry/android/n;->n:Lcom/flurry/android/s;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/flurry/android/s;->a(S)Lcom/flurry/android/AdImage;

    move-result-object v0

    return-object v0
.end method

.method public final declared-synchronized onClick(Landroid/view/View;)V
    .locals 7
    .parameter

    .prologue
    .line 419
    monitor-enter p0

    :try_start_0
    move-object v0, p1

    check-cast v0, Lcom/flurry/android/r;

    move-object v1, v0

    .line 420
    invoke-virtual {v1}, Lcom/flurry/android/r;->a()Lcom/flurry/android/y;

    move-result-object v2

    .line 421
    new-instance v3, Lcom/flurry/android/i;

    const/4 v4, 0x4

    invoke-virtual {p0}, Lcom/flurry/android/n;->i()J

    move-result-wide v5

    invoke-direct {v3, v4, v5, v6}, Lcom/flurry/android/i;-><init>(BJ)V

    invoke-virtual {v2, v3}, Lcom/flurry/android/y;->a(Lcom/flurry/android/i;)V

    .line 424
    iget-boolean v3, p0, Lcom/flurry/android/n;->r:Z

    if-eqz v3, :cond_0

    .line 426
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/flurry/android/n;->g:Ljava/lang/String;

    invoke-virtual {v1, v4}, Lcom/flurry/android/r;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v2, v1}, Lcom/flurry/android/n;->b(Landroid/content/Context;Lcom/flurry/android/y;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 432
    :goto_0
    monitor-exit p0

    return-void

    .line 430
    :cond_0
    :try_start_1
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/flurry/android/n;->h:Ljava/lang/String;

    invoke-virtual {v1, v4}, Lcom/flurry/android/r;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v3, v2, v1}, Lcom/flurry/android/n;->a(Landroid/content/Context;Lcom/flurry/android/y;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 419
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 536
    iget-object v0, p0, Lcom/flurry/android/n;->n:Lcom/flurry/android/s;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
