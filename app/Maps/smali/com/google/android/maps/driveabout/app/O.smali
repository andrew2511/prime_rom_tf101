.class Lcom/google/android/maps/driveabout/app/O;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/google/android/maps/driveabout/app/be;


# direct methods
.method constructor <init>(Lcom/google/android/maps/driveabout/app/be;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/O;->a:Lcom/google/android/maps/driveabout/app/be;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/O;->a:Lcom/google/android/maps/driveabout/app/be;

    invoke-static {v0}, Lcom/google/android/maps/driveabout/app/be;->b(Lcom/google/android/maps/driveabout/app/be;)Lcom/google/android/maps/driveabout/app/NavigationActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/NavigationActivity;->finish()V

    return-void
.end method
