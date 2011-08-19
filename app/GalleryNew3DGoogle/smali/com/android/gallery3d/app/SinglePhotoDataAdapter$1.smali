.class Lcom/android/gallery3d/app/SinglePhotoDataAdapter$1;
.super Lcom/android/gallery3d/ui/SynchronizedHandler;
.source "SinglePhotoDataAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery3d/app/SinglePhotoDataAdapter;-><init>(Lcom/android/gallery3d/app/GalleryActivity;Lcom/android/gallery3d/ui/PhotoView;Lcom/android/gallery3d/data/MediaItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery3d/app/SinglePhotoDataAdapter;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/app/SinglePhotoDataAdapter;Lcom/android/gallery3d/ui/GLRoot;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 61
    iput-object p1, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter$1;->this$0:Lcom/android/gallery3d/app/SinglePhotoDataAdapter;

    invoke-direct {p0, p2}, Lcom/android/gallery3d/ui/SynchronizedHandler;-><init>(Lcom/android/gallery3d/ui/GLRoot;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "message"

    .prologue
    const/4 v1, 0x1

    .line 65
    iget v0, p1, Landroid/os/Message;->what:I

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/android/gallery3d/util/Utils;->Assert(Z)V

    .line 66
    iget-object v0, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter$1;->this$0:Lcom/android/gallery3d/app/SinglePhotoDataAdapter;

    invoke-static {v0}, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->access$000(Lcom/android/gallery3d/app/SinglePhotoDataAdapter;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 67
    iget-object v0, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter$1;->this$0:Lcom/android/gallery3d/app/SinglePhotoDataAdapter;

    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local p0
    check-cast p0, Lcom/android/gallery3d/util/Future;

    invoke-static {v0, p0}, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->access$100(Lcom/android/gallery3d/app/SinglePhotoDataAdapter;Lcom/android/gallery3d/util/Future;)V

    .line 72
    :goto_1
    return-void

    .line 65
    .restart local p0
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 70
    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter$1;->this$0:Lcom/android/gallery3d/app/SinglePhotoDataAdapter;

    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local p0
    check-cast p0, Lcom/android/gallery3d/util/Future;

    invoke-static {v0, p0}, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->access$200(Lcom/android/gallery3d/app/SinglePhotoDataAdapter;Lcom/android/gallery3d/util/Future;)V

    goto :goto_1
.end method
