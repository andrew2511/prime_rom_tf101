.class Lcom/google/googlenav/ui/wizard/android/l;
.super Ljava/lang/Object;

# interfaces
.implements Lh/eJ;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/wizard/android/f;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/wizard/android/f;)V
    .locals 0

    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/android/l;->a:Lcom/google/googlenav/ui/wizard/android/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 7

    const/4 v2, 0x1

    invoke-static {}, Lo/A;->u()V

    new-instance v0, Law/e;

    sget-object v1, LaG/b;->d:Law/f;

    invoke-direct {v0, v1}, Law/e;-><init>(Law/f;)V

    invoke-virtual {v0, v2, v2}, Law/e;->b(IZ)V

    invoke-static {}, Lak/h;->a()Lak/h;

    move-result-object v1

    new-instance v2, Lo/C;

    new-instance v3, Lcom/google/googlenav/ui/wizard/android/q;

    invoke-direct {v3, p0}, Lcom/google/googlenav/ui/wizard/android/q;-><init>(Lcom/google/googlenav/ui/wizard/android/l;)V

    invoke-direct {v2, v0, v3}, Lo/C;-><init>(Law/e;Lo/V;)V

    invoke-virtual {v1, v2}, Lak/h;->c(Lak/d;)V

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/android/l;->a:Lcom/google/googlenav/ui/wizard/android/f;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/android/f;->e(Lcom/google/googlenav/ui/wizard/android/f;)Lh/eY;

    move-result-object v0

    const/16 v1, 0x453

    invoke-static {v1}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    sget-object v3, Lh/l;->a:Lh/fc;

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lh/eY;->a(Ljava/lang/String;Lak/i;Lh/fc;JZ)V

    return-void
.end method

.method public b(Z)V
    .locals 0

    invoke-static {}, Lo/A;->t()V

    return-void
.end method

.method public c(Z)V
    .locals 0

    invoke-static {}, Lo/A;->t()V

    return-void
.end method
