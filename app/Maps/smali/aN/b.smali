.class public LaN/b;
.super Ljava/lang/Object;


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:I

.field private e:I

.field private f:I


# direct methods
.method public constructor <init>(IIIIII)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p5, :cond_0

    const/4 v0, 0x1

    if-eq p5, v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "qualityAlgorithm = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput p1, p0, LaN/b;->a:I

    iput p2, p0, LaN/b;->b:I

    iput p3, p0, LaN/b;->c:I

    iput p4, p0, LaN/b;->d:I

    iput p5, p0, LaN/b;->e:I

    iput p6, p0, LaN/b;->f:I

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, LaN/b;->a:I

    return v0
.end method

.method public b()I
    .locals 1

    iget v0, p0, LaN/b;->b:I

    return v0
.end method

.method public c()I
    .locals 1

    iget v0, p0, LaN/b;->c:I

    return v0
.end method

.method public d()I
    .locals 1

    iget v0, p0, LaN/b;->d:I

    return v0
.end method

.method public e()I
    .locals 1

    iget v0, p0, LaN/b;->e:I

    return v0
.end method
