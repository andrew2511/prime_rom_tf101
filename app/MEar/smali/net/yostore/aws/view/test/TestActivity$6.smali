.class Lnet/yostore/aws/view/test/TestActivity$6;
.super Ljava/lang/Thread;
.source "TestActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/yostore/aws/view/test/TestActivity;->bindservice()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/yostore/aws/view/test/TestActivity;


# direct methods
.method constructor <init>(Lnet/yostore/aws/view/test/TestActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lnet/yostore/aws/view/test/TestActivity$6;->this$0:Lnet/yostore/aws/view/test/TestActivity;

    .line 184
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 186
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lnet/yostore/aws/view/test/TestActivity$6;->this$0:Lnet/yostore/aws/view/test/TestActivity;

    iget-object v2, v2, Lnet/yostore/aws/view/test/TestActivity;->ctx:Landroid/content/Context;

    const-class v3, Lnet/yostore/aws/service/PlayListService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 187
    .local v1, intent:Landroid/content/Intent;
    iget-object v2, p0, Lnet/yostore/aws/view/test/TestActivity$6;->this$0:Lnet/yostore/aws/view/test/TestActivity;

    invoke-static {v2}, Lnet/yostore/aws/view/test/TestActivity;->access$4(Lnet/yostore/aws/view/test/TestActivity;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 188
    iget-object v2, p0, Lnet/yostore/aws/view/test/TestActivity$6;->this$0:Lnet/yostore/aws/view/test/TestActivity;

    iget-object v2, v2, Lnet/yostore/aws/view/test/TestActivity;->ctx:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 191
    :try_start_0
    iget-object v2, p0, Lnet/yostore/aws/view/test/TestActivity$6;->this$0:Lnet/yostore/aws/view/test/TestActivity;

    iget-object v2, v2, Lnet/yostore/aws/view/test/TestActivity;->ctx:Landroid/content/Context;

    iget-object v3, p0, Lnet/yostore/aws/view/test/TestActivity$6;->this$0:Lnet/yostore/aws/view/test/TestActivity;

    invoke-static {v3}, Lnet/yostore/aws/view/test/TestActivity;->access$5(Lnet/yostore/aws/view/test/TestActivity;)Landroid/content/ServiceConnection;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v2, v1, v3, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 198
    :cond_0
    :goto_0
    return-void

    .line 192
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 193
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "TestActivity"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
