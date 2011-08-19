.class public final LG/o;
.super Ljava/lang/Object;


# instance fields
.field private final a:LG/m;

.field private final b:I

.field private final c:I


# direct methods
.method public constructor <init>(LG/m;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LG/o;->a:LG/m;

    iput p2, p0, LG/o;->b:I

    invoke-virtual {p1}, LG/m;->b()I

    move-result v0

    iput v0, p0, LG/o;->c:I

    return-void
.end method

.method public constructor <init>(LG/m;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LG/o;->a:LG/m;

    iput p2, p0, LG/o;->b:I

    iput p3, p0, LG/o;->c:I

    return-void
.end method


# virtual methods
.method public a()I
    .locals 2

    iget v0, p0, LG/o;->c:I

    iget v1, p0, LG/o;->b:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public a(I)LG/Q;
    .locals 2

    iget-object v0, p0, LG/o;->a:LG/m;

    iget v1, p0, LG/o;->b:I

    add-int/2addr v1, p1

    invoke-virtual {v0, v1}, LG/m;->a(I)LG/Q;

    move-result-object v0

    return-object v0
.end method

.method public a(ILG/Q;)V
    .locals 2

    iget-object v0, p0, LG/o;->a:LG/m;

    iget v1, p0, LG/o;->b:I

    add-int/2addr v1, p1

    invoke-virtual {v0, v1, p2}, LG/m;->a(ILG/Q;)V

    return-void
.end method

.method public b()I
    .locals 1

    iget v0, p0, LG/o;->b:I

    return v0
.end method

.method public c()I
    .locals 1

    iget v0, p0, LG/o;->c:I

    return v0
.end method

.method public d()LG/m;
    .locals 1

    iget-object v0, p0, LG/o;->a:LG/m;

    return-object v0
.end method

.method public e()LG/m;
    .locals 6

    invoke-virtual {p0}, LG/o;->a()I

    move-result v0

    mul-int/lit8 v1, v0, 0x3

    new-array v1, v1, [I

    new-instance v2, LG/Q;

    invoke-direct {v2}, LG/Q;-><init>()V

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_0

    iget-object v4, p0, LG/o;->a:LG/m;

    iget v5, p0, LG/o;->b:I

    add-int/2addr v5, v3

    invoke-virtual {v4, v5, v2}, LG/m;->a(ILG/Q;)V

    invoke-virtual {v2, v1, v3}, LG/Q;->a([II)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    invoke-static {v1}, LG/m;->a([I)LG/m;

    move-result-object v0

    return-object v0
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
    instance-of v0, p1, LG/o;

    if-eqz v0, :cond_2

    check-cast p1, LG/o;

    iget v0, p1, LG/o;->b:I

    iget v1, p0, LG/o;->b:I

    if-ne v0, v1, :cond_1

    iget v0, p1, LG/o;->c:I

    iget v1, p0, LG/o;->c:I

    if-ne v0, v1, :cond_1

    iget-object v0, p1, LG/o;->a:LG/m;

    iget-object v1, p0, LG/o;->a:LG/m;

    invoke-virtual {v0, v1}, LG/m;->equals(Ljava/lang/Object;)Z

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

.method public f()LG/S;
    .locals 7

    iget-object v0, p0, LG/o;->a:LG/m;

    iget v1, p0, LG/o;->b:I

    invoke-virtual {v0, v1}, LG/m;->a(I)LG/Q;

    move-result-object v0

    iget v1, v0, LG/Q;->a:I

    iget v2, v0, LG/Q;->b:I

    iget v3, p0, LG/o;->b:I

    add-int/lit8 v3, v3, 0x1

    move v4, v1

    move v5, v1

    move v1, v3

    move v3, v2

    :goto_0
    iget v6, p0, LG/o;->c:I

    if-ge v1, v6, :cond_4

    iget-object v6, p0, LG/o;->a:LG/m;

    invoke-virtual {v6, v1, v0}, LG/m;->a(ILG/Q;)V

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

.method public hashCode()I
    .locals 2

    const/4 v0, 0x1

    mul-int/lit8 v0, v0, 0x1f

    iget v0, p0, LG/o;->b:I

    add-int/lit8 v0, v0, 0x1f

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, LG/o;->c:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, LG/o;->a:LG/m;

    invoke-virtual {v1}, LG/m;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, LG/o;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, LG/o;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, LG/o;->a:LG/m;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
