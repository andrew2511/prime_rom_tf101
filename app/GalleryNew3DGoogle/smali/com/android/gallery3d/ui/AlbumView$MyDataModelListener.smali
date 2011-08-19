.class Lcom/android/gallery3d/ui/AlbumView$MyDataModelListener;
.super Ljava/lang/Object;
.source "AlbumView.java"

# interfaces
.implements Lcom/android/gallery3d/ui/AlbumSlidingWindow$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/ui/AlbumView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyDataModelListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery3d/ui/AlbumView;


# direct methods
.method private constructor <init>(Lcom/android/gallery3d/ui/AlbumView;)V
    .locals 0
    .parameter

    .prologue
    .line 160
    iput-object p1, p0, Lcom/android/gallery3d/ui/AlbumView$MyDataModelListener;->this$0:Lcom/android/gallery3d/ui/AlbumView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/gallery3d/ui/AlbumView;Lcom/android/gallery3d/ui/AlbumView$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 160
    invoke-direct {p0, p1}, Lcom/android/gallery3d/ui/AlbumView$MyDataModelListener;-><init>(Lcom/android/gallery3d/ui/AlbumView;)V

    return-void
.end method


# virtual methods
.method public onContentInvalidated()V
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumView$MyDataModelListener;->this$0:Lcom/android/gallery3d/ui/AlbumView;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/AlbumView;->invalidate()V

    .line 164
    return-void
.end method

.method public onSizeChanged(I)V
    .locals 3
    .parameter "size"

    .prologue
    const/4 v1, 0x0

    .line 168
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumView$MyDataModelListener;->this$0:Lcom/android/gallery3d/ui/AlbumView;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/ui/AlbumView;->setSlotCount(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumView$MyDataModelListener;->this$0:Lcom/android/gallery3d/ui/AlbumView;

    invoke-static {v0, v1, v1}, Lcom/android/gallery3d/ui/AlbumView;->access$100(Lcom/android/gallery3d/ui/AlbumView;II)V

    .line 169
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumView$MyDataModelListener;->this$0:Lcom/android/gallery3d/ui/AlbumView;

    iget-object v1, p0, Lcom/android/gallery3d/ui/AlbumView$MyDataModelListener;->this$0:Lcom/android/gallery3d/ui/AlbumView;

    invoke-virtual {v1}, Lcom/android/gallery3d/ui/AlbumView;->getVisibleStart()I

    move-result v1

    iget-object v2, p0, Lcom/android/gallery3d/ui/AlbumView$MyDataModelListener;->this$0:Lcom/android/gallery3d/ui/AlbumView;

    invoke-virtual {v2}, Lcom/android/gallery3d/ui/AlbumView;->getVisibleEnd()I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/android/gallery3d/ui/AlbumView;->access$100(Lcom/android/gallery3d/ui/AlbumView;II)V

    .line 170
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumView$MyDataModelListener;->this$0:Lcom/android/gallery3d/ui/AlbumView;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/AlbumView;->invalidate()V

    .line 171
    return-void
.end method

.method public onWindowContentChanged(ILcom/android/gallery3d/ui/DisplayItem;Lcom/android/gallery3d/ui/DisplayItem;)V
    .locals 1
    .parameter "slotIndex"
    .parameter "old"
    .parameter "update"

    .prologue
    .line 175
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumView$MyDataModelListener;->this$0:Lcom/android/gallery3d/ui/AlbumView;

    invoke-virtual {v0, p2}, Lcom/android/gallery3d/ui/AlbumView;->removeDisplayItem(Lcom/android/gallery3d/ui/DisplayItem;)V

    .line 176
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumView$MyDataModelListener;->this$0:Lcom/android/gallery3d/ui/AlbumView;

    invoke-static {v0, p1, p3}, Lcom/android/gallery3d/ui/AlbumView;->access$200(Lcom/android/gallery3d/ui/AlbumView;ILcom/android/gallery3d/ui/DisplayItem;)V

    .line 177
    return-void
.end method
