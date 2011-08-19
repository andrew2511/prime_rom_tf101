.class Lcom/android/videoeditor/widgets/TransitionView$2;
.super Ljava/lang/Object;
.source "TransitionView.java"

# interfaces
.implements Lcom/android/videoeditor/widgets/ScrollViewListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/videoeditor/widgets/TransitionView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/videoeditor/widgets/TransitionView;


# direct methods
.method constructor <init>(Lcom/android/videoeditor/widgets/TransitionView;)V
    .locals 0
    .parameter

    .prologue
    .line 94
    iput-object p1, p0, Lcom/android/videoeditor/widgets/TransitionView$2;->this$0:Lcom/android/videoeditor/widgets/TransitionView;

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
    .line 99
    iget-object v0, p0, Lcom/android/videoeditor/widgets/TransitionView$2;->this$0:Lcom/android/videoeditor/widgets/TransitionView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/videoeditor/widgets/TransitionView;->access$102(Lcom/android/videoeditor/widgets/TransitionView;Z)Z

    .line 100
    return-void
.end method

.method public onScrollEnd(Landroid/view/View;IIZ)V
    .locals 2
    .parameter "view"
    .parameter "scrollX"
    .parameter "scrollY"
    .parameter "appScroll"

    .prologue
    .line 113
    iget-object v0, p0, Lcom/android/videoeditor/widgets/TransitionView$2;->this$0:Lcom/android/videoeditor/widgets/TransitionView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/videoeditor/widgets/TransitionView;->access$102(Lcom/android/videoeditor/widgets/TransitionView;Z)Z

    .line 114
    iget-object v0, p0, Lcom/android/videoeditor/widgets/TransitionView$2;->this$0:Lcom/android/videoeditor/widgets/TransitionView;

    invoke-static {v0, p2}, Lcom/android/videoeditor/widgets/TransitionView;->access$202(Lcom/android/videoeditor/widgets/TransitionView;I)I

    .line 116
    iget-object v0, p0, Lcom/android/videoeditor/widgets/TransitionView$2;->this$0:Lcom/android/videoeditor/widgets/TransitionView;

    invoke-static {v0}, Lcom/android/videoeditor/widgets/TransitionView;->access$300(Lcom/android/videoeditor/widgets/TransitionView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 117
    iget-object v0, p0, Lcom/android/videoeditor/widgets/TransitionView$2;->this$0:Lcom/android/videoeditor/widgets/TransitionView;

    invoke-virtual {v0}, Lcom/android/videoeditor/widgets/TransitionView;->invalidate()V

    .line 119
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
    .line 106
    iget-object v0, p0, Lcom/android/videoeditor/widgets/TransitionView$2;->this$0:Lcom/android/videoeditor/widgets/TransitionView;

    invoke-virtual {v0}, Lcom/android/videoeditor/widgets/TransitionView;->invalidate()V

    .line 107
    return-void
.end method
