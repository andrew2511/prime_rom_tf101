.class LI/I;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:LI/q;


# direct methods
.method constructor <init>(LI/q;)V
    .locals 0

    iput-object p1, p0, LI/I;->a:LI/q;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, LI/I;->a:LI/q;

    invoke-virtual {v0}, LI/q;->e()V

    iget-object v0, p0, LI/I;->a:LI/q;

    invoke-static {v0}, LI/q;->a(LI/q;)Lcom/google/googlenav/bL;

    move-result-object v0

    const/16 v1, 0x266

    invoke-static {v1}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/googlenav/bL;->f(Ljava/lang/String;)V

    return-void
.end method
