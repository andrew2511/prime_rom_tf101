.class Lcom/google/googlenav/ui/view/android/bm;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/googlenav/android/M;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/view/android/aN;

.field private final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/googlenav/ui/view/android/aN;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/googlenav/ui/view/android/bm;->a:Lcom/google/googlenav/ui/view/android/aN;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/googlenav/ui/view/android/bm;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a(IILandroid/content/Intent;)V
    .locals 7

    const/4 v6, 0x0

    const/4 v5, -0x1

    if-ne p2, v5, :cond_1

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bm;->a:Lcom/google/googlenav/ui/view/android/aN;

    iget-object v0, v0, Lcom/google/googlenav/ui/view/android/aN;->b:Lcom/google/googlenav/ui/view/android/e;

    const/16 v1, 0xb

    new-instance v2, Lh/fP;

    const-string v3, "image/jpeg"

    iget-object v4, p0, Lcom/google/googlenav/ui/view/android/bm;->b:Ljava/lang/String;

    invoke-direct {v2, v6, v3, v4}, Lh/fP;-><init>([BLjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v5, v2}, Lcom/google/googlenav/ui/view/android/e;->a(IILjava/lang/Object;)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bm;->a:Lcom/google/googlenav/ui/view/android/aN;

    iget-object v0, v0, Lcom/google/googlenav/ui/view/android/aN;->b:Lcom/google/googlenav/ui/view/android/e;

    const/16 v1, 0xc

    invoke-virtual {v0, v1, v5, v6}, Lcom/google/googlenav/ui/view/android/e;->a(IILjava/lang/Object;)Z

    goto :goto_0
.end method

.method public ay_()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method
