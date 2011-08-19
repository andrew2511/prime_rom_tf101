.class public Lo/o;
.super Ljava/lang/Object;


# instance fields
.field private a:Law/e;

.field private b:Ljava/lang/Long;


# direct methods
.method private constructor <init>(Law/e;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/o;->a:Law/e;

    const/4 v0, 0x4

    new-instance v1, Ljava/lang/Long;

    iget-object v2, p0, Lo/o;->a:Law/e;

    invoke-virtual {v2, v0}, Law/e;->e(I)J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/lang/Long;-><init>(J)V

    iput-object v1, p0, Lo/o;->b:Ljava/lang/Long;

    return-void
.end method

.method synthetic constructor <init>(Law/e;Lo/ba;)V
    .locals 0

    invoke-direct {p0, p1}, Lo/o;-><init>(Law/e;)V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Long;
    .locals 1

    iget-object v0, p0, Lo/o;->b:Ljava/lang/Long;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lo/o;->a:Law/e;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Law/e;->g(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lo/o;->a:Law/e;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Law/e;->g(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public d()I
    .locals 2

    const/4 v1, 0x7

    iget-object v0, p0, Lo/o;->a:Law/e;

    invoke-virtual {v0, v1}, Law/e;->h(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/o;->a:Law/e;

    invoke-virtual {v0, v1}, Law/e;->f(I)Law/e;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Law/e;->d(I)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public e()Law/e;
    .locals 2

    const/4 v1, 0x7

    iget-object v0, p0, Lo/o;->a:Law/e;

    invoke-virtual {v0, v1}, Law/e;->h(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/o;->a:Law/e;

    invoke-virtual {v0, v1}, Law/e;->f(I)Law/e;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
