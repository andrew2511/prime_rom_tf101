.class Lcom/google/android/maps/driveabout/app/en;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/maps/driveabout/app/bI;


# instance fields
.field final synthetic a:Landroid/content/Intent;

.field final synthetic b:Lcom/google/android/maps/driveabout/app/NavigationActivity;


# direct methods
.method constructor <init>(Lcom/google/android/maps/driveabout/app/NavigationActivity;Landroid/content/Intent;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/en;->b:Lcom/google/android/maps/driveabout/app/NavigationActivity;

    iput-object p2, p0, Lcom/google/android/maps/driveabout/app/en;->a:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/en;->b:Lcom/google/android/maps/driveabout/app/NavigationActivity;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/en;->a:Landroid/content/Intent;

    invoke-static {v0, v1}, Lcom/google/android/maps/driveabout/app/NavigationActivity;->a(Lcom/google/android/maps/driveabout/app/NavigationActivity;Landroid/content/Intent;)V

    return-void
.end method
