.class Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity$NaviTask$1;
.super Ljava/lang/Object;
.source "AWSBrowseActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity$NaviTask;->onPostExecute(Ljava/lang/Long;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity$NaviTask;


# direct methods
.method constructor <init>(Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity$NaviTask;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity$NaviTask$1;->this$1:Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity$NaviTask;

    .line 351
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 353
    iget-object v0, p0, Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity$NaviTask$1;->this$1:Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity$NaviTask;

    invoke-static {v0}, Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity$NaviTask;->access$5(Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity$NaviTask;)Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity;->access$10(Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity$NaviTask$1;->this$1:Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity$NaviTask;

    invoke-static {v2}, Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity$NaviTask;->access$5(Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity$NaviTask;)Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity;->access$4(Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity;)Lnet/yostore/aws/handler/NavigateHandler;

    move-result-object v2

    invoke-virtual {v2}, Lnet/yostore/aws/handler/NavigateHandler;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity$NaviTask$1;->this$1:Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity$NaviTask;

    invoke-static {v2}, Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity$NaviTask;->access$5(Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity$NaviTask;)Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity;

    move-result-object v2

    const v3, 0x7f0600c6

    invoke-virtual {v2, v3}, Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 354
    iget-object v0, p0, Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity$NaviTask$1;->this$1:Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity$NaviTask;

    invoke-static {v0}, Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity$NaviTask;->access$5(Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity$NaviTask;)Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity;->access$4(Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity;)Lnet/yostore/aws/handler/NavigateHandler;

    move-result-object v0

    invoke-virtual {v0}, Lnet/yostore/aws/handler/NavigateHandler;->isTop()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity$NaviTask$1;->this$1:Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity$NaviTask;

    invoke-static {v0}, Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity$NaviTask;->access$5(Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity$NaviTask;)Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity;->access$11(Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity;)Landroid/widget/ImageButton;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 356
    :goto_0
    iget-object v0, p0, Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity$NaviTask$1;->this$1:Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity$NaviTask;

    invoke-static {v0}, Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity$NaviTask;->access$5(Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity$NaviTask;)Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity$NaviTask$1;->this$1:Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity$NaviTask;

    invoke-static {v1}, Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity$NaviTask;->access$5(Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity$NaviTask;)Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity;->access$7(Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity;)Lcom/ecareme/pixwe/view/navigate/AWSBrowserAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 357
    iget-object v0, p0, Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity$NaviTask$1;->this$1:Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity$NaviTask;

    invoke-static {v0}, Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity$NaviTask;->access$5(Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity$NaviTask;)Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity;->access$12(Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity;)V

    .line 358
    return-void

    .line 355
    :cond_0
    iget-object v0, p0, Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity$NaviTask$1;->this$1:Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity$NaviTask;

    invoke-static {v0}, Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity$NaviTask;->access$5(Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity$NaviTask;)Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity;->access$11(Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity;)Landroid/widget/ImageButton;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_0
.end method
