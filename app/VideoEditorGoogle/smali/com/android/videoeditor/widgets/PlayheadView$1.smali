.class Lcom/android/videoeditor/widgets/PlayheadView$1;
.super Ljava/lang/Object;
.source "PlayheadView.java"

# interfaces
.implements Lcom/android/videoeditor/widgets/ScrollViewListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/videoeditor/widgets/PlayheadView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/videoeditor/widgets/PlayheadView;


# direct methods
.method constructor <init>(Lcom/android/videoeditor/widgets/PlayheadView;)V
    .locals 0
    .parameter

    .prologue
    .line 77
    iput-object p1, p0, Lcom/android/videoeditor/widgets/PlayheadView$1;->this$0:Lcom/android/videoeditor/widgets/PlayheadView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollBegin(Landroid/view/View;IIZ)V
    .locals 0
    .parameter "view"
    .parameter "scrollX"
    .parameter "scrollY"
    .parameter "appScroll"

    .prologue
    .line 82
    return-void
.end method

.method public onScrollEnd(Landroid/view/View;IIZ)V
    .locals 1
    .parameter "view"
    .parameter "scrollX"
    .parameter "scrollY"
    .parameter "appScroll"

    .prologue
    .line 96
    iget-object v0, p0, Lcom/android/videoeditor/widgets/PlayheadView$1;->this$0:Lcom/android/videoeditor/widgets/PlayheadView;

    invoke-static {v0, p2}, Lcom/android/videoeditor/widgets/PlayheadView;->access$002(Lcom/android/videoeditor/widgets/PlayheadView;I)I

    .line 97
    iget-object v0, p0, Lcom/android/videoeditor/widgets/PlayheadView$1;->this$0:Lcom/android/videoeditor/widgets/PlayheadView;

    invoke-virtual {v0}, Lcom/android/videoeditor/widgets/PlayheadView;->invalidate()V

    .line 98
    return-void
.end method

.method public onScrollProgress(Landroid/view/View;IIZ)V
    .locals 1
    .parameter "view"
    .parameter "scrollX"
    .parameter "scrollY"
    .parameter "appScroll"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/videoeditor/widgets/PlayheadView$1;->this$0:Lcom/android/videoeditor/widgets/PlayheadView;

    invoke-static {v0, p2}, Lcom/android/videoeditor/widgets/PlayheadView;->access$002(Lcom/android/videoeditor/widgets/PlayheadView;I)I

    .line 89
    iget-object v0, p0, Lcom/android/videoeditor/widgets/PlayheadView$1;->this$0:Lcom/android/videoeditor/widgets/PlayheadView;

    invoke-virtual {v0}, Lcom/android/videoeditor/widgets/PlayheadView;->invalidate()V

    .line 90
    return-void
.end method
