.class public Le/k;
.super Le/u;


# instance fields
.field a:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Le/u;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput p3, p0, Le/k;->a:I

    return-void
.end method

.method private e()Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    iget v1, p0, Le/k;->a:I

    packed-switch v1, :pswitch_data_0

    :goto_0
    if-eqz v0, :cond_0

    iget-object v1, p0, Le/k;->b:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_1
    return-object v0

    :pswitch_0
    const v0, 0x7f0b00cc

    goto :goto_0

    :pswitch_1
    const v0, 0x7f0b00cd

    goto :goto_0

    :pswitch_2
    const v0, 0x7f0b00ce

    goto :goto_0

    :pswitch_3
    const v0, 0x7f0b00cf

    goto :goto_0

    :pswitch_4
    const v0, 0x7f0b00d0

    goto :goto_0

    :pswitch_5
    const v0, 0x7f0b00d1

    goto :goto_0

    :pswitch_6
    const v0, 0x7f0b00d2

    goto :goto_0

    :pswitch_7
    const v0, 0x7f0b00d3

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    invoke-direct {p0}, Le/k;->e()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, v5}, Le/k;->a(I)LF/C;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v2, p0, Le/k;->b:Landroid/content/Context;

    const v3, 0x7f0b00d5

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v0, v4, v5

    invoke-virtual {v1}, LF/C;->b()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v6

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v1, p0, Le/k;->b:Landroid/content/Context;

    const v2, 0x7f0b00d4

    new-array v3, v6, [Ljava/lang/Object;

    aput-object v0, v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
