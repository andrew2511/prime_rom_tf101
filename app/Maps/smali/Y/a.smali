.class public LY/a;
.super LY/i;


# static fields
.field public static final a:LY/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, LY/a;

    invoke-direct {v0}, LY/a;-><init>()V

    sput-object v0, LY/a;->a:LY/a;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, LY/i;-><init>()V

    return-void
.end method


# virtual methods
.method protected a()V
    .locals 3

    invoke-virtual {p0}, LY/a;->j()Lcom/google/android/maps/rideabout/view/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/maps/rideabout/view/b;->e()V

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, LY/a;->a(Z)V

    iget-object v1, p0, LY/a;->c:LY/d;

    invoke-virtual {v1}, LY/d;->a()Ll/c;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v2, p0, LY/a;->c:LY/d;

    invoke-virtual {v2, v1}, LY/d;->c(Ll/c;)V

    :cond_0
    iget-object v1, p0, LY/a;->c:LY/d;

    invoke-virtual {v1}, LY/d;->c()LB/b;

    move-result-object v1

    if-nez v1, :cond_1

    invoke-interface {v0}, Lcom/google/android/maps/rideabout/view/b;->a()V

    :cond_1
    return-void
.end method

.method public a(Ll/c;)V
    .locals 1

    invoke-virtual {p0}, LY/a;->k()Lcom/google/android/maps/rideabout/view/f;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/maps/rideabout/view/f;->c()V

    return-void
.end method

.method public a(Z)V
    .locals 1

    invoke-virtual {p0}, LY/a;->l()Lcom/google/android/maps/rideabout/view/k;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/maps/rideabout/view/k;->a()V

    sget-object v0, Ll/z;->c:Ll/z;

    iget-object v0, p0, LY/a;->c:LY/d;

    invoke-virtual {v0}, LY/d;->a()Ll/c;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, v0, Ll/c;->g:Ll/z;

    :cond_0
    invoke-virtual {p0}, LY/a;->k()Lcom/google/android/maps/rideabout/view/f;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/maps/rideabout/view/f;->c()V

    return-void
.end method

.method public b(Ll/c;)V
    .locals 2

    iget-object v0, p0, LY/a;->b:LY/f;

    sget-object v1, LY/g;->a:LY/g;

    invoke-virtual {v0, v1}, LY/f;->a(LY/g;)LY/i;

    move-result-object v0

    invoke-virtual {v0, p1}, LY/i;->b(Ll/c;)V

    return-void
.end method

.method public c(Ll/c;)V
    .locals 2

    iget-object v0, p0, LY/a;->b:LY/f;

    sget-object v1, LY/g;->b:LY/g;

    invoke-virtual {v0, v1}, LY/f;->a(LY/g;)LY/i;

    return-void
.end method
