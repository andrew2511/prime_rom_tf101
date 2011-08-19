.class Lcom/android/gallery3d/ui/PhotoView$1;
.super Lcom/android/gallery3d/ui/SynchronizedHandler;
.source "PhotoView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery3d/ui/PhotoView;-><init>(Lcom/android/gallery3d/app/GalleryActivity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery3d/ui/PhotoView;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/ui/PhotoView;Lcom/android/gallery3d/ui/GLRoot;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 122
    iput-object p1, p0, Lcom/android/gallery3d/ui/PhotoView$1;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    invoke-direct {p0, p2}, Lcom/android/gallery3d/ui/SynchronizedHandler;-><init>(Lcom/android/gallery3d/ui/GLRoot;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "message"

    .prologue
    .line 125
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 141
    new-instance v0, Ljava/lang/AssertionError;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(I)V

    throw v0

    .line 127
    :pswitch_0
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView$1;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    invoke-static {v0}, Lcom/android/gallery3d/ui/PhotoView;->access$000(Lcom/android/gallery3d/ui/PhotoView;)V

    .line 143
    :cond_0
    :goto_0
    return-void

    .line 131
    :pswitch_1
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView$1;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    invoke-static {v0}, Lcom/android/gallery3d/ui/PhotoView;->access$100(Lcom/android/gallery3d/ui/PhotoView;)I

    move-result v0

    if-nez v0, :cond_0

    .line 133
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView$1;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/gallery3d/ui/PhotoView;->access$202(Lcom/android/gallery3d/ui/PhotoView;Lcom/android/gallery3d/data/Path;)Lcom/android/gallery3d/data/Path;

    .line 135
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView$1;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    invoke-static {v0}, Lcom/android/gallery3d/ui/PhotoView;->access$300(Lcom/android/gallery3d/ui/PhotoView;)Lcom/android/gallery3d/ui/ProgressSpinner;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/ProgressSpinner;->startAnimation()V

    .line 136
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView$1;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/gallery3d/ui/PhotoView;->access$102(Lcom/android/gallery3d/ui/PhotoView;I)I

    .line 137
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView$1;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/PhotoView;->invalidate()V

    goto :goto_0

    .line 125
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
