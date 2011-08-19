.class public abstract Lt/l;
.super Lak/m;


# instance fields
.field private final a:[Lt/q;

.field private b:I

.field private c:Lt/ai;


# direct methods
.method protected constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Lak/m;-><init>()V

    new-array v0, p1, [Lt/q;

    iput-object v0, p0, Lt/l;->a:[Lt/q;

    const/4 v0, 0x0

    iput v0, p0, Lt/l;->b:I

    return-void
.end method

.method static synthetic a(Lt/l;)Lt/ai;
    .locals 1

    iget-object v0, p0, Lt/l;->c:Lt/ai;

    return-object v0
.end method

.method static synthetic a(Lt/l;Lt/ai;)Lt/ai;
    .locals 0

    iput-object p1, p0, Lt/l;->c:Lt/ai;

    return-object p1
.end method


# virtual methods
.method public H_()Z
    .locals 5

    const/4 v4, 0x0

    iget-object v0, p0, Lt/l;->a:[Lt/q;

    array-length v1, v0

    move v2, v4

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lt/q;->e()Z

    move-result v3

    if-nez v3, :cond_0

    move v0, v4

    :goto_1
    return v0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_1
.end method

.method protected abstract a(I)LG/u;
.end method

.method protected final a(Lt/q;)V
    .locals 3

    iget-object v0, p0, Lt/l;->a:[Lt/q;

    iget v1, p0, Lt/l;->b:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lt/l;->b:I

    aput-object p1, v0, v1

    return-void
.end method

.method protected b(Lt/q;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected c(I)[B
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected final d(I)Lt/q;
    .locals 1

    iget-object v0, p0, Lt/l;->a:[Lt/q;

    aget-object v0, v0, p1

    return-object v0
.end method

.method protected final i()I
    .locals 1

    iget v0, p0, Lt/l;->b:I

    return v0
.end method

.method protected final j()Z
    .locals 2

    iget v0, p0, Lt/l;->b:I

    iget-object v1, p0, Lt/l;->a:[Lt/q;

    array-length v1, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected l()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method
