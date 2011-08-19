.class Lcom/android/gallery3d/app/AlbumSetPage$1;
.super Lcom/android/gallery3d/ui/GLView;
.source "AlbumSetPage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/app/AlbumSetPage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mMatrix:[F

.field final synthetic this$0:Lcom/android/gallery3d/app/AlbumSetPage;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/app/AlbumSetPage;)V
    .locals 1
    .parameter

    .prologue
    .line 89
    iput-object p1, p0, Lcom/android/gallery3d/app/AlbumSetPage$1;->this$0:Lcom/android/gallery3d/app/AlbumSetPage;

    invoke-direct {p0}, Lcom/android/gallery3d/ui/GLView;-><init>()V

    .line 90
    const/16 v0, 0x10

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage$1;->mMatrix:[F

    return-void
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .locals 10
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    const/4 v9, 0x0

    .line 95
    iget-object v6, p0, Lcom/android/gallery3d/app/AlbumSetPage$1;->this$0:Lcom/android/gallery3d/app/AlbumSetPage;

    invoke-static {v6}, Lcom/android/gallery3d/app/AlbumSetPage;->access$000(Lcom/android/gallery3d/app/AlbumSetPage;)Lcom/android/gallery3d/ui/StaticBackground;

    move-result-object v6

    sub-int v7, p4, p2

    sub-int v8, p5, p3

    invoke-virtual {v6, v9, v9, v7, v8}, Lcom/android/gallery3d/ui/StaticBackground;->layout(IIII)V

    .line 96
    iget-object v6, p0, Lcom/android/gallery3d/app/AlbumSetPage$1;->this$0:Lcom/android/gallery3d/app/AlbumSetPage;

    invoke-static {v6}, Lcom/android/gallery3d/app/AlbumSetPage;->access$100(Lcom/android/gallery3d/app/AlbumSetPage;)Lcom/android/gallery3d/app/EyePosition;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/gallery3d/app/EyePosition;->resetPosition()V

    .line 98
    iget-object v6, p0, Lcom/android/gallery3d/app/AlbumSetPage$1;->this$0:Lcom/android/gallery3d/app/AlbumSetPage;

    iget-object v6, v6, Lcom/android/gallery3d/app/AlbumSetPage;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v6}, Lcom/android/gallery3d/app/GalleryActivity;->getActionBarView()Landroid/view/View;

    move-result-object v0

    .line 99
    .local v0, actionBar:Landroid/view/View;
    if-nez v0, :cond_0

    move v4, v9

    .line 100
    .local v4, slotViewTop:I
    :goto_0
    sub-int v2, p5, p3

    .line 101
    .local v2, slotViewBottom:I
    sub-int v3, p4, p2

    .line 103
    .local v3, slotViewRight:I
    iget-object v6, p0, Lcom/android/gallery3d/app/AlbumSetPage$1;->this$0:Lcom/android/gallery3d/app/AlbumSetPage;

    invoke-static {v6}, Lcom/android/gallery3d/app/AlbumSetPage;->access$200(Lcom/android/gallery3d/app/AlbumSetPage;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 104
    iget-object v6, p0, Lcom/android/gallery3d/app/AlbumSetPage$1;->this$0:Lcom/android/gallery3d/app/AlbumSetPage;

    invoke-static {v6}, Lcom/android/gallery3d/app/AlbumSetPage;->access$300(Lcom/android/gallery3d/app/AlbumSetPage;)Lcom/android/gallery3d/ui/DetailsWindow;

    move-result-object v6

    invoke-virtual {v6, v9, v9}, Lcom/android/gallery3d/ui/DetailsWindow;->measure(II)V

    .line 106
    iget-object v6, p0, Lcom/android/gallery3d/app/AlbumSetPage$1;->this$0:Lcom/android/gallery3d/app/AlbumSetPage;

    invoke-static {v6}, Lcom/android/gallery3d/app/AlbumSetPage;->access$300(Lcom/android/gallery3d/app/AlbumSetPage;)Lcom/android/gallery3d/ui/DetailsWindow;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/gallery3d/ui/DetailsWindow;->getMeasuredWidth()I

    move-result v5

    .line 107
    .local v5, width:I
    sub-int v6, p4, p2

    sub-int v1, v6, v5

    .line 108
    .local v1, detailLeft:I
    move v3, v1

    .line 109
    iget-object v6, p0, Lcom/android/gallery3d/app/AlbumSetPage$1;->this$0:Lcom/android/gallery3d/app/AlbumSetPage;

    invoke-static {v6}, Lcom/android/gallery3d/app/AlbumSetPage;->access$300(Lcom/android/gallery3d/app/AlbumSetPage;)Lcom/android/gallery3d/ui/DetailsWindow;

    move-result-object v6

    add-int v7, v1, v5

    sub-int v8, p5, p3

    invoke-virtual {v6, v1, v4, v7, v8}, Lcom/android/gallery3d/ui/DetailsWindow;->layout(IIII)V

    .line 115
    .end local v1           #detailLeft:I
    .end local v5           #width:I
    :goto_1
    iget-object v6, p0, Lcom/android/gallery3d/app/AlbumSetPage$1;->this$0:Lcom/android/gallery3d/app/AlbumSetPage;

    invoke-static {v6}, Lcom/android/gallery3d/app/AlbumSetPage;->access$500(Lcom/android/gallery3d/app/AlbumSetPage;)Lcom/android/gallery3d/ui/AlbumSetView;

    move-result-object v6

    invoke-virtual {v6, v9, v4, v3, v2}, Lcom/android/gallery3d/ui/AlbumSetView;->layout(IIII)V

    .line 116
    iget-object v6, p0, Lcom/android/gallery3d/app/AlbumSetPage$1;->this$0:Lcom/android/gallery3d/app/AlbumSetPage;

    iget-object v6, v6, Lcom/android/gallery3d/app/AlbumSetPage;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-static {v6}, Lcom/android/gallery3d/ui/PositionRepository;->getInstance(Lcom/android/gallery3d/app/GalleryActivity;)Lcom/android/gallery3d/ui/PositionRepository;

    move-result-object v6

    invoke-virtual {v6, v9, v4}, Lcom/android/gallery3d/ui/PositionRepository;->setOffset(II)V

    .line 118
    return-void

    .line 99
    .end local v2           #slotViewBottom:I
    .end local v3           #slotViewRight:I
    .end local v4           #slotViewTop:I
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v6

    move v4, v6

    goto :goto_0

    .line 112
    .restart local v2       #slotViewBottom:I
    .restart local v3       #slotViewRight:I
    .restart local v4       #slotViewTop:I
    :cond_1
    iget-object v6, p0, Lcom/android/gallery3d/app/AlbumSetPage$1;->this$0:Lcom/android/gallery3d/app/AlbumSetPage;

    invoke-static {v6}, Lcom/android/gallery3d/app/AlbumSetPage;->access$500(Lcom/android/gallery3d/app/AlbumSetPage;)Lcom/android/gallery3d/ui/AlbumSetView;

    move-result-object v6

    iget-object v7, p0, Lcom/android/gallery3d/app/AlbumSetPage$1;->this$0:Lcom/android/gallery3d/app/AlbumSetPage;

    invoke-static {v7}, Lcom/android/gallery3d/app/AlbumSetPage;->access$400(Lcom/android/gallery3d/app/AlbumSetPage;)Lcom/android/gallery3d/ui/GridDrawer;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/gallery3d/ui/AlbumSetView;->setSelectionDrawer(Lcom/android/gallery3d/ui/SelectionDrawer;)V

    goto :goto_1
.end method

.method protected render(Lcom/android/gallery3d/ui/GLCanvas;)V
    .locals 4
    .parameter "canvas"

    .prologue
    .line 122
    const/4 v0, 0x4

    invoke-interface {p1, v0}, Lcom/android/gallery3d/ui/GLCanvas;->save(I)I

    .line 123
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage$1;->mMatrix:[F

    invoke-virtual {p0}, Lcom/android/gallery3d/app/AlbumSetPage$1;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget-object v2, p0, Lcom/android/gallery3d/app/AlbumSetPage$1;->this$0:Lcom/android/gallery3d/app/AlbumSetPage;

    invoke-static {v2}, Lcom/android/gallery3d/app/AlbumSetPage;->access$600(Lcom/android/gallery3d/app/AlbumSetPage;)F

    move-result v2

    add-float/2addr v1, v2

    invoke-virtual {p0}, Lcom/android/gallery3d/app/AlbumSetPage$1;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/android/gallery3d/app/AlbumSetPage$1;->this$0:Lcom/android/gallery3d/app/AlbumSetPage;

    invoke-static {v3}, Lcom/android/gallery3d/app/AlbumSetPage;->access$700(Lcom/android/gallery3d/app/AlbumSetPage;)F

    move-result v3

    add-float/2addr v2, v3

    iget-object v3, p0, Lcom/android/gallery3d/app/AlbumSetPage$1;->this$0:Lcom/android/gallery3d/app/AlbumSetPage;

    invoke-static {v3}, Lcom/android/gallery3d/app/AlbumSetPage;->access$800(Lcom/android/gallery3d/app/AlbumSetPage;)F

    move-result v3

    invoke-static {v0, v1, v2, v3}, Lcom/android/gallery3d/util/Utils;->setViewPointMatrix([FFFF)V

    .line 125
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage$1;->mMatrix:[F

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcom/android/gallery3d/ui/GLCanvas;->multiplyMatrix([FI)V

    .line 126
    invoke-super {p0, p1}, Lcom/android/gallery3d/ui/GLView;->render(Lcom/android/gallery3d/ui/GLCanvas;)V

    .line 127
    invoke-interface {p1}, Lcom/android/gallery3d/ui/GLCanvas;->restore()V

    .line 128
    return-void
.end method
