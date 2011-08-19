.class public final LG/S;
.super LG/z;


# instance fields
.field protected a:LG/Q;

.field protected b:LG/Q;

.field private volatile c:LG/Q;

.field private volatile d:LG/Q;


# direct methods
.method public constructor <init>(LG/Q;LG/Q;)V
    .locals 0

    invoke-direct {p0}, LG/z;-><init>()V

    iput-object p1, p0, LG/S;->a:LG/Q;

    iput-object p2, p0, LG/S;->b:LG/Q;

    return-void
.end method

.method public static a(LG/Q;I)LG/S;
    .locals 4

    new-instance v0, LG/Q;

    iget v1, p0, LG/Q;->a:I

    sub-int/2addr v1, p1

    iget v2, p0, LG/Q;->b:I

    sub-int/2addr v2, p1

    invoke-direct {v0, v1, v2}, LG/Q;-><init>(II)V

    new-instance v1, LG/Q;

    iget v2, p0, LG/Q;->a:I

    add-int/2addr v2, p1

    iget v3, p0, LG/Q;->b:I

    add-int/2addr v3, p1

    invoke-direct {v1, v2, v3}, LG/Q;-><init>(II)V

    new-instance v2, LG/S;

    invoke-direct {v2, v0, v1}, LG/S;-><init>(LG/Q;LG/Q;)V

    return-object v2
.end method

.method public static a(LG/Q;LG/Q;)LG/S;
    .locals 7

    iget v0, p0, LG/Q;->a:I

    iget v1, p1, LG/Q;->a:I

    if-ge v0, v1, :cond_0

    iget v0, p0, LG/Q;->a:I

    iget v1, p1, LG/Q;->a:I

    move v6, v1

    move v1, v0

    move v0, v6

    :goto_0
    iget v2, p0, LG/Q;->b:I

    iget v3, p1, LG/Q;->b:I

    if-ge v2, v3, :cond_1

    iget v2, p0, LG/Q;->b:I

    iget v3, p1, LG/Q;->b:I

    move v6, v3

    move v3, v2

    move v2, v6

    :goto_1
    new-instance v4, LG/S;

    new-instance v5, LG/Q;

    invoke-direct {v5, v1, v3}, LG/Q;-><init>(II)V

    new-instance v1, LG/Q;

    invoke-direct {v1, v0, v2}, LG/Q;-><init>(II)V

    invoke-direct {v4, v5, v1}, LG/S;-><init>(LG/Q;LG/Q;)V

    return-object v4

    :cond_0
    iget v0, p1, LG/Q;->a:I

    iget v1, p0, LG/Q;->a:I

    move v6, v1

    move v1, v0

    move v0, v6

    goto :goto_0

    :cond_1
    iget v2, p1, LG/Q;->b:I

    iget v3, p0, LG/Q;->b:I

    move v6, v3

    move v3, v2

    move v2, v6

    goto :goto_1
.end method

.method public static a(LG/m;)LG/S;
    .locals 7

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, LG/m;->a(I)LG/Q;

    move-result-object v0

    iget v1, v0, LG/Q;->a:I

    iget v2, v0, LG/Q;->b:I

    const/4 v3, 0x1

    move v4, v1

    move v5, v1

    move v1, v3

    move v3, v2

    :goto_0
    invoke-virtual {p0}, LG/m;->b()I

    move-result v6

    if-ge v1, v6, :cond_4

    invoke-virtual {p0, v1, v0}, LG/m;->a(ILG/Q;)V

    iget v6, v0, LG/Q;->a:I

    if-ge v6, v5, :cond_0

    iget v5, v0, LG/Q;->a:I

    :cond_0
    iget v6, v0, LG/Q;->a:I

    if-le v6, v4, :cond_1

    iget v4, v0, LG/Q;->a:I

    :cond_1
    iget v6, v0, LG/Q;->b:I

    if-ge v6, v3, :cond_2

    iget v3, v0, LG/Q;->b:I

    :cond_2
    iget v6, v0, LG/Q;->b:I

    if-le v6, v2, :cond_3

    iget v2, v0, LG/Q;->b:I

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    invoke-virtual {v0, v5, v3}, LG/Q;->d(II)V

    new-instance v1, LG/Q;

    invoke-direct {v1, v4, v2}, LG/Q;-><init>(II)V

    new-instance v2, LG/S;

    invoke-direct {v2, v0, v1}, LG/S;-><init>(LG/Q;LG/Q;)V

    return-object v2
