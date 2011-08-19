.class Lcom/google/android/apps/books/widget/PageTurnView$2;
.super Ljava/lang/Object;
.source "PageTurnView.java"

# interfaces
.implements Lcom/google/android/apps/books/render/RendererListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/books/widget/PageTurnView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/apps/books/render/RendererListener",
        "<",
        "Lcom/google/android/apps/books/widget/PageTurnView$RenderRequestContext;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/books/widget/PageTurnView;


# direct methods
.method constructor <init>(Lcom/google/android/apps/books/widget/PageTurnView;)V
    .locals 0
    .parameter

    .prologue
    .line 775
    iput-object p1, p0, Lcom/google/android/apps/books/widget/PageTurnView$2;->this$0:Lcom/google/android/apps/books/widget/PageTurnView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getEndView(I)Lcom/google/android/apps/books/widget/PageTurnView$SpecialView;
    .locals 1
    .parameter "slot"

    .prologue
    .line 838
    iget-object v0, p0, Lcom/google/android/apps/books/widget/PageTurnView$2;->this$0:Lcom/google/android/apps/books/widget/PageTurnView;

    invoke-static {v0}, Lcom/google/android/apps/books/widget/PageTurnView;->access$1600(Lcom/google/android/apps/books/widget/PageTurnView;)Z

    move-result v0

    if-eqz v0, :cond_0

    rem-int/lit8 v0, p1, 0x2

    if-eqz v0, :cond_0

    .line 839
    iget-object v0, p0, Lcom/google/android/apps/books/widget/PageTurnView$2;->this$0:Lcom/google/android/apps/books/widget/PageTurnView;

    invoke-static {v0}, Lcom/google/android/apps/books/widget/PageTurnView;->access$1700(Lcom/google/android/apps/books/widget/PageTurnView;)Lcom/google/android/apps/books/widget/PageTurnView$SpecialViews;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/apps/books/widget/PageTurnView$SpecialViews;->getBlankPageView()Lcom/google/android/apps/books/widget/PageTurnView$SpecialView;

    move-result-object v0

    .line 841
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/apps/books/widget/PageTurnView$2;->this$0:Lcom/google/android/apps/books/widget/PageTurnView;

    invoke-static {v0}, Lcom/google/android/apps/books/widget/PageTurnView;->access$1700(Lcom/google/android/apps/books/widget/PageTurnView;)Lcom/google/android/apps/books/widget/PageTurnView$SpecialViews;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/apps/books/widget/PageTurnView$SpecialViews;->getEndView()Lcom/google/android/apps/books/widget/PageTurnView$SpecialView;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public onAbandoned(Lcom/google/android/apps/books/render/RenderPosition;Lcom/google/android/apps/books/widget/PageTurnView$RenderRequestContext;)V
    .locals 0
    .parameter "position"
    .parameter "cookie"

    .prologue
    .line 896
    return-void
.end method

