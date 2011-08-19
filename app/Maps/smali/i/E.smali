.class public Li/E;
.super Ljava/lang/Object;


# instance fields
.field private final a:[Z

.field private final b:[Z

.field private c:Z

.field private d:Z

.field private e:Z

.field private f:Z

.field private g:Z

.field private final h:[Z

.field private final i:[Z

.field private final j:[Z

.field private final k:[Z

.field private final l:[Z


# direct methods
.method public constructor <init>([I[II)V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    aget v0, p1, v1

    new-array v0, v0, [Z

    iput-object v0, p0, Li/E;->a:[Z

    aget v0, p1, v2

    new-array v0, v0, [Z

    iput-object v0, p0, Li/E;->b:[Z

    iput-boolean v1, p0, Li/E;->c:Z

    aget v0, p2, v1

    new-array v0, v0, [Z

    iput-object v0, p0, Li/E;->h:[Z

    aget v0, p2, v2

    new-array v0, v0, [Z

    iput-object v0, p0, Li/E;->i:[Z

    const/4 v0, 0x2

    aget v0, p2, v0

    new-array v0, v0, [Z

    iput-object v0, p0, Li/E;->j:[Z

    const/4 v0, 0x3

    aget v0, p2, v0

    new-array v0, v0, [Z

    iput-object v0, p0, Li/E;->k:[Z

    new-array v0, p3, [Z

    iput-object v0, p0, Li/E;->l:[Z

    return-void
.end method

.method private d(I)[Z
    .locals 1

    packed-switch p1, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :pswitch_0
    iget-object v0, p0, Li/E;->h:[Z

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Li/E;->i:[Z

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Li/E;->j:[Z

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Li/E;->k:[Z

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public a(IZ)V
    .locals 1

    iget-object v0, p0, Li/E;->b:[Z

    array-length v0, v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Li/E;->b:[Z

    aput-boolean p2, v0, p1

    :cond_0
    return-void
.end method

.method public a(IZI)V
    .locals 2

    invoke-direct {p0, p3}, Li/E;->d(I)[Z

    move-result-object v0

    array-length v1, v0

    if-ge p1, v1, :cond_0

    aput-boolean p2, v0, p1

    :cond_0
    return-void
.end method

.method public a(Z)V
    .locals 3

    const/4 v2, 0x0

    iput-boolean p1, p0, Li/E;->c:Z

    if-nez p1, :cond_0

    move v0, v2

    :goto_0
    iget-object v1, p0, Li/E;->b:[Z

    array-length v1, v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Li/E;->b:[Z

    aput-boolean v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public a()Z
    .locals 1

    iget-boolean v0, p0, Li/E;->c:Z

    return v0
.end method

.method public a(I)Z
    .locals 1

    iget-object v0, p0, Li/E;->b:[Z

    array-length v0, v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Li/E;->b:[Z

    aget-boolean v0, v0, p1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(II)Z
    .locals 2

    invoke-direct {p0, p2}, Li/E;->d(I)[Z

    move-result-object v0

    array-length v1, v0

    if-ge p1, v1, :cond_0

    aget-boolean v0, v0, p1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b(IZ)V
    .locals 1

    iget-object v0, p0, Li/E;->a:[Z

    array-length v0, v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Li/E;->a:[Z

    aput-boolean p2, v0, p1

    :cond_0
    return-void
.end method

.method public b(Z)V
    .locals 0

    iput-boolean p1, p0, Li/E;->g:Z

    return-void
.end method

.method public b()Z
    .locals 1

    iget-boolean v0, p0, Li/E;->g:Z

    return v0
.end method

.method public b(I)Z
    .locals 1

    iget-object v0, p0, Li/E;->a:[Z

    array-length v0, v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Li/E;->a:[Z

    aget-boolean v0, v0, p1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c(IZ)V
    .locals 1

    iget-object v0, p0, Li/E;->l:[Z

    array-length v0, v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Li/E;->l:[Z

    aput-boolean p2, v0, p1

    :cond_0
    return-void
.end method

.method public c(Z)V
    .locals 0

    iput-boolean p1, p0, Li/E;->d:Z

    return-void
.end method

.method public c()Z
    .locals 1

    iget-boolean v0, p0, Li/E;->d:Z

    return v0
.end method

.method public c(I)Z
    .locals 1

    iget-object v0, p0, Li/E;->l:[Z

    array-length v0, v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Li/E;->l:[Z

    aget-boolean v0, v0, p1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public d(Z)V
    .locals 0

    iput-boolean p1, p0, Li/E;->e:Z

    return-void
.end method

.method public d()Z
    .locals 1

    iget-boolean v0, p0, Li/E;->e:Z

    return v0
.end method

.method public e(Z)V
    .locals 0

    iput-boolean p1, p0, Li/E;->f:Z

    return-void
.end method

.method public e()Z
    .locals 1

    iget-boolean v0, p0, Li/E;->f:Z

    return v0
.end method
