.class public Lcom/google/googlenav/login/b;
.super Lcom/google/googlenav/login/j;


# instance fields
.field private final c:Landroid/content/Context;

.field private final d:Z

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method private constructor <init>(Landroid/content/Context;LaU/a;Z)V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0, p2}, Lcom/google/googlenav/login/j;-><init>(LaU/a;)V

    iput-object v0, p0, Lcom/google/googlenav/login/b;->e:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/googlenav/login/b;->f:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/googlenav/login/b;->g:Ljava/lang/String;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/google/googlenav/login/b;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p1, p0, Lcom/google/googlenav/login/b;->c:Landroid/content/Context;

    iput-boolean p3, p0, Lcom/google/googlenav/login/b;->d:Z

    invoke-direct {p0}, Lcom/google/googlenav/login/b;->A()V

    invoke-super {p0}, Lcom/google/googlenav/login/j;->U_()V

    return-void
.end method

.method private A()V
    .locals 2

    iget-object v0, p0, Lcom/google/googlenav/login/b;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    invoke-virtual {p0}, Lcom/google/googlenav/login/b;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/login/b;->e:Ljava/lang/String;

    invoke-direct {p0}, Lcom/google/googlenav/login/b;->B()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/login/b;->f:Ljava/lang/String;

    invoke-direct {p0}, Lcom/google/googlenav/login/b;->C()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/login/b;->g:Ljava/lang/String;

    return-void
.end method

.method private B()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/google/googlenav/login/b;->c:Landroid/content/Context;

    const-string v1, "login_helper"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "sid_token"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private C()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/google/googlenav/login/b;->c:Landroid/content/Context;

    const-string v1, "login_helper"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "lsid_token"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private D()V
    .locals 5

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/google/googlenav/login/b;->e:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/google/googlenav/login/f;->a()Lcom/google/googlenav/login/f;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/login/b;->e:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/googlenav/login/b;->c:Landroid/content/Context;

    iget-boolean v3, p0, Lcom/google/googlenav/login/b;->d:Z

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/googlenav/login/f;->a(Ljava/lang/String;Landroid/content/Context;Z)V

    iput-object v4, p0, Lcom/google/googlenav/login/b;->e:Ljava/lang/String;

    iput-object v4, p0, Lcom/google/googlenav/login/b;->f:Ljava/lang/String;

    iput-object v4, p0, Lcom/google/googlenav/login/b;->g:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method private E()V
    .locals 2

    iget-object v0, p0, Lcom/google/googlenav/login/b;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, p0, Lcom/google/googlenav/login/b;->b:LaU/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/googlenav/login/b;->b:LaU/a;

    new-instance v1, Lcom/google/googlenav/login/d;

    invoke-direct {v1, p0}, Lcom/google/googlenav/login/d;-><init>(Lcom/google/googlenav/login/b;)V

    invoke-interface {v0, v1}, LaU/a;->a(Ljava/lang/Runnable;)V

    :goto_0
    invoke-virtual {p0}, Lcom/google/googlenav/login/b;->v()V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/google/googlenav/login/b;->q()V

    goto :goto_0
.end method

.method private F()V
    .locals 0

    invoke-virtual {p0}, Lcom/google/googlenav/login/b;->n()V

    invoke-virtual {p0}, Lcom/google/googlenav/login/b;->t()V

    return-void
.end method

.method public static a(Landroid/content/Context;LaU/a;)Lcom/google/googlenav/login/j;
    .locals 2

    invoke-static {}, Lcom/google/googlenav/d;->a()Lcom/google/googlenav/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/d;->q()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    new-instance v1, Lcom/google/googlenav/login/b;

    invoke-direct {v1, p0, p1, v0}, Lcom/google/googlenav/login/b;-><init>(Landroid/content/Context;LaU/a;Z)V

    invoke-static {v1}, Lcom/google/googlenav/login/j;->a(Lcom/google/googlenav/login/j;)V

    :goto_0
    invoke-static {}, Lcom/google/googlenav/login/j;->k()Lcom/google/googlenav/login/j;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Lcom/google/googlenav/login/i;

    invoke-direct {v0}, Lcom/google/googlenav/login/i;-><init>()V

    invoke-static {v0}, Lcom/google/googlenav/login/j;->a(Lcom/google/googlenav/login/j;)V

    goto :goto_0
.end method

.method private a(ZZ)V
    .locals 6

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/google/googlenav/login/b;->e:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/googlenav/login/b;->e:Ljava/lang/String;

    move-object v2, v0

    :goto_0
    invoke-static {}, Lcom/google/googlenav/login/f;->a()Lcom/google/googlenav/login/f;

    move-result-object v0

    iget-object v4, p0, Lcom/google/googlenav/login/b;->c:Landroid/content/Context;

    iget-boolean v5, p0, Lcom/google/googlenav/login/b;->d:Z

    move v1, p2

    move v3, p1

    invoke-virtual/range {v0 .. v5}, Lcom/google/googlenav/login/f;->a(ZLjava/lang/String;ZLandroid/content/Context;Z)V

    return-void

    :cond_0
    const/4 v0, 0x0

    move-object v2, v0

    goto :goto_0
