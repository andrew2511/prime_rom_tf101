.class Lcom/google/android/maps/driveabout/app/aD;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field final synthetic a:Lcom/google/android/maps/driveabout/app/bL;


# direct methods
.method constructor <init>(Lcom/google/android/maps/driveabout/app/bL;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/aD;->a:Lcom/google/android/maps/driveabout/app/bL;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/aD;->a:Lcom/google/android/maps/driveabout/app/bL;

    invoke-static {v0, v1}, Lcom/google/android/maps/driveabout/app/bL;->a(Lcom/google/android/maps/driveabout/app/bL;Z)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/aD;->a:Lcom/google/android/maps/driveabout/app/bL;

    invoke-static {v0}, Lcom/google/android/maps/driveabout/app/bL;->a(Lcom/google/android/maps/driveabout/app/bL;)Lcom/google/android/maps/driveabout/app/eK;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/maps/driveabout/app/eK;->b()V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/aD;->a:Lcom/google/android/maps/driveabout/app/bL;

    invoke-static {v0}, Lcom/google/android/maps/driveabout/app/bL;->b(Lcom/google/android/maps/driveabout/app/bL;)Lcom/google/android/maps/driveabout/app/dK;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/aD;->a:Lcom/google/android/maps/driveabout/app/bL;

    invoke-static {v0}, Lcom/google/android/maps/driveabout/app/bL;->b(Lcom/google/android/maps/driveabout/app/bL;)Lcom/google/android/maps/driveabout/app/dK;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/google/android/maps/driveabout/app/dK;->a(Z)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/aD;->a:Lcom/google/android/maps/driveabout/app/bL;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/maps/driveabout/app/bL;->a(Lcom/google/android/maps/driveabout/app/bL;Lcom/google/android/maps/driveabout/app/dK;)Lcom/google/android/maps/driveabout/app/dK;

    :cond_0
    return-void
.end method
