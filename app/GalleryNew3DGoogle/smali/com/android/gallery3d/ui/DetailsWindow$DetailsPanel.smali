.class Lcom/android/gallery3d/ui/DetailsWindow$DetailsPanel;
.super Lcom/android/gallery3d/ui/GLView;
.source "DetailsWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/ui/DetailsWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DetailsPanel"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery3d/ui/DetailsWindow;


# direct methods
.method private constructor <init>(Lcom/android/gallery3d/ui/DetailsWindow;)V
    .locals 0
    .parameter

    .prologue
    .line 419
    iput-object p1, p0, Lcom/android/gallery3d/ui/DetailsWindow$DetailsPanel;->this$0:Lcom/android/gallery3d/ui/DetailsWindow;

    invoke-direct {p0}, Lcom/android/gallery3d/ui/GLView;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/gallery3d/ui/DetailsWindow;Lcom/android/gallery3d/ui/DetailsWindow$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 419
    invoke-direct {p0, p1}, Lcom/android/gallery3d/ui/DetailsWindow$DetailsPanel;-><init>(Lcom/android/gallery3d/ui/DetailsWindow;)V

    return-void
.end method


# virtual methods
.method public onMeasure(II)V
    .locals 5
    .parameter "widthSpec"
    .parameter "heightSpec"

    .prologue
    .line 423
    iget-object v3, p0, Lcom/android/gallery3d/ui/DetailsWindow$DetailsPanel;->this$0:Lcom/android/gallery3d/ui/DetailsWindow;

    invoke-static {v3}, Lcom/android/gallery3d/ui/DetailsWindow;->access$1100(Lcom/android/gallery3d/ui/DetailsWindow;)Lcom/android/gallery3d/ui/StringTexture;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/gallery3d/ui/DetailsWindow$DetailsPanel;->this$0:Lcom/android/gallery3d/ui/DetailsWindow;

    invoke-static {v3}, Lcom/android/gallery3d/ui/DetailsWindow;->access$100(Lcom/android/gallery3d/ui/DetailsWindow;)Lcom/android/gallery3d/ui/DetailsWindow$MyDataModel;

    move-result-object v3

    if-nez v3, :cond_1

    .line 424
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/gallery3d/ui/GLView;->onMeasure(II)V

    .line 436
    :goto_0
    return-void

    .line 428
    :cond_1
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/DetailsWindow$DetailsPanel;->getPaddings()Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->top:I

    add-int/lit8 v0, v3, 0x5

    .line 429
    .local v0, h:I
    const/4 v1, 0x0

    .local v1, i:I
    iget-object v3, p0, Lcom/android/gallery3d/ui/DetailsWindow$DetailsPanel;->this$0:Lcom/android/gallery3d/ui/DetailsWindow;

    invoke-static {v3}, Lcom/android/gallery3d/ui/DetailsWindow;->access$100(Lcom/android/gallery3d/ui/DetailsWindow;)Lcom/android/gallery3d/ui/DetailsWindow$MyDataModel;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/gallery3d/ui/DetailsWindow$MyDataModel;->size()I

    move-result v2

    .local v2, n:I
    :goto_1
    if-ge v1, v2, :cond_2

    .line 430
    iget-object v3, p0, Lcom/android/gallery3d/ui/DetailsWindow$DetailsPanel;->this$0:Lcom/android/gallery3d/ui/DetailsWindow;

    invoke-static {v3}, Lcom/android/gallery3d/ui/DetailsWindow;->access$100(Lcom/android/gallery3d/ui/DetailsWindow;)Lcom/android/gallery3d/ui/DetailsWindow$MyDataModel;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/android/gallery3d/ui/DetailsWindow$MyDataModel;->getView(I)Lcom/android/gallery3d/ui/Texture;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/gallery3d/ui/Texture;->getHeight()I

    move-result v3

    add-int/lit8 v3, v3, 0x5

    add-int/2addr v0, v3

    .line 429
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 433
    :cond_2
    invoke-static {p0}, Lcom/android/gallery3d/ui/MeasureHelper;->getInstance(Lcom/android/gallery3d/ui/GLView;)Lcom/android/gallery3d/ui/MeasureHelper;

    move-result-object v3

    const/16 v4, 0x190

    invoke-virtual {v3, v4, v0}, Lcom/android/gallery3d/ui/MeasureHelper;->setPreferredContentSize(II)Lcom/android/gallery3d/ui/MeasureHelper;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Lcom/android/gallery3d/ui/MeasureHelper;->measure(II)V

    goto :goto_0
