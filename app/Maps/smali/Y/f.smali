.class public LY/f;
.super Ljava/lang/Object;


# instance fields
.field private a:LY/i;

.field private b:LY/g;

.field private c:Ljava/lang/Thread;

.field private d:LY/d;

.field private e:LB/c;


# direct methods
.method public constructor <init>(LB/c;Ll/w;Lcom/google/android/maps/rideabout/app/f;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, LY/f;->c:Ljava/lang/Thread;

    new-instance v0, LY/d;

    sget-object v1, Lcom/google/android/maps/rideabout/app/o;->h:Lcom/google/android/maps/rideabout/app/o;

    invoke-direct {v0, p1, v1, p0, p3}, LY/d;-><init>(LB/c;Lcom/google/android/maps/rideabout/app/o;LY/f;Lcom/google/android/maps/rideabout/app/f;)V

    iput-object v0, p0, LY/f;->d:LY/d;

    iput-object p1, p0, LY/f;->e:LB/c;

    iget-object v0, p0, LY/f;->d:LY/d;

    invoke-static {p0, p1, p2, v0}, LY/i;->a(LY/f;LB/c;Ll/w;LY/d;)V

    sget-object v0, LY/g;->b:LY/g;

    invoke-virtual {p0, v0}, LY/f;->a(LY/g;)LY/i;

    return-void
.end method


# virtual methods
.method public a(LY/g;)LY/i;
    .locals 2

    invoke-virtual {p0}, LY/f;->a()V

    iget-object v0, p0, LY/f;->b:LY/g;

    if-eq p1, v0, :cond_1

    iget-object v0, p0, LY/f;->a:LY/i;

    if-eqz v0, :cond_0

    iget-object v0, p0, LY/f;->a:LY/i;

    invoke-virtual {v0}, LY/i;->f()V

    :cond_0
    iput-object p1, p0, LY/f;->b:LY/g;

    sget-object v0, LY/b;->a:[I

    invoke-virtual {p1}, LY/g;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Invalid state"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    sget-object v0, LY/h;->a:LY/h;

    iput-object v0, p0, LY/f;->a:LY/i;

    :goto_0
    iget-object v0, p0, LY/f;->a:LY/i;

    invoke-virtual {v0}, LY/i;->c()V

    :cond_1
    iget-object v0, p0, LY/f;->a:LY/i;

    return-object v0

    :pswitch_1
    sget-object v0, LY/a;->a:LY/a;

    iput-object v0, p0, LY/f;->a:LY/i;

    goto :goto_0

    :pswitch_2
    sget-object v0, LY/j;->a:LY/j;

    iput-object v0, p0, LY/f;->a:LY/i;

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public final a()V
    .locals 2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, LY/f;->c:Ljava/lang/Thread;

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Operation must be called on main (UI) thread"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method public a(Ll/c;)Z
    .locals 2

    invoke-virtual {p0}, LY/f;->a()V

    iget-object v0, p0, LY/f;->d:LY/d;

    invoke-virtual {v0}, LY/d;->a()Ll/c;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p1, Ll/c;->d:LB/b;

    if-eqz v0, :cond_1

    iget-object v0, p0, LY/f;->e:LB/c;

    iget-object v1, p1, Ll/c;->d:LB/b;

    invoke-virtual {v0, v1}, LB/c;->a(LB/b;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, LY/f;->d:LY/d;

    invoke-virtual {v0, p1}, LY/d;->a(Ll/c;)V

    iget-object v0, p0, LY/f;->d:LY/d;

    invoke-virtual {v0, p1}, LY/d;->b(Ll/c;)V

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public b()LY/i;
    .locals 1

    invoke-virtual {p0}, LY/f;->a()V

    iget-object v0, p0, LY/f;->a:LY/i;

    return-object v0
.end method

.method public c()LY/d;
    .locals 1

    iget-object v0, p0, LY/f;->d:LY/d;

    return-object v0
.end method
