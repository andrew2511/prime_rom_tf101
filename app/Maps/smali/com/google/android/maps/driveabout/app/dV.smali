.class Lcom/google/android/maps/driveabout/app/dV;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/android/maps/driveabout/app/be;

.field final synthetic b:Lcom/google/android/maps/driveabout/app/U;


# direct methods
.method constructor <init>(Lcom/google/android/maps/driveabout/app/U;Lcom/google/android/maps/driveabout/app/be;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/dV;->b:Lcom/google/android/maps/driveabout/app/U;

    iput-object p2, p0, Lcom/google/android/maps/driveabout/app/dV;->a:Lcom/google/android/maps/driveabout/app/be;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/dV;->a:Lcom/google/android/maps/driveabout/app/be;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/be;->r()V

    return-void
.end method
