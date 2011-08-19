.class public Lo/R;
.super Ljava/lang/Object;


# instance fields
.field private final a:LaU/a;

.field private final b:Lo/r;


# direct methods
.method public constructor <init>(LaU/a;Lo/r;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/R;->a:LaU/a;

    iput-object p2, p0, Lo/R;->b:Lo/r;

    return-void
.end method

.method static synthetic a(Lo/R;Law/e;)V
    .locals 0

    invoke-direct {p0, p1}, Lo/R;->b(Law/e;)V

    return-void
.end method

.method private b(Law/e;)V
    .locals 6

    const/4 v4, 0x0

    const/4 v1, 0x0

    iget-object v0, p0, Lo/R;->b:Lo/r;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    const/4 v2, -0x1

    invoke-static {p1, v0, v2}, Law/b;->c(Law/e;II)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lo/R;->b:Lo/r;

    invoke-interface {v0, v4, v1}, Lo/r;->a(ZLo/aT;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lo/R;->b:Lo/r;

    move-object v2, v1

    move-object v3, v1

    move-object v5, v1

    invoke-interface/range {v0 .. v5}, Lo/r;->a(Lf/h;Ljava/lang/Long;Law/e;ZLo/aT;)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lo/R;->b:Lo/r;

    invoke-interface {v0, v4, v1}, Lo/r;->b(ZLo/aT;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public a(Law/e;)V
    .locals 3

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Law/e;->f(I)Law/e;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Law/e;->f(I)Law/e;

    move-result-object v0

    iget-object v1, p0, Lo/R;->a:LaU/a;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lo/R;->a:LaU/a;

    new-instance v2, Lo/u;

    invoke-direct {v2, p0, v0}, Lo/u;-><init>(Lo/R;Law/e;)V

    invoke-interface {v1, v2}, LaU/a;->a(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_1
    invoke-direct {p0, v0}, Lo/R;->b(Law/e;)V

    goto :goto_0
.end method
