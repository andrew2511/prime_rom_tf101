.class Lnet/yostore/aws/view/navigate/OffLinePlayListActivity$6$1;
.super Ljava/lang/Thread;
.source "OffLinePlayListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/yostore/aws/view/navigate/OffLinePlayListActivity$6;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lnet/yostore/aws/view/navigate/OffLinePlayListActivity$6;


# direct methods
.method constructor <init>(Lnet/yostore/aws/view/navigate/OffLinePlayListActivity$6;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lnet/yostore/aws/view/navigate/OffLinePlayListActivity$6$1;->this$1:Lnet/yostore/aws/view/navigate/OffLinePlayListActivity$6;

    .line 316
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 318
    iget-object v0, p0, Lnet/yostore/aws/view/navigate/OffLinePlayListActivity$6$1;->this$1:Lnet/yostore/aws/view/navigate/OffLinePlayListActivity$6;

    invoke-static {v0}, Lnet/yostore/aws/view/navigate/OffLinePlayListActivity$6;->access$0(Lnet/yostore/aws/view/navigate/OffLinePlayListActivity$6;)Lnet/yostore/aws/view/navigate/OffLinePlayListActivity;

    move-result-object v0

    sget-object v1, Lnet/yostore/aws/view/navigate/OffLinePlayListActivity;->fi:Lnet/yostore/aws/handler/entity/FsInfo;

    iget-object v1, v1, Lnet/yostore/aws/handler/entity/FsInfo;->id:Ljava/lang/String;

    invoke-static {v0, v1}, Lnet/yostore/aws/view/navigate/OffLinePlayListActivity;->access$13(Lnet/yostore/aws/view/navigate/OffLinePlayListActivity;Ljava/lang/String;)V

    .line 319
    return-void
.end method
