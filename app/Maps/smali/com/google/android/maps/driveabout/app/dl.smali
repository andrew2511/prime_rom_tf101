.class Lcom/google/android/maps/driveabout/app/dl;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/google/android/maps/driveabout/app/bo;


# direct methods
.method constructor <init>(Lcom/google/android/maps/driveabout/app/bo;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/dl;->a:Lcom/google/android/maps/driveabout/app/bo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/dl;->a:Lcom/google/android/maps/driveabout/app/bo;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/bo;->f()V

    return-void
.end method
