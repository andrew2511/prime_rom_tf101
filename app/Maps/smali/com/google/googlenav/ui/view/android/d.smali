.class Lcom/google/googlenav/ui/view/android/d;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/googlenav/android/M;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/view/android/T;


# direct methods
.method private constructor <init>(Lcom/google/googlenav/ui/view/android/T;)V
    .locals 0

    iput-object p1, p0, Lcom/google/googlenav/ui/view/android/d;->a:Lcom/google/googlenav/ui/view/android/T;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/googlenav/ui/view/android/T;Lcom/google/googlenav/ui/view/android/C;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/view/android/d;-><init>(Lcom/google/googlenav/ui/view/android/T;)V

    return-void
.end method


# virtual methods
.method public a(IILandroid/content/Intent;)V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.camera.action.CROP"

    invoke-direct {v0, v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v1, "image/*"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/d;->a:Lcom/google/googlenav/ui/view/android/T;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/view/android/T;->n()Lx/L;

    move-result-object v1

    iget v1, v1, Lx/L;->a:I

    const-string v2, "outputX"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "outputY"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "aspectX"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "aspectY"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    if-nez p3, :cond_2

    invoke-static {}, Lcom/google/googlenav/ui/view/android/T;->o()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    const-string v2, "data"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/d;->a:Lcom/google/googlenav/ui/view/android/T;

    invoke-static {v1}, Lcom/google/googlenav/ui/view/android/T;->a(Lcom/google/googlenav/ui/view/android/T;)Lcom/google/googlenav/android/ad;

    move-result-object v1

    new-instance v2, Lcom/google/googlenav/ui/view/android/bh;

    iget-object v3, p0, Lcom/google/googlenav/ui/view/android/d;->a:Lcom/google/googlenav/ui/view/android/T;

    invoke-direct {v2, v3, v4}, Lcom/google/googlenav/ui/view/android/bh;-><init>(Lcom/google/googlenav/ui/view/android/T;Lcom/google/googlenav/ui/view/android/C;)V

    invoke-virtual {v1, v0, v2}, Lcom/google/googlenav/android/ad;->a(Landroid/content/Intent;Lcom/google/googlenav/android/M;)V

    :cond_1
    return-void

    :cond_2
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, "data"

    const-string v3, "data"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto :goto_0
.end method

.method public ay_()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
