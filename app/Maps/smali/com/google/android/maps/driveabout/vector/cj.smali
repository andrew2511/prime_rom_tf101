.class public Lcom/google/android/maps/driveabout/vector/cj;
.super Ljava/lang/Object;


# instance fields
.field private final a:LG/m;

.field private final b:Ljava/util/ArrayList;

.field private final c:Ljava/util/ArrayList;

.field private final d:Ljava/util/HashSet;

.field private final e:[Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/cj;->b:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/cj;->c:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/cj;->d:Ljava/util/HashSet;

    iput-object v2, p0, Lcom/google/android/maps/driveabout/vector/cj;->a:LG/m;

    iput-object v2, p0, Lcom/google/android/maps/driveabout/vector/cj;->e:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(LG/V;[Ljava/lang/String;)V
    .locals 2

    const/4 v1, 0x2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/cj;->b:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/cj;->c:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/cj;->d:Ljava/util/HashSet;

    invoke-virtual {p1}, LG/V;->c()LG/m;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/cj;->a:LG/m;

    iput-object p2, p0, Lcom/google/android/maps/driveabout/vector/cj;->e:[Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/google/android/maps/driveabout/vector/cj;->a(LG/V;)V

    return-void
.end method

.method static a(II)I
    .locals 2

    mul-int v0, p0, p1

    invoke-static {p0, p1}, Lcom/google/android/maps/driveabout/vector/cj;->b(II)I

    move-result v1

    div-int/2addr v0, v1

    return v0
.end method

.method static synthetic a(Lcom/google/android/maps/driveabout/vector/cj;)LG/m;
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cj;->a:LG/m;

    return-object v0
.end method

.method static b(II)I
    .locals 3

    if-lez p0, :cond_0

    if-gtz p1, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Greatest common divisor should be computed on numbers greater than zero."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    move v0, p1

    move v1, p0

    :goto_0
    if-eqz v0, :cond_2

    rem-int/2addr v1, v0

    move v2, v1

    move v1, v0

    move v0, v2

    goto :goto_0

    :cond_2
    return v1
.end method


# virtual methods
.method public a()LG/m;
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cj;->a:LG/m;

    return-object v0
.end method

.method public a(LG/V;)V
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    invoke-virtual {p1}, LG/V;->m()[I

    move-result-object v0

    array-length v1, v0

    move v2, v6

    :goto_0
    if-ge v2, v1, :cond_1

    aget v3, v0, v2

    if-ltz v3, :cond_0

    iget-object v4, p0, Lcom/google/android/maps/driveabout/vector/cj;->e:[Ljava/lang/String;

    array-length v4, v4

    if-ge v3, v4, :cond_0

    iget-object v4, p0, Lcom/google/android/maps/driveabout/vector/cj;->d:Ljava/util/HashSet;

    iget-object v5, p0, Lcom/google/android/maps/driveabout/vector/cj;->e:[Ljava/lang/String;

    aget-object v3, v5, v3

    invoke-virtual {v4, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, LG/V;->h()LG/r;

    move-result-object v0

    invoke-virtual {p1}, LG/V;->e()F

    move-result v1

    invoke-virtual {v0}, LG/r;->c()I

    move-result v2

    if-ne v2, v7, :cond_3

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/cj;->c:Ljava/util/ArrayList;

    new-instance v3, Lcom/google/android/maps/driveabout/vector/bg;

    invoke-direct {v3, v1, v0, v6}, Lcom/google/android/maps/driveabout/vector/bg;-><init>(FLG/r;I)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_1
    return-void

    :cond_3
    invoke-virtual {v0}, LG/r;->c()I

    move-result v2

    if-le v2, v7, :cond_2

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/cj;->b:Ljava/util/ArrayList;

    new-instance v3, Lcom/google/android/maps/driveabout/vector/bg;

    invoke-direct {v3, v1, v0, v6}, Lcom/google/android/maps/driveabout/vector/bg;-><init>(FLG/r;I)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/cj;->c:Ljava/util/ArrayList;

    new-instance v3, Lcom/google/android/maps/driveabout/vector/bg;

    invoke-direct {v3, v1, v0, v7}, Lcom/google/android/maps/driveabout/vector/bg;-><init>(FLG/r;I)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method public b()Ljava/util/Set;
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cj;->d:Ljava/util/HashSet;

    return-object v0
.end method

.method public c()F
    .locals 5

    const/high16 v4, 0x4000

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/cj;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move v2, v0

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/vector/bg;

    iget v3, v0, Lcom/google/android/maps/driveabout/vector/bg;->a:F

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    iget v0, v0, Lcom/google/android/maps/driveabout/vector/bg;->b:F

    div-float/2addr v0, v4

    add-float/2addr v0, v3

    cmpl-float v3, v0, v2

    if-lez v3, :cond_3

    :goto_1
    move v2, v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cj;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move v1, v2

    :cond_1
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/maps/driveabout/vector/bg;

    iget v2, p0, Lcom/google/android/maps/driveabout/vector/bg;->a:F

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iget v3, p0, Lcom/google/android/maps/driveabout/vector/bg;->b:F

    div-float/2addr v3, v4

    add-float/2addr v2, v3

    cmpl-float v3, v2, v1

    if-lez v3, :cond_1

    move v1, v2

    goto :goto_2

    :cond_2
    mul-float v0, v1, v4

    return v0

    :cond_3
    move v0, v2

    goto :goto_1
.end method

.method public d()I
    .locals 11

    const/4 v10, 0x1

    const/4 v9, 0x0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cj;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/cj;->c:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/2addr v1, v0

    if-nez v1, :cond_0

    move v0, v10

    :goto_0
    return v0

    :cond_0
    new-array v2, v1, [I

    move v3, v9

    :goto_1
    if-ge v3, v1, :cond_4

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cj;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v3, v0, :cond_1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cj;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/vector/bg;

    :goto_2
    iget-object v4, v0, Lcom/google/android/maps/driveabout/vector/bg;->d:[I

    if-nez v4, :cond_2

    move v0, v10

    :goto_3
    aput v0, v2, v3

    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cj;->c:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/google/android/maps/driveabout/vector/cj;->b:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    sub-int v4, v3, v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/vector/bg;

    goto :goto_2

    :cond_2
    iget-object v4, v0, Lcom/google/android/maps/driveabout/vector/bg;->d:[I

    array-length v5, v4

    move v6, v9

    move v7, v9

    :goto_4
    if-ge v6, v5, :cond_3

    aget v8, v4, v6

    add-int/2addr v7, v8

    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    :cond_3
    iget-object v0, v0, Lcom/google/android/maps/driveabout/vector/bg;->d:[I

    array-length v0, v0

    rem-int/lit8 v0, v0, 0x2

    if-ne v0, v10, :cond_6

    mul-int/lit8 v0, v7, 0x2

    goto :goto_3

    :cond_4
    aget v0, v2, v9

    move v3, v0

    move v0, v10

    :goto_5
    if-ge v0, v1, :cond_5

    aget v4, v2, v0

    invoke-static {v3, v4}, Lcom/google/android/maps/driveabout/vector/cj;->a(II)I

    move-result v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_5
    move v0, v3

    goto :goto_0

    :cond_6
    move v0, v7

    goto :goto_3
.end method

.method public e()Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cj;->b:Ljava/util/ArrayList;

    return-object v0
.end method

.method public f()Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cj;->c:Ljava/util/ArrayList;

    return-object v0
.end method

.method public g()I
    .locals 3

    const/16 v0, 0xd0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/cj;->a:LG/m;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/cj;->a:LG/m;

    invoke-virtual {v1}, LG/m;->f()I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/cj;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/cj;->c:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x18

    add-int/2addr v0, v1

    return v0
.end method
