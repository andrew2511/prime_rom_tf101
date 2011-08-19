.class public Lcom/google/googlenav/ui/aS;
.super Lcom/google/googlenav/ui/aH;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Lcom/google/googlenav/ui/aH;-><init>()V

    iput-object p1, p0, Lcom/google/googlenav/ui/aS;->a:Ljava/lang/String;

    iput p2, p0, Lcom/google/googlenav/ui/aS;->b:I

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/ui/aS;->a:Ljava/lang/String;

    return-object v0
.end method

.method public b()I
    .locals 1

    iget v0, p0, Lcom/google/googlenav/ui/aS;->b:I

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v2, 0x0

    instance-of v0, p1, Lcom/google/googlenav/ui/aS;

    if-nez v0, :cond_0

    move v0, v2

    :goto_0
    return v0

    :cond_0
    check-cast p1, Lcom/google/googlenav/ui/aS;

    iget v0, p1, Lcom/google/googlenav/ui/aS;->b:I

    iget v1, p0, Lcom/google/googlenav/ui/aS;->b:I

    if-ne v0, v1, :cond_1

    iget-object v0, p1, Lcom/google/googlenav/ui/aS;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/googlenav/ui/aS;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/google/googlenav/ui/aS;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    iget v1, p0, Lcom/google/googlenav/ui/aS;->b:I

    xor-int/2addr v0, v1

    return v0
.end method
