.class LY/e;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/android/maps/rideabout/view/b;

.field final synthetic b:LY/i;


# direct methods
.method constructor <init>(LY/i;Lcom/google/android/maps/rideabout/view/b;)V
    .locals 0

    iput-object p1, p0, LY/e;->b:LY/i;

    iput-object p2, p0, LY/e;->a:Lcom/google/android/maps/rideabout/view/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, LY/e;->a:Lcom/google/android/maps/rideabout/view/b;

    iget-object v1, p0, LY/e;->b:LY/i;

    iget-object v1, v1, LY/i;->d:LY/c;

    invoke-virtual {v1}, LY/c;->b()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/google/android/maps/rideabout/view/b;->b(I)V

    return-void
.end method
