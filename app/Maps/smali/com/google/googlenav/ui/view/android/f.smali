.class public abstract Lcom/google/googlenav/ui/view/android/f;
.super Lx/r;


# static fields
.field private static a:Lcom/google/googlenav/ui/android/F;


# instance fields
.field protected final b:Lcom/google/googlenav/android/BaseMapsActivity;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/google/googlenav/ui/view/android/f;->a:Lcom/google/googlenav/ui/android/F;

    return-void
.end method

.method public constructor <init>(Lcom/google/googlenav/android/BaseMapsActivity;)V
    .locals 0

    invoke-direct {p0}, Lx/r;-><init>()V

    iput-object p1, p0, Lcom/google/googlenav/ui/view/android/f;->b:Lcom/google/googlenav/android/BaseMapsActivity;

    return-void
.end method

.method static synthetic a(Lcom/google/googlenav/ui/view/android/f;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/googlenav/ui/view/android/f;->d()V

    return-void
.end method

.method private d()V
    .locals 0

    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/f;->c()Landroid/app/Dialog;

    return-void
.end method


# virtual methods
.method protected abstract c()Landroid/app/Dialog;
.end method

.method public final c(I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/googlenav/ui/view/android/f;->d_(I)Landroid/app/Dialog;

    return-void
.end method

.method protected abstract d_(I)Landroid/app/Dialog;
.end method

.method public final k()V
    .locals 2

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/f;->b:Lcom/google/googlenav/android/BaseMapsActivity;

    invoke-virtual {v0}, Lcom/google/googlenav/android/BaseMapsActivity;->e()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/f;->c()Landroid/app/Dialog;

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/google/googlenav/d;->a()Lcom/google/googlenav/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/d;->U()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lcom/google/googlenav/ui/view/android/f;->d()V

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    new-instance v1, Lcom/google/googlenav/ui/view/android/G;

    invoke-direct {v1, p0}, Lcom/google/googlenav/ui/view/android/G;-><init>(Lcom/google/googlenav/ui/view/android/f;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
