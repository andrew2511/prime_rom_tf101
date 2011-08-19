.class Lcom/google/googlenav/android/y;
.super Ljava/lang/Object;

# interfaces
.implements Lak/c;


# instance fields
.field private a:Landroid/os/Handler;

.field private b:Landroid/os/Handler;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/googlenav/android/f;

    invoke-direct {v0, p0}, Lcom/google/googlenav/android/f;-><init>(Lcom/google/googlenav/android/y;)V

    iput-object v0, p0, Lcom/google/googlenav/android/y;->a:Landroid/os/Handler;

    new-instance v0, Lcom/google/googlenav/android/e;

    invoke-direct {v0, p0}, Lcom/google/googlenav/android/e;-><init>(Lcom/google/googlenav/android/y;)V

    iput-object v0, p0, Lcom/google/googlenav/android/y;->b:Landroid/os/Handler;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/googlenav/android/R;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/googlenav/android/y;-><init>()V

    return-void
.end method


# virtual methods
.method public a(IZLjava/lang/String;)V
    .locals 0

    return-void
.end method

.method public a(Lak/d;)V
    .locals 2

    iget-object v0, p0, Lcom/google/googlenav/android/y;->a:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public b(Lak/d;)V
    .locals 2

    iget-object v0, p0, Lcom/google/googlenav/android/y;->b:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method
