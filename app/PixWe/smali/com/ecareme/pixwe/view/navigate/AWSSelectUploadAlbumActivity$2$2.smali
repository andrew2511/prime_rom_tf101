.class Lcom/ecareme/pixwe/view/navigate/AWSSelectUploadAlbumActivity$2$2;
.super Ljava/lang/Object;
.source "AWSSelectUploadAlbumActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ecareme/pixwe/view/navigate/AWSSelectUploadAlbumActivity$2;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/ecareme/pixwe/view/navigate/AWSSelectUploadAlbumActivity$2;

.field private final synthetic val$editAlbumName:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/ecareme/pixwe/view/navigate/AWSSelectUploadAlbumActivity$2;Landroid/widget/EditText;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ecareme/pixwe/view/navigate/AWSSelectUploadAlbumActivity$2$2;->this$1:Lcom/ecareme/pixwe/view/navigate/AWSSelectUploadAlbumActivity$2;

    iput-object p2, p0, Lcom/ecareme/pixwe/view/navigate/AWSSelectUploadAlbumActivity$2$2;->val$editAlbumName:Landroid/widget/EditText;

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 116
    iget-object v2, p0, Lcom/ecareme/pixwe/view/navigate/AWSSelectUploadAlbumActivity$2$2;->val$editAlbumName:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getEditableText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    .line 118
    .local v0, createdAlbumName:Ljava/lang/String;
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 119
    .local v1, msg:Landroid/os/Message;
    const/16 v2, 0x1e

    iput v2, v1, Landroid/os/Message;->what:I

    .line 120
    iget-object v2, p0, Lcom/ecareme/pixwe/view/navigate/AWSSelectUploadAlbumActivity$2$2;->this$1:Lcom/ecareme/pixwe/view/navigate/AWSSelectUploadAlbumActivity$2;

    invoke-static {v2}, Lcom/ecareme/pixwe/view/navigate/AWSSelectUploadAlbumActivity$2;->access$0(Lcom/ecareme/pixwe/view/navigate/AWSSelectUploadAlbumActivity$2;)Lcom/ecareme/pixwe/view/navigate/AWSSelectUploadAlbumActivity;

    move-result-object v2

    iget-object v2, v2, Lcom/ecareme/pixwe/view/navigate/AWSSelectUploadAlbumActivity;->handler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 121
    return-void
.end method
