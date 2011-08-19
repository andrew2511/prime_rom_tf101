.class final Lbq;
.super Ljava/lang/Object;

# interfaces
.implements Lae;


# instance fields
.field private final a:Z


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lbq;->a:Z

    return-void
.end method


# virtual methods
.method public final a(Laf;)Z
    .locals 1

    iget-boolean v0, p0, Lbq;->a:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Laf;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(Ljava/lang/Class;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    return v0
.end method
