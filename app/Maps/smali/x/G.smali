.class public Lx/G;
.super Ljava/lang/Object;


# instance fields
.field public final l:Lcom/google/googlenav/ui/bx;

.field public final m:Lcom/google/googlenav/ui/bx;

.field public final n:Lcom/google/googlenav/ui/bx;

.field public final o:Z


# direct methods
.method public constructor <init>(Lcom/google/googlenav/ui/bx;Lcom/google/googlenav/ui/bx;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1, p2, v0, v1}, Lx/G;-><init>(Lcom/google/googlenav/ui/bx;Lcom/google/googlenav/ui/bx;Lcom/google/googlenav/ui/bx;Z)V

    return-void
.end method

.method public constructor <init>(Lcom/google/googlenav/ui/bx;Lcom/google/googlenav/ui/bx;Lcom/google/googlenav/ui/bx;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lx/G;->l:Lcom/google/googlenav/ui/bx;

    iput-object p2, p0, Lx/G;->m:Lcom/google/googlenav/ui/bx;

    iput-object p3, p0, Lx/G;->n:Lcom/google/googlenav/ui/bx;

    iput-boolean p4, p0, Lx/G;->o:Z

    return-void
.end method
