.class Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity$1;
.super Ljava/lang/Object;
.source "AWSBrowseActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity;


# direct methods
.method constructor <init>(Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity$1;->this$0:Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity;

    .line 382
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 384
    iget-object v0, p0, Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity$1;->this$0:Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity;

    invoke-static {v0}, Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity;->access$0(Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 385
    iget-object v0, p0, Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity$1;->this$0:Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity;

    iget-object v1, p0, Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity$1;->this$0:Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity;

    invoke-static {v1}, Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity;->access$1(Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 386
    return-void
.end method
