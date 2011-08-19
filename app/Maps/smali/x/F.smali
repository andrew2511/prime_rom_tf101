.class public Lx/F;
.super Ljava/lang/Object;


# instance fields
.field public final a:[Lcom/google/googlenav/ui/aI;

.field public final b:[Lx/b;


# direct methods
.method public constructor <init>(Lcom/google/googlenav/ui/aI;)V
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/google/googlenav/ui/aI;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lx/F;-><init>([Lcom/google/googlenav/ui/aI;[Lx/b;)V

    return-void
.end method

.method public constructor <init>(Lx/b;)V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    new-array v1, v1, [Lx/b;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-direct {p0, v0, v1}, Lx/F;-><init>([Lcom/google/googlenav/ui/aI;[Lx/b;)V

    return-void
.end method

.method public constructor <init>([Lcom/google/googlenav/ui/aI;[Lx/b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lx/F;->a:[Lcom/google/googlenav/ui/aI;

    iput-object p2, p0, Lx/F;->b:[Lx/b;

    return-void
.end method
