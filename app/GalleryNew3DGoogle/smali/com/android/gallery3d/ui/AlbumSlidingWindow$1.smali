.class Lcom/android/gallery3d/ui/AlbumSlidingWindow$1;
.super Lcom/android/gallery3d/ui/SynchronizedHandler;
.source "AlbumSlidingWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery3d/ui/AlbumSlidingWindow;-><init>(Lcom/android/gallery3d/app/GalleryActivity;Lcom/android/gallery3d/ui/AlbumView$Model;IIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery3d/ui/AlbumSlidingWindow;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/ui/AlbumSlidingWindow;Lcom/android/gallery3d/ui/GLRoot;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 89
    iput-object p1, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow$1;->this$0:Lcom/android/gallery3d/ui/AlbumSlidingWindow;

    invoke-direct {p0, p2}, Lcom/android/gallery3d/ui/SynchronizedHandler;-><init>(Lcom/android/gallery3d/ui/GLRoot;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "message"

    .prologue
    .line 92
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 103
    .end local p0
    :goto_0
    return-void

    .line 94
    .restart local p0
    :pswitch_0
    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local p0
    check-cast p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumDisplayItem;

    invoke-static {p0}, Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumDisplayItem;->access$000(Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumDisplayItem;)V

    goto :goto_0

    .line 98
    .restart local p0
    :pswitch_1
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow$1;->this$0:Lcom/android/gallery3d/ui/AlbumSlidingWindow;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1}, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->access$100(Lcom/android/gallery3d/ui/AlbumSlidingWindow;I)V

    goto :goto_0

    .line 92
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
