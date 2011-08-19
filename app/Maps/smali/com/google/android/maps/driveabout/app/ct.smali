.class Lcom/google/android/maps/driveabout/app/ct;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field final synthetic a:Lcom/google/android/maps/driveabout/app/cz;


# direct methods
.method constructor <init>(Lcom/google/android/maps/driveabout/app/cz;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/ct;->a:Lcom/google/android/maps/driveabout/app/cz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/ct;->a:Lcom/google/android/maps/driveabout/app/cz;

    invoke-static {v0}, Lcom/google/android/maps/driveabout/app/cz;->a(Lcom/google/android/maps/driveabout/app/cz;)Lcom/google/android/maps/driveabout/app/dc;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/maps/driveabout/app/dc;->c()V

    return-void
.end method
