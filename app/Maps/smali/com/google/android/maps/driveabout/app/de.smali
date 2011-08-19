.class Lcom/google/android/maps/driveabout/app/de;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field final synthetic a:Lcom/google/android/maps/driveabout/app/bo;


# direct methods
.method constructor <init>(Lcom/google/android/maps/driveabout/app/bo;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/de;->a:Lcom/google/android/maps/driveabout/app/bo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/de;->a:Lcom/google/android/maps/driveabout/app/bo;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/maps/driveabout/app/bo;->a(Lcom/google/android/maps/driveabout/app/bo;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    return-void
.end method
