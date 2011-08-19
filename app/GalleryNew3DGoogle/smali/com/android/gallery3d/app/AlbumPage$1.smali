.class Lcom/android/gallery3d/app/AlbumPage$1;
.super Lcom/android/gallery3d/ui/GLView;
.source "AlbumPage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/app/AlbumPage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mMatrix:[F

.field final synthetic this$0:Lcom/android/gallery3d/app/AlbumPage;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/app/AlbumPage;)V
    .locals 1
    .parameter

    .prologue
    .line 106
    iput-object p1, p0, Lcom/android/gallery3d/app/AlbumPage$1;->this$0:Lcom/android/gallery3d/app/AlbumPage;

    invoke-direct {p0}, Lcom/android/gallery3d/ui/GLView;-><init>()V

    .line 107
    const/16 v0, 0x10

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/gallery3d/app/AlbumPage$1;->mMatrix:[F

    return-void
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .locals 11
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 112
    iget-object v6, p0, Lcom/android/gallery3d/app/AlbumPage$1;->this$0:Lcom/android/gallery3d/app/AlbumPage;

    invoke-static {v6}, Lcom/android/gallery3d/app/AlbumPage;->access$000(Lcom/android/gallery3d/app/AlbumPage;)Lcom/android/gallery3d/ui/StaticBackground;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    sub-int v9, p4, p2

    sub-int v10, p5, p3

    invoke-virtual {v6, v7, v8, v9, v10}, Lcom/android/gallery3d/ui/StaticBackground;->layout(IIII)V

    .line 113
    iget-object v6, p0, Lcom/android/gallery3d/app/AlbumPage$1;->this$0:Lcom/android/gallery3d/app/AlbumPage;

    iget-object v6, v6, Lcom/android/gallery3d/app/AlbumPage;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v6}, Lcom/android/gallery3d/app/GalleryActivity;->getActionBarView()Landroid/view/View;

    move-result-object v0

    .line 114
    .local v0, actionBar:Landroid/view/View;
    if-nez v0, :cond_0

    const/4 v6, 0x0

    move v4, v6

    .line 115
    .local v4, slotViewTop:I
    :goto_0
    sub-int v2, p5, p3

    .line 116
    .local v2, slotViewBottom:I
    sub-int v3, p4, p2

    .line 118
    .local v3, slotViewRight:I
    iget-object v6, p0, Lcom/android/gallery3d/app/AlbumPage$1;->this$0:Lcom/android/gallery3d/app/AlbumPage;

    invoke-static {v6}, Lcom/android/gallery3d/app/AlbumPage;->access$100(Lcom/android/gallery3d/app/AlbumPage;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 119
    iget-object v6, p0, Lcom/android/gallery3d/app/AlbumPage$1;->this$0:Lcom/android/gallery3d/app/AlbumPage;

    invoke-static {v6}, Lcom/android/gallery3d/app/AlbumPage;->access$200(Lcom/android/gallery3d/app/AlbumPage;)Lcom/android/gallery3d/ui/DetailsWindow;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Lcom/android/gallery3d/ui/DetailsWindow;->measure(II)V

    .line 121
    iget-object v6, p0, Lcom/android/gallery3d/app/AlbumPage$1;->this$0:Lcom/android/gallery3d/app/AlbumPage;

    invoke-static {v6}, Lcom/android/gallery3d/app/AlbumPage;->access$200(Lcom/android/gallery3d/app/AlbumPage;)Lcom/android/gallery3d/ui/DetailsWindow;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/gallery3d/ui/DetailsWindow;->getMeasuredWidth()I

    move-result v5

    .line 122
    .local v5, width:I
    sub-int v6, p4, p2

    sub-int v1, v6, v5

    .line 123
    .local v1, detailLeft:I
    move v3, v1

    .line 124
    iget-object v6, p0, Lcom/android/gallery3d/app/AlbumPage$1;->this$0:Lcom/android/gallery3d/app/AlbumPage;

    invoke-static {v6}, Lcom/android/gallery3d/app/AlbumPage;->access$200(Lcom/android/gallery3d/app/AlbumPage;)Lcom/android/gallery3d/ui/DetailsWindow;

    move-result-object v6

    add-int v7, v1, v5

    sub-int v8, p5, p3

    invoke-virtual {v6, v1, v4, v7, v8}, Lcom/android/gallery3d/ui/DetailsWindow;->layout(IIII)V

    .line 130
    .end local v1           #detailLeft:I
    .end local v5           #width:I
    :goto_1
    iget-object v6, p0, Lcom/android/gallery3d/app/AlbumPage$1;->this$0:Lcom/android/gallery3d/app/AlbumPage;

    invoke-static {v6}, Lcom/android/gallery3d/app/AlbumPage;->access$400(Lcom/android/gallery3d/app/AlbumPage;)Lcom/android/gallery3d/ui/AlbumView;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v7, v4, v3, v2}, Lcom/android/gallery3d/ui/AlbumView;->layout(IIII)V

    .line 131
    iget-object v6, p0, Lcom/android/gallery3d/app/AlbumPage$1;->mMatrix:[F

    sub-int v7, p4, p2

    div-int/lit8 v7, v7, 0x2

    int-to-float v7, v7

    sub-int v8, p5, p3

    div-int/lit8 v8, v8, 0x2

    int-to-float v8, v8

    iget-object v9, p0, Lcom/android/gallery3d/app/AlbumPage$1;->this$0:Lcom/android/gallery3d/app/AlbumPage;

    invoke-static {v9}, Lcom/android/gallery3d/app/AlbumPage;->access$500(Lcom/android/gallery3d/app/AlbumPage;)F

    move-result v9

    neg-float v9, v9

    invoke-static {v6, v7, v8, v9}, Lcom/android/gallery3d/util/Utils;->setViewPointMatrix([FFFF)V

    .line 133
    iget-object v6, p0, Lcom/android/gallery3d/app/AlbumPage$1;->this$0:Lcom/android/gallery3d/app/AlbumPage;

    iget-object v6, v6, Lcom/android/gallery3d/app/AlbumPage;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-static {v6}, Lcom/android/gallery3d/ui/PositionRepository;->getInstance(Lcom/android/gallery3d/app/GalleryActivity;)Lcom/android/gallery3d/ui/PositionRepository;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v7, v4}, Lcom/android/gallery3d/ui/PositionRepository;->setOffset(II)V

    .line 135
    return-void

    .line 114
    .end local v2           #slotViewBottom:I
    .end local v3           #slotViewRight:I
    .end local v4           #slotViewTop:I
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v6

    move v4, v6

    goto :goto_0

    .line 127
    .restart local v2       #slotViewBottom:I
    .restart local v3       #slotViewRight:I
    .restart local v4       #slotViewTop:I
    :cond_1
    iget-object v6, p0, Lcom/android/gallery3d/app/AlbumPage$1;->this$0:Lcom/android/gallery3d/app/AlbumPage;

    invoke-static {v6}, Lcom/android/gallery3d/app/AlbumPage;->access$400(Lcom/android/gallery3d/app/AlbumPage;)Lcom/android/gallery3d/ui/AlbumView;

    move-result-object v6

    iget-object v7, p0, Lcom/android/gallery3d/app/AlbumPage$1;->this$0:Lcom/android/gallery3d/app/AlbumPage;

    invoke-static {v7}, Lcom/android/gallery3d/app/AlbumPage;->access$300(Lcom/android/gallery3d/app/AlbumPage;)Lcom/android/gallery3d/ui/GridDrawer;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/gallery3d/ui/AlbumView;->setSelectionDrawer(Lcom/android/gallery3d/ui/SelectionDrawer;)V

    goto :goto_1
.end method

.method protected render(Lcom/android/gallery3d/ui/GLCanvas;)V
    .locals 2
    .parameter "canvas"

    .prologue
    .line 139
    const/4 v0, 0x4

    invoke-interface {p1, v0}, Lcom/android/gallery3d/ui/GLCanvas;->save(I)I

    .line 140
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage$1;->mMatrix:[F

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcom/android/gallery3d/ui/GLCanvas;->multiplyMatrix([FI)V

    .line 141
    invoke-super {p0, p1}, Lcom/android/gallery3d/ui/GLView;->render(Lcom/android/gallery3d/ui/GLCanvas;)V

    .line 142
    invoke-interface {p1}, Lcom/android/gallery3d/ui/GLCanvas;->restore()V

    .line 143
    return-void
.end method
