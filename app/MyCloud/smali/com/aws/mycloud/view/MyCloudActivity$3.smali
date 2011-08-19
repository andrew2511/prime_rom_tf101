.class Lcom/aws/mycloud/view/MyCloudActivity$3;
.super Ljava/lang/Object;
.source "MyCloudActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aws/mycloud/view/MyCloudActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/aws/mycloud/view/MyCloudActivity;


# direct methods
.method constructor <init>(Lcom/aws/mycloud/view/MyCloudActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/aws/mycloud/view/MyCloudActivity$3;->this$0:Lcom/aws/mycloud/view/MyCloudActivity;

    .line 980
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 983
    packed-switch p2, :pswitch_data_0

    .line 1010
    :goto_0
    return-void

    .line 986
    :pswitch_0
    :try_start_0
    iget-object v2, p0, Lcom/aws/mycloud/view/MyCloudActivity$3;->this$0:Lcom/aws/mycloud/view/MyCloudActivity;

    invoke-static {}, Lcom/aws/mycloud/view/MyCloudActivity;->access$0()Landroid/content/ServiceConnection;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/aws/mycloud/view/MyCloudActivity;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 990
    :goto_1
    :try_start_1
    iget-object v2, p0, Lcom/aws/mycloud/view/MyCloudActivity$3;->this$0:Lcom/aws/mycloud/view/MyCloudActivity;

    iget-object v3, p0, Lcom/aws/mycloud/view/MyCloudActivity$3;->this$0:Lcom/aws/mycloud/view/MyCloudActivity;

    invoke-static {v3}, Lcom/aws/mycloud/view/MyCloudActivity;->access$1(Lcom/aws/mycloud/view/MyCloudActivity;)Landroid/content/BroadcastReceiver;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/aws/mycloud/view/MyCloudActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 992
    :goto_2
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 993
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v2, "com.asus.vibe.action.MAINLIST_RESULT"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 994
    iget-object v2, p0, Lcom/aws/mycloud/view/MyCloudActivity$3;->this$0:Lcom/aws/mycloud/view/MyCloudActivity;

    iget-object v3, p0, Lcom/aws/mycloud/view/MyCloudActivity$3;->this$0:Lcom/aws/mycloud/view/MyCloudActivity;

    invoke-static {v3}, Lcom/aws/mycloud/view/MyCloudActivity;->access$1(Lcom/aws/mycloud/view/MyCloudActivity;)Landroid/content/BroadcastReceiver;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Lcom/aws/mycloud/view/MyCloudActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 997
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.asus.vibe.action.QUERY_MAINLIST"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 998
    .local v1, intent:Landroid/content/Intent;
    iget-object v2, p0, Lcom/aws/mycloud/view/MyCloudActivity$3;->this$0:Lcom/aws/mycloud/view/MyCloudActivity;

    invoke-static {}, Lcom/aws/mycloud/view/MyCloudActivity;->access$0()Landroid/content/ServiceConnection;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v2, v1, v3, v4}, Lcom/aws/mycloud/view/MyCloudActivity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    goto :goto_0

    .line 1002
    .end local v0           #filter:Landroid/content/IntentFilter;
    .end local v1           #intent:Landroid/content/Intent;
    :pswitch_1
    iget-object v2, p0, Lcom/aws/mycloud/view/MyCloudActivity$3;->this$0:Lcom/aws/mycloud/view/MyCloudActivity;

    const v3, 0x7f060053

    invoke-virtual {v2, v3}, Lcom/aws/mycloud/view/MyCloudActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1003
    iget-object v2, p0, Lcom/aws/mycloud/view/MyCloudActivity$3;->this$0:Lcom/aws/mycloud/view/MyCloudActivity;

    const v3, 0x7f06005e

    invoke-virtual {v2, v3}, Lcom/aws/mycloud/view/MyCloudActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1005
    :try_start_2
    iget-object v2, p0, Lcom/aws/mycloud/view/MyCloudActivity$3;->this$0:Lcom/aws/mycloud/view/MyCloudActivity;

    iget-object v2, v2, Lcom/aws/mycloud/view/MyCloudActivity;->mvDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->dismiss()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 1006
    :catch_0
    move-exception v2

    goto :goto_0

    .line 991
    :catch_1
    move-exception v2

    goto :goto_2

    .line 987
    :catch_2
    move-exception v2

    goto :goto_1

    .line 983
    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
