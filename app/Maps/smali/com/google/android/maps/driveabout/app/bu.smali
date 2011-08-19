.class Lcom/google/android/maps/driveabout/app/bu;
.super Ljava/lang/Object;

# interfaces
.implements Lm/U;


# instance fields
.field final synthetic a:Lcom/google/android/maps/driveabout/app/U;


# direct methods
.method private constructor <init>(Lcom/google/android/maps/driveabout/app/U;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/bu;->a:Lcom/google/android/maps/driveabout/app/U;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/maps/driveabout/app/U;Lcom/google/android/maps/driveabout/app/dV;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/maps/driveabout/app/bu;-><init>(Lcom/google/android/maps/driveabout/app/U;)V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bu;->a:Lcom/google/android/maps/driveabout/app/U;

    invoke-static {v0}, Lcom/google/android/maps/driveabout/app/U;->a(Lcom/google/android/maps/driveabout/app/U;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/google/android/maps/driveabout/app/ba;

    invoke-direct {v1, p0, p1}, Lcom/google/android/maps/driveabout/app/ba;-><init>(Lcom/google/android/maps/driveabout/app/bu;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
