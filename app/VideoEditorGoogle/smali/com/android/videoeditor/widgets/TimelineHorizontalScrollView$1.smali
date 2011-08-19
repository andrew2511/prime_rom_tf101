.class Lcom/android/videoeditor/widgets/TimelineHorizontalScrollView$1;
.super Ljava/lang/Object;
.source "TimelineHorizontalScrollView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/videoeditor/widgets/TimelineHorizontalScrollView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/videoeditor/widgets/TimelineHorizontalScrollView;


# direct methods
.method constructor <init>(Lcom/android/videoeditor/widgets/TimelineHorizontalScrollView;)V
    .locals 0
    .parameter

    .prologue
    .line 63
    iput-object p1, p0, Lcom/android/videoeditor/widgets/TimelineHorizontalScrollView$1;->this$0:Lcom/android/videoeditor/widgets/TimelineHorizontalScrollView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 69
    iget-object v2, p0, Lcom/android/videoeditor/widgets/TimelineHorizontalScrollView$1;->this$0:Lcom/android/videoeditor/widgets/TimelineHorizontalScrollView;

    invoke-static {v2, v6}, Lcom/android/videoeditor/widgets/TimelineHorizontalScrollView;->access$002(Lcom/android/videoeditor/widgets/TimelineHorizontalScrollView;Z)Z

    .line 71
    iget-object v2, p0, Lcom/android/videoeditor/widgets/TimelineHorizontalScrollView$1;->this$0:Lcom/android/videoeditor/widgets/TimelineHorizontalScrollView;

    invoke-static {v2}, Lcom/android/videoeditor/widgets/TimelineHorizontalScrollView;->access$100(Lcom/android/videoeditor/widgets/TimelineHorizontalScrollView;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/videoeditor/widgets/ScrollViewListener;

    .line 72
    .local v1, listener:Lcom/android/videoeditor/widgets/ScrollViewListener;
    iget-object v2, p0, Lcom/android/videoeditor/widgets/TimelineHorizontalScrollView$1;->this$0:Lcom/android/videoeditor/widgets/TimelineHorizontalScrollView;

    iget-object v3, p0, Lcom/android/videoeditor/widgets/TimelineHorizontalScrollView$1;->this$0:Lcom/android/videoeditor/widgets/TimelineHorizontalScrollView;

    invoke-virtual {v3}, Lcom/android/videoeditor/widgets/TimelineHorizontalScrollView;->getScrollX()I

    move-result v3

    iget-object v4, p0, Lcom/android/videoeditor/widgets/TimelineHorizontalScrollView$1;->this$0:Lcom/android/videoeditor/widgets/TimelineHorizontalScrollView;

    invoke-virtual {v4}, Lcom/android/videoeditor/widgets/TimelineHorizontalScrollView;->getScrollY()I

    move-result v4

    iget-object v5, p0, Lcom/android/videoeditor/widgets/TimelineHorizontalScrollView$1;->this$0:Lcom/android/videoeditor/widgets/TimelineHorizontalScrollView;

    invoke-static {v5}, Lcom/android/videoeditor/widgets/TimelineHorizontalScrollView;->access$200(Lcom/android/videoeditor/widgets/TimelineHorizontalScrollView;)Z

    move-result v5

    invoke-interface {v1, v2, v3, v4, v5}, Lcom/android/videoeditor/widgets/ScrollViewListener;->onScrollEnd(Landroid/view/View;IIZ)V

    goto :goto_0

    .line 76
    .end local v1           #listener:Lcom/android/videoeditor/widgets/ScrollViewListener;
    :cond_0
    iget-object v2, p0, Lcom/android/videoeditor/widgets/TimelineHorizontalScrollView$1;->this$0:Lcom/android/videoeditor/widgets/TimelineHorizontalScrollView;

    invoke-static {v2, v6}, Lcom/android/videoeditor/widgets/TimelineHorizontalScrollView;->access$202(Lcom/android/videoeditor/widgets/TimelineHorizontalScrollView;Z)Z

    .line 77
    return-void
.end method
