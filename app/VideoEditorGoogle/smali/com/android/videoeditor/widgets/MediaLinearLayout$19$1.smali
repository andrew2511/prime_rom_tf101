.class Lcom/android/videoeditor/widgets/MediaLinearLayout$19$1;
.super Ljava/lang/Object;
.source "MediaLinearLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/videoeditor/widgets/MediaLinearLayout$19;->onMoveEnd(Lcom/android/videoeditor/widgets/HandleView;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/videoeditor/widgets/MediaLinearLayout$19;

.field final synthetic val$delta:I

.field final synthetic val$left:I

.field final synthetic val$position:I

.field final synthetic val$view:Lcom/android/videoeditor/widgets/HandleView;


# direct methods
.method constructor <init>(Lcom/android/videoeditor/widgets/MediaLinearLayout$19;ILcom/android/videoeditor/widgets/HandleView;II)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2760
    iput-object p1, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$19$1;->this$1:Lcom/android/videoeditor/widgets/MediaLinearLayout$19;

    iput p2, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$19$1;->val$position:I

    iput-object p3, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$19$1;->val$view:Lcom/android/videoeditor/widgets/HandleView;

    iput p4, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$19$1;->val$left:I

    iput p5, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$19$1;->val$delta:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 2765
    iget-object v0, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$19$1;->this$1:Lcom/android/videoeditor/widgets/MediaLinearLayout$19;

    iget-object v0, v0, Lcom/android/videoeditor/widgets/MediaLinearLayout$19;->this$0:Lcom/android/videoeditor/widgets/MediaLinearLayout;

    invoke-static {v0}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->access$1900(Lcom/android/videoeditor/widgets/MediaLinearLayout;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2766
    iget-object v0, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$19$1;->this$1:Lcom/android/videoeditor/widgets/MediaLinearLayout$19;

    iget-object v0, v0, Lcom/android/videoeditor/widgets/MediaLinearLayout$19;->this$0:Lcom/android/videoeditor/widgets/MediaLinearLayout;

    invoke-static {v0}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->access$2100(Lcom/android/videoeditor/widgets/MediaLinearLayout;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2776
    :goto_0
    return-void

    .line 2767
    :cond_0
    iget v0, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$19$1;->val$position:I

    iget-object v1, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$19$1;->this$1:Lcom/android/videoeditor/widgets/MediaLinearLayout$19;

    invoke-static {v1}, Lcom/android/videoeditor/widgets/MediaLinearLayout$19;->access$2500(Lcom/android/videoeditor/widgets/MediaLinearLayout$19;)I

    move-result v1

    if-eq v0, v1, :cond_2

    .line 2768
    iget-object v0, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$19$1;->this$1:Lcom/android/videoeditor/widgets/MediaLinearLayout$19;

    iget-object v1, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$19$1;->val$view:Lcom/android/videoeditor/widgets/HandleView;

    iget v2, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$19$1;->val$left:I

    iget v3, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$19$1;->val$delta:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/videoeditor/widgets/MediaLinearLayout$19;->onMove(Lcom/android/videoeditor/widgets/HandleView;II)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2769
    iget-object v0, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$19$1;->this$1:Lcom/android/videoeditor/widgets/MediaLinearLayout$19;

    iget-object v0, v0, Lcom/android/videoeditor/widgets/MediaLinearLayout$19;->this$0:Lcom/android/videoeditor/widgets/MediaLinearLayout;

    invoke-static {v0}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->access$2100(Lcom/android/videoeditor/widgets/MediaLinearLayout;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 2771
    :cond_1
    iget-object v0, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$19$1;->this$1:Lcom/android/videoeditor/widgets/MediaLinearLayout$19;

    invoke-static {v0}, Lcom/android/videoeditor/widgets/MediaLinearLayout$19;->access$2600(Lcom/android/videoeditor/widgets/MediaLinearLayout$19;)V

    goto :goto_0

    .line 2774
    :cond_2
    iget-object v0, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$19$1;->this$1:Lcom/android/videoeditor/widgets/MediaLinearLayout$19;

    invoke-static {v0}, Lcom/android/videoeditor/widgets/MediaLinearLayout$19;->access$2600(Lcom/android/videoeditor/widgets/MediaLinearLayout$19;)V

    goto :goto_0
.end method
