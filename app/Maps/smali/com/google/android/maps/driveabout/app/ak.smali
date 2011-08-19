.class Lcom/google/android/maps/driveabout/app/ak;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/google/android/maps/driveabout/app/be;


# direct methods
.method constructor <init>(Lcom/google/android/maps/driveabout/app/be;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/ak;->a:Lcom/google/android/maps/driveabout/app/be;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/ak;->a:Lcom/google/android/maps/driveabout/app/be;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/ak;->a:Lcom/google/android/maps/driveabout/app/be;

    invoke-static {v1}, Lcom/google/android/maps/driveabout/app/be;->c(Lcom/google/android/maps/driveabout/app/be;)Lcom/google/android/maps/driveabout/app/e;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/app/e;->k()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/app/be;->a(Z)V

    return-void

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
