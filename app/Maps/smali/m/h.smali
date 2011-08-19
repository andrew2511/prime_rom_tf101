.class public Lm/h;
.super Ljava/lang/Object;

# interfaces
.implements Lm/i;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lm/h;->a:Landroid/content/Context;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lm/h;->b:Landroid/os/Handler;

    return-void
.end method

.method public static a(Landroid/content/Context;ILandroid/os/Handler;)Lm/p;
    .locals 1

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :pswitch_1
    const v0, 0x7f060002

    invoke-static {p0, v0, p2}, Lm/q;->a(Landroid/content/Context;ILandroid/os/Handler;)Lm/p;

    move-result-object v0

    goto :goto_0

    :pswitch_2
    const/high16 v0, 0x7f06

    invoke-static {p0, v0, p2}, Lm/q;->a(Landroid/content/Context;ILandroid/os/Handler;)Lm/p;

    move-result-object v0

    goto :goto_0

    :pswitch_3
    const v0, 0x7f060001

    invoke-static {p0, v0, p2}, Lm/q;->a(Landroid/content/Context;ILandroid/os/Handler;)Lm/p;

    move-result-object v0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public a(Lm/w;)Lm/p;
    .locals 3

    iget-object v0, p0, Lm/h;->a:Landroid/content/Context;

    invoke-virtual {p1}, Lm/w;->c()I

    move-result v1

    iget-object v2, p0, Lm/h;->b:Landroid/os/Handler;

    invoke-static {v0, v1, v2}, Lm/h;->a(Landroid/content/Context;ILandroid/os/Handler;)Lm/p;

    move-result-object v0

    return-object v0
.end method

.method public a()V
    .locals 0

    return-void
.end method

.method public b()V
    .locals 0

    return-void
.end method
