.class Lcom/google/android/maps/driveabout/power/f;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/android/maps/driveabout/power/i;


# direct methods
.method constructor <init>(Lcom/google/android/maps/driveabout/power/i;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/maps/driveabout/power/f;->a:Lcom/google/android/maps/driveabout/power/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/power/f;->a:Lcom/google/android/maps/driveabout/power/i;

    invoke-static {v0}, Lcom/google/android/maps/driveabout/power/i;->a(Lcom/google/android/maps/driveabout/power/i;)Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const/high16 v1, -0x4080

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    iget-object v1, p0, Lcom/google/android/maps/driveabout/power/f;->a:Lcom/google/android/maps/driveabout/power/i;

    invoke-static {v1}, Lcom/google/android/maps/driveabout/power/i;->a(Lcom/google/android/maps/driveabout/power/i;)Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method
