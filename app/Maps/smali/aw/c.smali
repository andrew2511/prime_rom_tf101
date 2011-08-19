.class Law/c;
.super Ljava/lang/Object;


# instance fields
.field private a:I

.field private b:Ljava/lang/Object;


# direct methods
.method constructor <init>(ILjava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Law/c;->a:I

    iput-object p2, p0, Law/c;->b:Ljava/lang/Object;

    return-void
.end method

.method static synthetic a(Law/c;)I
    .locals 1

    iget v0, p0, Law/c;->a:I

    return v0
.end method

.method static synthetic b(Law/c;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Law/c;->b:Ljava/lang/Object;

    return-object v0
.end method


# virtual methods
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

    instance-of v0, p1, Law/c;

    if-nez v0, :cond_2

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    check-cast p1, Law/c;

    iget v0, p0, Law/c;->a:I

    iget v1, p1, Law/c;->a:I

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Law/c;->b:Ljava/lang/Object;

    iget-object v1, p1, Law/c;->b:Ljava/lang/Object;

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Law/c;->b:Ljava/lang/Object;

    if-eqz v0, :cond_4

    iget-object v0, p0, Law/c;->b:Ljava/lang/Object;

    iget-object v1, p1, Law/c;->b:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    move v0, v3

    goto :goto_0

    :cond_4
    move v0, v2

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    iget v0, p0, Law/c;->a:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TypeInfo{type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Law/c;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", data="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Law/c;->b:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
