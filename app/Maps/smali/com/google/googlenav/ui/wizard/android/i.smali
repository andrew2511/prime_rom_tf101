.class Lcom/google/googlenav/ui/wizard/android/i;
.super LT/d;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/wizard/android/b;

.field final synthetic b:Lcom/google/googlenav/ui/wizard/android/f;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/wizard/android/f;LT/c;Lcom/google/googlenav/ui/wizard/android/b;)V
    .locals 0

    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/android/i;->b:Lcom/google/googlenav/ui/wizard/android/f;

    iput-object p3, p0, Lcom/google/googlenav/ui/wizard/android/i;->a:Lcom/google/googlenav/ui/wizard/android/b;

    invoke-direct {p0, p2}, LT/d;-><init>(LT/c;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/android/i;->b:Lcom/google/googlenav/ui/wizard/android/f;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/android/f;->h(Lcom/google/googlenav/ui/wizard/android/f;)Law/e;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/android/i;->a:Lcom/google/googlenav/ui/wizard/android/b;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/wizard/android/b;->a()I

    move-result v1

    invoke-static {v0, v1}, Law/b;->b(Law/e;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/android/f;->a(Ljava/lang/String;)LaB/f;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/android/i;->b:Lcom/google/googlenav/ui/wizard/android/f;

    invoke-static {v1}, Lcom/google/googlenav/ui/wizard/android/f;->i(Lcom/google/googlenav/ui/wizard/android/f;)Lh/eY;

    move-result-object v1

    invoke-virtual {v1}, Lh/eY;->v()LaU/a;

    move-result-object v1

    new-instance v2, Lcom/google/googlenav/ui/wizard/android/n;

    invoke-direct {v2, p0, v0}, Lcom/google/googlenav/ui/wizard/android/n;-><init>(Lcom/google/googlenav/ui/wizard/android/i;LaB/f;)V

    invoke-interface {v1, v2}, LaU/a;->a(Ljava/lang/Runnable;)V

    return-void
.end method
