.class public final LG/Z;
.super Ljava/lang/Object;


# instance fields
.field private final a:LG/A;

.field private final b:I


# direct methods
.method public constructor <init>(LG/A;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LG/Z;->a:LG/A;

    iput p2, p0, LG/Z;->b:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, LG/A;

    invoke-direct {v0, p1}, LG/A;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, LG/Z;->a:LG/A;

    iput p2, p0, LG/Z;->b:I

    return-void
.end method

.method public static a(Law/e;)LG/Z;
    .locals 4

    const/4 v3, 0x3

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Law/e;->g(I)Ljava/lang/String;

    move-result-object v0

    const/high16 v1, -0x8000

    invoke-virtual {p0, v3}, Law/e;->h(I)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0, v3}, Law/e;->d(I)I

    move-result v1

    :cond_0
    if-eqz v0, :cond_1

    new-instance v2, LG/Z;

    invoke-direct {v2, v0, v1}, LG/Z;-><init>(Ljava/lang/String;I)V

    move-object v0, v2

    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a()LG/A;
    .locals 1

    iget-object v0, p0, LG/Z;->a:LG/A;

    return-object v0
.end method

.method public b()I
    .locals 1

    iget v0, p0, LG/Z;->b:I

    return v0
.end method

.method public c()Law/e;
    .locals 3

    new-instance v0, Law/e;

    sget-object v1, Ls/x;->a:Law/f;

    invoke-direct {v0, v1}, Law/e;-><init>(Law/f;)V

    const/4 v1, 0x1

    iget-object v2, p0, LG/Z;->a:LG/A;

    invoke-virtual {v2}, LG/A;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Law/e;->b(ILjava/lang/String;)V

    iget v1, p0, LG/Z;->b:I

    const/high16 v2, -0x8000

    if-eq v1, v2, :cond_0

    const/4 v1, 0x3

    iget v2, p0, LG/Z;->b:I

    invoke-virtual {v0, v1, v2}, Law/e;->h(II)V

    :cond_0
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
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_2

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    check-cast p1, LG/Z;

    iget v0, p0, LG/Z;->b:I

    iget v1, p1, LG/Z;->b:I

    if-eq v0, v1, :cond_3

    move v0, v2

    goto :goto_0

    :cond_3
    iget-object v0, p0, LG/Z;->a:LG/A;

    iget-object v1, p1, LG/Z;->a:LG/A;

    invoke-virtual {v0, v1}, LG/A;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    move v0, v2

    goto :goto_0

    :cond_4
    move v0, v3

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, LG/Z;->a:LG/A;

    invoke-virtual {v0}, LG/A;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, LG/Z;->b:I

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":mId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, LG/Z;->a:LG/A;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mLevelNumberE3="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, LG/Z;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
