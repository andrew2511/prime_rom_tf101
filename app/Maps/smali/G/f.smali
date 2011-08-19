.class LG/f;
.super Ljava/lang/Object;


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:I


# direct methods
.method constructor <init>(LG/Q;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget v0, p1, LG/Q;->a:I

    iput v0, p0, LG/f;->a:I

    iget v0, p1, LG/Q;->b:I

    iput v0, p0, LG/f;->b:I

    iget v0, p0, LG/f;->a:I

    iput v0, p0, LG/f;->c:I

    iget v0, p0, LG/f;->b:I

    iput v0, p0, LG/f;->d:I

    return-void
.end method

.method constructor <init>(LG/f;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget v0, p1, LG/f;->a:I

    iput v0, p0, LG/f;->a:I

    iget v0, p1, LG/f;->b:I

    iput v0, p0, LG/f;->b:I

    iget v0, p1, LG/f;->c:I

    iput v0, p0, LG/f;->c:I

    iget v0, p1, LG/f;->d:I

    iput v0, p0, LG/f;->d:I

    return-void
.end method


# virtual methods
.method a(II)V
    .locals 1

    iget v0, p0, LG/f;->a:I

    if-ge p1, v0, :cond_0

    iput p1, p0, LG/f;->a:I

    :cond_0
    iget v0, p0, LG/f;->b:I

    if-ge p2, v0, :cond_1

    iput p2, p0, LG/f;->b:I

    :cond_1
    iget v0, p0, LG/f;->c:I

    if-le p1, v0, :cond_2

    iput p1, p0, LG/f;->c:I

    :cond_2
    iget v0, p0, LG/f;->d:I

    if-le p2, v0, :cond_3

    iput p2, p0, LG/f;->d:I

    :cond_3
    return-void
.end method

.method a(LG/Q;)V
    .locals 2

    iget v0, p1, LG/Q;->a:I

    iget v1, p1, LG/Q;->b:I

    invoke-virtual {p0, v0, v1}, LG/f;->a(II)V

    return-void
.end method

.method a(LG/f;)V
    .locals 2

    iget v0, p1, LG/f;->a:I

    iget v1, p1, LG/f;->b:I

    invoke-virtual {p0, v0, v1}, LG/f;->a(II)V

    iget v0, p1, LG/f;->c:I

    iget v1, p1, LG/f;->d:I

    invoke-virtual {p0, v0, v1}, LG/f;->a(II)V

    return-void
.end method

.method a(LG/S;)Z
    .locals 4

    invoke-virtual {p1}, LG/S;->e()LG/Q;

    move-result-object v0

    invoke-virtual {p1}, LG/S;->d()LG/Q;

    move-result-object v1

    iget v2, p0, LG/f;->a:I

    iget v3, v0, LG/Q;->a:I

    if-gt v2, v3, :cond_0

    iget v2, p0, LG/f;->b:I

    iget v0, v0, LG/Q;->b:I

    if-gt v2, v0, :cond_0

    iget v0, p0, LG/f;->c:I

    iget v2, v1, LG/Q;->a:I

    if-lt v0, v2, :cond_0

    iget v0, p0, LG/f;->d:I

    iget v1, v1, LG/Q;->b:I

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, LG/f;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, LG/f;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "),("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, LG/f;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, LG/f;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
