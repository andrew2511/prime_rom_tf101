.class LL/f;
.super Ljava/lang/Object;


# instance fields
.field private final a:I

.field private final b:[Ljava/lang/String;

.field private final c:[Z

.field private final d:[D

.field private final e:[D

.field private f:I


# direct methods
.method private constructor <init>()V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v2, p0, LL/f;->a:I

    new-array v0, v2, [Ljava/lang/String;

    iput-object v0, p0, LL/f;->b:[Ljava/lang/String;

    new-array v0, v2, [Z

    iput-object v0, p0, LL/f;->c:[Z

    new-array v0, v2, [D

    iput-object v0, p0, LL/f;->d:[D

    new-array v0, v2, [D

    iput-object v0, p0, LL/f;->e:[D

    iput v3, p0, LL/f;->f:I

    move v0, v3

    :goto_0
    if-ge v0, v2, :cond_0

    iget-object v1, p0, LL/f;->c:[Z

    aput-boolean v3, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method synthetic constructor <init>(LL/k;)V
    .locals 0

    invoke-direct {p0}, LL/f;-><init>()V

    return-void
.end method

.method private a(LW/m;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, LW/m;->b()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, LW/m;->c()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, LW/m;->e()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, LW/m;->d()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(LL/f;LW/m;Lw/A;)V
    .locals 0

    invoke-direct {p0, p1, p2}, LL/f;->b(LW/m;Lw/A;)V

    return-void
.end method

.method private a(LW/m;Lw/A;)Z
    .locals 11

    const/4 v10, 0x0

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    move v0, v10

    :goto_0
    return v0

    :cond_1
    invoke-direct {p0, p1}, LL/f;->a(LW/m;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {p2}, Lw/A;->b()D

    move-result-wide v4

    invoke-interface {p2}, Lw/A;->c()D

    move-result-wide v6

    move v9, v10

    :goto_1
    const/4 v0, 0x5

    if-ge v9, v0, :cond_3

    iget-object v0, p0, LL/f;->c:[Z

    aget-boolean v0, v0, v9

    if-eqz v0, :cond_2

    iget-object v0, p0, LL/f;->b:[Ljava/lang/String;

    aget-object v0, v0, v9

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, LL/f;->d:[D

    aget-wide v0, v0, v9

    iget-object v2, p0, LL/f;->e:[D

    aget-wide v2, v2, v9

    invoke-static/range {v0 .. v7}, Lcom/google/android/location/localizer/k;->c(DDDD)D

    move-result-wide v0

    const-wide/high16 v2, 0x4049

    cmpg-double v0, v0, v2

    if-gez v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    add-int/lit8 v0, v9, 0x1

    move v9, v0

    goto :goto_1

    :cond_3
    invoke-direct {p0, p1, p2}, LL/f;->b(LW/m;Lw/A;)V

    move v0, v10

    goto :goto_0
.end method

.method private b(LW/m;Lw/A;)V
    .locals 4

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0, p1}, LL/f;->a(LW/m;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, LL/f;->b:[Ljava/lang/String;

    iget v2, p0, LL/f;->f:I

    aput-object v0, v1, v2

    iget-object v0, p0, LL/f;->d:[D

    iget v1, p0, LL/f;->f:I

    invoke-interface {p2}, Lw/A;->b()D

    move-result-wide v2

    aput-wide v2, v0, v1

    iget-object v0, p0, LL/f;->e:[D

    iget v1, p0, LL/f;->f:I

    invoke-interface {p2}, Lw/A;->c()D

    move-result-wide v2

    aput-wide v2, v0, v1

    iget-object v0, p0, LL/f;->c:[Z

    iget v1, p0, LL/f;->f:I

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    iget v0, p0, LL/f;->f:I

    add-int/lit8 v0, v0, 0x1

    rem-int/lit8 v0, v0, 0x5

    iput v0, p0, LL/f;->f:I

    goto :goto_0
.end method

.method static synthetic b(LL/f;LW/m;Lw/A;)Z
    .locals 1

    invoke-direct {p0, p1, p2}, LL/f;->a(LW/m;Lw/A;)Z

    move-result v0

    return v0
.end method
