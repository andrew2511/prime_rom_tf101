.class Lcom/android/videoeditor/widgets/AudioTrackView$2;
.super Ljava/lang/Object;
.source "AudioTrackView.java"

# interfaces
.implements Lcom/android/videoeditor/widgets/ScrollViewListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/videoeditor/widgets/AudioTrackView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/videoeditor/widgets/AudioTrackView;


# direct methods
.method constructor <init>(Lcom/android/videoeditor/widgets/AudioTrackView;)V
    .locals 0
    .parameter

    .prologue
    .line 109
    iput-object p1, p0, Lcom/android/videoeditor/widgets/AudioTrackView$2;->this$0:Lcom/android/videoeditor/widgets/AudioTrackView;

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
    .line 114
    return-void
.end method

.method public onScrollEnd(Landroid/view/View;IIZ)V
    .locals 1
    .parameter "view"
    .parameter "scrollX"
    .parameter "scrollY"
    .parameter "appScroll"

    .prologue
    .line 126
    iget-object v0, p0, Lcom/android/videoeditor/widgets/AudioTrackView$2;->this$0:Lcom/android/videoeditor/widgets/AudioTrackView;

    invoke-static {v0, p2}, Lcom/android/videoeditor/widgets/AudioTrackView;->access$102(Lcom/android/videoeditor/widgets/AudioTrackView;I)I

    .line 127
    iget-object v0, p0, Lcom/android/videoeditor/widgets/AudioTrackView$2;->this$0:Lcom/android/videoeditor/widgets/AudioTrackView;

    invoke-virtual {v0}, Lcom/android/videoeditor/widgets/AudioTrackView;->invalidate()V

    .line 128
    return-void
.end method

.method public onScrollProgress(Landroid/view/View;IIZ)V
    .locals 0
    .parameter "view"
    .parameter "scrollX"
    .parameter "scrollY"
    .parameter "appScroll"

    .prologue
    .line 120
    return-void
.end method
