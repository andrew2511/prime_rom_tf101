.class LaR/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/googlenav/android/M;


# instance fields
.field final synthetic a:LaR/e;

.field final synthetic b:LaR/b;


# direct methods
.method constructor <init>(LaR/b;LaR/e;)V
    .locals 0

    iput-object p1, p0, LaR/a;->b:LaR/b;

    iput-object p2, p0, LaR/a;->a:LaR/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(IILandroid/content/Intent;)V
    .locals 1

    iget-object v0, p0, LaR/a;->a:LaR/e;

    if-eqz v0, :cond_0

    iget-object v0, p0, LaR/a;->a:LaR/e;

    invoke-interface {v0}, LaR/e;->a()V

    :cond_0
    return-void
.end method

.method public ay_()I
    .locals 1

    const v0, 0x1772f

    return v0
.end method
