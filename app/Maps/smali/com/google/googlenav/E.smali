.class public Lcom/google/googlenav/E;
.super Ljava/lang/Object;


# instance fields
.field private final a:Law/e;


# direct methods
.method private constructor <init>(Law/e;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/googlenav/E;->a:Law/e;

    return-void
.end method

.method public static a(Ljava/util/List;)Lcom/google/googlenav/E;
    .locals 9

    const/4 v8, 0x2

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x1

    new-instance v0, Law/e;

    sget-object v1, LaG/b;->w:Law/f;

    invoke-direct {v0, v1}, Law/e;-><init>(Law/f;)V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lo/d;

    sget-object v2, Lcom/google/googlenav/aO;->a:[I

    invoke-virtual {p0}, Lo/d;->c()Lo/N;

    move-result-object v3

    invoke-virtual {v3}, Lo/N;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    new-instance v2, Law/e;

    sget-object v3, LaG/b;->v:Law/f;

    invoke-direct {v2, v3}, Law/e;-><init>(Law/f;)V

    invoke-virtual {v2, v5, v5}, Law/e;->h(II)V

    invoke-virtual {p0}, Lo/d;->a()J

    move-result-wide v3

    invoke-virtual {v2, v8, v3, v4}, Law/e;->b(IJ)V

    invoke-virtual {p0}, Lo/d;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v7, v3}, Law/e;->b(ILjava/lang/String;)V

    invoke-virtual {v0, v5, v2}, Law/e;->a(ILaw/e;)V

    goto :goto_0

    :pswitch_1
    new-instance v2, Law/e;

    sget-object v3, LaG/b;->v:Law/f;

    invoke-direct {v2, v3}, Law/e;-><init>(Law/f;)V

    invoke-virtual {v2, v5, v8}, Law/e;->h(II)V

    invoke-virtual {p0}, Lo/d;->a()J

    move-result-wide v3

    invoke-virtual {v2, v6, v3, v4}, Law/e;->b(IJ)V

    invoke-virtual {p0}, Lo/d;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v7, v3}, Law/e;->b(ILjava/lang/String;)V

    invoke-virtual {v0, v5, v2}, Law/e;->a(ILaw/e;)V

    goto :goto_0

    :pswitch_2
    new-instance v2, Law/e;

    sget-object v3, LaG/b;->v:Law/f;

    invoke-direct {v2, v3}, Law/e;-><init>(Law/f;)V

    invoke-virtual {v2, v5, v6}, Law/e;->h(II)V

    invoke-virtual {p0}, Lo/d;->a()J

    move-result-wide v3

    invoke-virtual {v2, v6, v3, v4}, Law/e;->b(IJ)V

    invoke-virtual {p0}, Lo/d;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v7, v3}, Law/e;->b(ILjava/lang/String;)V

    invoke-virtual {v0, v5, v2}, Law/e;->a(ILaw/e;)V

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/google/googlenav/E;

    invoke-direct {v1, v0}, Lcom/google/googlenav/E;-><init>(Law/e;)V

    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public a()Law/e;
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/E;->a:Law/e;

    return-object v0
.end method
