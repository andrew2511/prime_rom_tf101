.class public Lc/m;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lc/l;LaU/a;)V
    .locals 3

    invoke-static {}, Lak/h;->a()Lak/h;

    move-result-object v0

    new-instance v1, Lo/bS;

    new-instance v2, Lc/c;

    invoke-direct {v2, p1, p0}, Lc/c;-><init>(LaU/a;Lc/l;)V

    invoke-direct {v1, v2}, Lo/bS;-><init>(Lo/bs;)V

    invoke-virtual {v0, v1}, Lak/h;->c(Lak/d;)V

    return-void
.end method
