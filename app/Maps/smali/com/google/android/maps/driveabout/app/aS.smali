.class Lcom/google/android/maps/driveabout/app/aS;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field final synthetic a:Lcom/google/android/maps/driveabout/app/bo;


# direct methods
.method constructor <init>(Lcom/google/android/maps/driveabout/app/bo;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/aS;->a:Lcom/google/android/maps/driveabout/app/bo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/aS;->a:Lcom/google/android/maps/driveabout/app/bo;

    invoke-static {v0}, Lcom/google/android/maps/driveabout/app/bo;->a(Lcom/google/android/maps/driveabout/app/bo;)Landroid/widget/CheckBox;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/aS;->a:Lcom/google/android/maps/driveabout/app/bo;

    invoke-static {v0}, Lcom/google/android/maps/driveabout/app/bo;->b(Lcom/google/android/maps/driveabout/app/bo;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "RmiMail"

    iget-object v2, p0, Lcom/google/android/maps/driveabout/app/aS;->a:Lcom/google/android/maps/driveabout/app/bo;

    invoke-static {v2}, Lcom/google/android/maps/driveabout/app/bo;->a(Lcom/google/android/maps/driveabout/app/bo;)Landroid/widget/CheckBox;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    invoke-static {v0, v1, v2}, Lad/a;->a(Landroid/content/Context;Ljava/lang/String;Z)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/aS;->a:Lcom/google/android/maps/driveabout/app/bo;

    invoke-static {v0, v3}, Lcom/google/android/maps/driveabout/app/bo;->a(Lcom/google/android/maps/driveabout/app/bo;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/aS;->a:Lcom/google/android/maps/driveabout/app/bo;

    invoke-static {v0, v3}, Lcom/google/android/maps/driveabout/app/bo;->a(Lcom/google/android/maps/driveabout/app/bo;Lcom/google/android/maps/driveabout/app/RecordingLevelsView;)Lcom/google/android/maps/driveabout/app/RecordingLevelsView;

    return-void
.end method