.end method

.method public static b(Landroid/content/Context;LaU/a;)Lcom/google/googlenav/login/j;
    .locals 2

    const/4 v0, 0x1

    new-instance v1, Lcom/google/googlenav/login/b;

    invoke-direct {v1, p0, p1, v0}, Lcom/google/googlenav/login/b;-><init>(Landroid/content/Context;LaU/a;Z)V

    invoke-static {v1}, Lcom/google/googlenav/login/j;->a(Lcom/google/googlenav/login/j;)V

    invoke-static {}, Lcom/google/googlenav/login/j;->k()Lcom/google/googlenav/login/j;

    move-result-object v0

    return-object v0
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/google/googlenav/login/b;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iput-object p1, p0, Lcom/google/googlenav/login/b;->e:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/googlenav/login/b;->f:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/googlenav/login/b;->g:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/googlenav/login/b;->c:Landroid/content/Context;

    const-string v1, "login_helper"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "auth_token"

    iget-object v2, p0, Lcom/google/googlenav/login/b;->e:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "sid_token"

    iget-object v2, p0, Lcom/google/googlenav/login/b;->f:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "lsid_token"

    iget-object v2, p0, Lcom/google/googlenav/login/b;->g:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-static {v0}, Lz/a;->a(Landroid/content/SharedPreferences$Editor;)V

    invoke-virtual {p0}, Lcom/google/googlenav/login/b;->o()V

    invoke-virtual {p0}, Lcom/google/googlenav/login/b;->u()V

    return-void
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    if-eqz p4, :cond_0

    invoke-direct {p0, p1, p2, p3}, Lcom/google/googlenav/login/b;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/google/googlenav/login/b;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private b(Z)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/google/googlenav/login/b;->E()V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/google/googlenav/login/b;->F()V

    goto :goto_0
.end method

.method private c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    iput-object p1, p0, Lcom/google/googlenav/login/b;->e:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/googlenav/login/b;->f:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/googlenav/login/b;->g:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/googlenav/login/b;->c:Landroid/content/Context;

    const-string v1, "login_helper"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "auth_token"

    iget-object v2, p0, Lcom/google/googlenav/login/b;->e:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "sid_token"

    iget-object v2, p0, Lcom/google/googlenav/login/b;->f:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "lsid_token"

    iget-object v2, p0, Lcom/google/googlenav/login/b;->g:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-static {v0}, Lz/a;->a(Landroid/content/SharedPreferences$Editor;)V

    invoke-virtual {p0}, Lcom/google/googlenav/login/b;->t()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    invoke-direct {p0}, Lcom/google/googlenav/login/b;->A()V

    invoke-super {p0}, Lcom/google/googlenav/login/j;->a()V

    return-void
.end method

.method public a(I)V
    .locals 2

    const/4 v1, 0x1

    if-ltz p1, :cond_0

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/google/googlenav/login/b;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/googlenav/login/b;->a(ZZ)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-super {p0, p1}, Lcom/google/googlenav/login/j;->a(I)V

    goto :goto_0
.end method

.method protected a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/googlenav/login/h;)V
    .locals 2

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/googlenav/login/b;->a:Z

    invoke-virtual {p0, p5}, Lcom/google/googlenav/login/b;->b(Lcom/google/googlenav/login/h;)V

    const/4 v0, 0x0

    invoke-direct {p0, v1, v0}, Lcom/google/googlenav/login/b;->a(ZZ)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/googlenav/login/b;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public a(Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/googlenav/login/b;->b(Z)V

    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/google/googlenav/login/b;->c:Landroid/content/Context;

    const-string v1, "login_helper"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "auth_token"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected c()Z
    .locals 1

    invoke-virtual {p0}, Lcom/google/googlenav/login/b;->m()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/login/b;->e:Ljava/lang/String;

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/login/b;->f:Ljava/lang/String;

    return-object v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/login/b;->g:Ljava/lang/String;

    return-object v0
.end method

.method protected g()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/google/googlenav/login/b;->D()V

    invoke-static {}, Lak/h;->a()Lak/h;

    move-result-object v0

    invoke-virtual {v0, v1}, Lak/h;->b(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/google/googlenav/login/b;->a(Ljava/lang/String;)V

    return-void
.end method

.method public h()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, v0}, Lcom/google/googlenav/login/b;->a(ZZ)V

    return-void
.end method

.method public i()V
    .locals 1

    invoke-static {}, Lcom/google/googlenav/login/g;->e()Lcom/google/googlenav/login/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/login/g;->c()V

    return-void
.end method

.method public j()V
    .locals 2

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/google/googlenav/login/b;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/googlenav/login/b;->a(ZZ)V

    :cond_0
    return-void
.end method
