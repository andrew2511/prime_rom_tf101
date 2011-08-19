.class public LG/y;
.super Ljava/lang/Object;


# instance fields
.field private final a:I

.field private final b:I


# direct methods
.method public constructor <init>(II)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, -0xaba9500

    if-ne p2, v0, :cond_0

    mul-int/lit8 v0, p2, -0x1

    :goto_0
    iput p1, p0, LG/y;->a:I

    iput v0, p0, LG/y;->b:I

    return-void

    :cond_0
    move v0, p2

    goto :goto_0
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, LG/y;->a:I

    return v0
.end method

.method public b()I
    .locals 1

    iget v0, p0, LG/y;->b:I

    return v0
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
    instance-of v0, p1, LG/y;

    if-eqz v0, :cond_2

    check-cast p1, LG/y;

    iget v0, p1, LG/y;->a:I

    iget v1, p0, LG/y;->a:I

    if-ne v0, v1, :cond_1

    iget v0, p1, LG/y;->b:I

    iget v1, p0, LG/y;->b:I

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

    iget v0, p0, LG/y;->a:I

    mul-int/lit8 v0, v0, 0x1d

    iget v1, p0, LG/y;->b:I

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, LG/y;->a:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, LG/y;->b:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
