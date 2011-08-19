.class Lcom/android/videoeditor/widgets/MediaLinearLayout$4;
.super Ljava/lang/Object;
.source "MediaLinearLayout.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/videoeditor/widgets/MediaLinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/videoeditor/widgets/MediaLinearLayout;


# direct methods
.method constructor <init>(Lcom/android/videoeditor/widgets/MediaLinearLayout;)V
    .locals 0
    .parameter

    .prologue
    .line 525
    iput-object p1, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$4;->this$0:Lcom/android/videoeditor/widgets/MediaLinearLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 530
    iget-object v0, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$4;->this$0:Lcom/android/videoeditor/widgets/MediaLinearLayout;

    invoke-static {v0}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->access$100(Lcom/android/videoeditor/widgets/MediaLinearLayout;)Lcom/android/videoeditor/service/VideoEditorProject;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$4;->this$0:Lcom/android/videoeditor/widgets/MediaLinearLayout;

    invoke-static {v0}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->access$100(Lcom/android/videoeditor/widgets/MediaLinearLayout;)Lcom/android/videoeditor/service/VideoEditorProject;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/videoeditor/service/VideoEditorProject;->getMediaItemCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 531
    iget-object v0, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$4;->this$0:Lcom/android/videoeditor/widgets/MediaLinearLayout;

    invoke-static {v0}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->access$1600(Lcom/android/videoeditor/widgets/MediaLinearLayout;)V

    .line 533
    iget-object v0, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$4;->this$0:Lcom/android/videoeditor/widgets/MediaLinearLayout;

    invoke-static {v0}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->access$1700(Lcom/android/videoeditor/widgets/MediaLinearLayout;)Lcom/android/videoeditor/widgets/MediaLinearLayout$MediaLayoutListener;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/videoeditor/widgets/MediaLinearLayout$MediaLayoutListener;->onAddMediaItem(Ljava/lang/String;)V

    .line 535
    :cond_0
    return-void
.end method
