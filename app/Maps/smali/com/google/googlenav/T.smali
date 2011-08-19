.class Lcom/google/googlenav/T;
.super Ljava/lang/Object;


# instance fields
.field private a:I

.field private b:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/googlenav/T;->a:I

    iput p2, p0, Lcom/google/googlenav/T;->b:I

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lcom/google/googlenav/T;->a:I

    return v0
.end method

.method public a(I)V
    .locals 0

    iput p1, p0, Lcom/google/googlenav/T;->b:I

    return-void
.end method

.method public a(Lcom/google/googlenav/T;)Z
    .locals 2

    iget v0, p0, Lcom/google/googlenav/T;->a:I

    iget v1, p1, Lcom/google/googlenav/T;->a:I

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()I
    .locals 1

    iget v0, p0, Lcom/google/googlenav/T;->b:I

    return v0
.end method
