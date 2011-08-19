.class public LG/U;
.super Ljava/lang/Object;


# instance fields
.field private final a:I

.field private final b:LG/C;


# direct methods
.method public constructor <init>(ILG/C;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, LG/U;->a:I

    iput-object p2, p0, LG/U;->b:LG/C;

    return-void
.end method

.method public static a(Ljava/io/DataInput;I)LG/U;
    .locals 3

    const/16 v0, 0x9

    if-ge p1, v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-interface {p0}, Ljava/io/DataInput;->readInt()I

    move-result v0

    invoke-static {p0, p1}, LG/C;->a(Ljava/io/DataInput;I)LG/C;

    move-result-object v1

    new-instance v2, LG/U;

    invoke-direct {v2, v0, v1}, LG/U;-><init>(ILG/C;)V

    move-object v0, v2

    goto :goto_0
.end method


# virtual methods
.method public a(Ljava/io/DataOutput;)V
    .locals 1

    iget v0, p0, LG/U;->a:I

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeInt(I)V

    iget-object v0, p0, LG/U;->b:LG/C;

    invoke-virtual {v0, p1}, LG/C;->a(Ljava/io/DataOutput;)V

    return-void
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
    if-nez p1, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_2

    move v0, v2

    goto :goto_0

    :cond_2
    check-cast p1, LG/U;

    iget v0, p0, LG/U;->a:I

    iget v1, p1, LG/U;->a:I

    if-eq v0, v1, :cond_3

    move v0, v2

    goto :goto_0

    :cond_3
    iget-object v0, p0, LG/U;->b:LG/C;

    if-nez v0, :cond_4

    iget-object v0, p1, LG/U;->b:LG/C;

    if-eqz v0, :cond_5

    move v0, v2

    goto :goto_0

    :cond_4
    iget-object v0, p0, LG/U;->b:LG/C;

    iget-object v1, p1, LG/U;->b:LG/C;

    invoke-virtual {v0, v1}, LG/C;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    move v0, v2

    goto :goto_0

    :cond_5
    move v0, v3

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    const/4 v0, 0x1

    mul-int/lit8 v0, v0, 0x1f

    iget v0, p0, LG/U;->a:I

    add-int/lit8 v0, v0, 0x1f

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, LG/U;->b:LG/C;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    return v0

    :cond_0
    iget-object v1, p0, LG/U;->b:LG/C;

    invoke-virtual {v1}, LG/C;->hashCode()I

    move-result v1

    goto :goto_0
.end method
