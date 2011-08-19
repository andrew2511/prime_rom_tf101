.class Lcom/google/android/maps/driveabout/app/cg;
.super Lcom/google/android/maps/driveabout/app/bi;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 9

    const/4 v4, 0x0

    const-string v2, "__trafficview"

    const v0, 0x7f0b0037

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v6, 0x7f0200e0

    move-object v0, p0

    move-object v1, p1

    move v5, v4

    move v7, v4

    move v8, v4

    invoke-direct/range {v0 .. v8}, Lcom/google/android/maps/driveabout/app/bi;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZZIZI)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Lcom/google/android/maps/driveabout/app/cn;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/maps/driveabout/app/cg;-><init>(Landroid/content/Context;)V

    return-void
.end method
