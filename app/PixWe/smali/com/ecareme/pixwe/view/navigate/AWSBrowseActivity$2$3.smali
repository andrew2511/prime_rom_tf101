.class Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity$2$3;
.super Ljava/lang/Object;
.source "AWSBrowseActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity$2;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity$2;


# direct methods
.method constructor <init>(Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity$2;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity$2$3;->this$1:Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity$2;

    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 125
    iget-object v0, p0, Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity$2$3;->this$1:Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity$2;

    invoke-static {v0}, Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity$2;->access$0(Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity$2;)Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity;->finish()V

    .line 126
    return-void
.end method
