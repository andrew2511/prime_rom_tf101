.class public Lm/r;
.super Lm/p;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lm/p;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 0

    return-void
.end method

.method public a(Lm/I;)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-interface {p1, p0}, Lm/I;->a(Lm/p;)V

    :cond_0
    return-void
.end method

.method public a()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
