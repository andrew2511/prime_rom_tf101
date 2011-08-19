.class public LF/K;
.super Ljava/lang/Object;


# instance fields
.field private final a:I

.field private final b:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, LF/K;->a:I

    iput p2, p0, LF/K;->b:I

    return-void
.end method

.method public static a(Law/e;)LF/K;
    .locals 3

    const/4 v2, 0x2

    invoke-virtual {p0, v2}, Law/e;->h(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, LF/K;

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Law/e;->d(I)I

    move-result v1

    invoke-virtual {p0, v2}, Law/e;->d(I)I

    move-result v2

    invoke-direct {v0, v1, v2}, LF/K;-><init>(II)V

    goto :goto_0
.end method


# virtual methods
.method public a(I)LF/K;
    .locals 2

    new-instance v0, LF/K;

    iget v1, p0, LF/K;->a:I

    invoke-direct {v0, v1, p1}, LF/K;-><init>(II)V

    return-object v0
.end method

.method public a()Law/e;
    .locals 3

    new-instance v0, Law/e;

    sget-object v1, Ls/v;->s:Law/f;

    invoke-direct {v0, v1}, Law/e;-><init>(Law/f;)V

    const/4 v1, 0x1

    iget v2, p0, LF/K;->a:I

    invoke-virtual {v0, v1, v2}, Law/e;->h(II)V

    const/4 v1, 0x2

    iget v2, p0, LF/K;->b:I

    invoke-virtual {v0, v1, v2}, Law/e;->h(II)V

    return-object v0
.end method

.method public b()I
    .locals 1

    iget v0, p0, LF/K;->a:I

    return v0
.end method

.method public c()I
    .locals 1

    iget v0, p0, LF/K;->b:I

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    if-ne p1, p0, :cond_0

    move v0, v3

    :goto_0
    return v0

    :cond_0
    instance-of v0, p1, LF/K;

    if-eqz v0, :cond_2

    check-cast p1, LF/K;

    iget v0, p1, LF/K;->a:I

    iget v1, p0, LF/K;->a:I

    if-ne v0, v1, :cond_1

    iget v0, p1, LF/K;->b:I

    iget v1, p0, LF/K;->b:I

    if-ne v0, v1, :cond_1

    move v0, v3

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, LF/K;->a:I

    mul-int/lit8 v0, v0, 0x25

    iget v1, p0, LF/K;->b:I

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Option "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, LF/K;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, LF/K;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
