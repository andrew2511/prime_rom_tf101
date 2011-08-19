.class public final Lcom/zinio/mobile/android/a/b/s;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static i:Ljava/text/SimpleDateFormat;


# instance fields
.field private a:Ljava/util/HashMap;

.field private b:Ljava/util/HashMap;

.field private c:Ljava/util/HashMap;

.field private d:I

.field private e:Z

.field private f:Ljava/util/Comparator;

.field private g:Ljava/util/Comparator;

.field private h:Lcom/zinio/mobile/android/a/a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 37
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "MMM yyyy"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/zinio/mobile/android/a/b/s;->i:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/zinio/mobile/android/a/b/s;->a:Ljava/util/HashMap;

    .line 25
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/zinio/mobile/android/a/b/s;->b:Ljava/util/HashMap;

    .line 27
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/zinio/mobile/android/a/b/s;->c:Ljava/util/HashMap;

    .line 30
    iput v2, p0, Lcom/zinio/mobile/android/a/b/s;->d:I

    .line 102
    new-instance v0, Lcom/zinio/mobile/android/a/b/a;

    invoke-direct {v0, p0}, Lcom/zinio/mobile/android/a/b/a;-><init>(Lcom/zinio/mobile/android/a/b/s;)V

    iput-object v0, p0, Lcom/zinio/mobile/android/a/b/s;->f:Ljava/util/Comparator;

    .line 122
    iget-object v0, p0, Lcom/zinio/mobile/android/a/b/s;->f:Ljava/util/Comparator;

    .line 123
    new-instance v1, Lcom/zinio/mobile/android/a/b/b;

    invoke-direct {v1, p0, v0}, Lcom/zinio/mobile/android/a/b/b;-><init>(Lcom/zinio/mobile/android/a/b/s;Ljava/util/Comparator;)V

    iput-object v1, p0, Lcom/zinio/mobile/android/a/b/s;->g:Ljava/util/Comparator;

    .line 137
    new-instance v0, Lcom/zinio/mobile/android/a/a;

    invoke-direct {v0}, Lcom/zinio/mobile/android/a/a;-><init>()V

    iput-object v0, p0, Lcom/zinio/mobile/android/a/b/s;->h:Lcom/zinio/mobile/android/a/a;

    .line 138
    iput-boolean v2, p0, Lcom/zinio/mobile/android/a/b/s;->e:Z

    .line 139
    return-void
.end method