.method public bridge synthetic onAbandoned(Lcom/google/android/apps/books/render/RenderPosition;Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 775
    check-cast p2, Lcom/google/android/apps/books/widget/PageTurnView$RenderRequestContext;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/google/android/apps/books/widget/PageTurnView$2;->onAbandoned(Lcom/google/android/apps/books/render/RenderPosition;Lcom/google/android/apps/books/widget/PageTurnView$RenderRequestContext;)V

    return-void
.end method

.method public onInvalidated()V
    .locals 1

    .prologue
    .line 900
    iget-object v0, p0, Lcom/google/android/apps/books/widget/PageTurnView$2;->this$0:Lcom/google/android/apps/books/widget/PageTurnView;

    invoke-virtual {v0}, Lcom/google/android/apps/books/widget/PageTurnView;->refreshPages()V

    .line 901
    return-void
.end method

.method public onRenderError(Lcom/google/android/apps/books/widget/PageTurnView$RenderRequestContext;Ljava/lang/Exception;)V
    .locals 3
    .parameter "cookie"
    .parameter "error"

    .prologue
    const-string v2, "PageTurnView"

    .line 820
    iget-object v0, p1, Lcom/google/android/apps/books/widget/PageTurnView$RenderRequestContext;->basePosition:Lcom/google/android/apps/books/common/Position;

    iget-object v1, p0, Lcom/google/android/apps/books/widget/PageTurnView$2;->this$0:Lcom/google/android/apps/books/widget/PageTurnView;

    invoke-static {v1}, Lcom/google/android/apps/books/widget/PageTurnView;->access$1000(Lcom/google/android/apps/books/widget/PageTurnView;)Lcom/google/android/apps/books/common/Position;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 821
    const-string v0, "PageTurnView"

    const/4 v0, 0x3

    invoke-static {v2, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 822
    const-string v0, "PageTurnView"

    const-string v0, "Ignoring error for old base position"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 827
    :cond_0
    :goto_0
    return-void

    .line 825
    :cond_1
    iget-object v0, p0, Lcom/google/android/apps/books/widget/PageTurnView$2;->this$0:Lcom/google/android/apps/books/widget/PageTurnView;

    invoke-static {v0}, Lcom/google/android/apps/books/widget/PageTurnView;->access$000(Lcom/google/android/apps/books/widget/PageTurnView;)Lcom/google/android/apps/books/widget/PageTurnView$ReaderDelegate;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/google/android/apps/books/widget/PageTurnView$ReaderDelegate;->onError(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public bridge synthetic onRenderError(Ljava/lang/Object;Ljava/lang/Exception;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 775
    check-cast p1, Lcom/google/android/apps/books/widget/PageTurnView$RenderRequestContext;

    .end local p1
    invoke-virtual {p0, p1, p2}, Lcom/google/android/apps/books/widget/PageTurnView$2;->onRenderError(Lcom/google/android/apps/books/widget/PageTurnView$RenderRequestContext;Ljava/lang/Exception;)V

    return-void
.end method

.method public onRendered(Lcom/google/android/apps/books/render/RenderPosition;Lcom/google/android/apps/books/widget/PageTurnView$RenderRequestContext;Landroid/graphics/Bitmap;)V
    .locals 5
    .parameter "position"
    .parameter "cookie"
    .parameter "bitmap"

    .prologue
    const/4 v4, 0x3

    const-string v3, "PageTurnView"

    .line 780
    const-string v1, "PageTurnView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRendered() for position="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", fraction="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/books/widget/PageTurnView$2;->this$0:Lcom/google/android/apps/books/widget/PageTurnView;

    invoke-static {v2}, Lcom/google/android/apps/books/widget/PageTurnView;->access$300(Lcom/google/android/apps/books/widget/PageTurnView;)F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 782
    iget-object v1, p1, Lcom/google/android/apps/books/render/RenderPosition;->position:Lcom/google/android/apps/books/common/Position;

    const-string v2, "missing normalized position"

    invoke-static {v1, v2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 784
    iget-object v1, p2, Lcom/google/android/apps/books/widget/PageTurnView$RenderRequestContext;->basePosition:Lcom/google/android/apps/books/common/Position;

    iget-object v2, p0, Lcom/google/android/apps/books/widget/PageTurnView$2;->this$0:Lcom/google/android/apps/books/widget/PageTurnView;

    invoke-static {v2}, Lcom/google/android/apps/books/widget/PageTurnView;->access$1000(Lcom/google/android/apps/books/widget/PageTurnView;)Lcom/google/android/apps/books/common/Position;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 785
    const-string v1, "PageTurnView"

    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 786
    const-string v1, "PageTurnView"

    const-string v1, "Ignoring render result for old base position"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 816
    :cond_0
    :goto_0
    return-void

    .line 791
    :cond_1
    iget v1, p2, Lcom/google/android/apps/books/widget/PageTurnView$RenderRequestContext;->rendererSequenceNumber:I

    iget-object v2, p0, Lcom/google/android/apps/books/widget/PageTurnView$2;->this$0:Lcom/google/android/apps/books/widget/PageTurnView;

    invoke-static {v2}, Lcom/google/android/apps/books/widget/PageTurnView;->access$1100(Lcom/google/android/apps/books/widget/PageTurnView;)I

    move-result v2

    if-eq v1, v2, :cond_2

    .line 792
    const-string v1, "PageTurnView"

    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 793
    const-string v1, "PageTurnView"

    const-string v1, "Ignoring render result for old rendering context"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 798
    :cond_2
    iget-object v1, p0, Lcom/google/android/apps/books/widget/PageTurnView$2;->this$0:Lcom/google/android/apps/books/widget/PageTurnView;

    invoke-static {v1}, Lcom/google/android/apps/books/widget/PageTurnView;->access$1200(Lcom/google/android/apps/books/widget/PageTurnView;)Landroid/util/SparseArray;

    move-result-object v1

    iget v2, p2, Lcom/google/android/apps/books/widget/PageTurnView$RenderRequestContext;->targetSlot:I

    invoke-virtual {v1, v2, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 802
    iget-object v1, p0, Lcom/google/android/apps/books/widget/PageTurnView$2;->this$0:Lcom/google/android/apps/books/widget/PageTurnView;

    invoke-static {v1}, Lcom/google/android/apps/books/widget/PageTurnView;->access$1200(Lcom/google/android/apps/books/widget/PageTurnView;)Landroid/util/SparseArray;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/books/widget/PageTurnView$2;->this$0:Lcom/google/android/apps/books/widget/PageTurnView;

    invoke-static {v2}, Lcom/google/android/apps/books/widget/PageTurnView;->access$600(Lcom/google/android/apps/books/widget/PageTurnView;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/books/render/RenderPosition;

    .line 803
    .local v0, normalizedAnchor:Lcom/google/android/apps/books/render/RenderPosition;
    if-eqz v0, :cond_3

    .line 804
    iget-object v1, p0, Lcom/google/android/apps/books/widget/PageTurnView$2;->this$0:Lcom/google/android/apps/books/widget/PageTurnView;

    invoke-static {v1, v0}, Lcom/google/android/apps/books/widget/PageTurnView;->access$502(Lcom/google/android/apps/books/widget/PageTurnView;Lcom/google/android/apps/books/render/RenderPosition;)Lcom/google/android/apps/books/render/RenderPosition;

    .line 809
    :cond_3
    iget-object v1, p0, Lcom/google/android/apps/books/widget/PageTurnView$2;->this$0:Lcom/google/android/apps/books/widget/PageTurnView;

    invoke-static {v1}, Lcom/google/android/apps/books/widget/PageTurnView;->access$1300(Lcom/google/android/apps/books/widget/PageTurnView;)V

    .line 811
    if-eqz p3, :cond_4

    .line 812
    iget-object v1, p0, Lcom/google/android/apps/books/widget/PageTurnView$2;->this$0:Lcom/google/android/apps/books/widget/PageTurnView;

    iget v2, p2, Lcom/google/android/apps/books/widget/PageTurnView$RenderRequestContext;->targetSlot:I

    invoke-static {v1, v2, p3}, Lcom/google/android/apps/books/widget/PageTurnView;->access$1400(Lcom/google/android/apps/books/widget/PageTurnView;ILandroid/graphics/Bitmap;)V

    goto :goto_0

    .line 814
    :cond_4
    iget-object v1, p0, Lcom/google/android/apps/books/widget/PageTurnView$2;->this$0:Lcom/google/android/apps/books/widget/PageTurnView;

    iget v2, p2, Lcom/google/android/apps/books/widget/PageTurnView$RenderRequestContext;->targetSlot:I

    invoke-static {v1, v2}, Lcom/google/android/apps/books/widget/PageTurnView;->access$1500(Lcom/google/android/apps/books/widget/PageTurnView;I)V

    goto :goto_0
.end method

.method public bridge synthetic onRendered(Lcom/google/android/apps/books/render/RenderPosition;Ljava/lang/Object;Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 775
    check-cast p2, Lcom/google/android/apps/books/widget/PageTurnView$RenderRequestContext;

    .end local p2
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/apps/books/widget/PageTurnView$2;->onRendered(Lcom/google/android/apps/books/render/RenderPosition;Lcom/google/android/apps/books/widget/PageTurnView$RenderRequestContext;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public onSpecialState(Lcom/google/android/apps/books/widget/PageTurnView$RenderRequestContext;II)V
    .locals 6
    .parameter "cookie"
    .parameter "specialState"
    .parameter "margin"

    .prologue
    const/4 v5, 0x3

    const/4 v4, -0x1

    const-string v3, "PageTurnView"

    .line 847
    iget-object v1, p1, Lcom/google/android/apps/books/widget/PageTurnView$RenderRequestContext;->basePosition:Lcom/google/android/apps/books/common/Position;

    iget-object v2, p0, Lcom/google/android/apps/books/widget/PageTurnView$2;->this$0:Lcom/google/android/apps/books/widget/PageTurnView;

    invoke-static {v2}, Lcom/google/android/apps/books/widget/PageTurnView;->access$1000(Lcom/google/android/apps/books/widget/PageTurnView;)Lcom/google/android/apps/books/common/Position;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 848
    const-string v1, "PageTurnView"

    invoke-static {v3, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 849
    const-string v1, "PageTurnView"

    const-string v1, "Ignoring special state for old base position"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 891
    :cond_0
    :goto_0
    return-void

    .line 854
    :cond_1
    iget-object v1, p0, Lcom/google/android/apps/books/widget/PageTurnView$2;->this$0:Lcom/google/android/apps/books/widget/PageTurnView;

    invoke-static {v1}, Lcom/google/android/apps/books/widget/PageTurnView;->access$1700(Lcom/google/android/apps/books/widget/PageTurnView;)Lcom/google/android/apps/books/widget/PageTurnView$SpecialViews;

    move-result-object v1

    const-string v2, "missing SpecialViews"

    invoke-static {v1, v2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 856
    const-string v1, "PageTurnView"

    invoke-static {v3, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 857
    const-string v1, "PageTurnView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSpecialState() for targetSlot="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/google/android/apps/books/widget/PageTurnView$RenderRequestContext;->targetSlot:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 860
    :cond_2
    const/4 v0, 0x0

    .line 861
    .local v0, customView:Lcom/google/android/apps/books/widget/PageTurnView$SpecialView;
    packed-switch p2, :pswitch_data_0

    .line 887
    :goto_1
    if-eqz v0, :cond_0

    .line 888
    iget-object v1, p0, Lcom/google/android/apps/books/widget/PageTurnView$2;->this$0:Lcom/google/android/apps/books/widget/PageTurnView;

    invoke-static {v1}, Lcom/google/android/apps/books/widget/PageTurnView;->access$2200(Lcom/google/android/apps/books/widget/PageTurnView;)Landroid/util/SparseArray;

    move-result-object v1

    iget v2, p1, Lcom/google/android/apps/books/widget/PageTurnView$RenderRequestContext;->targetSlot:I

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 889
    iget-object v1, p0, Lcom/google/android/apps/books/widget/PageTurnView$2;->this$0:Lcom/google/android/apps/books/widget/PageTurnView;

    iget v2, p1, Lcom/google/android/apps/books/widget/PageTurnView$RenderRequestContext;->targetSlot:I

    invoke-static {v1, v2, v0}, Lcom/google/android/apps/books/widget/PageTurnView;->access$2300(Lcom/google/android/apps/books/widget/PageTurnView;ILcom/google/android/apps/books/widget/PageTurnView$SpecialView;)V

    goto :goto_0

    .line 863
    :pswitch_0
    if-ge p3, v4, :cond_3

    .line 865
    iget-object v1, p0, Lcom/google/android/apps/books/widget/PageTurnView$2;->this$0:Lcom/google/android/apps/books/widget/PageTurnView;

    invoke-static {v1}, Lcom/google/android/apps/books/widget/PageTurnView;->access$1700(Lcom/google/android/apps/books/widget/PageTurnView;)Lcom/google/android/apps/books/widget/PageTurnView$SpecialViews;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/apps/books/widget/PageTurnView$SpecialViews;->getBlankPageView()Lcom/google/android/apps/books/widget/PageTurnView$SpecialView;

    move-result-object v0

    goto :goto_1

    .line 866
    :cond_3
    if-ne p3, v4, :cond_4

    .line 869
    iget-object v1, p0, Lcom/google/android/apps/books/widget/PageTurnView$2;->this$0:Lcom/google/android/apps/books/widget/PageTurnView;

    iget-object v2, p0, Lcom/google/android/apps/books/widget/PageTurnView$2;->this$0:Lcom/google/android/apps/books/widget/PageTurnView;

    invoke-static {v2}, Lcom/google/android/apps/books/widget/PageTurnView;->access$1800(Lcom/google/android/apps/books/widget/PageTurnView;)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lcom/google/android/apps/books/widget/PageTurnView$RenderRequestContext;->targetSlot:I

    invoke-static {v2, v3}, Lcom/google/android/apps/books/widget/PageTurnView;->access$1900(Ljava/lang/Integer;I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/android/apps/books/widget/PageTurnView;->access$1802(Lcom/google/android/apps/books/widget/PageTurnView;Ljava/lang/Integer;)Ljava/lang/Integer;

    .line 870
    iget-object v1, p0, Lcom/google/android/apps/books/widget/PageTurnView$2;->this$0:Lcom/google/android/apps/books/widget/PageTurnView;

    invoke-static {v1}, Lcom/google/android/apps/books/widget/PageTurnView;->access$1700(Lcom/google/android/apps/books/widget/PageTurnView;)Lcom/google/android/apps/books/widget/PageTurnView$SpecialViews;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/apps/books/widget/PageTurnView$SpecialViews;->getStartView()Lcom/google/android/apps/books/widget/PageTurnView$SpecialView;

    move-result-object v0

    goto :goto_1

    .line 871
    :cond_4
    if-nez p3, :cond_5

    .line 873
    iget-object v1, p0, Lcom/google/android/apps/books/widget/PageTurnView$2;->this$0:Lcom/google/android/apps/books/widget/PageTurnView;

    iget-object v2, p0, Lcom/google/android/apps/books/widget/PageTurnView$2;->this$0:Lcom/google/android/apps/books/widget/PageTurnView;

    invoke-static {v2}, Lcom/google/android/apps/books/widget/PageTurnView;->access$2000(Lcom/google/android/apps/books/widget/PageTurnView;)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lcom/google/android/apps/books/widget/PageTurnView$RenderRequestContext;->targetSlot:I

    invoke-static {v2, v3}, Lcom/google/android/apps/books/widget/PageTurnView;->access$2100(Ljava/lang/Integer;I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/android/apps/books/widget/PageTurnView;->access$2002(Lcom/google/android/apps/books/widget/PageTurnView;Ljava/lang/Integer;)Ljava/lang/Integer;

    .line 874
    iget v1, p1, Lcom/google/android/apps/books/widget/PageTurnView$RenderRequestContext;->targetSlot:I

    invoke-direct {p0, v1}, Lcom/google/android/apps/books/widget/PageTurnView$2;->getEndView(I)Lcom/google/android/apps/books/widget/PageTurnView$SpecialView;

    move-result-object v0

    goto :goto_1

    .line 876
    :cond_5
    iget v1, p1, Lcom/google/android/apps/books/widget/PageTurnView$RenderRequestContext;->targetSlot:I

    invoke-direct {p0, v1}, Lcom/google/android/apps/books/widget/PageTurnView$2;->getEndView(I)Lcom/google/android/apps/books/widget/PageTurnView$SpecialView;

    move-result-object v0

    .line 878
    goto :goto_1

    .line 881
    :pswitch_1
    iget-object v1, p0, Lcom/google/android/apps/books/widget/PageTurnView$2;->this$0:Lcom/google/android/apps/books/widget/PageTurnView;

    invoke-static {v1}, Lcom/google/android/apps/books/widget/PageTurnView;->access$1700(Lcom/google/android/apps/books/widget/PageTurnView;)Lcom/google/android/apps/books/widget/PageTurnView$SpecialViews;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/apps/books/widget/PageTurnView$SpecialViews;->getGapView()Lcom/google/android/apps/books/widget/PageTurnView$SpecialView;

    move-result-object v0

    goto :goto_1

    .line 861
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public bridge synthetic onSpecialState(Ljava/lang/Object;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 775
    check-cast p1, Lcom/google/android/apps/books/widget/PageTurnView$RenderRequestContext;

    .end local p1
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/apps/books/widget/PageTurnView$2;->onSpecialState(Lcom/google/android/apps/books/widget/PageTurnView$RenderRequestContext;II)V

    return-void
.end method
