.class Lcom/google/googlenav/android/e;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/google/googlenav/android/y;


# direct methods
.method constructor <init>(Lcom/google/googlenav/android/y;)V
    .locals 0

    iput-object p1, p0, Lcom/google/googlenav/android/e;->a:Lcom/google/googlenav/android/y;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 0

    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Lak/d;

    invoke-interface {p0}, Lak/d;->n_()V

    return-void
.end method
