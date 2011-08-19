.class Lcom/google/android/maps/driveabout/app/av;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/android/maps/driveabout/app/ek;


# direct methods
.method constructor <init>(Lcom/google/android/maps/driveabout/app/ek;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/av;->a:Lcom/google/android/maps/driveabout/app/ek;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/av;->a:Lcom/google/android/maps/driveabout/app/ek;

    iget-object v0, v0, Lcom/google/android/maps/driveabout/app/ek;->b:Lcom/google/android/maps/driveabout/app/NavigationView;

    invoke-static {v0}, Lcom/google/android/maps/driveabout/app/NavigationView;->e(Lcom/google/android/maps/driveabout/app/NavigationView;)Landroid/location/Location;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/av;->a:Lcom/google/android/maps/driveabout/app/ek;

    iget-object v1, v1, Lcom/google/android/maps/driveabout/app/ek;->a:Landroid/location/Location;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/av;->a:Lcom/google/android/maps/driveabout/app/ek;

    iget-object v0, v0, Lcom/google/android/maps/driveabout/app/ek;->b:Lcom/google/android/maps/driveabout/app/NavigationView;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/av;->a:Lcom/google/android/maps/driveabout/app/ek;

    iget-object v1, v1, Lcom/google/android/maps/driveabout/app/ek;->b:Lcom/google/android/maps/driveabout/app/NavigationView;

    invoke-static {v1}, Lcom/google/android/maps/driveabout/app/NavigationView;->e(Lcom/google/android/maps/driveabout/app/NavigationView;)Landroid/location/Location;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/app/NavigationView;->a(Landroid/location/Location;)V

    :cond_0
    return-void
.end method
