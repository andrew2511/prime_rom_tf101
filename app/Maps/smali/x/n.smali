.class public Lx/n;
.super Ljava/lang/Object;


# instance fields
.field public final a:I

.field public final b:[Lcom/google/googlenav/ui/bx;


# direct methods
.method public constructor <init>(Lcom/google/googlenav/ui/bx;Lcom/google/googlenav/ui/bx;Lcom/google/googlenav/ui/bx;Lcom/google/googlenav/ui/bx;)V
    .locals 3

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/google/googlenav/ui/bx;

    iput-object v0, p0, Lx/n;->b:[Lcom/google/googlenav/ui/bx;

    iget-object v0, p0, Lx/n;->b:[Lcom/google/googlenav/ui/bx;

    aput-object p1, v0, v1

    if-eqz p1, :cond_3

    add-int/lit8 v0, v1, 0x1

    :goto_0
    iget-object v1, p0, Lx/n;->b:[Lcom/google/googlenav/ui/bx;

    const/4 v2, 0x1

    aput-object p2, v1, v2

    if-eqz p2, :cond_0

    add-int/lit8 v0, v0, 0x1

    :cond_0
    iget-object v1, p0, Lx/n;->b:[Lcom/google/googlenav/ui/bx;

    const/4 v2, 0x2

    aput-object p3, v1, v2

    if-eqz p3, :cond_1

    add-int/lit8 v0, v0, 0x1

    :cond_1
    iget-object v1, p0, Lx/n;->b:[Lcom/google/googlenav/ui/bx;

    const/4 v2, 0x3

    aput-object p4, v1, v2

    if-eqz p4, :cond_2

    add-int/lit8 v0, v0, 0x1

    :cond_2
    iput v0, p0, Lx/n;->a:I

    return-void

    :cond_3
    move v0, v1

    goto :goto_0
.end method
