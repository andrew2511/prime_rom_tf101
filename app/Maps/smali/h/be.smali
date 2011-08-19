.class Lh/be;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/google/googlenav/prefetch/android/g;

.field final synthetic b:Lh/ek;


# direct methods
.method constructor <init>(Lh/ek;Lcom/google/googlenav/prefetch/android/g;)V
    .locals 0

    iput-object p1, p0, Lh/be;->b:Lh/ek;

    iput-object p2, p0, Lh/be;->a:Lcom/google/googlenav/prefetch/android/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    iget-object v0, p0, Lh/be;->b:Lh/ek;

    invoke-static {v0}, Lh/ek;->b(Lh/ek;)LE/i;

    move-result-object v0

    iget-object v1, p0, Lh/be;->a:Lcom/google/googlenav/prefetch/android/g;

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, LE/i;->a(Lcom/google/googlenav/prefetch/android/g;I)V

    iget-object v0, p0, Lh/be;->b:Lh/ek;

    iget-object v0, v0, Lh/ek;->g:Lh/eY;

    invoke-virtual {v0}, Lh/eY;->B()Lcom/google/googlenav/bL;

    move-result-object v0

    const/16 v1, 0x29a

    invoke-static {v1}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/googlenav/bL;->f(Ljava/lang/String;)V

    iget-object v0, p0, Lh/be;->b:Lh/ek;

    invoke-static {v0}, Lh/ek;->a(Lh/ek;)V

    new-instance v0, LT/d;

    invoke-static {}, Lcom/google/googlenav/Y;->a()LT/c;

    move-result-object v1

    new-instance v2, Lh/cM;

    invoke-direct {v2, p0}, Lh/cM;-><init>(Lh/be;)V

    invoke-direct {v0, v1, v2}, LT/d;-><init>(LT/c;Ljava/lang/Runnable;)V

    invoke-virtual {v0}, LT/d;->b()V

    return-void
.end method
