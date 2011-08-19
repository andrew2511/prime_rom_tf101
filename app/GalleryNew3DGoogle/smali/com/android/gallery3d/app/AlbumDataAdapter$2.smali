.class Lcom/android/gallery3d/app/AlbumDataAdapter$2;
.super Lcom/android/gallery3d/ui/SynchronizedHandler;
.source "AlbumDataAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery3d/app/AlbumDataAdapter;-><init>(Lcom/android/gallery3d/app/GalleryActivity;Lcom/android/gallery3d/data/MediaSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery3d/app/AlbumDataAdapter;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/app/AlbumDataAdapter;Lcom/android/gallery3d/ui/GLRoot;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 87
    iput-object p1, p0, Lcom/android/gallery3d/app/AlbumDataAdapter$2;->this$0:Lcom/android/gallery3d/app/AlbumDataAdapter;

    invoke-direct {p0, p2}, Lcom/android/gallery3d/ui/SynchronizedHandler;-><init>(Lcom/android/gallery3d/ui/GLRoot;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "message"

    .prologue
    const/4 v1, 0x1

    .line 90
    iget v0, p1, Landroid/os/Message;->what:I

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/android/gallery3d/util/Utils;->Assert(Z)V

    .line 91
    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local p0
    check-cast p0, Lcom/android/gallery3d/app/AlbumDataAdapter$ReloadTask;

    invoke-virtual {p0}, Lcom/android/gallery3d/app/AlbumDataAdapter$ReloadTask;->updateContent()V

    .line 92
    return-void

    .line 90
    .restart local p0
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
