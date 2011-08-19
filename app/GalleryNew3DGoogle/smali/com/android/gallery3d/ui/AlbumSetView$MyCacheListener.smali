.class Lcom/android/gallery3d/ui/AlbumSetView$MyCacheListener;
.super Ljava/lang/Object;
.source "AlbumSetView.java"

# interfaces
.implements Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/ui/AlbumSetView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyCacheListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery3d/ui/AlbumSetView;


# direct methods
.method private constructor <init>(Lcom/android/gallery3d/ui/AlbumSetView;)V
    .locals 0
    .parameter

    .prologue
    .line 201
    iput-object p1, p0, Lcom/android/gallery3d/ui/AlbumSetView$MyCacheListener;->this$0:Lcom/android/gallery3d/ui/AlbumSetView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/gallery3d/ui/AlbumSetView;Lcom/android/gallery3d/ui/AlbumSetView$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 201
    invoke-direct {p0, p1}, Lcom/android/gallery3d/ui/AlbumSetView$MyCacheListener;-><init>(Lcom/android/gallery3d/ui/AlbumSetView;)V

    return-void
.end method


# virtual methods
.method public onContentInvalidated()V
    .locals 1

    .prologue
    .line 217
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumSetView$MyCacheListener;->this$0:Lcom/android/gallery3d/ui/AlbumSetView;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/AlbumSetView;->invalidate()V

    .line 218
    return-void
.end method

.method public onSizeChanged(I)V
    .locals 3
    .parameter "size"

    .prologue
    const/4 v1, 0x0

    .line 205
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumSetView$MyCacheListener;->this$0:Lcom/android/gallery3d/ui/AlbumSetView;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/ui/AlbumSetView;->setSlotCount(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumSetView$MyCacheListener;->this$0:Lcom/android/gallery3d/ui/AlbumSetView;

    invoke-static {v0, v1, v1}, Lcom/android/gallery3d/ui/AlbumSetView;->access$100(Lcom/android/gallery3d/ui/AlbumSetView;II)V

    .line 206
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumSetView$MyCacheListener;->this$0:Lcom/android/gallery3d/ui/AlbumSetView;

    iget-object v1, p0, Lcom/android/gallery3d/ui/AlbumSetView$MyCacheListener;->this$0:Lcom/android/gallery3d/ui/AlbumSetView;

    invoke-virtual {v1}, Lcom/android/gallery3d/ui/AlbumSetView;->getVisibleStart()I

    move-result v1

    iget-object v2, p0, Lcom/android/gallery3d/ui/AlbumSetView$MyCacheListener;->this$0:Lcom/android/gallery3d/ui/AlbumSetView;

    invoke-virtual {v2}, Lcom/android/gallery3d/ui/AlbumSetView;->getVisibleEnd()I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/android/gallery3d/ui/AlbumSetView;->access$100(Lcom/android/gallery3d/ui/AlbumSetView;II)V

    .line 207
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumSetView$MyCacheListener;->this$0:Lcom/android/gallery3d/ui/AlbumSetView;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/AlbumSetView;->invalidate()V

    .line 208
    return-void
.end method

.method public onWindowContentChanged(ILcom/android/gallery3d/ui/AlbumSetView$AlbumSetItem;Lcom/android/gallery3d/ui/AlbumSetView$AlbumSetItem;)V
    .locals 1
    .parameter "slot"
    .parameter "old"
    .parameter "update"

    .prologue
    .line 211
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumSetView$MyCacheListener;->this$0:Lcom/android/gallery3d/ui/AlbumSetView;

    invoke-static {v0, p1, p2}, Lcom/android/gallery3d/ui/AlbumSetView;->access$200(Lcom/android/gallery3d/ui/AlbumSetView;ILcom/android/gallery3d/ui/AlbumSetView$AlbumSetItem;)V

    .line 212
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumSetView$MyCacheListener;->this$0:Lcom/android/gallery3d/ui/AlbumSetView;

    invoke-static {v0, p1, p3}, Lcom/android/gallery3d/ui/AlbumSetView;->access$300(Lcom/android/gallery3d/ui/AlbumSetView;ILcom/android/gallery3d/ui/AlbumSetView$AlbumSetItem;)V

    .line 213
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumSetView$MyCacheListener;->this$0:Lcom/android/gallery3d/ui/AlbumSetView;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/AlbumSetView;->invalidate()V

    .line 214
    return-void
.end method
