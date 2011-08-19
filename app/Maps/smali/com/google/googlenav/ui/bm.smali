.class Lcom/google/googlenav/ui/bm;
.super Ljava/lang/Object;


# instance fields
.field private final a:B

.field private final b:C

.field private final c:Lk/l;


# direct methods
.method constructor <init>(BCLk/l;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-byte p1, p0, Lcom/google/googlenav/ui/bm;->a:B

    iput-char p2, p0, Lcom/google/googlenav/ui/bm;->b:C

    iput-object p3, p0, Lcom/google/googlenav/ui/bm;->c:Lk/l;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v1, p1, Lcom/google/googlenav/ui/bm;

    if-eqz v1, :cond_0

    iget-byte v2, p0, Lcom/google/googlenav/ui/bm;->a:B

    move-object v0, p1

    check-cast v0, Lcom/google/googlenav/ui/bm;

    move-object v1, v0

    iget-byte v1, v1, Lcom/google/googlenav/ui/bm;->a:B

    if-ne v2, v1, :cond_0

    iget-char v2, p0, Lcom/google/googlenav/ui/bm;->b:C

    move-object v0, p1

    check-cast v0, Lcom/google/googlenav/ui/bm;

    move-object v1, v0

    iget-char v1, v1, Lcom/google/googlenav/ui/bm;->b:C

    if-ne v2, v1, :cond_0

    iget-object v1, p0, Lcom/google/googlenav/ui/bm;->c:Lk/l;

    check-cast p1, Lcom/google/googlenav/ui/bm;

    iget-object v2, p1, Lcom/google/googlenav/ui/bm;->c:Lk/l;

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    iget-byte v0, p0, Lcom/google/googlenav/ui/bm;->a:B

    add-int/lit8 v0, v0, 0x1f

    mul-int/lit8 v0, v0, 0x1f

    iget-char v1, p0, Lcom/google/googlenav/ui/bm;->b:C

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/google/googlenav/ui/bm;->c:Lk/l;

    if-eqz v1, :cond_0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/googlenav/ui/bm;->c:Lk/l;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    return v0
.end method
