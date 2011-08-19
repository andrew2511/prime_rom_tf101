.class Lcom/google/android/maps/driveabout/app/cY;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/maps/driveabout/app/ee;


# instance fields
.field final synthetic a:Lcom/google/android/maps/driveabout/app/DestinationActivity;


# direct methods
.method private constructor <init>(Lcom/google/android/maps/driveabout/app/DestinationActivity;)V
    .locals 3

    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/cY;->a:Lcom/google/android/maps/driveabout/app/DestinationActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/maps/driveabout/app/bN;

    invoke-static {}, Lcom/google/android/maps/driveabout/app/DestinationActivity;->b()[Lcom/google/android/maps/driveabout/app/eH;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/google/android/maps/driveabout/app/bN;-><init>(Landroid/content/Context;[Lcom/google/android/maps/driveabout/app/eH;)V

    new-instance v1, Lcom/google/android/maps/driveabout/app/eB;

    invoke-direct {v1, p0, p1}, Lcom/google/android/maps/driveabout/app/eB;-><init>(Lcom/google/android/maps/driveabout/app/cY;Lcom/google/android/maps/driveabout/app/DestinationActivity;)V

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/app/DestinationActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Landroid/app/ActionBar;->setListNavigationCallbacks(Landroid/widget/SpinnerAdapter;Landroid/app/ActionBar$OnNavigationListener;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/maps/driveabout/app/DestinationActivity;Lcom/google/android/maps/driveabout/app/dO;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/maps/driveabout/app/cY;-><init>(Lcom/google/android/maps/driveabout/app/DestinationActivity;)V

    return-void
.end method


# virtual methods
.method public a(IZ)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/cY;->a:Lcom/google/android/maps/driveabout/app/DestinationActivity;

    if-nez p1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-static {v0, v1}, Lcom/google/android/maps/driveabout/app/DestinationActivity;->a(Lcom/google/android/maps/driveabout/app/DestinationActivity;Z)Z

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/cY;->a:Lcom/google/android/maps/driveabout/app/DestinationActivity;

    invoke-static {v0, p2}, Lcom/google/android/maps/driveabout/app/DestinationActivity;->b(Lcom/google/android/maps/driveabout/app/DestinationActivity;Z)Z

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/cY;->a:Lcom/google/android/maps/driveabout/app/DestinationActivity;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/DestinationActivity;->invalidateOptionsMenu()V

    return-void

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public a(Z)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/cY;->a:Lcom/google/android/maps/driveabout/app/DestinationActivity;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/DestinationActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setNavigationMode(I)V

    return-void

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public b(Z)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/cY;->a:Lcom/google/android/maps/driveabout/app/DestinationActivity;

    invoke-static {v0, p1}, Lcom/google/android/maps/driveabout/app/DestinationActivity;->c(Lcom/google/android/maps/driveabout/app/DestinationActivity;Z)Z

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/cY;->a:Lcom/google/android/maps/driveabout/app/DestinationActivity;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/DestinationActivity;->invalidateOptionsMenu()V

    return-void
.end method
