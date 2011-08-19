.class public Lx/L;
.super Lx/B;


# instance fields
.field public final a:I


# direct methods
.method public constructor <init>(ILjava/lang/String;I)V
    .locals 7

    const/4 v3, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    invoke-direct/range {v0 .. v6}, Lx/B;-><init>(ILjava/lang/String;Lx/G;Ljava/util/Vector;Lx/n;[Lax/e;)V

    iput p3, p0, Lx/L;->a:I

    return-void
.end method
