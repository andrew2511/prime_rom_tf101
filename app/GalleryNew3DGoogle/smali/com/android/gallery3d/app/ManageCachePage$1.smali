.class Lcom/android/gallery3d/app/ManageCachePage$1;
.super Lcom/android/gallery3d/ui/GLView;
.source "ManageCachePage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/app/ManageCachePage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mMatrix:[F

.field final synthetic this$0:Lcom/android/gallery3d/app/ManageCachePage;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/app/ManageCachePage;)V
    .locals 1
    .parameter

    .prologue
    .line 74
    iput-object p1, p0, Lcom/android/gallery3d/app/ManageCachePage$1;->this$0:Lcom/android/gallery3d/app/ManageCachePage;

    invoke-direct {p0}, Lcom/android/gallery3d/ui/GLView;-><init>()V

    .line 75
    const/16 v0, 0x10

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/gallery3d/app/ManageCachePage$1;->mMatrix:[F

    return-void
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .locals 8
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    const/16 v6, 0x30

    const/4 v7, 0x0

    .line 80
    iget-object v3, p0, Lcom/android/gallery3d/app/ManageCachePage$1;->this$0:Lcom/android/gallery3d/app/ManageCachePage;

    invoke-static {v3}, Lcom/android/gallery3d/app/ManageCachePage;->access$000(Lcom/android/gallery3d/app/ManageCachePage;)Lcom/android/gallery3d/ui/StaticBackground;

    move-result-object v3

    sub-int v4, p4, p2

    sub-int v5, p5, p3

    invoke-virtual {v3, v7, v7, v4, v5}, Lcom/android/gallery3d/ui/StaticBackground;->layout(IIII)V

    .line 81
    iget-object v3, p0, Lcom/android/gallery3d/app/ManageCachePage$1;->this$0:Lcom/android/gallery3d/app/ManageCachePage;

    invoke-static {v3}, Lcom/android/gallery3d/app/ManageCachePage;->access$100(Lcom/android/gallery3d/app/ManageCachePage;)Lcom/android/gallery3d/app/EyePosition;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/gallery3d/app/EyePosition;->resetPosition()V

    .line 83
    iget-object v3, p0, Lcom/android/gallery3d/app/ManageCachePage$1;->this$0:Lcom/android/gallery3d/app/ManageCachePage;

    iget-object v3, v3, Lcom/android/gallery3d/app/ManageCachePage;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v3}, Lcom/android/gallery3d/app/GalleryActivity;->getActionBarView()Landroid/view/View;

    move-result-object v0

    .line 84
    .local v0, actionBar:Landroid/view/View;
    if-nez v0, :cond_0

    move v2, v7

    .line 85
    .local v2, slotViewTop:I
    :goto_0
    sub-int v3, p5, p3

    sub-int v1, v3, v6

    .line 87
    .local v1, slotViewBottom:I
    iget-object v3, p0, Lcom/android/gallery3d/app/ManageCachePage$1;->this$0:Lcom/android/gallery3d/app/ManageCachePage;

    invoke-static {v3}, Lcom/android/gallery3d/app/ManageCachePage;->access$200(Lcom/android/gallery3d/app/ManageCachePage;)Lcom/android/gallery3d/ui/AlbumSetView;

    move-result-object v3

    sub-int v4, p4, p2

    invoke-virtual {v3, v7, v2, v4, v1}, Lcom/android/gallery3d/ui/AlbumSetView;->layout(IIII)V

    .line 88
    iget-object v3, p0, Lcom/android/gallery3d/app/ManageCachePage$1;->this$0:Lcom/android/gallery3d/app/ManageCachePage;

    invoke-static {v3}, Lcom/android/gallery3d/app/ManageCachePage;->access$300(Lcom/android/gallery3d/app/ManageCachePage;)Lcom/android/gallery3d/ui/CacheBarView;

    move-result-object v3

    sub-int v4, p5, p3

    sub-int/2addr v4, v6

    sub-int v5, p4, p2

    sub-int v6, p5, p3

    invoke-virtual {v3, v7, v4, v5, v6}, Lcom/android/gallery3d/ui/CacheBarView;->layout(IIII)V

    .line 90
    return-void

    .line 84
    .end local v1           #slotViewBottom:I
    .end local v2           #slotViewTop:I
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v3

    move v2, v3

    goto :goto_0
.end method

.method protected render(Lcom/android/gallery3d/ui/GLCanvas;)V
    .locals 4
    .parameter "canvas"

    .prologue
    .line 94
    const/4 v0, 0x4

    invoke-interface {p1, v0}, Lcom/android/gallery3d/ui/GLCanvas;->save(I)I

    .line 95
    iget-object v0, p0, Lcom/android/gallery3d/app/ManageCachePage$1;->mMatrix:[F

    invoke-virtual {p0}, Lcom/android/gallery3d/app/ManageCachePage$1;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget-object v2, p0, Lcom/android/gallery3d/app/ManageCachePage$1;->this$0:Lcom/android/gallery3d/app/ManageCachePage;

    invoke-static {v2}, Lcom/android/gallery3d/app/ManageCachePage;->access$400(Lcom/android/gallery3d/app/ManageCachePage;)F

    move-result v2

    add-float/2addr v1, v2

    invoke-virtual {p0}, Lcom/android/gallery3d/app/ManageCachePage$1;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/android/gallery3d/app/ManageCachePage$1;->this$0:Lcom/android/gallery3d/app/ManageCachePage;

    invoke-static {v3}, Lcom/android/gallery3d/app/ManageCachePage;->access$500(Lcom/android/gallery3d/app/ManageCachePage;)F

    move-result v3

    add-float/2addr v2, v3

    iget-object v3, p0, Lcom/android/gallery3d/app/ManageCachePage$1;->this$0:Lcom/android/gallery3d/app/ManageCachePage;

    invoke-static {v3}, Lcom/android/gallery3d/app/ManageCachePage;->access$600(Lcom/android/gallery3d/app/ManageCachePage;)F

    move-result v3

    invoke-static {v0, v1, v2, v3}, Lcom/android/gallery3d/util/Utils;->setViewPointMatrix([FFFF)V

    .line 97
    iget-object v0, p0, Lcom/android/gallery3d/app/ManageCachePage$1;->mMatrix:[F

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcom/android/gallery3d/ui/GLCanvas;->multiplyMatrix([FI)V

    .line 98
    invoke-super {p0, p1}, Lcom/android/gallery3d/ui/GLView;->render(Lcom/android/gallery3d/ui/GLCanvas;)V

    .line 99
    invoke-interface {p1}, Lcom/android/gallery3d/ui/GLCanvas;->restore()V

    .line 100
    return-void
.end method