.end method

.method protected render(Lcom/android/gallery3d/ui/GLCanvas;)V
    .locals 7
    .parameter "canvas"

    .prologue
    .line 440
    invoke-super {p0, p1}, Lcom/android/gallery3d/ui/GLView;->render(Lcom/android/gallery3d/ui/GLCanvas;)V

    .line 442
    iget-object v6, p0, Lcom/android/gallery3d/ui/DetailsWindow$DetailsPanel;->this$0:Lcom/android/gallery3d/ui/DetailsWindow;

    invoke-static {v6}, Lcom/android/gallery3d/ui/DetailsWindow;->access$1100(Lcom/android/gallery3d/ui/DetailsWindow;)Lcom/android/gallery3d/ui/StringTexture;

    move-result-object v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/gallery3d/ui/DetailsWindow$DetailsPanel;->this$0:Lcom/android/gallery3d/ui/DetailsWindow;

    invoke-static {v6}, Lcom/android/gallery3d/ui/DetailsWindow;->access$100(Lcom/android/gallery3d/ui/DetailsWindow;)Lcom/android/gallery3d/ui/DetailsWindow$MyDataModel;

    move-result-object v6

    if-nez v6, :cond_1

    .line 452
    :cond_0
    return-void

    .line 445
    :cond_1
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/DetailsWindow$DetailsPanel;->getPaddings()Landroid/graphics/Rect;

    move-result-object v2

    .line 446
    .local v2, p:Landroid/graphics/Rect;
    iget v4, v2, Landroid/graphics/Rect;->left:I

    .local v4, x:I
    iget v6, v2, Landroid/graphics/Rect;->top:I

    add-int/lit8 v5, v6, 0x5

    .line 447
    .local v5, y:I
    const/4 v0, 0x0

    .local v0, i:I
    iget-object v6, p0, Lcom/android/gallery3d/ui/DetailsWindow$DetailsPanel;->this$0:Lcom/android/gallery3d/ui/DetailsWindow;

    invoke-static {v6}, Lcom/android/gallery3d/ui/DetailsWindow;->access$100(Lcom/android/gallery3d/ui/DetailsWindow;)Lcom/android/gallery3d/ui/DetailsWindow$MyDataModel;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/gallery3d/ui/DetailsWindow$MyDataModel;->size()I

    move-result v1

    .local v1, n:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 448
    iget-object v6, p0, Lcom/android/gallery3d/ui/DetailsWindow$DetailsPanel;->this$0:Lcom/android/gallery3d/ui/DetailsWindow;

    invoke-static {v6}, Lcom/android/gallery3d/ui/DetailsWindow;->access$100(Lcom/android/gallery3d/ui/DetailsWindow;)Lcom/android/gallery3d/ui/DetailsWindow$MyDataModel;

    move-result-object v6

    invoke-virtual {v6, v0}, Lcom/android/gallery3d/ui/DetailsWindow$MyDataModel;->getView(I)Lcom/android/gallery3d/ui/Texture;

    move-result-object v3

    .line 449
    .local v3, t:Lcom/android/gallery3d/ui/Texture;
    invoke-interface {v3, p1, v4, v5}, Lcom/android/gallery3d/ui/Texture;->draw(Lcom/android/gallery3d/ui/GLCanvas;II)V

    .line 450
    invoke-interface {v3}, Lcom/android/gallery3d/ui/Texture;->getHeight()I

    move-result v6

    add-int/lit8 v6, v6, 0x5

    add-int/2addr v5, v6

    .line 447
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
