.class Lcom/android/videoeditor/widgets/MediaItemView$MediaItemShadowBuilder;
.super Landroid/view/View$DragShadowBuilder;
.source "MediaItemView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/videoeditor/widgets/MediaItemView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MediaItemShadowBuilder"
.end annotation


# instance fields
.field private final mFrame:Landroid/graphics/drawable/Drawable;

.field final synthetic this$0:Lcom/android/videoeditor/widgets/MediaItemView;


# direct methods
.method public constructor <init>(Lcom/android/videoeditor/widgets/MediaItemView;Landroid/view/View;)V
    .locals 2
    .parameter
    .parameter "view"

    .prologue
    .line 88
    iput-object p1, p0, Lcom/android/videoeditor/widgets/MediaItemView$MediaItemShadowBuilder;->this$0:Lcom/android/videoeditor/widgets/MediaItemView;

    .line 89
    invoke-direct {p0, p2}, Landroid/view/View$DragShadowBuilder;-><init>(Landroid/view/View;)V

    .line 91
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020065

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/videoeditor/widgets/MediaItemView$MediaItemShadowBuilder;->mFrame:Landroid/graphics/drawable/Drawable;

    .line 92
    return-void
.end method


# virtual methods
.method public onDrawShadow(Landroid/graphics/Canvas;)V
    .locals 5
    .parameter "canvas"

    .prologue
    const/4 v4, 0x0

    .line 109
    iget-object v1, p0, Lcom/android/videoeditor/widgets/MediaItemView$MediaItemShadowBuilder;->mFrame:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Lcom/android/videoeditor/widgets/MediaItemView$MediaItemShadowBuilder;->this$0:Lcom/android/videoeditor/widgets/MediaItemView;

    invoke-virtual {v2}, Lcom/android/videoeditor/widgets/MediaItemView;->getShadowWidth()I

    move-result v2

    iget-object v3, p0, Lcom/android/videoeditor/widgets/MediaItemView$MediaItemShadowBuilder;->this$0:Lcom/android/videoeditor/widgets/MediaItemView;

    invoke-virtual {v3}, Lcom/android/videoeditor/widgets/MediaItemView;->getShadowHeight()I

    move-result v3

    invoke-virtual {v1, v4, v4, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 110
    iget-object v1, p0, Lcom/android/videoeditor/widgets/MediaItemView$MediaItemShadowBuilder;->mFrame:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 112
    iget-object v1, p0, Lcom/android/videoeditor/widgets/MediaItemView$MediaItemShadowBuilder;->this$0:Lcom/android/videoeditor/widgets/MediaItemView;

    invoke-static {v1}, Lcom/android/videoeditor/widgets/MediaItemView;->access$000(Lcom/android/videoeditor/widgets/MediaItemView;)[Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/videoeditor/widgets/MediaItemView$MediaItemShadowBuilder;->this$0:Lcom/android/videoeditor/widgets/MediaItemView;

    invoke-static {v1}, Lcom/android/videoeditor/widgets/MediaItemView;->access$000(Lcom/android/videoeditor/widgets/MediaItemView;)[Landroid/graphics/Bitmap;

    move-result-object v1

    array-length v1, v1

    if-lez v1, :cond_0

    .line 113
    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/MediaItemView$MediaItemShadowBuilder;->getView()Landroid/view/View;

    move-result-object v0

    .line 114
    .local v0, view:Landroid/view/View;
    iget-object v1, p0, Lcom/android/videoeditor/widgets/MediaItemView$MediaItemShadowBuilder;->this$0:Lcom/android/videoeditor/widgets/MediaItemView;

    invoke-static {v1}, Lcom/android/videoeditor/widgets/MediaItemView;->access$000(Lcom/android/videoeditor/widgets/MediaItemView;)[Landroid/graphics/Bitmap;

    move-result-object v1

    aget-object v1, v1, v4

    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    int-to-float v3, v3

    const/4 v4, 0x0

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 116
    .end local v0           #view:Landroid/view/View;
    :cond_0
    return-void
.end method

.method public onProvideShadowMetrics(Landroid/graphics/Point;Landroid/graphics/Point;)V
    .locals 2
    .parameter "shadowSize"
    .parameter "shadowTouchPoint"

    .prologue
    .line 99
    iget-object v0, p0, Lcom/android/videoeditor/widgets/MediaItemView$MediaItemShadowBuilder;->this$0:Lcom/android/videoeditor/widgets/MediaItemView;

    invoke-virtual {v0}, Lcom/android/videoeditor/widgets/MediaItemView;->getShadowWidth()I

    move-result v0

    iget-object v1, p0, Lcom/android/videoeditor/widgets/MediaItemView$MediaItemShadowBuilder;->this$0:Lcom/android/videoeditor/widgets/MediaItemView;

    invoke-virtual {v1}, Lcom/android/videoeditor/widgets/MediaItemView;->getShadowHeight()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Point;->set(II)V

    .line 100
    iget v0, p1, Landroid/graphics/Point;->x:I

    div-int/lit8 v0, v0, 0x2

    iget v1, p1, Landroid/graphics/Point;->y:I

    invoke-virtual {p2, v0, v1}, Landroid/graphics/Point;->set(II)V

    .line 101
    return-void
.end method
