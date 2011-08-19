.class Lcom/google/android/maps/driveabout/app/ci;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/google/android/maps/driveabout/app/RmiPreference;


# direct methods
.method constructor <init>(Lcom/google/android/maps/driveabout/app/RmiPreference;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/ci;->a:Lcom/google/android/maps/driveabout/app/RmiPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    const-string v0, "1"

    invoke-static {v0}, Lcom/google/android/maps/driveabout/app/aN;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/ci;->a:Lcom/google/android/maps/driveabout/app/RmiPreference;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/app/RmiPreference;->setChecked(Z)V

    return-void
.end method