.end method

.method public static a([LG/Q;)LG/S;
    .locals 8

    const/4 v0, 0x0

    aget-object v0, p0, v0

    iget v1, v0, LG/Q;->a:I

    iget v0, v0, LG/Q;->b:I

    const/4 v2, 0x1

    move v3, v1

    move v4, v1

    move v1, v0

    move v7, v2

    move v2, v0

    move v0, v7

    :goto_0
    array-length v5, p0

    if-ge v0, v5, :cond_4

    aget-object v5, p0, v0

    iget v6, v5, LG/Q;->a:I

    if-ge v6, v4, :cond_0

    iget v4, v5, LG/Q;->a:I

    :cond_0
    iget v6, v5, LG/Q;->a:I

    if-le v6, v3, :cond_1

    iget v3, v5, LG/Q;->a:I

    :cond_1
    iget v6, v5, LG/Q;->b:I

    if-ge v6, v2, :cond_2

    iget v2, v5, LG/Q;->b:I

    :cond_2
    iget v6, v5, LG/Q;->b:I

    if-le v6, v1, :cond_3

    iget v1, v5, LG/Q;->b:I

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    new-instance v0, LG/S;

    new-instance v5, LG/Q;

    invoke-direct {v5, v4, v2}, LG/Q;-><init>(II)V

    new-instance v2, LG/Q;

    invoke-direct {v2, v3, v1}, LG/Q;-><init>(II)V

    invoke-direct {v0, v5, v2}, LG/S;-><init>(LG/Q;LG/Q;)V

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 1

    const/4 v0, 0x4

    return v0
.end method

.method public a(I)LG/Q;
    .locals 3

    packed-switch p1, :pswitch_data_0

    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0

    :pswitch_0
    iget-object v0, p0, LG/S;->c:LG/Q;

    if-nez v0, :cond_0

    new-instance v0, LG/Q;

    iget-object v1, p0, LG/S;->b:LG/Q;

    iget v1, v1, LG/Q;->a:I

    iget-object v2, p0, LG/S;->a:LG/Q;

    iget v2, v2, LG/Q;->b:I

    invoke-direct {v0, v1, v2}, LG/Q;-><init>(II)V

    iput-object v0, p0, LG/S;->c:LG/Q;

    :cond_0
    iget-object v0, p0, LG/S;->c:LG/Q;

    :goto_0
    return-object v0

    :pswitch_1
    iget-object v0, p0, LG/S;->b:LG/Q;

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, LG/S;->d:LG/Q;

    if-nez v0, :cond_1

    new-instance v0, LG/Q;

    iget-object v1, p0, LG/S;->a:LG/Q;

    iget v1, v1, LG/Q;->a:I

    iget-object v2, p0, LG/S;->b:LG/Q;

    iget v2, v2, LG/Q;->b:I

    invoke-direct {v0, v1, v2}, LG/Q;-><init>(II)V

    iput-object v0, p0, LG/S;->d:LG/Q;

    :cond_1
    iget-object v0, p0, LG/S;->d:LG/Q;

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, LG/S;->a:LG/Q;

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public a(LG/S;)LG/S;
    .locals 5

    new-instance v0, LG/Q;

    iget-object v1, p0, LG/S;->a:LG/Q;

    iget v1, v1, LG/Q;->a:I

    iget-object v2, p1, LG/S;->a:LG/Q;

    iget v2, v2, LG/Q;->a:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iget-object v2, p0, LG/S;->a:LG/Q;

    iget v2, v2, LG/Q;->b:I

    iget-object v3, p1, LG/S;->a:LG/Q;

    iget v3, v3, LG/Q;->b:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-direct {v0, v1, v2}, LG/Q;-><init>(II)V

    new-instance v1, LG/Q;

    iget-object v2, p0, LG/S;->b:LG/Q;

    iget v2, v2, LG/Q;->a:I

    iget-object v3, p1, LG/S;->b:LG/Q;

    iget v3, v3, LG/Q;->a:I

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    iget-object v3, p0, LG/S;->b:LG/Q;

    iget v3, v3, LG/Q;->b:I

    iget-object v4, p1, LG/S;->b:LG/Q;

    iget v4, v4, LG/Q;->b:I

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-direct {v1, v2, v3}, LG/Q;-><init>(II)V

    new-instance v2, LG/S;

    invoke-direct {v2, v0, v1}, LG/S;-><init>(LG/Q;LG/Q;)V

    return-object v2
.end method

.method public a(LG/Q;)Z
    .locals 2

    iget v0, p1, LG/Q;->a:I

    iget-object v1, p0, LG/S;->a:LG/Q;

    iget v1, v1, LG/Q;->a:I

    if-lt v0, v1, :cond_0

    iget v0, p1, LG/Q;->a:I

    iget-object v1, p0, LG/S;->b:LG/Q;

    iget v1, v1, LG/Q;->a:I

    if-gt v0, v1, :cond_0

    iget v0, p1, LG/Q;->b:I

    iget-object v1, p0, LG/S;->a:LG/Q;

    iget v1, v1, LG/Q;->b:I

    if-lt v0, v1, :cond_0

    iget v0, p1, LG/Q;->b:I

    iget-object v1, p0, LG/S;->b:LG/Q;

    iget v1, v1, LG/Q;->b:I

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(LG/z;)Z
    .locals 3

    invoke-virtual {p1}, LG/z;->b()LG/S;

    move-result-object v0

    iget-object v1, p0, LG/S;->a:LG/Q;

    iget v1, v1, LG/Q;->a:I

    iget-object v2, v0, LG/S;->a:LG/Q;

    iget v2, v2, LG/Q;->a:I

    if-gt v1, v2, :cond_0

    iget-object v1, p0, LG/S;->a:LG/Q;

    iget v1, v1, LG/Q;->b:I

    iget-object v2, v0, LG/S;->a:LG/Q;

    iget v2, v2, LG/Q;->b:I

    if-gt v1, v2, :cond_0

    iget-object v1, p0, LG/S;->b:LG/Q;

    iget v1, v1, LG/Q;->a:I

    iget-object v2, v0, LG/S;->b:LG/Q;

    iget v2, v2, LG/Q;->a:I

    if-lt v1, v2, :cond_0

    iget-object v1, p0, LG/S;->b:LG/Q;

    iget v1, v1, LG/Q;->b:I

    iget-object v0, v0, LG/S;->b:LG/Q;

    iget v0, v0, LG/Q;->b:I

    if-lt v1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()LG/S;
    .locals 0

    return-object p0
.end method

.method public b(I)LG/S;
    .locals 5

    if-gez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "distance cannot be negative: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v0, LG/S;

    new-instance v1, LG/Q;

    iget-object v2, p0, LG/S;->a:LG/Q;

    iget v2, v2, LG/Q;->a:I

    sub-int/2addr v2, p1

    iget-object v3, p0, LG/S;->a:LG/Q;

    iget v3, v3, LG/Q;->b:I

    sub-int/2addr v3, p1

    invoke-direct {v1, v2, v3}, LG/Q;-><init>(II)V

    new-instance v2, LG/Q;

    iget-object v3, p0, LG/S;->b:LG/Q;

    iget v3, v3, LG/Q;->a:I

    add-int/2addr v3, p1

    iget-object v4, p0, LG/S;->b:LG/Q;

    iget v4, v4, LG/Q;->b:I

    add-int/2addr v4, p1

    invoke-direct {v2, v3, v4}, LG/Q;-><init>(II)V

    invoke-direct {v0, v1, v2}, LG/S;-><init>(LG/Q;LG/Q;)V

    return-object v0
.end method

.method public b(LG/S;)LG/S;
    .locals 5

    new-instance v0, LG/Q;

    iget-object v1, p0, LG/S;->a:LG/Q;

    iget v1, v1, LG/Q;->a:I

    iget-object v2, p1, LG/S;->a:LG/Q;

    iget v2, v2, LG/Q;->a:I

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iget-object v2, p0, LG/S;->a:LG/Q;

    iget v2, v2, LG/Q;->b:I

    iget-object v3, p1, LG/S;->a:LG/Q;

    iget v3, v3, LG/Q;->b:I

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-direct {v0, v1, v2}, LG/Q;-><init>(II)V

    new-instance v1, LG/Q;

    iget-object v2, p0, LG/S;->b:LG/Q;

    iget v2, v2, LG/Q;->a:I

    iget-object v3, p1, LG/S;->b:LG/Q;

    iget v3, v3, LG/Q;->a:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    iget-object v3, p0, LG/S;->b:LG/Q;

    iget v3, v3, LG/Q;->b:I

    iget-object v4, p1, LG/S;->b:LG/Q;

    iget v4, v4, LG/Q;->b:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-direct {v1, v2, v3}, LG/Q;-><init>(II)V

    iget v2, v0, LG/Q;->a:I

    iget v3, v1, LG/Q;->a:I

    if-gt v2, v3, :cond_0

    iget v2, v0, LG/Q;->b:I

    iget v3, v1, LG/Q;->b:I

    if-le v2, v3, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    new-instance v2, LG/S;

    invoke-direct {v2, v0, v1}, LG/S;-><init>(LG/Q;LG/Q;)V

    move-object v0, v2

    goto :goto_0
.end method

.method public b(LG/z;)Z
    .locals 2

    instance-of v0, p1, LG/S;

    if-eqz v0, :cond_1

    check-cast p1, LG/S;

    iget-object v0, p0, LG/S;->a:LG/Q;

    iget v0, v0, LG/Q;->a:I

    iget-object v1, p1, LG/S;->b:LG/Q;

    iget v1, v1, LG/Q;->a:I

    if-gt v0, v1, :cond_0

    iget-object v0, p0, LG/S;->a:LG/Q;

    iget v0, v0, LG/Q;->b:I

    iget-object v1, p1, LG/S;->b:LG/Q;

    iget v1, v1, LG/Q;->b:I

    if-gt v0, v1, :cond_0

    iget-object v0, p0, LG/S;->b:LG/Q;

    iget v0, v0, LG/Q;->a:I

    iget-object v1, p1, LG/S;->a:LG/Q;

    iget v1, v1, LG/Q;->a:I

    if-lt v0, v1, :cond_0

    iget-object v0, p0, LG/S;->b:LG/Q;

    iget v0, v0, LG/Q;->b:I

    iget-object v1, p1, LG/S;->a:LG/Q;

    iget v1, v1, LG/Q;->b:I

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-super {p0, p1}, LG/z;->b(LG/z;)Z

    move-result v0

    goto :goto_0
.end method

.method public c()LG/Q;
    .locals 1

    iget-object v0, p0, LG/S;->a:LG/Q;

    return-object v0
.end method

.method public d()LG/Q;
    .locals 1

    iget-object v0, p0, LG/S;->a:LG/Q;

    return-object v0
.end method

.method public e()LG/Q;
    .locals 1

    iget-object v0, p0, LG/S;->b:LG/Q;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    if-ne p0, p1, :cond_0

    move v0, v3

    :goto_0
    return v0

    :cond_0
    instance-of v0, p1, LG/S;

    if-eqz v0, :cond_2

    check-cast p1, LG/S;

    iget-object v0, p1, LG/S;->b:LG/Q;

    iget-object v1, p0, LG/S;->b:LG/Q;

    invoke-virtual {v0, v1}, LG/Q;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p1, LG/S;->a:LG/Q;

    iget-object v1, p0, LG/S;->a:LG/Q;

    invoke-virtual {v0, v1}, LG/Q;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v3

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_0
.end method

.method public f()LG/Q;
    .locals 4

    new-instance v0, LG/Q;

    iget-object v1, p0, LG/S;->a:LG/Q;

    iget v1, v1, LG/Q;->a:I

    iget-object v2, p0, LG/S;->b:LG/Q;

    iget v2, v2, LG/Q;->a:I

    add-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    iget-object v2, p0, LG/S;->a:LG/Q;

    iget v2, v2, LG/Q;->b:I

    iget-object v3, p0, LG/S;->b:LG/Q;

    iget v3, v3, LG/Q;->b:I

    add-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    invoke-direct {v0, v1, v2}, LG/Q;-><init>(II)V

    return-object v0
.end method

.method public g()I
    .locals 2

    iget-object v0, p0, LG/S;->b:LG/Q;

    iget v0, v0, LG/Q;->a:I

    iget-object v1, p0, LG/S;->a:LG/Q;

    iget v1, v1, LG/Q;->a:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public h()I
    .locals 2

    iget-object v0, p0, LG/S;->b:LG/Q;

    iget v0, v0, LG/Q;->b:I

    iget-object v1, p0, LG/S;->a:LG/Q;

    iget v1, v1, LG/Q;->b:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public hashCode()I
    .locals 2

    const/4 v0, 0x1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v0, p0, LG/S;->b:LG/Q;

    invoke-virtual {v0}, LG/Q;->hashCode()I

    move-result v0

    add-int/lit8 v0, v0, 0x1f

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, LG/S;->a:LG/Q;

    invoke-virtual {v1}, LG/Q;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, LG/S;->a:LG/Q;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, LG/S;->b:LG/Q;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
