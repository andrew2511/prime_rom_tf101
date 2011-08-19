.class Lcom/android/gallery3d/ui/DetailsWindow$MyDataModel$1;
.super Ljava/lang/Object;
.source "DetailsWindow.java"

# interfaces
.implements Lcom/android/gallery3d/util/FutureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery3d/ui/DetailsWindow$MyDataModel;->getLocationText([D)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/gallery3d/util/FutureListener",
        "<",
        "Landroid/location/Address;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/gallery3d/ui/DetailsWindow$MyDataModel;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/ui/DetailsWindow$MyDataModel;)V
    .locals 0
    .parameter

    .prologue
    .line 321
    iput-object p1, p0, Lcom/android/gallery3d/ui/DetailsWindow$MyDataModel$1;->this$1:Lcom/android/gallery3d/ui/DetailsWindow$MyDataModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFutureDone(Lcom/android/gallery3d/util/Future;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/gallery3d/util/Future",
            "<",
            "Landroid/location/Address;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 323
    .local p1, future:Lcom/android/gallery3d/util/Future;,"Lcom/android/gallery3d/util/Future<Landroid/location/Address;>;"
    iget-object v0, p0, Lcom/android/gallery3d/ui/DetailsWindow$MyDataModel$1;->this$1:Lcom/android/gallery3d/ui/DetailsWindow$MyDataModel;

    iget-object v0, v0, Lcom/android/gallery3d/ui/DetailsWindow$MyDataModel;->this$0:Lcom/android/gallery3d/ui/DetailsWindow;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/gallery3d/ui/DetailsWindow;->access$902(Lcom/android/gallery3d/ui/DetailsWindow;Lcom/android/gallery3d/util/Future;)Lcom/android/gallery3d/util/Future;

    .line 324
    invoke-interface {p1}, Lcom/android/gallery3d/util/Future;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 325
    iget-object v0, p0, Lcom/android/gallery3d/ui/DetailsWindow$MyDataModel$1;->this$1:Lcom/android/gallery3d/ui/DetailsWindow$MyDataModel;

    iget-object v0, v0, Lcom/android/gallery3d/ui/DetailsWindow$MyDataModel;->this$0:Lcom/android/gallery3d/ui/DetailsWindow;

    invoke-static {v0}, Lcom/android/gallery3d/ui/DetailsWindow;->access$1000(Lcom/android/gallery3d/ui/DetailsWindow;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/gallery3d/ui/DetailsWindow$MyDataModel$1;->this$1:Lcom/android/gallery3d/ui/DetailsWindow$MyDataModel;

    iget-object v1, v1, Lcom/android/gallery3d/ui/DetailsWindow$MyDataModel;->this$0:Lcom/android/gallery3d/ui/DetailsWindow;

    invoke-static {v1}, Lcom/android/gallery3d/ui/DetailsWindow;->access$1000(Lcom/android/gallery3d/ui/DetailsWindow;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {p1}, Lcom/android/gallery3d/util/Future;->get()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 328
    :cond_0
    return-void
.end method
