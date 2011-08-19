.class Lcom/google/android/maps/driveabout/app/dd;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field final synthetic a:Lcom/google/android/maps/driveabout/app/bf;

.field final synthetic b:Lcom/google/android/maps/driveabout/app/bo;


# direct methods
.method constructor <init>(Lcom/google/android/maps/driveabout/app/bo;Lcom/google/android/maps/driveabout/app/bf;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/dd;->b:Lcom/google/android/maps/driveabout/app/bo;

    iput-object p2, p0, Lcom/google/android/maps/driveabout/app/dd;->a:Lcom/google/android/maps/driveabout/app/bf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/dd;->b:Lcom/google/android/maps/driveabout/app/bo;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/bo;->d()V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/dd;->a:Lcom/google/android/maps/driveabout/app/bf;

    invoke-interface {v0}, Lcom/google/android/maps/driveabout/app/bf;->a()V

    return-void
.end method
