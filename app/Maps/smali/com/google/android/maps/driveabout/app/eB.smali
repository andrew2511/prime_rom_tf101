.class Lcom/google/android/maps/driveabout/app/eB;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/app/ActionBar$OnNavigationListener;


# instance fields
.field final synthetic a:Lcom/google/android/maps/driveabout/app/DestinationActivity;

.field final synthetic b:Lcom/google/android/maps/driveabout/app/cY;


# direct methods
.method constructor <init>(Lcom/google/android/maps/driveabout/app/cY;Lcom/google/android/maps/driveabout/app/DestinationActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/eB;->b:Lcom/google/android/maps/driveabout/app/cY;

    iput-object p2, p0, Lcom/google/android/maps/driveabout/app/eB;->a:Lcom/google/android/maps/driveabout/app/DestinationActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNavigationItemSelected(IJ)Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/eB;->b:Lcom/google/android/maps/driveabout/app/cY;

    iget-object v0, v0, Lcom/google/android/maps/driveabout/app/cY;->a:Lcom/google/android/maps/driveabout/app/DestinationActivity;

    invoke-static {}, Lcom/google/android/maps/driveabout/app/DestinationActivity;->b()[Lcom/google/android/maps/driveabout/app/eH;

    move-result-object v1

    aget-object v1, v1, p1

    invoke-static {v0, v1}, Lcom/google/android/maps/driveabout/app/DestinationActivity;->a(Lcom/google/android/maps/driveabout/app/DestinationActivity;Lcom/google/android/maps/driveabout/app/eH;)V

    const/4 v0, 0x1

    return v0
.end method
