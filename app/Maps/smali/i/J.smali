.class public Li/J;
.super Li/bd;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Li/bd;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Li/x;)Li/aM;
    .locals 3

    const/4 v1, 0x0

    invoke-virtual {p1}, Li/x;->b()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown Layer: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_1
    move-object v0, v1

    :goto_0
    return-object v0

    :pswitch_2
    new-instance v0, Li/au;

    invoke-direct {v0, p1}, Li/au;-><init>(Li/x;)V

    goto :goto_0

    :pswitch_3
    new-instance v0, Li/aa;

    invoke-direct {v0, p1}, Li/aa;-><init>(Li/x;)V

    goto :goto_0

    :pswitch_4
    new-instance v0, Li/at;

    invoke-direct {v0, p1}, Li/at;-><init>(Li/x;)V

    goto :goto_0

    :pswitch_5
    new-instance v0, Li/af;

    invoke-direct {v0, p1}, Li/af;-><init>(Li/x;)V

    goto :goto_0

    :pswitch_6
    new-instance v0, Li/bo;

    invoke-direct {v0, p1}, Li/bo;-><init>(Li/x;)V

    goto :goto_0

    :pswitch_7
    new-instance v0, Li/az;

    invoke-direct {v0, p1}, Li/az;-><init>(Li/x;)V

    goto :goto_0

    :pswitch_8
    invoke-static {}, Lcom/google/googlenav/d;->a()Lcom/google/googlenav/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/d;->w()Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_0
    new-instance v0, Li/aP;

    invoke-direct {v0, p1}, Li/aP;-><init>(Li/x;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_4
        :pswitch_8
        :pswitch_6
        :pswitch_0
        :pswitch_7
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_5
        :pswitch_1
    .end packed-switch
.end method

.method public b(Li/x;)Li/aG;
    .locals 3

    invoke-virtual {p1}, Li/x;->b()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown Layer: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_1
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :pswitch_2
    new-instance v0, Li/bq;

    invoke-direct {v0, p1}, Li/bq;-><init>(Li/x;)V

    goto :goto_0

    :pswitch_3
    new-instance v0, Li/e;

    invoke-direct {v0, p1}, Li/e;-><init>(Li/x;)V

    goto :goto_0

    :pswitch_4
    new-instance v0, Li/r;

    invoke-direct {v0, p1}, Li/r;-><init>(Li/x;)V

    goto :goto_0

    :pswitch_5
    new-instance v0, Li/am;

    invoke-direct {v0, p1}, Li/am;-><init>(Li/x;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_5
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public c(Li/x;)Li/be;
    .locals 3

    invoke-virtual {p1}, Li/x;->b()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown Layer: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_1
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :pswitch_2
    new-instance v0, Li/L;

    invoke-direct {v0, p1}, Li/L;-><init>(Li/x;)V

    goto :goto_0

    :pswitch_3
    new-instance v0, Li/b;

    invoke-direct {v0, p1}, Li/b;-><init>(Li/x;)V

    goto :goto_0

    :pswitch_4
    new-instance v0, Li/ad;

    invoke-direct {v0, p1}, Li/ad;-><init>(Li/x;)V

    goto :goto_0

    :pswitch_5
    new-instance v0, Li/aA;

    invoke-direct {v0, p1}, Li/aA;-><init>(Li/x;)V

    goto :goto_0

    :pswitch_6
    new-instance v0, Li/aK;

    invoke-direct {v0, p1}, Li/aK;-><init>(Li/x;)V

    goto :goto_0

    :pswitch_7
    new-instance v0, Li/at;

    invoke-direct {v0, p1}, Li/at;-><init>(Li/x;)V

    goto :goto_0

    :pswitch_8
    new-instance v0, Li/af;

    invoke-direct {v0, p1}, Li/af;-><init>(Li/x;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_7
        :pswitch_2
        :pswitch_6
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_8
        :pswitch_1
    .end packed-switch
.end method
