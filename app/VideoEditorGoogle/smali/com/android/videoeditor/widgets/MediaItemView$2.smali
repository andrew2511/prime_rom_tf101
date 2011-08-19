.class Lcom/android/videoeditor/widgets/MediaItemView$2;
.super Ljava/lang/Object;
.source "MediaItemView.java"

# interfaces
.implements Lcom/android/videoeditor/widgets/ScrollViewListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/videoeditor/widgets/MediaItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/videoeditor/widgets/MediaItemView;


# direct methods
.method constructor <init>(Lcom/android/videoeditor/widgets/MediaItemView;)V
    .locals 0
    .parameter

    .prologue
    .line 170
    iput-object p1, p0, Lcom/android/videoeditor/widgets/MediaItemView$2;->this$0:Lcom/android/videoeditor/widgets/MediaItemView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollBegin(Landroid/view/View;IIZ)V
    .locals 2
    .parameter "view"
    .parameter "scrollX"
    .parameter "scrollY"
    .parameter "appScroll"

    .prologue
    .line 175
    iget-object v0, p0, Lcom/android/videoeditor/widgets/MediaItemView$2;->this$0:Lcom/android/videoeditor/widgets/MediaItemView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/videoeditor/widgets/MediaItemView;->access$402(Lcom/android/videoeditor/widgets/MediaItemView;Z)Z

    .line 176
    return-void
.end method

.method public onScrollEnd(Landroid/view/View;IIZ)V
    .locals 2
    .parameter "view"
    .parameter "scrollX"
    .parameter "scrollY"
    .parameter "appScroll"

    .prologue
    .line 190
    iget-object v0, p0, Lcom/android/videoeditor/widgets/MediaItemView$2;->this$0:Lcom/android/videoeditor/widgets/MediaItemView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/videoeditor/widgets/MediaItemView;->access$402(Lcom/android/videoeditor/widgets/MediaItemView;Z)Z

    .line 191
    iget-object v0, p0, Lcom/android/videoeditor/widgets/MediaItemView$2;->this$0:Lcom/android/videoeditor/widgets/MediaItemView;

    invoke-static {v0, p2}, Lcom/android/videoeditor/widgets/MediaItemView;->access$602(Lcom/android/videoeditor/widgets/MediaItemView;I)I

    .line 192
    iget-object v0, p0, Lcom/android/videoeditor/widgets/MediaItemView$2;->this$0:Lcom/android/videoeditor/widgets/MediaItemView;

    invoke-static {v0, p2}, Lcom/android/videoeditor/widgets/MediaItemView;->access$502(Lcom/android/videoeditor/widgets/MediaItemView;I)I

    .line 194
    iget-object v0, p0, Lcom/android/videoeditor/widgets/MediaItemView$2;->this$0:Lcom/android/videoeditor/widgets/MediaItemView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/videoeditor/widgets/MediaItemView;->access$700(Lcom/android/videoeditor/widgets/MediaItemView;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 195
    iget-object v0, p0, Lcom/android/videoeditor/widgets/MediaItemView$2;->this$0:Lcom/android/videoeditor/widgets/MediaItemView;

    invoke-virtual {v0}, Lcom/android/videoeditor/widgets/MediaItemView;->invalidate()V

    .line 197
    :cond_0
    return-void
.end method

.method public onScrollProgress(Landroid/view/View;IIZ)V
    .locals 1
    .parameter "view"
    .parameter "scrollX"
    .parameter "scrollY"
    .parameter "appScroll"

    .prologue
    .line 182
    iget-object v0, p0, Lcom/android/videoeditor/widgets/MediaItemView$2;->this$0:Lcom/android/videoeditor/widgets/MediaItemView;

    invoke-static {v0, p2}, Lcom/android/videoeditor/widgets/MediaItemView;->access$502(Lcom/android/videoeditor/widgets/MediaItemView;I)I

    .line 183
    iget-object v0, p0, Lcom/android/videoeditor/widgets/MediaItemView$2;->this$0:Lcom/android/videoeditor/widgets/MediaItemView;

    invoke-virtual {v0}, Lcom/android/videoeditor/widgets/MediaItemView;->invalidate()V

    .line 184
    return-void
.end method
