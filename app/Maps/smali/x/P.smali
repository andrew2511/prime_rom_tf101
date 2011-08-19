.class public Lx/P;
.super Lx/z;


# instance fields
.field public final a:Lcom/google/googlenav/aN;

.field public final b:Lcom/google/googlenav/aN;

.field public final c:Lcom/google/googlenav/ui/bx;

.field public final d:Lcom/google/googlenav/ui/bx;

.field public final e:Z


# direct methods
.method public constructor <init>(Lcom/google/googlenav/aN;Lcom/google/googlenav/aN;Lcom/google/googlenav/ui/bx;Lcom/google/googlenav/ui/bx;Z)V
    .locals 3

    const/4 v2, 0x0

    const/16 v0, 0xe

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, v2, v2}, Lx/z;-><init>(IILjava/lang/String;[Lax/e;)V

    iput-object p1, p0, Lx/P;->a:Lcom/google/googlenav/aN;

    iput-object p2, p0, Lx/P;->b:Lcom/google/googlenav/aN;

    iput-object p3, p0, Lx/P;->c:Lcom/google/googlenav/ui/bx;

    iput-object p4, p0, Lx/P;->d:Lcom/google/googlenav/ui/bx;

    iput-boolean p5, p0, Lx/P;->e:Z

    return-void
.end method
