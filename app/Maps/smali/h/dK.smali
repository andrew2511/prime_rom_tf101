.class Lh/dK;
.super Ljava/lang/Object;

# interfaces
.implements Lh/eJ;


# instance fields
.field final synthetic a:Lh/fM;

.field final synthetic b:Lh/eI;


# direct methods
.method constructor <init>(Lh/eI;Lh/fM;)V
    .locals 0

    iput-object p1, p0, Lh/dK;->b:Lh/eI;

    iput-object p2, p0, Lh/dK;->a:Lh/fM;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 3

    invoke-static {}, Lo/A;->F()V

    const-string v0, "home_speedbump_ack"

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lo/as;->a(Ljava/lang/String;ILo/Z;)V

    iget-object v0, p0, Lh/dK;->a:Lh/fM;

    invoke-interface {v0}, Lh/fM;->a()V

    return-void
.end method

.method public b(Z)V
    .locals 1

    invoke-static {}, Lo/A;->E()V

    iget-object v0, p0, Lh/dK;->a:Lh/fM;

    invoke-interface {v0}, Lh/fM;->b()V

    return-void
.end method

.method public c(Z)V
    .locals 1

    invoke-static {}, Lo/A;->E()V

    iget-object v0, p0, Lh/dK;->a:Lh/fM;

    invoke-interface {v0}, Lh/fM;->b()V

    return-void
.end method
