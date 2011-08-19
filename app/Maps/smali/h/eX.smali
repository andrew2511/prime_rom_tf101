.class Lh/eX;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lh/cY;


# direct methods
.method constructor <init>(Lh/cY;)V
    .locals 0

    iput-object p1, p0, Lh/eX;->a:Lh/cY;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lh/eX;->a:Lh/cY;

    iget-object v0, v0, Lh/cY;->a:Lh/dN;

    iget-object v0, v0, Lh/dN;->g:Lh/eY;

    invoke-virtual {v0}, Lh/eY;->f()V

    iget-object v0, p0, Lh/eX;->a:Lh/cY;

    iget-object v0, v0, Lh/cY;->a:Lh/dN;

    iget-object v0, v0, Lh/dN;->g:Lh/eY;

    invoke-virtual {v0}, Lh/eY;->B()Lcom/google/googlenav/bL;

    move-result-object v0

    const/16 v1, 0xaa

    invoke-static {v1}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/googlenav/bL;->f(Ljava/lang/String;)V

    return-void
.end method
