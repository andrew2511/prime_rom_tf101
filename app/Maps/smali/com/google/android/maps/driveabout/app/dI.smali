.class Lcom/google/android/maps/driveabout/app/dI;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/android/maps/driveabout/app/dR;


# direct methods
.method constructor <init>(Lcom/google/android/maps/driveabout/app/dR;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/dI;->a:Lcom/google/android/maps/driveabout/app/dR;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/dI;->a:Lcom/google/android/maps/driveabout/app/dR;

    iget-object v0, v0, Lcom/google/android/maps/driveabout/app/dR;->a:Lcom/google/android/maps/driveabout/app/DestinationActivity;

    invoke-static {v0}, Lcom/google/android/maps/driveabout/app/DestinationActivity;->f(Lcom/google/android/maps/driveabout/app/DestinationActivity;)V

    return-void
.end method