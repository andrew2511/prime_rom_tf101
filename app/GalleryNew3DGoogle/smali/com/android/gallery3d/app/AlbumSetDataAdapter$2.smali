.class Lcom/android/gallery3d/app/AlbumSetDataAdapter$2;
.super Landroid/os/Handler;
.source "AlbumSetDataAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery3d/app/AlbumSetDataAdapter;-><init>(Lcom/android/gallery3d/app/GalleryActivity;Lcom/android/gallery3d/data/MediaSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery3d/app/AlbumSetDataAdapter;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/app/AlbumSetDataAdapter;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 83
    iput-object p1, p0, Lcom/android/gallery3d/app/AlbumSetDataAdapter$2;->this$0:Lcom/android/gallery3d/app/AlbumSetDataAdapter;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "message"

    .prologue
    .line 86
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/android/gallery3d/util/Utils;->Assert(Z)V

    .line 87
    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local p0
    check-cast p0, Lcom/android/gallery3d/app/AlbumSetDataAdapter$ReloadTask;

    invoke-virtual {p0}, Lcom/android/gallery3d/app/AlbumSetDataAdapter$ReloadTask;->loadFromDatabase()V

    .line 88
    return-void

    .line 86
    .restart local p0
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
