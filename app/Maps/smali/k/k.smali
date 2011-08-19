.class public abstract Lk/k;
.super Ljava/lang/Object;

# interfaces
.implements Lk/q;


# instance fields
.field private a:Lk/a;

.field private b:Lk/j;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a()Lk/j;
    .locals 1

    iget-object v0, p0, Lk/k;->b:Lk/j;

    if-nez v0, :cond_0

    iget-object v0, p0, Lk/k;->a:Lk/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lk/k;->a:Lk/a;

    invoke-interface {v0}, Lk/a;->a()Lk/j;

    move-result-object v0

    iput-object v0, p0, Lk/k;->b:Lk/j;

    :cond_0
    iget-object v0, p0, Lk/k;->b:Lk/j;

    return-object v0
.end method


# virtual methods
.method protected a(Lk/f;)Lk/f;
    .locals 2

    invoke-direct {p0}, Lk/k;->a()Lk/j;

    move-result-object v0

    if-nez v0, :cond_0

    move-object v0, p1

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lk/d;

    invoke-direct {p0}, Lk/k;->a()Lk/j;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lk/d;-><init>(Lk/f;Lk/j;)V

    goto :goto_0
.end method

.method public a(Lk/a;)V
    .locals 0

    iput-object p1, p0, Lk/k;->a:Lk/a;

    return-void
.end method
