.class Lcom/google/android/maps/driveabout/vector/ax;
.super Ljava/lang/Object;

# interfaces
.implements Lt/u;


# instance fields
.field final synthetic a:Lcom/google/android/maps/driveabout/vector/cB;


# direct methods
.method constructor <init>(Lcom/google/android/maps/driveabout/vector/cB;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/maps/driveabout/vector/ax;->a:Lcom/google/android/maps/driveabout/vector/cB;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lt/y;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/ax;->a:Lcom/google/android/maps/driveabout/vector/cB;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/cB;->c()V

    return-void
.end method

.method public a(Lt/y;LG/w;)V
    .locals 4

    const/4 v3, 0x0

    invoke-interface {p1, p2, v3}, Lt/y;->a(LG/w;Z)LG/u;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/ax;->a:Lcom/google/android/maps/driveabout/vector/cB;

    invoke-interface {v0}, LG/u;->a()LG/w;

    move-result-object v2

    invoke-static {v1, v2, v3, v0}, Lcom/google/android/maps/driveabout/vector/cB;->a(Lcom/google/android/maps/driveabout/vector/cB;LG/w;ILG/u;)V

    :cond_0
    return-void
.end method
