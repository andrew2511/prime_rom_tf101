.class public Lf/n;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Lf/o;I)I
    .locals 1

    invoke-virtual {p0, p1}, Lf/o;->c(I)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    const v0, 0x60d1d1d1

    :goto_0
    return v0

    :pswitch_0
    const/high16 v0, -0x64

    goto :goto_0

    :pswitch_1
    const/high16 v0, -0x67

    goto :goto_0

    :pswitch_2
    const/16 v0, -0x2000

    goto :goto_0

    :pswitch_3
    const v0, -0xcc4f00

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private a([Lf/o;Lf/i;)V
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    move v0, v5

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    invoke-interface {p2}, Lf/i;->a()Lf/b;

    move-result-object v1

    aget-object v2, p1, v0

    invoke-virtual {p0, v1, v2, v5, v5}, Lf/n;->a(Lf/b;Lf/o;IZ)V

    invoke-virtual {v2}, Lf/o;->a()I

    move-result v3

    move v4, v6

    :goto_1
    if-ge v4, v3, :cond_0

    invoke-virtual {p0, v1, v2, v4, v6}, Lf/n;->a(Lf/b;Lf/o;IZ)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_0
    const v3, -0x2f000001

    invoke-virtual {v2}, Lf/o;->c()I

    move-result v2

    shl-int/lit8 v2, v2, 0x8

    invoke-interface {p2, v1, v3, v2}, Lf/i;->a(Lf/b;II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private b([Lf/o;Lf/i;)V
    .locals 10

    const/4 v9, 0x1

    const/4 v8, 0x0

    move v0, v8

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_2

    aget-object v1, p1, v0

    invoke-virtual {p0, p2, v1, v8}, Lf/n;->a(Lf/i;Lf/o;I)Lf/b;

    move-result-object v2

    invoke-static {v1, v8}, Lf/n;->a(Lf/o;I)I

    move-result v3

    invoke-virtual {v1}, Lf/o;->a()I

    move-result v4

    move-object v5, v2

    move v2, v9

    :goto_1
    if-ge v2, v4, :cond_1

    invoke-virtual {p0, v5, v1, v2, v9}, Lf/n;->a(Lf/b;Lf/o;IZ)V

    invoke-static {v1, v2}, Lf/n;->a(Lf/o;I)I

    move-result v6

    if-eq v6, v3, :cond_0

    invoke-virtual {v1}, Lf/o;->b()I

    move-result v7

    shl-int/lit8 v7, v7, 0x8

    invoke-interface {p2, v5, v3, v7}, Lf/i;->a(Lf/b;II)V

    invoke-virtual {p0, p2, v1, v2}, Lf/n;->a(Lf/i;Lf/o;I)Lf/b;

    move-result-object v3

    move-object v5, v3

    move v3, v6

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Lf/o;->b()I

    move-result v1

    shl-int/lit8 v1, v1, 0x8

    invoke-interface {p2, v5, v3, v1}, Lf/i;->a(Lf/b;II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method protected a(Lf/i;Lf/o;I)Lf/b;
    .locals 2

    invoke-interface {p1}, Lf/i;->a()Lf/b;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p2, p3, v1}, Lf/n;->a(Lf/b;Lf/o;IZ)V

    return-object v0
.end method

.method protected a(Lf/b;Lf/o;IZ)V
    .locals 2

    invoke-virtual {p2, p3}, Lf/o;->a(I)I

    move-result v0

    shl-int/lit8 v0, v0, 0x8

    invoke-virtual {p2, p3}, Lf/o;->b(I)I

    move-result v1

    shl-int/lit8 v1, v1, 0x8

    if-eqz p4, :cond_0

    invoke-interface {p1, v0, v1}, Lf/b;->a(II)V

    :goto_0
    return-void

    :cond_0
    invoke-interface {p1, v0, v1}, Lf/b;->b(II)V

    goto :goto_0
.end method

.method public a(Lf/m;Lf/i;)V
    .locals 2

    invoke-static {}, Lac/m;->y()Lac/m;

    move-result-object v0

    invoke-virtual {v0}, Lac/m;->p()Lac/p;

    move-result-object v0

    invoke-interface {v0}, Lac/p;->b()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lf/m;->a(J)V

    invoke-virtual {p1}, Lf/m;->c()[Lf/o;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lf/n;->a([Lf/o;Lf/i;)V

    invoke-virtual {p1}, Lf/m;->c()[Lf/o;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lf/n;->b([Lf/o;Lf/i;)V

    return-void
.end method
