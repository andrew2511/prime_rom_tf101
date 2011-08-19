.class Lo/E;
.super Ljava/lang/Object;

# interfaces
.implements Lh/cD;


# instance fields
.field private final a:Li/C;

.field private final b:Lo/bg;

.field private final c:Lf/Y;

.field private final d:Lo/aT;

.field private final e:B


# direct methods
.method public constructor <init>(Li/C;BLo/bg;Lf/Y;Lo/aT;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/E;->a:Li/C;

    iput-object p3, p0, Lo/E;->b:Lo/bg;

    iput-object p4, p0, Lo/E;->c:Lf/Y;

    iput-object p5, p0, Lo/E;->d:Lo/aT;

    iput-byte p2, p0, Lo/E;->e:B

    return-void
.end method


# virtual methods
.method public D_()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public E_()V
    .locals 0

    return-void
.end method

.method public a(Lu/h;Ljava/lang/Long;Law/e;)V
    .locals 6

    iget-object v0, p0, Lo/E;->b:Lo/bg;

    invoke-virtual {p1}, Lu/h;->f()Lf/h;

    move-result-object v1

    const/4 v4, 0x1

    iget-object v5, p0, Lo/E;->d:Lo/aT;

    move-object v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Lo/bg;->a(Lf/h;Ljava/lang/Long;Law/e;ZLo/aT;)V

    iget-object v0, p0, Lo/E;->c:Lf/Y;

    invoke-virtual {p1}, Lu/h;->f()Lf/h;

    move-result-object v1

    invoke-virtual {v0, v1}, Lf/Y;->c(Lf/h;)V

    iget-object v0, p0, Lo/E;->a:Li/C;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Li/C;->i(I)V

    iget-object v0, p0, Lo/E;->a:Li/C;

    iget-byte v1, p0, Lo/E;->e:B

    invoke-virtual {v0, v1}, Li/C;->a(B)V

    const/4 v0, 0x0

    if-eqz p3, :cond_0

    const/16 v0, 0xb

    invoke-static {p3, v0}, Law/b;->b(Law/e;I)Ljava/lang/String;

    move-result-object v0

    :cond_0
    invoke-static {v0}, Lo/A;->b(Ljava/lang/String;)V

    return-void
.end method
