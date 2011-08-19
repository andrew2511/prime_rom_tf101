.class Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$1;
.super Lcom/android/gallery3d/ui/SynchronizedHandler;
.source "AlbumSetSlidingWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;-><init>(Lcom/android/gallery3d/app/GalleryActivity;IIILcom/android/gallery3d/ui/SelectionDrawer;Lcom/android/gallery3d/ui/AlbumSetView$Model;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;Lcom/android/gallery3d/ui/GLRoot;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 94
    iput-object p1, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$1;->this$0:Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;

    invoke-direct {p0, p2}, Lcom/android/gallery3d/ui/SynchronizedHandler;-><init>(Lcom/android/gallery3d/ui/GLRoot;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "message"

    .prologue
    .line 97
    iget v0, p1, Landroid/os/Message;->what:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/android/gallery3d/util/Utils;->Assert(Z)V

    .line 98
    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local p0
    check-cast p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$GalleryDisplayItem;

    invoke-static {p0}, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$GalleryDisplayItem;->access$000(Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$GalleryDisplayItem;)V

    .line 99
    return-void

    .line 97
    .restart local p0
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
