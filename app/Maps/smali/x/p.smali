.class public Lx/p;
.super Lx/z;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lx/p;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    const/4 v1, 0x0

    const/16 v0, 0xb

    invoke-direct {p0, v0, p1, v1, v1}, Lx/z;-><init>(IILjava/lang/String;[Lax/e;)V

    return-void
.end method
