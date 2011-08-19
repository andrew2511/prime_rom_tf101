.class LD/i;
.super LD/f;


# instance fields
.field private final a:I


# direct methods
.method private constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, LD/f;-><init>()V

    iput p1, p0, LD/i;->a:I

    return-void
.end method

.method synthetic constructor <init>(ILD/d;)V
    .locals 0

    invoke-direct {p0, p1}, LD/i;-><init>(I)V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, LD/i;->a:I

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
    check-cast p1, LD/i;

    iget v0, p0, LD/i;->a:I

    iget v1, p1, LD/i;->a:I

    if-eq v0, v1, :cond_3

    move v0, v2

    goto :goto_0

    :cond_3
    move v0, v3

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    iget v0, p0, LD/i;->a:I

    return v0
.end method
