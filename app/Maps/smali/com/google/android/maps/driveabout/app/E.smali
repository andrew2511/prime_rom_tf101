.class Lcom/google/android/maps/driveabout/app/E;
.super Ljava/lang/Object;

# interfaces
.implements Lak/c;


# instance fields
.field final synthetic a:Lcom/google/android/maps/driveabout/app/cC;


# direct methods
.method private constructor <init>(Lcom/google/android/maps/driveabout/app/cC;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/E;->a:Lcom/google/android/maps/driveabout/app/cC;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/maps/driveabout/app/cC;Lcom/google/android/maps/driveabout/app/bd;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/maps/driveabout/app/E;-><init>(Lcom/google/android/maps/driveabout/app/cC;)V

    return-void
.end method


# virtual methods
.method public a(IZLjava/lang/String;)V
    .locals 0

    return-void
.end method

.method public a(Lak/d;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/E;->a:Lcom/google/android/maps/driveabout/app/cC;

    invoke-static {v0}, Lcom/google/android/maps/driveabout/app/cC;->a(Lcom/google/android/maps/driveabout/app/cC;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/google/android/maps/driveabout/app/eI;

    invoke-direct {v1, p0, p1}, Lcom/google/android/maps/driveabout/app/eI;-><init>(Lcom/google/android/maps/driveabout/app/E;Lak/d;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public b(Lak/d;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/E;->a:Lcom/google/android/maps/driveabout/app/cC;

    invoke-static {v0}, Lcom/google/android/maps/driveabout/app/cC;->a(Lcom/google/android/maps/driveabout/app/cC;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/google/android/maps/driveabout/app/eJ;

    invoke-direct {v1, p0, p1}, Lcom/google/android/maps/driveabout/app/eJ;-><init>(Lcom/google/android/maps/driveabout/app/E;Lak/d;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
