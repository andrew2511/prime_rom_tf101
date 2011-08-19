.class LF/h;
.super Ljava/lang/Object;

# interfaces
.implements Lak/c;


# instance fields
.field final synthetic a:LF/e;


# direct methods
.method private constructor <init>(LF/e;)V
    .locals 0

    iput-object p1, p0, LF/h;->a:LF/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(LF/e;LF/r;)V
    .locals 0

    invoke-direct {p0, p1}, LF/h;-><init>(LF/e;)V

    return-void
.end method


# virtual methods
.method public a(IZLjava/lang/String;)V
    .locals 1

    iget-object v0, p0, LF/h;->a:LF/e;

    invoke-static {v0}, LF/e;->a(LF/e;)LF/L;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, LF/L;->a(IZ)V

    return-void
.end method

.method public a(Lak/d;)V
    .locals 1

    instance-of v0, p1, LF/l;

    if-eqz v0, :cond_0

    iget-object v0, p0, LF/h;->a:LF/e;

    invoke-static {v0}, LF/e;->a(LF/e;)LF/L;

    move-result-object v0

    check-cast p1, LF/l;

    invoke-virtual {v0, p1}, LF/L;->a(LF/l;)V

    :cond_0
    return-void
.end method

.method public b(Lak/d;)V
    .locals 1

    instance-of v0, p1, LF/l;

    if-eqz v0, :cond_0

    check-cast p1, LF/l;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, LF/l;->a(I)V

    iget-object v0, p0, LF/h;->a:LF/e;

    invoke-static {v0}, LF/e;->a(LF/e;)LF/L;

    move-result-object v0

    invoke-virtual {v0, p1}, LF/L;->a(LF/l;)V

    :cond_0
    return-void
.end method
