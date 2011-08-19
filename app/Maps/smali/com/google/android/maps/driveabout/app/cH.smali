.class Lcom/google/android/maps/driveabout/app/cH;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/android/maps/driveabout/app/NavigationActivity;


# direct methods
.method constructor <init>(Lcom/google/android/maps/driveabout/app/NavigationActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/cH;->a:Lcom/google/android/maps/driveabout/app/NavigationActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/cH;->a:Lcom/google/android/maps/driveabout/app/NavigationActivity;

    invoke-static {v0}, Lcom/google/android/maps/driveabout/app/NavigationActivity;->j(Lcom/google/android/maps/driveabout/app/NavigationActivity;)Lcom/google/android/maps/driveabout/app/bo;

    move-result-object v0

    const v1, 0x7f0b0003

    const v2, 0x7f0b0004

    const v3, 0x7f0b0044

    const/4 v4, 0x0

    new-instance v5, Lcom/google/android/maps/driveabout/app/bg;

    invoke-direct {v5, p0}, Lcom/google/android/maps/driveabout/app/bg;-><init>(Lcom/google/android/maps/driveabout/app/cH;)V

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/maps/driveabout/app/bo;->a(IIIZLandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnCancelListener;)V

    return-void
.end method
