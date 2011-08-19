.class public abstract Lx/r;
.super Ljava/lang/Object;

# interfaces
.implements Lx/J;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lx/z;)Z
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget v0, p0, Lx/z;->l:I

    sparse-switch v0, :sswitch_data_0

    move v0, v2

    :goto_0
    return v0

    :sswitch_0
    iget v0, p0, Lx/z;->m:I

    sparse-switch v0, :sswitch_data_1

    move v0, v2

    goto :goto_0

    :sswitch_1
    move v0, v1

    goto :goto_0

    :sswitch_2
    move v0, v1

    goto :goto_0

    :sswitch_3
    move v0, v1

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x6 -> :sswitch_2
        0xe -> :sswitch_3
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x2 -> :sswitch_1
        0xd -> :sswitch_1
        0x11 -> :sswitch_1
    .end sparse-switch
.end method


# virtual methods
.method public a(Lx/j;)V
    .locals 0

    return-void
.end method

.method public a()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public e()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public f()V
    .locals 0

    return-void
.end method

.method public l()V
    .locals 0

    return-void
.end method
