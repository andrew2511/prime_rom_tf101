.class Lcom/google/android/maps/driveabout/app/cM;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/maps/driveabout/power/g;


# instance fields
.field final synthetic a:Lcom/google/android/maps/driveabout/app/NavigationActivity;

.field final synthetic b:Lcom/google/android/maps/driveabout/app/NavigationService;


# direct methods
.method constructor <init>(Lcom/google/android/maps/driveabout/app/NavigationService;Lcom/google/android/maps/driveabout/app/NavigationActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/cM;->b:Lcom/google/android/maps/driveabout/app/NavigationService;

    iput-object p2, p0, Lcom/google/android/maps/driveabout/app/cM;->a:Lcom/google/android/maps/driveabout/app/NavigationActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Runnable;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/cM;->a:Lcom/google/android/maps/driveabout/app/NavigationActivity;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/app/NavigationActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(Ljava/lang/Runnable;J)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/cM;->a:Lcom/google/android/maps/driveabout/app/NavigationActivity;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/maps/driveabout/app/NavigationActivity;->a(Ljava/lang/Runnable;J)V

    return-void
.end method

.method public b(Ljava/lang/Runnable;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/cM;->a:Lcom/google/android/maps/driveabout/app/NavigationActivity;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/app/NavigationActivity;->a(Ljava/lang/Runnable;)V

    return-void
.end method
