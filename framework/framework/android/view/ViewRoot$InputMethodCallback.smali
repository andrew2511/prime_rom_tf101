.class Landroid/view/ViewRoot$InputMethodCallback;
.super Lcom/android/internal/view/IInputMethodCallback$Stub;
.source "ViewRoot.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/ViewRoot;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "InputMethodCallback"
.end annotation


# instance fields
.field private mViewRoot:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/ViewRoot;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/view/ViewRoot;)V
    .registers 3
    .parameter "viewRoot"

    .prologue
    .line 3546
    invoke-direct {p0}, Lcom/android/internal/view/IInputMethodCallback$Stub;-><init>()V

    .line 3547
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/view/ViewRoot$InputMethodCallback;->mViewRoot:Ljava/lang/ref/WeakReference;

    .line 3548
    return-void
.end method


# virtual methods
.method public finishedEvent(IZ)V
    .registers 5
    .parameter "seq"
    .parameter "handled"

    .prologue
    .line 3551
    iget-object v1, p0, Landroid/view/ViewRoot$InputMethodCallback;->mViewRoot:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewRoot;

    .line 3552
    .local v0, viewRoot:Landroid/view/ViewRoot;
    if-eqz v0, :cond_d

    .line 3553
    invoke-virtual {v0, p1, p2}, Landroid/view/ViewRoot;->dispatchFinishedEvent(IZ)V

    .line 3555
    :cond_d
    return-void
.end method

.method public sessionCreated(Lcom/android/internal/view/IInputMethodSession;)V
    .registers 2
    .parameter "session"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3559
    return-void
.end method
