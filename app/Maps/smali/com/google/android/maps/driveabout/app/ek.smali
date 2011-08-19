.class Lcom/google/android/maps/driveabout/app/ek;
.super Ljava/lang/Object;

# interfaces
.implements Lt/ae;


# instance fields
.field final synthetic a:Landroid/location/Location;

.field final synthetic b:Lcom/google/android/maps/driveabout/app/NavigationView;


# direct methods
.method constructor <init>(Lcom/google/android/maps/driveabout/app/NavigationView;Landroid/location/Location;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/ek;->b:Lcom/google/android/maps/driveabout/app/NavigationView;

    iput-object p2, p0, Lcom/google/android/maps/driveabout/app/ek;->a:Landroid/location/Location;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lt/aB;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/ek;->b:Lcom/google/android/maps/driveabout/app/NavigationView;

    new-instance v1, Lcom/google/android/maps/driveabout/app/av;

    invoke-direct {v1, p0}, Lcom/google/android/maps/driveabout/app/av;-><init>(Lcom/google/android/maps/driveabout/app/ek;)V

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/app/NavigationView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
