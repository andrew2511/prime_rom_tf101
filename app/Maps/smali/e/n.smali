.class public Le/n;
.super Ljava/lang/Object;


# instance fields
.field private final a:Le/m;

.field private final b:I

.field private final c:I

.field private d:Z

.field private e:I

.field private f:I

.field private g:I

.field private h:Ljava/lang/String;

.field private final i:I


# direct methods
.method constructor <init>(ILe/m;IIII)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Le/n;->a:Le/m;

    iput p3, p0, Le/n;->b:I

    iput p1, p0, Le/n;->c:I

    iput p4, p0, Le/n;->e:I

    iput p5, p0, Le/n;->f:I

    iput p6, p0, Le/n;->g:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Le/n;->d:Z

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    iget v0, p0, Le/n;->b:I

    invoke-virtual {p2, v0}, Le/m;->a(I)LF/y;

    move-result-object v0

    invoke-direct {p0, v0}, Le/n;->a(LF/y;)I

    move-result v0

    iput v0, p0, Le/n;->i:I

    :goto_0
    return-void

    :cond_0
    const/4 v0, -0x1

    iput v0, p0, Le/n;->i:I

    goto :goto_0
.end method

.method private a(LF/y;)I
    .locals 1

    invoke-virtual {p1}, LF/y;->b()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    :pswitch_0
    const/4 v0, -0x1

    :goto_1
    return v0

    :pswitch_1
    invoke-virtual {p1}, LF/y;->c()I

    move-result v0

    packed-switch v0, :pswitch_data_1

    goto :goto_0

    :pswitch_2
    const/16 v0, 0x9

    goto :goto_1

    :pswitch_3
    const/16 v0, 0xa

    goto :goto_1

    :pswitch_4
    invoke-virtual {p1}, LF/y;->c()I

    move-result v0

    packed-switch v0, :pswitch_data_2

    goto :goto_0

    :pswitch_5
    const/16 v0, 0xb

    goto :goto_1

    :pswitch_6
    const/16 v0, 0xc

    goto :goto_1

    :pswitch_7
    invoke-virtual {p1}, LF/y;->c()I

    move-result v0

    packed-switch v0, :pswitch_data_3

    goto :goto_0

    :pswitch_8
    const/16 v0, 0xd

    goto :goto_1

    :pswitch_9
    const/16 v0, 0xe

    goto :goto_1

    :pswitch_a
    const/16 v0, 0x25

    goto :goto_1

    :pswitch_b
    invoke-virtual {p1}, LF/y;->c()I

    move-result v0

    packed-switch v0, :pswitch_data_4

    const/16 v0, 0x13

    goto :goto_1

    :pswitch_c
    const/16 v0, 0x11

    goto :goto_1

    :pswitch_d
    const/16 v0, 0x12

    goto :goto_1

    :pswitch_e
    invoke-virtual {p1}, LF/y;->c()I

    move-result v0

    packed-switch v0, :pswitch_data_5

    const/16 v0, 0x16

    goto :goto_1

    :pswitch_f
    const/16 v0, 0x14

    goto :goto_1

    :pswitch_10
    const/16 v0, 0x15

    goto :goto_1

    :pswitch_11
    invoke-virtual {p1}, LF/y;->c()I

    move-result v0

    packed-switch v0, :pswitch_data_6

    const/16 v0, 0x19

    goto :goto_1

    :pswitch_12
    const/16 v0, 0x17

    goto :goto_1

    :pswitch_13
    const/16 v0, 0x18

    goto :goto_1

    :pswitch_14
    const/16 v0, 0x22

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_4
        :pswitch_7
        :pswitch_a
        :pswitch_b
        :pswitch_e
        :pswitch_11
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_14
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_5
        :pswitch_6
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x1
        :pswitch_8
        :pswitch_9
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x1
        :pswitch_c
        :pswitch_d
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x1
        :pswitch_f
        :pswitch_10
    .end packed-switch

    :pswitch_data_6
    .packed-switch 0x1
        :pswitch_12
        :pswitch_13
    .end packed-switch
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Le/n;->c:I

    return v0
.end method

.method a(I)V
    .locals 0

    iput p1, p0, Le/n;->f:I

    return-void
.end method

.method a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Le/n;->h:Ljava/lang/String;

    return-void
.end method

.method a(Z)V
    .locals 0

    iput-boolean p1, p0, Le/n;->d:Z

    return-void
.end method

.method public b()I
    .locals 2

    iget-object v0, p0, Le/n;->a:Le/m;

    iget v1, p0, Le/n;->b:I

    invoke-virtual {v0, v1}, Le/m;->a(I)LF/y;

    move-result-object v0

    invoke-virtual {v0}, LF/y;->b()I

    move-result v0

    return v0
.end method

.method b(I)V
    .locals 0

    iput p1, p0, Le/n;->g:I

    return-void
.end method

.method public c()Z
    .locals 1

    iget-boolean v0, p0, Le/n;->d:Z

    return v0
.end method

.method d()LF/y;
    .locals 2

    iget-object v0, p0, Le/n;->a:Le/m;

    iget v1, p0, Le/n;->b:I

    invoke-virtual {v0, v1}, Le/m;->a(I)LF/y;

    move-result-object v0

    return-object v0
.end method

.method e()LF/y;
    .locals 3

    iget v0, p0, Le/n;->b:I

    iget-object v1, p0, Le/n;->a:Le/m;

    invoke-virtual {v1}, Le/m;->a()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Le/n;->a:Le/m;

    iget v1, p0, Le/n;->b:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Le/m;->a(I)LF/y;

    move-result-object v0

    goto :goto_0
.end method

.method f()Le/m;
    .locals 1

    iget-object v0, p0, Le/n;->a:Le/m;

    return-object v0
.end method

.method g()I
    .locals 1

    iget v0, p0, Le/n;->b:I

    return v0
.end method

.method h()V
    .locals 10

    invoke-virtual {p0}, Le/n;->d()LF/y;

    move-result-object v9

    invoke-virtual {v9}, LF/y;->a()LG/Q;

    move-result-object v0

    invoke-virtual {v0}, LG/Q;->e()D

    move-result-wide v4

    new-instance v0, LF/w;

    iget v1, p0, Le/n;->c:I

    iget v2, p0, Le/n;->e:I

    int-to-double v2, v2

    mul-double/2addr v2, v4

    double-to-int v2, v2

    iget v3, p0, Le/n;->f:I

    iget v6, p0, Le/n;->g:I

    int-to-double v6, v6

    mul-double/2addr v4, v6

    double-to-int v4, v4

    iget-boolean v5, p0, Le/n;->d:Z

    iget-object v6, p0, Le/n;->h:Ljava/lang/String;

    const/4 v7, -0x1

    iget v8, p0, Le/n;->i:I

    invoke-direct/range {v0 .. v8}, LF/w;-><init>(IIIIZLjava/lang/String;II)V

    invoke-virtual {v9, v0}, LF/y;->a(LF/w;)V

    return-void
.end method
