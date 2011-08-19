.class Lh/dD;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lx/i;

.field final synthetic b:Lh/ch;


# direct methods
.method constructor <init>(Lh/ch;Lx/i;)V
    .locals 0

    iput-object p1, p0, Lh/dD;->b:Lh/ch;

    iput-object p2, p0, Lh/dD;->a:Lx/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lh/dD;->b:Lh/ch;

    iget-object v0, v0, Lh/ch;->d:Lh/eB;

    iget-object v1, p0, Lh/dD;->b:Lh/ch;

    iget-boolean v1, v1, Lh/ch;->c:Z

    iget-object v2, p0, Lh/dD;->b:Lh/ch;

    iget-object v2, v2, Lh/ch;->a:Lh/dZ;

    iget-object v3, p0, Lh/dD;->a:Lx/i;

    invoke-static {v0, v1, v2, v3}, Lh/eB;->a(Lh/eB;ZLh/dZ;Lx/i;)V

    return-void
.end method
