.class LaK/g;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/maps/driveabout/vector/e;


# instance fields
.field final synthetic a:LaK/i;


# direct methods
.method constructor <init>(LaK/i;)V
    .locals 0

    iput-object p1, p0, LaK/g;->a:LaK/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/maps/driveabout/vector/bI;Ljava/util/List;)V
    .locals 2

    iget-object v0, p0, LaK/g;->a:LaK/i;

    invoke-static {v0}, LaK/i;->c(LaK/i;)LaU/a;

    move-result-object v0

    new-instance v1, LaK/e;

    invoke-direct {v1, p0, p2}, LaK/e;-><init>(LaK/g;Ljava/util/List;)V

    invoke-interface {v0, v1}, LaU/a;->a(Ljava/lang/Runnable;)V

    return-void
.end method
