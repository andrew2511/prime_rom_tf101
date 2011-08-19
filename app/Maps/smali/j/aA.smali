.class public abstract Lj/aA;
.super Lj/ad;


# instance fields
.field private a:Lj/Q;

.field private b:Ljava/lang/Object;


# direct methods
.method protected constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lj/ad;-><init>()V

    sget-object v0, Lj/Q;->b:Lj/Q;

    iput-object v0, p0, Lj/aA;->a:Lj/Q;

    return-void
.end method

.method private c()Z
    .locals 2

    sget-object v0, Lj/Q;->d:Lj/Q;

    iput-object v0, p0, Lj/aA;->a:Lj/Q;

    invoke-virtual {p0}, Lj/aA;->a()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lj/aA;->b:Ljava/lang/Object;

    iget-object v0, p0, Lj/aA;->a:Lj/Q;

    sget-object v1, Lj/Q;->c:Lj/Q;

    if-eq v0, v1, :cond_0

    sget-object v0, Lj/Q;->a:Lj/Q;

    iput-object v0, p0, Lj/aA;->a:Lj/Q;

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected abstract a()Ljava/lang/Object;
.end method

.method protected final b()Ljava/lang/Object;
    .locals 1

    sget-object v0, Lj/Q;->c:Lj/Q;

    iput-object v0, p0, Lj/aA;->a:Lj/Q;

    const/4 v0, 0x0

    return-object v0
.end method

.method public final hasNext()Z
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lj/aA;->a:Lj/Q;

    sget-object v1, Lj/Q;->d:Lj/Q;

    if-eq v0, v1, :cond_0

    move v0, v3

    :goto_0
    invoke-static {v0}, Lae/k;->b(Z)V

    sget-object v0, Lj/k;->a:[I

    iget-object v1, p0, Lj/aA;->a:Lj/Q;

    invoke-virtual {v1}, Lj/Q;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    invoke-direct {p0}, Lj/aA;->c()Z

    move-result v0

    :goto_1
    return v0

    :cond_0
    move v0, v2

    goto :goto_0

    :pswitch_0
    move v0, v2

    goto :goto_1

    :pswitch_1
    move v0, v3

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final next()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lj/aA;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    :cond_0
    sget-object v0, Lj/Q;->b:Lj/Q;

    iput-object v0, p0, Lj/aA;->a:Lj/Q;

    iget-object v0, p0, Lj/aA;->b:Ljava/lang/Object;

    return-object v0
.end method
