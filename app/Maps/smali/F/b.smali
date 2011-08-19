.class public LF/b;
.super Ljava/lang/Object;


# instance fields
.field private final a:I

.field private final b:Ljava/lang/String;

.field private final c:I

.field private final d:I

.field private final e:[Ljava/lang/String;


# direct methods
.method private constructor <init>(ILjava/lang/String;II[Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, LF/b;->a:I

    iput-object p2, p0, LF/b;->b:Ljava/lang/String;

    iput p3, p0, LF/b;->c:I

    iput p4, p0, LF/b;->d:I

    iput-object p5, p0, LF/b;->e:[Ljava/lang/String;

    return-void
.end method

.method static synthetic a(LF/b;)I
    .locals 1

    iget v0, p0, LF/b;->a:I

    return v0
.end method

.method public static a(Law/e;)LF/b;
    .locals 11

    const/4 v10, 0x4

    const/4 v9, -0x1

    const/4 v8, 0x1

    invoke-virtual {p0, v8}, Law/e;->d(I)I

    move-result v1

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Law/e;->d(I)I

    move-result v0

    const/4 v2, 0x7

    invoke-virtual {p0, v2}, Law/e;->d(I)I

    move-result v4

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    if-eq v0, v8, :cond_0

    move v0, v9

    :cond_0
    if-ne v0, v8, :cond_5

    invoke-virtual {p0, v10}, Law/e;->i(I)I

    move-result v3

    if-nez v3, :cond_2

    move v0, v8

    move-object v5, v2

    move v2, v9

    :goto_0
    if-ltz v4, :cond_1

    if-le v4, v0, :cond_4

    :cond_1
    move v3, v9

    :goto_1
    new-instance v0, LF/b;

    const/4 v2, 0x2

    invoke-virtual {p0, v2}, Law/e;->g(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct/range {v0 .. v5}, LF/b;-><init>(ILjava/lang/String;II[Ljava/lang/String;)V

    return-object v0

    :cond_2
    new-array v2, v3, [Ljava/lang/String;

    const/4 v5, 0x0

    :goto_2
    if-ge v5, v3, :cond_3

    invoke-virtual {p0, v10, v5}, Law/e;->e(II)Law/e;

    move-result-object v6

    const/4 v7, 0x6

    invoke-virtual {v6, v7}, Law/e;->g(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v2, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_3
    sub-int/2addr v3, v8

    move-object v5, v2

    move v2, v0

    move v0, v3

    goto :goto_0

    :cond_4
    move v3, v2

    goto :goto_1

    :cond_5
    move-object v5, v2

    move v2, v0

    move v0, v8

    goto :goto_0
.end method

.method static synthetic b(LF/b;)I
    .locals 1

    iget v0, p0, LF/b;->c:I

    return v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LF/b;->b:Ljava/lang/String;

    return-object v0
.end method

.method public b()I
    .locals 1

    iget v0, p0, LF/b;->c:I

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x1

    if-ne p1, p0, :cond_0

    move v0, v2

    :goto_0
    return v0

    :cond_0
    instance-of v0, p1, LF/b;

    if-eqz v0, :cond_3

    check-cast p1, LF/b;

    iget v0, p1, LF/b;->a:I

    iget v1, p0, LF/b;->a:I

    if-ne v0, v1, :cond_2

    iget-object v0, p1, LF/b;->b:Ljava/lang/String;

    iget-object v1, p0, LF/b;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p1, LF/b;->c:I

    iget v1, p0, LF/b;->c:I

    if-ne v0, v1, :cond_2

    iget v0, p1, LF/b;->d:I

    iget v1, p1, LF/b;->d:I

    if-ne v0, v1, :cond_2

    iget v0, p0, LF/b;->c:I

    if-ne v0, v2, :cond_1

    iget-object v0, p1, LF/b;->e:[Ljava/lang/String;

    iget-object v1, p0, LF/b;->e:[Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    move v0, v3

    goto :goto_0

    :cond_3
    move v0, v3

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    iget v0, p0, LF/b;->a:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    const/4 v3, 0x1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[option "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, LF/b;->a:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "text="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, LF/b;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, LF/b;->c:I

    if-nez v1, :cond_1

    const-string v1, "boolean"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    :goto_0
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "default="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, LF/b;->d:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget v1, p0, LF/b;->c:I

    if-ne v1, v3, :cond_4

    const-string v1, ", choices={ "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, LF/b;->e:[Ljava/lang/String;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_3

    aget-object v4, v1, v3

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    iget v1, p0, LF/b;->c:I

    if-ne v1, v3, :cond_2

    const-string v1, "choice"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_2
    iget v1, p0, LF/b;->c:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    const-string v1, "invalid"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_3
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
