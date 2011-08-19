.class public LaB/g;
.super Lk/k;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lk/k;-><init>()V

    return-void
.end method


# virtual methods
.method public a(IZZIZZ)Lk/f;
    .locals 7

    new-instance v0, LaB/b;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v6}, LaB/b;-><init>(IZZIZZ)V

    invoke-virtual {p0, v0}, LaB/g;->a(Lk/f;)Lk/f;

    move-result-object v0

    return-object v0
.end method
