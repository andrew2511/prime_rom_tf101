.class Lcom/android/gallery3d/app/PhotoPage$1;
.super Lcom/android/gallery3d/ui/GLView;
.source "PhotoPage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/app/PhotoPage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery3d/app/PhotoPage;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/app/PhotoPage;)V
    .locals 0
    .parameter

    .prologue
    .line 125
    iput-object p1, p0, Lcom/android/gallery3d/app/PhotoPage$1;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    invoke-direct {p0}, Lcom/android/gallery3d/ui/GLView;-><init>()V

    return-void
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .locals 7
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    const/4 v6, 0x0

    .line 135
    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoPage$1;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    invoke-static {v2}, Lcom/android/gallery3d/app/PhotoPage;->access$200(Lcom/android/gallery3d/app/PhotoPage;)Lcom/android/gallery3d/ui/PhotoView;

    move-result-object v2

    sub-int v3, p4, p2

    sub-int v4, p5, p3

    invoke-virtual {v2, v6, v6, v3, v4}, Lcom/android/gallery3d/ui/PhotoView;->layout(IIII)V

    .line 136
    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoPage$1;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    iget-object v2, v2, Lcom/android/gallery3d/app/PhotoPage;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-static {v2}, Lcom/android/gallery3d/ui/PositionRepository;->getInstance(Lcom/android/gallery3d/app/GalleryActivity;)Lcom/android/gallery3d/ui/PositionRepository;

    move-result-object v2

    invoke-virtual {v2, v6, v6}, Lcom/android/gallery3d/ui/PositionRepository;->setOffset(II)V

    .line 137
    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoPage$1;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    invoke-static {v2}, Lcom/android/gallery3d/app/PhotoPage;->access$300(Lcom/android/gallery3d/app/PhotoPage;)Lcom/android/gallery3d/ui/FilmStripView;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 138
    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoPage$1;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    invoke-static {v2}, Lcom/android/gallery3d/app/PhotoPage;->access$300(Lcom/android/gallery3d/app/PhotoPage;)Lcom/android/gallery3d/ui/FilmStripView;

    move-result-object v2

    sub-int v3, p5, p3

    iget-object v4, p0, Lcom/android/gallery3d/app/PhotoPage$1;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    invoke-static {v4}, Lcom/android/gallery3d/app/PhotoPage;->access$400(Lcom/android/gallery3d/app/PhotoPage;)I

    move-result v4

    sub-int/2addr v3, v4

    sub-int v4, p4, p2

    sub-int v5, p5, p3

    invoke-virtual {v2, v6, v3, v4, v5}, Lcom/android/gallery3d/ui/FilmStripView;->layout(IIII)V

    .line 142
    :cond_0
    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoPage$1;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    invoke-static {v2}, Lcom/android/gallery3d/app/PhotoPage;->access$500(Lcom/android/gallery3d/app/PhotoPage;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 143
    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoPage$1;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    iget-object v2, v2, Lcom/android/gallery3d/app/PhotoPage;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v2}, Lcom/android/gallery3d/app/GalleryActivity;->getActionBarView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v0

    .line 144
    .local v0, viewTop:I
    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoPage$1;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    invoke-static {v2}, Lcom/android/gallery3d/app/PhotoPage;->access$600(Lcom/android/gallery3d/app/PhotoPage;)Lcom/android/gallery3d/ui/DetailsWindow;

    move-result-object v2

    invoke-virtual {v2, v6, v6}, Lcom/android/gallery3d/ui/DetailsWindow;->measure(II)V

    .line 145
    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoPage$1;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    invoke-static {v2}, Lcom/android/gallery3d/app/PhotoPage;->access$600(Lcom/android/gallery3d/app/PhotoPage;)Lcom/android/gallery3d/ui/DetailsWindow;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/gallery3d/ui/DetailsWindow;->getMeasuredWidth()I

    move-result v1

    .line 146
    .local v1, width:I
    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoPage$1;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    invoke-static {v2}, Lcom/android/gallery3d/app/PhotoPage;->access$600(Lcom/android/gallery3d/app/PhotoPage;)Lcom/android/gallery3d/ui/DetailsWindow;

    move-result-object v2

    sub-int v3, p5, p3

    iget-object v4, p0, Lcom/android/gallery3d/app/PhotoPage$1;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    invoke-static {v4}, Lcom/android/gallery3d/app/PhotoPage;->access$400(Lcom/android/gallery3d/app/PhotoPage;)I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {v2, v6, v0, v1, v3}, Lcom/android/gallery3d/ui/DetailsWindow;->layout(IIII)V

    .line 148
    .end local v0           #viewTop:I
    .end local v1           #width:I
    :cond_1
    return-void
.end method

.method protected renderBackground(Lcom/android/gallery3d/ui/GLCanvas;)V
    .locals 0
    .parameter "view"

    .prologue
    .line 129
    invoke-interface {p1}, Lcom/android/gallery3d/ui/GLCanvas;->clearBuffer()V

    .line 130
    return-void
.end method
