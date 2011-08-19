.class Lcom/google/android/maps/rideabout/view/i;
.super Ljava/lang/Object;


# instance fields
.field public final a:LB/b;

.field public final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(LB/c;LB/l;F)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, LB/b;

    invoke-direct {v0, p2, p3}, LB/b;-><init>(LB/l;F)V

    iput-object v0, p0, Lcom/google/android/maps/rideabout/view/i;->a:LB/b;

    invoke-virtual {p1, p2}, LB/c;->a(LB/l;)LB/u;

    move-result-object v0

    const/4 v1, 0x0

    cmpl-float v1, p3, v1

    if-nez v1, :cond_0

    const/16 v1, 0x372

    invoke-static {v1}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, LB/u;->ai_()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, LR/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/rideabout/view/i;->b:Ljava/lang/String;

    :goto_0
    return-void

    :cond_0
    const/16 v1, 0x373

    invoke-static {v1}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, LB/u;->ai_()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, LB/u;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, LR/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/rideabout/view/i;->b:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/rideabout/view/i;->b:Ljava/lang/String;

    return-object v0
.end method
