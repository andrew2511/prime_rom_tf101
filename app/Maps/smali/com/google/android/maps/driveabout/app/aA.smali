.class public Lcom/google/android/maps/driveabout/app/aA;
.super Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/google/android/maps/driveabout/vector/bN;)V
    .locals 3

    invoke-interface {p1}, Lcom/google/android/maps/driveabout/vector/bN;->q()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lcom/google/android/maps/driveabout/vector/bN;->p()LG/Y;

    move-result-object v1

    invoke-virtual {v1}, LG/Y;->i()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lcom/google/android/maps/driveabout/vector/bN;->p()LG/Y;

    move-result-object v2

    invoke-virtual {v2}, LG/Y;->c()LG/Q;

    move-result-object v2

    invoke-static {p0, v0, v1, v2}, Lcom/google/android/maps/driveabout/app/aA;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;LG/Q;)V

    return-void
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;LG/Q;)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/maps/driveabout/app/MarkerDetailsActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "com.google.android.maps.driveabout.LAYER_ID"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.google.android.maps.driveabout.SERVER_ID"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.google.android.maps.driveabout.LAT_E6"

    invoke-virtual {p3}, LG/Q;->a()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "com.google.android.maps.driveabout.LNG_E6"

    invoke-virtual {p3}, LG/Q;->c()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    :try_start_0
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
