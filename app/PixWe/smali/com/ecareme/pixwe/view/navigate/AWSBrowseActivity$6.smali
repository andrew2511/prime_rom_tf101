.class Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity$6;
.super Ljava/lang/Object;
.source "AWSBrowseActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity;->showFolderContextMenu(I)V
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
    iput-object p1, p0, Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity$6;->this$0:Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity;

    .line 402
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 404
    packed-switch p2, :pswitch_data_0

    .line 412
    :goto_0
    return-void

    .line 406
    :pswitch_0
    iget-object v0, p0, Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity$6;->this$0:Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity;

    sget-object v1, Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity$NAVI;->DEEP:Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity$NAVI;

    invoke-static {v0, v1}, Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity;->access$14(Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity;Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity$NAVI;)V

    goto :goto_0

    .line 409
    :pswitch_1
    iget-object v0, p0, Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity$6;->this$0:Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity;

    sget-object v1, Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity;->fi:Lnet/yostore/aws/handler/entity/FsInfo;

    iget-object v1, v1, Lnet/yostore/aws/handler/entity/FsInfo;->display:Ljava/lang/String;

    sget-object v2, Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity;->fi:Lnet/yostore/aws/handler/entity/FsInfo;

    iget-object v2, v2, Lnet/yostore/aws/handler/entity/FsInfo;->id:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity;->access$15(Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 404
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
