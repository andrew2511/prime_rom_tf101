.class Laa/z;
.super Ljava/lang/Object;


# instance fields
.field final a:Ljava/lang/String;

.field final b:Laa/C;


# direct methods
.method constructor <init>(Ljava/lang/String;Laa/C;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Laa/z;->a:Ljava/lang/String;

    iput-object p2, p0, Laa/z;->b:Laa/C;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v2, 0x0

    instance-of v0, p1, Laa/z;

    if-eqz v0, :cond_1

    check-cast p1, Laa/z;

    iget-object v0, p1, Laa/z;->a:Ljava/lang/String;

    iget-object v1, p0, Laa/z;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Laa/z;->b:Laa/C;

    iget-object v1, p0, Laa/z;->b:Laa/C;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Laa/z;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Laa/z;->b:Laa/C;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method
