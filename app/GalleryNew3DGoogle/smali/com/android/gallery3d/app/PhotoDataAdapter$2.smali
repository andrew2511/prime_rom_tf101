.class Lcom/android/gallery3d/app/PhotoDataAdapter$2;
.super Lcom/android/gallery3d/ui/SynchronizedHandler;
.source "PhotoDataAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery3d/app/PhotoDataAdapter;-><init>(Lcom/android/gallery3d/app/GalleryActivity;Lcom/android/gallery3d/ui/PhotoView;Lcom/android/gallery3d/data/MediaSet;Lcom/android/gallery3d/data/Path;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery3d/app/PhotoDataAdapter;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/app/PhotoDataAdapter;Lcom/android/gallery3d/ui/GLRoot;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 181
    iput-object p1, p0, Lcom/android/gallery3d/app/PhotoDataAdapter$2;->this$0:Lcom/android/gallery3d/app/PhotoDataAdapter;

    invoke-direct {p0, p2}, Lcom/android/gallery3d/ui/SynchronizedHandler;-><init>(Lcom/android/gallery3d/ui/GLRoot;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "message"

    .prologue
    .line 185
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 200
    :pswitch_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 187
    :pswitch_1
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoDataAdapter$2;->this$0:Lcom/android/gallery3d/app/PhotoDataAdapter;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local p0
    check-cast p0, Lcom/android/gallery3d/util/Future;

    invoke-static {v0, v1, p0}, Lcom/android/gallery3d/app/PhotoDataAdapter;->access$200(Lcom/android/gallery3d/app/PhotoDataAdapter;ILcom/android/gallery3d/util/Future;)V

    .line 202
    :goto_0
    return-void

    .line 192
    .restart local p0
    :pswitch_2
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoDataAdapter$2;->this$0:Lcom/android/gallery3d/app/PhotoDataAdapter;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local p0
    check-cast p0, Lcom/android/gallery3d/util/Future;

    invoke-static {v0, v1, p0}, Lcom/android/gallery3d/app/PhotoDataAdapter;->access$300(Lcom/android/gallery3d/app/PhotoDataAdapter;ILcom/android/gallery3d/util/Future;)V

    goto :goto_0

    .line 197
    .restart local p0
    :pswitch_3
    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local p0
    check-cast p0, Lcom/android/gallery3d/app/PhotoDataAdapter$ReloadTask;

    invoke-virtual {p0}, Lcom/android/gallery3d/app/PhotoDataAdapter$ReloadTask;->updateContent()V

    goto :goto_0

    .line 185
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method
