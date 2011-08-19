.class Lh/dS;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# instance fields
.field final synthetic a:Lh/dj;


# direct methods
.method constructor <init>(Lh/dj;)V
    .locals 0

    iput-object p1, p0, Lh/dS;->a:Lh/dj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 2

    iget-object v0, p0, Lh/dS;->a:Lh/dj;

    iget-object v0, v0, Lh/dj;->a:Lh/fS;

    iget-object v0, v0, Lh/fS;->b:LI/x;

    invoke-virtual {v0}, LI/x;->h()V

    iget-object v0, p0, Lh/dS;->a:Lh/dj;

    iget-object v0, v0, Lh/dj;->a:Lh/fS;

    iget-object v0, v0, Lh/fS;->c:LI/q;

    invoke-virtual {v0}, LI/q;->e()V

    iget-object v0, p0, Lh/dS;->a:Lh/dj;

    iget-object v0, v0, Lh/dj;->a:Lh/fS;

    iget-object v0, v0, Lh/fS;->g:Lh/eY;

    invoke-virtual {v0}, Lh/eY;->B()Lcom/google/googlenav/bL;

    move-result-object v0

    const/16 v1, 0x266

    invoke-static {v1}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/googlenav/bL;->f(Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0
.end method