.method private a(Lcom/zinio/mobile/android/a/b/v;Ljava/util/Comparator;)Ljava/util/ArrayList;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 510
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 512
    iget-object v1, p0, Lcom/zinio/mobile/android/a/b/s;->a:Ljava/util/HashMap;

    invoke-virtual {p1, v1}, Lcom/zinio/mobile/android/a/b/v;->a(Ljava/util/HashMap;)Ljava/util/Collection;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 513
    invoke-static {v0, p2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 515
    return-object v0
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 495
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    move v1, v4

    .line 496
    :goto_0
    if-ge v1, v0, :cond_1

    .line 499
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v2, v3, :cond_0

    .line 500
    const/4 v0, 0x1

    .line 505
    :goto_1
    return v0

    .line 497
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    move v0, v4

    .line 505
    goto :goto_1
.end method

.method private c(Lcom/zinio/mobile/android/a/b/v;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x0

    .line 451
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 452
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 453
    iget-object v2, p0, Lcom/zinio/mobile/android/a/b/s;->a:Ljava/util/HashMap;

    invoke-virtual {p1, v2}, Lcom/zinio/mobile/android/a/b/v;->a(Ljava/util/HashMap;)Ljava/util/Collection;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 454
    iget-object v2, p0, Lcom/zinio/mobile/android/a/b/s;->g:Ljava/util/Comparator;

    invoke-static {v0, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 456
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 459
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 460
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v3, 0x1

    sub-int/2addr v0, v3

    .line 462
    const/16 v3, 0xa

    new-array v3, v3, [C

    .line 463
    invoke-virtual {p2, v6}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 464
    invoke-virtual {p2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    move v5, v6

    .line 467
    :goto_0
    if-gt v4, v0, :cond_0

    .line 469
    aput-char v4, v3, v5

    .line 470
    add-int/lit8 v4, v4, 0x1

    int-to-char v4, v4

    .line 467
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 472
    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>([C)V

    .line 473
    invoke-virtual {v0, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 475
    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 476
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zinio/mobile/android/a/a/j;

    .line 478
    invoke-virtual {v0}, Lcom/zinio/mobile/android/a/a/j;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    .line 479
    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    .line 481
    invoke-static {v4, v5}, Lcom/zinio/mobile/android/a/b/s;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    .line 483
    if-eqz v4, :cond_1

    .line 484
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 487
    :cond_2
    iget-object v0, p0, Lcom/zinio/mobile/android/a/b/s;->g:Ljava/util/Comparator;

    invoke-static {v1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 489
    return-object v1
.end method


# virtual methods
.method public final a(Lcom/zinio/mobile/android/a/a/q;)Lcom/zinio/mobile/android/a/a/j;
    .locals 1
    .parameter

    .prologue
    .line 193
    iget-object v0, p0, Lcom/zinio/mobile/android/a/b/s;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/zinio/mobile/android/a/a/j;

    return-object p0
.end method

.method public final a(Lcom/zinio/mobile/android/a/b/v;)Ljava/util/ArrayList;
    .locals 1
    .parameter

    .prologue
    .line 427
    iget-object v0, p0, Lcom/zinio/mobile/android/a/b/s;->f:Ljava/util/Comparator;

    invoke-direct {p0, p1, v0}, Lcom/zinio/mobile/android/a/b/s;->a(Lcom/zinio/mobile/android/a/b/v;Ljava/util/Comparator;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/zinio/mobile/android/a/b/v;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 9
    .parameter
    .parameter

    .prologue
    const/4 v7, 0x0

    .line 285
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 287
    invoke-virtual {p0, p1}, Lcom/zinio/mobile/android/a/b/s;->a(Lcom/zinio/mobile/android/a/b/v;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 291
    const/4 v2, 0x0

    .line 293
    const-string v3, ""

    .line 295
    if-eqz p2, :cond_8

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_8

    .line 299
    const/4 v2, 0x1

    move v4, v2

    move-object v2, v7

    .line 302
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 303
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/zinio/mobile/android/a/a/j;

    .line 304
    invoke-virtual {p0}, Lcom/zinio/mobile/android/a/a/j;->C()Ljava/util/Date;

    move-result-object v5

    .line 305
    sget-object v6, Lcom/zinio/mobile/android/a/b/s;->i:Ljava/text/SimpleDateFormat;

    invoke-virtual {v6, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    .line 306
    invoke-virtual {v3, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 308
    if-eqz v2, :cond_1

    .line 309
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 313
    :cond_1
    if-nez v4, :cond_3

    move-object v2, v5

    .line 320
    :goto_1
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_7

    .line 321
    new-instance v3, Lcom/zinio/mobile/android/a/b/z;

    invoke-direct {v3, v2}, Lcom/zinio/mobile/android/a/b/z;-><init>(Ljava/lang/String;)V

    move-object v8, v3

    move-object v3, v2

    move-object v2, v8

    .line 323
    :cond_2
    :goto_2
    if-eqz v2, :cond_0

    .line 324
    iget-object v5, v2, Lcom/zinio/mobile/android/a/b/z;->b:Ljava/util/ArrayList;

    invoke-virtual {v5, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 315
    :cond_3
    if-eqz p2, :cond_4

    invoke-virtual {p2, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    move-object v2, p2

    .line 316
    goto :goto_1

    .line 318
    :cond_4
    const-string v2, ""

    goto :goto_1

    .line 328
    :cond_5
    if-eqz v2, :cond_6

    .line 329
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 332
    :cond_6
    return-object v0

    :cond_7
    move-object v3, v2

    move-object v2, v7

    goto :goto_2

    :cond_8
    move v4, v2

    move-object v2, v7

    goto :goto_0
.end method

.method public final a(Z)Ljava/util/ArrayList;
    .locals 7
    .parameter

    .prologue
    .line 684
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 686
    iget-object v1, p0, Lcom/zinio/mobile/android/a/b/s;->a:Ljava/util/HashMap;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/zinio/mobile/android/a/b/s;->a:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    .line 687
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 688
    sget-object v2, Lcom/zinio/mobile/android/a/b/v;->b:Lcom/zinio/mobile/android/a/b/v;

    iget-object v4, p0, Lcom/zinio/mobile/android/a/b/s;->a:Ljava/util/HashMap;

    invoke-virtual {v2, v4}, Lcom/zinio/mobile/android/a/b/v;->a(Ljava/util/HashMap;)Ljava/util/Collection;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 690
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/zinio/mobile/android/a/a/j;

    move-object v2, v0

    .line 691
    if-nez p1, :cond_1

    invoke-virtual {v2}, Lcom/zinio/mobile/android/a/a/j;->e()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 692
    :cond_1
    new-instance v5, Lcom/zinio/mobile/android/a/a/q;

    invoke-direct {v5, v2}, Lcom/zinio/mobile/android/a/a/q;-><init>(Lcom/zinio/mobile/android/a/a/j;)V

    .line 693
    invoke-virtual {v2}, Lcom/zinio/mobile/android/a/a/j;->R()V

    .line 694
    iget-object v1, p0, Lcom/zinio/mobile/android/a/b/s;->a:Ljava/util/HashMap;

    invoke-virtual {v1, v5}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zinio/mobile/android/a/a/j;

    if-eqz v1, :cond_2

    const-class v6, Lcom/zinio/mobile/android/a/b/y;

    invoke-virtual {v1, v6}, Lcom/zinio/mobile/android/a/a/j;->a(Ljava/lang/Class;)V

    const-class v6, Lcom/zinio/mobile/android/a/b/w;

    invoke-virtual {v1, v6}, Lcom/zinio/mobile/android/a/a/j;->a(Ljava/lang/Class;)V

    :cond_2
    iget-object v1, p0, Lcom/zinio/mobile/android/a/b/s;->b:Ljava/util/HashMap;

    invoke-virtual {v1, v5}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/zinio/mobile/android/a/b/s;->c:Ljava/util/HashMap;

    invoke-virtual {v1, v5}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 695
    invoke-virtual {p0, v2}, Lcom/zinio/mobile/android/a/b/s;->a(Lcom/zinio/mobile/android/a/a/j;)V

    .line 696
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 701
    :cond_3
    return-object v3
.end method

.method public final a(I)V
    .locals 0
    .parameter

    .prologue
    .line 250
    iput p1, p0, Lcom/zinio/mobile/android/a/b/s;->d:I

    .line 251
    return-void
.end method

.method public final a(Lcom/zinio/mobile/android/a/a/j;)V
    .locals 3
    .parameter

    .prologue
    .line 166
    new-instance v0, Lcom/zinio/mobile/android/a/a/q;

    invoke-direct {v0, p1}, Lcom/zinio/mobile/android/a/a/q;-><init>(Lcom/zinio/mobile/android/a/a/j;)V

    .line 167
    iget-object v1, p0, Lcom/zinio/mobile/android/a/b/s;->a:Ljava/util/HashMap;

    invoke-virtual {v1, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    iget-object v1, p0, Lcom/zinio/mobile/android/a/b/s;->b:Ljava/util/HashMap;

    new-instance v2, Lcom/zinio/mobile/android/a/b/y;

    invoke-direct {v2, p0, p1}, Lcom/zinio/mobile/android/a/b/y;-><init>(Lcom/zinio/mobile/android/a/b/s;Lcom/zinio/mobile/android/a/a/j;)V

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    iget-object v1, p0, Lcom/zinio/mobile/android/a/b/s;->c:Ljava/util/HashMap;

    new-instance v2, Lcom/zinio/mobile/android/a/b/w;

    invoke-direct {v2, p0, p1}, Lcom/zinio/mobile/android/a/b/w;-><init>(Lcom/zinio/mobile/android/a/b/s;Lcom/zinio/mobile/android/a/a/j;)V

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    return-void
.end method

.method final a(Lcom/zinio/mobile/android/a/a/x;)V
    .locals 2
    .parameter

    .prologue
    .line 618
    iget-object v0, p0, Lcom/zinio/mobile/android/a/b/s;->h:Lcom/zinio/mobile/android/a/a;

    const-class v1, Lcom/zinio/mobile/android/a/b/r;

    invoke-virtual {v0, v1}, Lcom/zinio/mobile/android/a/a;->a(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/zinio/mobile/android/a/b/r;

    .line 619
    invoke-interface {p0, p1}, Lcom/zinio/mobile/android/a/b/r;->a(Lcom/zinio/mobile/android/a/a/x;)V

    goto :goto_0

    .line 621
    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/Class;)V
    .locals 1
    .parameter

    .prologue
    .line 560
    iget-object v0, p0, Lcom/zinio/mobile/android/a/b/s;->h:Lcom/zinio/mobile/android/a/a;

    invoke-virtual {v0, p1}, Lcom/zinio/mobile/android/a/a;->b(Ljava/lang/Class;)V

    .line 561
    return-void
.end method

.method public final a(Ljava/lang/Object;)V
    .locals 1
    .parameter

    .prologue
    .line 533
    iget-object v0, p0, Lcom/zinio/mobile/android/a/b/s;->h:Lcom/zinio/mobile/android/a/a;

    invoke-virtual {v0, p1}, Lcom/zinio/mobile/android/a/a;->a(Ljava/lang/Object;)Z

    .line 534
    return-void
.end method

.method public final a()Z
    .locals 1

    .prologue
    .line 173
    iget-boolean v0, p0, Lcom/zinio/mobile/android/a/b/s;->e:Z

    return v0
.end method

.method public final b(Lcom/zinio/mobile/android/a/b/v;)Ljava/util/ArrayList;
    .locals 1
    .parameter

    .prologue
    .line 441
    iget-object v0, p0, Lcom/zinio/mobile/android/a/b/s;->g:Ljava/util/Comparator;

    invoke-direct {p0, p1, v0}, Lcom/zinio/mobile/android/a/b/s;->a(Lcom/zinio/mobile/android/a/b/v;Ljava/util/Comparator;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public final b(Lcom/zinio/mobile/android/a/b/v;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 6
    .parameter
    .parameter

    .prologue
    .line 379
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 381
    const/4 v1, 0x0

    .line 382
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 384
    const/4 v1, 0x1

    .line 387
    :cond_0
    if-eqz v1, :cond_4

    invoke-direct {p0, p1, p2}, Lcom/zinio/mobile/android/a/b/s;->c(Lcom/zinio/mobile/android/a/b/v;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 390
    :goto_0
    const-string v2, ""

    .line 391
    const/4 v3, 0x0

    move-object v5, v3

    move-object v3, v2

    move-object v2, v5

    .line 393
    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 394
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/zinio/mobile/android/a/a/j;

    .line 396
    invoke-virtual {p0}, Lcom/zinio/mobile/android/a/a/j;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 398
    if-eqz v2, :cond_2

    .line 399
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 402
    :cond_2
    invoke-virtual {p0}, Lcom/zinio/mobile/android/a/a/j;->b()Ljava/lang/String;

    move-result-object v2

    .line 403
    new-instance v3, Lcom/zinio/mobile/android/a/b/z;

    invoke-direct {v3, v2}, Lcom/zinio/mobile/android/a/b/z;-><init>(Ljava/lang/String;)V

    move-object v5, v3

    move-object v3, v2

    move-object v2, v5

    .line 406
    :cond_3
    if-eqz v2, :cond_1

    .line 407
    iget-object v4, v2, Lcom/zinio/mobile/android/a/b/z;->b:Ljava/util/ArrayList;

    invoke-virtual {v4, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 387
    :cond_4
    invoke-virtual {p0, p1}, Lcom/zinio/mobile/android/a/b/s;->b(Lcom/zinio/mobile/android/a/b/v;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    goto :goto_0

    .line 410
    :cond_5
    if-eqz v2, :cond_6

    .line 411
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 414
    :cond_6
    return-object v0
.end method

.method final b()V
    .locals 1

    .prologue
    .line 177
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/zinio/mobile/android/a/b/s;->e:Z

    .line 178
    return-void
.end method

.method final b(Lcom/zinio/mobile/android/a/a/j;)V
    .locals 2
    .parameter

    .prologue
    .line 600
    iget-object v0, p0, Lcom/zinio/mobile/android/a/b/s;->h:Lcom/zinio/mobile/android/a/a;

    const-class v1, Lcom/zinio/mobile/android/a/b/m;

    invoke-virtual {v0, v1}, Lcom/zinio/mobile/android/a/a;->a(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/zinio/mobile/android/a/b/m;

    .line 601
    invoke-interface {p0, p1}, Lcom/zinio/mobile/android/a/b/m;->b(Lcom/zinio/mobile/android/a/a/j;)V

    goto :goto_0

    .line 603
    :cond_0
    return-void
.end method

.method public final b(Ljava/lang/Object;)V
    .locals 1
    .parameter

    .prologue
    .line 547
    iget-object v0, p0, Lcom/zinio/mobile/android/a/b/s;->h:Lcom/zinio/mobile/android/a/a;

    invoke-virtual {v0, p1}, Lcom/zinio/mobile/android/a/a;->b(Ljava/lang/Object;)V

    .line 548
    return-void
.end method

.method public final c()Ljava/util/Collection;
    .locals 1

    .prologue
    .line 201
    iget-object v0, p0, Lcom/zinio/mobile/android/a/b/s;->a:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public final clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 143
    new-instance v0, Ljava/lang/CloneNotSupportedException;

    invoke-direct {v0}, Ljava/lang/CloneNotSupportedException;-><init>()V

    throw v0
.end method

.method protected final d()V
    .locals 4

    .prologue
    .line 224
    iget-object v0, p0, Lcom/zinio/mobile/android/a/b/s;->a:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zinio/mobile/android/a/a/j;

    .line 225
    new-instance v2, Lcom/zinio/mobile/android/a/a/q;

    invoke-direct {v2, v0}, Lcom/zinio/mobile/android/a/a/q;-><init>(Lcom/zinio/mobile/android/a/a/j;)V

    .line 226
    iget-object v3, p0, Lcom/zinio/mobile/android/a/b/s;->b:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/zinio/mobile/android/a/a/j;->b(Ljava/lang/Object;)V

    .line 227
    iget-object v3, p0, Lcom/zinio/mobile/android/a/b/s;->c:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/zinio/mobile/android/a/a/j;->b(Ljava/lang/Object;)V

    goto :goto_0

    .line 229
    :cond_0
    iget-object v0, p0, Lcom/zinio/mobile/android/a/b/s;->a:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 230
    iget-object v0, p0, Lcom/zinio/mobile/android/a/b/s;->b:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 231
    iget-object v0, p0, Lcom/zinio/mobile/android/a/b/s;->c:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 232
    return-void
.end method

.method public final e()I
    .locals 1

    .prologue
    .line 240
    iget v0, p0, Lcom/zinio/mobile/android/a/b/s;->d:I

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 586
    if-ne p0, p1, :cond_0

    move v0, v3

    .line 596
    :goto_0
    return v0

    .line 588
    :cond_0
    if-nez p1, :cond_1

    move v0, v2

    .line 589
    goto :goto_0

    .line 590
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_2

    move v0, v2

    .line 591
    goto :goto_0

    .line 592
    :cond_2
    check-cast p1, Lcom/zinio/mobile/android/a/b/s;

    .line 593
    iget-object v0, p0, Lcom/zinio/mobile/android/a/b/s;->a:Ljava/util/HashMap;

    if-nez v0, :cond_4

    .line 594
    iget-object v0, p1, Lcom/zinio/mobile/android/a/b/s;->a:Ljava/util/HashMap;

    if-nez v0, :cond_3

    move v0, v3

    goto :goto_0

    :cond_3
    move v0, v2

    goto :goto_0

    .line 596
    :cond_4
    iget-object v0, p0, Lcom/zinio/mobile/android/a/b/s;->a:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    iget-object v1, p1, Lcom/zinio/mobile/android/a/b/s;->a:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public final f()Ljava/util/ArrayList;
    .locals 3

    .prologue
    .line 259
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 261
    iget-object v1, p0, Lcom/zinio/mobile/android/a/b/s;->a:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 262
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 263
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/zinio/mobile/android/a/a/j;

    .line 264
    invoke-virtual {p0}, Lcom/zinio/mobile/android/a/a/j;->e()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 265
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 269
    :cond_1
    return-object v0
.end method

.method public final g()V
    .locals 1

    .prologue
    .line 564
    iget-object v0, p0, Lcom/zinio/mobile/android/a/b/s;->h:Lcom/zinio/mobile/android/a/a;

    invoke-virtual {v0}, Lcom/zinio/mobile/android/a/a;->a()V

    .line 565
    return-void
.end method

.method final h()V
    .locals 2

    .prologue
    .line 606
    iget-object v0, p0, Lcom/zinio/mobile/android/a/b/s;->h:Lcom/zinio/mobile/android/a/a;

    const-class v1, Lcom/zinio/mobile/android/a/b/r;

    invoke-virtual {v0, v1}, Lcom/zinio/mobile/android/a/a;->a(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/zinio/mobile/android/a/b/r;

    .line 607
    invoke-interface {p0}, Lcom/zinio/mobile/android/a/b/r;->f()V

    goto :goto_0

    .line 609
    :cond_0
    return-void
.end method

.method public final hashCode()I
    .locals 1

    .prologue
    .line 573
    iget-object v0, p0, Lcom/zinio/mobile/android/a/b/s;->a:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    add-int/lit8 v0, v0, 0x1f

    .line 576
    return v0

    .line 573
    :cond_0
    iget-object v0, p0, Lcom/zinio/mobile/android/a/b/s;->a:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0
.end method
