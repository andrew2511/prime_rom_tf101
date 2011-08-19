.class public Lt/n;
.super Ljava/lang/Object;


# static fields
.field private static final a:[Ljava/lang/String;


# instance fields
.field private final b:Lt/y;

.field private c:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lt/n;->a:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lt/y;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lt/n;->b:Lt/y;

    return-void
.end method

.method static synthetic a(F)F
    .locals 1

    invoke-static {p0}, Lt/n;->b(F)F

    move-result v0

    return v0
.end method

.method private a(LG/P;Lt/ak;I)Lt/ak;
    .locals 9

    const/high16 v8, 0x4234

    const/4 v7, 0x0

    invoke-virtual {p2}, Lt/ak;->a()LG/Q;

    move-result-object v0

    invoke-virtual {p2}, Lt/ak;->b()F

    move-result v1

    mul-int v2, p3, p3

    int-to-float v2, v2

    move v3, v7

    :goto_0
    invoke-virtual {p1}, LG/P;->e()I

    move-result v4

    if-ge v3, v4, :cond_3

    invoke-virtual {p1, v3}, LG/P;->a(I)LG/d;

    move-result-object p0

    instance-of v4, p0, LG/i;

    if-eqz v4, :cond_0

    check-cast p0, LG/i;

    iget-object v4, p2, Lt/ak;->a:LG/i;

    if-ne p0, v4, :cond_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, LG/i;->c()LG/m;

    move-result-object v4

    iget-object v5, p2, Lt/ak;->a:LG/i;

    invoke-virtual {v5}, LG/i;->e()I

    move-result v5

    invoke-virtual {p0}, LG/i;->e()I

    move-result v6

    if-ne v5, v6, :cond_0

    invoke-virtual {p2, p0}, Lt/ak;->a(LG/i;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v4, v7}, LG/m;->a(I)LG/Q;

    move-result-object v5

    invoke-virtual {v0, v5}, LG/Q;->d(LG/Q;)F

    move-result v5

    cmpg-float v5, v5, v2

    if-gez v5, :cond_2

    invoke-virtual {v4, v7}, LG/m;->c(I)F

    move-result v5

    invoke-static {v1, v5}, LG/H;->a(FF)F

    move-result v5

    cmpg-float v5, v5, v8

    if-gez v5, :cond_2

    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p2, Lt/ak;->b:Z

    iput-object p0, p2, Lt/ak;->a:LG/i;

    move-object v0, p2

    :goto_2
    return-object v0

    :cond_2
    invoke-virtual {v4}, LG/m;->c()LG/Q;

    move-result-object v5

    invoke-virtual {v0, v5}, LG/Q;->d(LG/Q;)F

    move-result v5

    cmpg-float v5, v5, v2

    if-gez v5, :cond_0

    invoke-virtual {v4}, LG/m;->b()I

    move-result v5

    const/4 v6, 0x2

    sub-int/2addr v5, v6

    invoke-virtual {v4, v5}, LG/m;->c(I)F

    move-result v4

    invoke-static {v4}, Lt/n;->b(F)F

    move-result v4

    invoke-static {v1, v4}, LG/H;->a(FF)F

    move-result v4

    cmpg-float v4, v4, v8

    if-gez v4, :cond_0

    move v0, v7

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    goto :goto_2
.end method

.method private a(Lt/ak;I)Lt/ak;
    .locals 5

    invoke-virtual {p1}, Lt/ak;->a()LG/Q;

    move-result-object v0

    invoke-static {v0, p2}, LG/S;->a(LG/Q;I)LG/S;

    move-result-object v0

    invoke-static {v0}, LG/R;->a(LG/S;)LG/R;

    move-result-object v0

    const/16 v1, 0xe

    invoke-static {v0, v1}, LG/w;->a(LG/R;I)Ljava/util/ArrayList;

    move-result-object v1

    const/4 v0, 0x0

    move v2, v0

    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_1

    iget-object v3, p0, Lt/n;->b:Lt/y;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LG/w;

    const/4 v4, 0x1

    invoke-interface {v3, v0, v4}, Lt/y;->a(LG/w;Z)LG/u;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, LG/P;

    invoke-direct {p0, v0, p1, p2}, Lt/n;->a(LG/P;Lt/ak;I)Lt/ak;

    move-result-object v0

    if-eqz v0, :cond_0

    :goto_1
    return-object v0

    :cond_0
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private a(LG/P;LG/k;ZLt/al;)V
    .locals 15

    new-instance v12, Ljava/util/ArrayList;

    const/4 v3, 0x4

    invoke-direct {v12, v3}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v3, 0x0

    move v13, v3

    :goto_0
    invoke-virtual/range {p1 .. p1}, LG/P;->e()I

    move-result v3

    if-ge v13, v3, :cond_4

    move-object/from16 v0, p1

    move v1, v13

    invoke-virtual {v0, v1}, LG/P;->a(I)LG/d;

    move-result-object p0

    instance-of v3, p0, LG/i;

    if-eqz v3, :cond_2

    check-cast p0, LG/i;

    invoke-virtual {p0}, LG/i;->c()LG/m;

    move-result-object v3

    move-object/from16 v0, p2

    move-object v1, v3

    move-object v2, v12

    invoke-virtual {v0, v1, v2}, LG/k;->a(LG/m;Ljava/util/List;)V

    const/4 v3, 0x0

    move v4, v3

    :goto_1
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v4, v3, :cond_0

    invoke-virtual {v12, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LG/m;

    move-object/from16 v0, p4

    move-object v1, p0

    move-object v2, v3

    invoke-virtual {v0, v1, v2}, Lt/al;->a(LG/i;LG/m;)V

    add-int/lit8 v3, v4, 0x1

    move v4, v3

    goto :goto_1

    :cond_0
    invoke-virtual {v12}, Ljava/util/ArrayList;->clear()V

    :cond_1
    :goto_2
    add-int/lit8 v3, v13, 0x1

    move v13, v3

    goto :goto_0

    :cond_2
    if-eqz p3, :cond_1

    instance-of v3, p0, LG/J;

    if-eqz v3, :cond_1

    check-cast p0, LG/J;

    invoke-virtual {p0}, LG/J;->a()LG/m;

    move-result-object v3

    move-object/from16 v0, p2

    move-object v1, v3

    move-object v2, v12

    invoke-virtual {v0, v1, v2}, LG/k;->a(LG/m;Ljava/util/ArrayList;)V

    const/4 v3, 0x0

    new-array v11, v3, [I

    const/4 v3, 0x0

    move v14, v3

    :goto_3
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v14, v3, :cond_3

    new-instance v3, LG/i;

    invoke-virtual {v12, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, LG/m;

    sget-object v5, Lt/n;->a:[Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x10

    invoke-virtual {p0}, LG/J;->l()I

    move-result v9

    const/4 v10, 0x0

    invoke-direct/range {v3 .. v11}, LG/i;-><init>(LG/m;[Ljava/lang/String;[Ljava/lang/String;LG/r;III[I)V

    invoke-virtual {v12, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, LG/m;

    move-object/from16 v0, p4

    move-object v1, v3

    move-object v2, v4

    invoke-virtual {v0, v1, v2}, Lt/al;->a(LG/i;LG/m;)V

    add-int/lit8 v3, v14, 0x1

    move v14, v3

    goto :goto_3

    :cond_3
    invoke-virtual {v12}, Ljava/util/ArrayList;->clear()V

    goto :goto_2

    :cond_4
    return-void
.end method

.method private static b(F)F
    .locals 2

    const/high16 v1, 0x4334

    cmpl-float v0, p0, v1

    if-lez v0, :cond_0

    sub-float v0, p0, v1

    :goto_0
    return v0

    :cond_0
    add-float v0, p0, v1

    goto :goto_0
.end method


# virtual methods
.method public a(LG/i;FFI)Ljava/util/List;
    .locals 4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lt/ak;

    invoke-direct {v1, p1, p2}, Lt/ak;-><init>(LG/i;F)V

    move v2, p3

    :goto_0
    if-eqz v1, :cond_0

    const/4 v3, 0x0

    cmpl-float v3, v2, v3

    if-lez v3, :cond_0

    iget-object v3, v1, Lt/ak;->a:LG/i;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v3, v1, Lt/ak;->a:LG/i;

    invoke-virtual {v3}, LG/i;->c()LG/m;

    move-result-object v3

    invoke-virtual {v3}, LG/m;->d()F

    move-result v3

    sub-float/2addr v2, v3

    invoke-direct {p0, v1, p4}, Lt/n;->a(Lt/ak;I)Lt/ak;

    move-result-object v1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public a(LG/S;ZJ)Lt/al;
    .locals 8

    const/4 v7, 0x0

    const/4 v6, 0x0

    invoke-static {p1}, LG/R;->a(LG/S;)LG/R;

    move-result-object v0

    const/16 v1, 0xe

    invoke-static {v0, v1}, LG/w;->a(LG/R;I)Ljava/util/ArrayList;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    move v3, v6

    move v4, v0

    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v3, v0, :cond_0

    iget-object v5, p0, Lt/n;->b:Lt/y;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LG/w;

    invoke-interface {v5, v0, v6}, Lt/y;->a(LG/w;Z)LG/u;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1, v3, v7}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v4, -0x1

    :goto_1
    add-int/lit8 v3, v3, 0x1

    move v4, v0

    goto :goto_0

    :cond_0
    if-lez v4, :cond_4

    new-instance v3, Lt/K;

    invoke-direct {v3, v4}, Lt/K;-><init>(I)V

    move v4, v6

    :goto_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v4, v0, :cond_2

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v5, p0, Lt/n;->b:Lt/y;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LG/w;

    invoke-interface {v5, v0, v3}, Lt/y;->a(LG/w;Lt/A;)V

    :cond_1
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_2

    :cond_2
    const-wide/16 v0, 0x0

    cmp-long v0, p3, v0

    if-gez v0, :cond_6

    invoke-virtual {v3}, Lt/K;->b()V

    :cond_3
    invoke-virtual {v3}, Lt/K;->a()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_4
    iput-object v2, p0, Lt/n;->c:Ljava/util/List;

    new-instance v1, Lt/al;

    invoke-direct {v1}, Lt/al;-><init>()V

    new-instance v3, LG/k;

    invoke-direct {v3, p1}, LG/k;-><init>(LG/z;)V

    move v4, v6

    :goto_3
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v4, v0, :cond_7

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LG/u;

    instance-of v5, v0, LG/P;

    if-eqz v5, :cond_5

    check-cast v0, LG/P;

    invoke-direct {p0, v0, v3, p2, v1}, Lt/n;->a(LG/P;LG/k;ZLt/al;)V

    :cond_5
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_3

    :cond_6
    invoke-virtual {v3, p3, p4}, Lt/K;->a(J)Z

    move-result v0

    if-nez v0, :cond_3

    move-object v0, v7

    :goto_4
    return-object v0

    :cond_7
    move-object v0, v1

    goto :goto_4

    :cond_8
    move v0, v4

    goto :goto_1
.end method
