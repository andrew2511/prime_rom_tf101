.class final Lc/c;
.super Ljava/lang/Object;

# interfaces
.implements Lo/bs;


# instance fields
.field final synthetic a:LaU/a;

.field final synthetic b:Lc/l;


# direct methods
.method constructor <init>(LaU/a;Lc/l;)V
    .locals 0

    iput-object p1, p0, Lc/c;->a:LaU/a;

    iput-object p2, p0, Lc/c;->b:Lc/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(JLjava/lang/String;Ljava/lang/String;)V
    .locals 4

    new-instance v0, LaD/j;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-direct {v0, p4, v1}, LaD/j;-><init>(Ljava/lang/String;Ljava/lang/Long;)V

    new-instance v1, Ljava/util/Vector;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/Vector;-><init>(I)V

    invoke-virtual {v1, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lak/h;->a()Lak/h;

    move-result-object v0

    new-instance v2, Lo/W;

    new-instance v3, Lc/r;

    invoke-direct {v3, p0, p3, p1, p2}, Lc/r;-><init>(Lc/c;Ljava/lang/String;J)V

    invoke-direct {v2, v1, v3}, Lo/W;-><init>(Ljava/util/Vector;Lo/aJ;)V

    invoke-virtual {v0, v2}, Lak/h;->c(Lak/d;)V

    return-void
.end method
