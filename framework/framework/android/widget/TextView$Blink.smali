.class Landroid/widget/TextView$Blink;
.super Landroid/os/Handler;
.source "TextView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/TextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Blink"
.end annotation


# instance fields
.field private mCancelled:Z

.field private final mView:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/widget/TextView;)V
    .registers 3
    .parameter "v"

    .prologue
    .line 7473
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 7474
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/widget/TextView$Blink;->mView:Ljava/lang/ref/WeakReference;

    .line 7475
    return-void
.end method


# virtual methods
.method cancel()V
    .registers 2

    .prologue
    .line 7496
    iget-boolean v0, p0, Landroid/widget/TextView$Blink;->mCancelled:Z

    if-nez v0, :cond_a

    .line 7497
    invoke-virtual {p0, p0}, Landroid/widget/TextView$Blink;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 7498
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/TextView$Blink;->mCancelled:Z

    .line 7500
    :cond_a
    return-void
.end method

.method public run()V
    .registers 6

    .prologue
    .line 7478
    iget-boolean v1, p0, Landroid/widget/TextView$Blink;->mCancelled:Z

    if-eqz v1, :cond_5

    .line 7493
    :cond_4
    :goto_4
    return-void

    .line 7482
    :cond_5
    invoke-virtual {p0, p0}, Landroid/widget/TextView$Blink;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 7484
    iget-object v1, p0, Landroid/widget/TextView$Blink;->mView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 7486
    .local v0, tv:Landroid/widget/TextView;
    if-eqz v0, :cond_4

    #calls: Landroid/widget/TextView;->shouldBlink()Z
    invoke-static {v0}, Landroid/widget/TextView;->access$1500(Landroid/widget/TextView;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 7487
    iget-object v1, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v1, :cond_1f

    .line 7488
    #calls: Landroid/widget/TextView;->invalidateCursorPath()V
    invoke-static {v0}, Landroid/widget/TextView;->access$1600(Landroid/widget/TextView;)V

    .line 7491
    :cond_1f
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x1f4

    add-long/2addr v1, v3

    invoke-virtual {p0, p0, v1, v2}, Landroid/widget/TextView$Blink;->postAtTime(Ljava/lang/Runnable;J)Z

    goto :goto_4
.end method

.method uncancel()V
    .registers 2

    .prologue
    .line 7503
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/TextView$Blink;->mCancelled:Z

    .line 7504
    return-void
.end method
