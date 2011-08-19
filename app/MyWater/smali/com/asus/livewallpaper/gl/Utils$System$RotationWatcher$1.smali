.class Lcom/asus/livewallpaper/gl/Utils$System$RotationWatcher$1;
.super Landroid/view/IRotationWatcher$Stub;
.source "Utils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/asus/livewallpaper/gl/Utils$System$RotationWatcher;->enable(Lcom/asus/livewallpaper/gl/Utils$System$RotationWatcher$ILocalRotationWatcher;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/asus/livewallpaper/gl/Utils$System$RotationWatcher;


# direct methods
.method constructor <init>(Lcom/asus/livewallpaper/gl/Utils$System$RotationWatcher;)V
    .locals 0
    .parameter

    .prologue
    .line 73
    iput-object p1, p0, Lcom/asus/livewallpaper/gl/Utils$System$RotationWatcher$1;->this$0:Lcom/asus/livewallpaper/gl/Utils$System$RotationWatcher;

    invoke-direct {p0}, Landroid/view/IRotationWatcher$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onRotationChanged(I)V
    .locals 3
    .parameter "rotation"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 77
    iget-object v2, p0, Lcom/asus/livewallpaper/gl/Utils$System$RotationWatcher$1;->this$0:Lcom/asus/livewallpaper/gl/Utils$System$RotationWatcher;

    invoke-static {v2}, Lcom/asus/livewallpaper/gl/Utils$System$RotationWatcher;->access$000(Lcom/asus/livewallpaper/gl/Utils$System$RotationWatcher;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/asus/livewallpaper/gl/Utils$System$RotationWatcher$ILocalRotationWatcher;

    .line 78
    .local v1, w:Lcom/asus/livewallpaper/gl/Utils$System$RotationWatcher$ILocalRotationWatcher;
    invoke-interface {v1, p1}, Lcom/asus/livewallpaper/gl/Utils$System$RotationWatcher$ILocalRotationWatcher;->onRotationChanged(I)V

    goto :goto_0

    .line 80
    .end local v1           #w:Lcom/asus/livewallpaper/gl/Utils$System$RotationWatcher$ILocalRotationWatcher;
    :cond_0
    return-void
.end method
