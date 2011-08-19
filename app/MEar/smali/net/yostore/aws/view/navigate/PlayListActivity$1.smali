.class Lnet/yostore/aws/view/navigate/PlayListActivity$1;
.super Landroid/os/Handler;
.source "PlayListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/yostore/aws/view/navigate/PlayListActivity;->initHandler()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/yostore/aws/view/navigate/PlayListActivity;


# direct methods
.method constructor <init>(Lnet/yostore/aws/view/navigate/PlayListActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lnet/yostore/aws/view/navigate/PlayListActivity$1;->this$0:Lnet/yostore/aws/view/navigate/PlayListActivity;

    .line 157
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .parameter "msg"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 161
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 162
    iget v2, p1, Landroid/os/Message;->what:I

    sparse-switch v2, :sswitch_data_0

    .line 319
    :goto_0
    return-void

    .line 252
    :sswitch_0
    iget-object v2, p0, Lnet/yostore/aws/view/navigate/PlayListActivity$1;->this$0:Lnet/yostore/aws/view/navigate/PlayListActivity;

    invoke-static {v2}, Lnet/yostore/aws/view/navigate/PlayListActivity;->access$5(Lnet/yostore/aws/view/navigate/PlayListActivity;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lnet/yostore/aws/view/navigate/PlayListActivity$1;->this$0:Lnet/yostore/aws/view/navigate/PlayListActivity;

    invoke-static {v3}, Lnet/yostore/aws/view/navigate/PlayListActivity;->access$13(Lnet/yostore/aws/view/navigate/PlayListActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 297
    :sswitch_1
    new-instance v2, Lnet/yostore/aws/view/navigate/PlayListActivity$renewPlayListTask;

    iget-object v3, p0, Lnet/yostore/aws/view/navigate/PlayListActivity$1;->this$0:Lnet/yostore/aws/view/navigate/PlayListActivity;

    const-wide/16 v4, 0x0

    invoke-direct {v2, v3, v4, v5}, Lnet/yostore/aws/view/navigate/PlayListActivity$renewPlayListTask;-><init>(Lnet/yostore/aws/view/navigate/PlayListActivity;J)V

    new-array v3, v6, [Ljava/lang/Void;

    const/4 v4, 0x0

    aput-object v4, v3, v7

    invoke-virtual {v2, v3}, Lnet/yostore/aws/view/navigate/PlayListActivity$renewPlayListTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 300
    :sswitch_2
    iget-object v2, p0, Lnet/yostore/aws/view/navigate/PlayListActivity$1;->this$0:Lnet/yostore/aws/view/navigate/PlayListActivity;

    invoke-static {v2}, Lnet/yostore/aws/view/navigate/PlayListActivity;->access$4(Lnet/yostore/aws/view/navigate/PlayListActivity;)Lnet/yostore/aws/view/navigate/BrowseAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lnet/yostore/aws/view/navigate/BrowseAdapter;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 301
    new-array v1, v6, [Ljava/lang/String;

    iget-object v2, p0, Lnet/yostore/aws/view/navigate/PlayListActivity$1;->this$0:Lnet/yostore/aws/view/navigate/PlayListActivity;

    invoke-virtual {v2}, Lnet/yostore/aws/view/navigate/PlayListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0600b2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v7

    .line 302
    .local v1, s:[Ljava/lang/String;
    new-instance v0, Landroid/widget/ArrayAdapter;

    iget-object v2, p0, Lnet/yostore/aws/view/navigate/PlayListActivity$1;->this$0:Lnet/yostore/aws/view/navigate/PlayListActivity;

    .line 303
    const v3, 0x7f030003

    .line 302
    invoke-direct {v0, v2, v3, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 306
    .local v0, aas:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    iget-object v2, p0, Lnet/yostore/aws/view/navigate/PlayListActivity$1;->this$0:Lnet/yostore/aws/view/navigate/PlayListActivity;

    invoke-virtual {v2, v0}, Lnet/yostore/aws/view/navigate/PlayListActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_0

    .line 310
    .end local v0           #aas:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    .end local v1           #s:[Ljava/lang/String;
    :cond_0
    iget-object v2, p0, Lnet/yostore/aws/view/navigate/PlayListActivity$1;->this$0:Lnet/yostore/aws/view/navigate/PlayListActivity;

    iget-object v3, p0, Lnet/yostore/aws/view/navigate/PlayListActivity$1;->this$0:Lnet/yostore/aws/view/navigate/PlayListActivity;

    invoke-static {v3}, Lnet/yostore/aws/view/navigate/PlayListActivity;->access$4(Lnet/yostore/aws/view/navigate/PlayListActivity;)Lnet/yostore/aws/view/navigate/BrowseAdapter;

    move-result-object v3

    invoke-virtual {v2, v3}, Lnet/yostore/aws/view/navigate/PlayListActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_0

    .line 162
    :sswitch_data_0
    .sparse-switch
        0x78 -> :sswitch_0
        0xb4 -> :sswitch_1
        0xbe -> :sswitch_2
    .end sparse-switch
.end method
