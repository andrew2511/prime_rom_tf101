.class Lcom/android/gallery3d/app/PhotoDataAdapter$ScreenNailListener;
.super Ljava/lang/Object;
.source "PhotoDataAdapter.java"

# interfaces
.implements Lcom/android/gallery3d/util/FutureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/app/PhotoDataAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScreenNailListener"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/gallery3d/util/FutureListener",
        "<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field private final mIndex:I

.field final synthetic this$0:Lcom/android/gallery3d/app/PhotoDataAdapter;


# direct methods
.method public constructor <init>(Lcom/android/gallery3d/app/PhotoDataAdapter;I)V
    .locals 0
    .parameter
    .parameter "index"

    .prologue
    .line 573
    iput-object p1, p0, Lcom/android/gallery3d/app/PhotoDataAdapter$ScreenNailListener;->this$0:Lcom/android/gallery3d/app/PhotoDataAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 574
    iput p2, p0, Lcom/android/gallery3d/app/PhotoDataAdapter$ScreenNailListener;->mIndex:I

    .line 575
    return-void
.end method


# virtual methods
.method public onFutureDone(Lcom/android/gallery3d/util/Future;)V
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/gallery3d/util/Future",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 578
    .local p1, future:Lcom/android/gallery3d/util/Future;,"Lcom/android/gallery3d/util/Future<Landroid/graphics/Bitmap;>;"
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoDataAdapter$ScreenNailListener;->this$0:Lcom/android/gallery3d/app/PhotoDataAdapter;

    invoke-static {v0}, Lcom/android/gallery3d/app/PhotoDataAdapter;->access$400(Lcom/android/gallery3d/app/PhotoDataAdapter;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoDataAdapter$ScreenNailListener;->this$0:Lcom/android/gallery3d/app/PhotoDataAdapter;

    invoke-static {v1}, Lcom/android/gallery3d/app/PhotoDataAdapter;->access$400(Lcom/android/gallery3d/app/PhotoDataAdapter;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x1

    iget v3, p0, Lcom/android/gallery3d/app/PhotoDataAdapter$ScreenNailListener;->mIndex:I

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 580
    return-void
.end method
