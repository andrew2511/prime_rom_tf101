.class Lcom/android/gallery3d/app/CropImage$3;
.super Ljava/lang/Object;
.source "CropImage.java"

# interfaces
.implements Lcom/android/gallery3d/util/FutureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery3d/app/CropImage;->onSaveClicked()V
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
        "Landroid/content/Intent;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery3d/app/CropImage;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/app/CropImage;)V
    .locals 0
    .parameter

    .prologue
    .line 466
    iput-object p1, p0, Lcom/android/gallery3d/app/CropImage$3;->this$0:Lcom/android/gallery3d/app/CropImage;

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
            "Landroid/content/Intent;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 468
    .local p1, future:Lcom/android/gallery3d/util/Future;,"Lcom/android/gallery3d/util/Future<Landroid/content/Intent;>;"
    iget-object v0, p0, Lcom/android/gallery3d/app/CropImage$3;->this$0:Lcom/android/gallery3d/app/CropImage;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/gallery3d/app/CropImage;->access$702(Lcom/android/gallery3d/app/CropImage;Lcom/android/gallery3d/util/Future;)Lcom/android/gallery3d/util/Future;

    .line 469
    invoke-interface {p1}, Lcom/android/gallery3d/util/Future;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 472
    :goto_0
    return-void

    .line 470
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/app/CropImage$3;->this$0:Lcom/android/gallery3d/app/CropImage;

    invoke-static {v0}, Lcom/android/gallery3d/app/CropImage;->access$800(Lcom/android/gallery3d/app/CropImage;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/gallery3d/app/CropImage$3;->this$0:Lcom/android/gallery3d/app/CropImage;

    invoke-static {v1}, Lcom/android/gallery3d/app/CropImage;->access$800(Lcom/android/gallery3d/app/CropImage;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x3

    invoke-interface {p1}, Lcom/android/gallery3d/util/Future;->get()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method
