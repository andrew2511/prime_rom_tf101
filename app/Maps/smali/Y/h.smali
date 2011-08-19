.class public LY/h;
.super LY/i;


# static fields
.field public static final a:LY/h;


# instance fields
.field private h:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, LY/h;

    invoke-direct {v0}, LY/h;-><init>()V

    sput-object v0, LY/h;->a:LY/h;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, LY/i;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, LY/h;->h:Z

    return-void
.end method


# virtual methods
.method protected a()V
    .locals 3

    invoke-virtual {p0}, LY/h;->j()Lcom/google/android/maps/rideabout/view/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/maps/rideabout/view/b;->e()V

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, LY/h;->a(Z)V

    iget-object v1, p0, LY/h;->c:LY/d;

    invoke-virtual {v1}, LY/d;->a()Ll/c;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v2, p0, LY/h;->c:LY/d;

    invoke-virtual {v2, v1}, LY/d;->c(Ll/c;)V

    :cond_0
    iget-object v1, p0, LY/h;->c:LY/d;

    invoke-virtual {v1}, LY/d;->c()LB/b;

    move-result-object v1

    if-nez v1, :cond_1

    invoke-interface {v0}, Lcom/google/android/maps/rideabout/view/b;->a()V

    :cond_1
    return-void
.end method

.method public a(Ll/c;)V
    .locals 2

    iget-object v0, p0, LY/h;->b:LY/f;

    sget-object v1, LY/g;->c:LY/g;

    invoke-virtual {v0, v1}, LY/f;->a(LY/g;)LY/i;

    return-void
.end method

.method public a(Z)V
    .locals 1

    invoke-virtual {p0}, LY/h;->k()Lcom/google/android/maps/rideabout/view/f;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/maps/rideabout/view/f;->b()V

    invoke-virtual {p0}, LY/h;->l()Lcom/google/android/maps/rideabout/view/k;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/maps/rideabout/view/k;->b()V

    return-void
.end method

.method protected b()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, LY/h;->h:Z

    return-void
.end method

.method public b(Ll/c;)V
    .locals 2

    iget-object v0, p0, LY/h;->b:LY/f;

    sget-object v1, LY/g;->a:LY/g;

    invoke-virtual {v0, v1}, LY/f;->a(LY/g;)LY/i;

    move-result-object v0

    invoke-virtual {v0, p1}, LY/i;->b(Ll/c;)V

    return-void
.end method

.method public c()V
    .locals 1

    invoke-super {p0}, LY/i;->c()V

    iget-boolean v0, p0, LY/h;->h:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, LY/h;->h:Z

    iget-object v0, p0, LY/h;->g:LB/c;

    invoke-virtual {v0}, LB/c;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, LY/h;->m()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, LY/h;->n()V

    goto :goto_0
.end method
