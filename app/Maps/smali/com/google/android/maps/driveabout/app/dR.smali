.class Lcom/google/android/maps/driveabout/app/dR;
.super Ljava/lang/Object;

# interfaces
.implements LF/A;


# instance fields
.field final synthetic a:Lcom/google/android/maps/driveabout/app/DestinationActivity;


# direct methods
.method constructor <init>(Lcom/google/android/maps/driveabout/app/DestinationActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/dR;->a:Lcom/google/android/maps/driveabout/app/DestinationActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/dR;->a:Lcom/google/android/maps/driveabout/app/DestinationActivity;

    new-instance v1, Lcom/google/android/maps/driveabout/app/dI;

    invoke-direct {v1, p0}, Lcom/google/android/maps/driveabout/app/dI;-><init>(Lcom/google/android/maps/driveabout/app/dR;)V

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/app/DestinationActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
