.class Lnet/yostore/aws/view/navigate/LibActivity$6;
.super Ljava/lang/Object;
.source "LibActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/yostore/aws/view/navigate/LibActivity;->showCreateNewPlayList(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/yostore/aws/view/navigate/LibActivity;

.field private final synthetic val$textEntryView:Landroid/view/View;


# direct methods
.method constructor <init>(Lnet/yostore/aws/view/navigate/LibActivity;Landroid/view/View;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lnet/yostore/aws/view/navigate/LibActivity$6;->this$0:Lnet/yostore/aws/view/navigate/LibActivity;

    iput-object p2, p0, Lnet/yostore/aws/view/navigate/LibActivity$6;->val$textEntryView:Landroid/view/View;

    .line 692
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 8
    .parameter "dialog"
    .parameter "id"

    .prologue
    .line 695
    :try_start_0
    iget-object v5, p0, Lnet/yostore/aws/view/navigate/LibActivity$6;->val$textEntryView:Landroid/view/View;

    const/high16 v6, 0x7f08

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-interface {v5}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 696
    .local v4, playlistEdit:Ljava/lang/String;
    iget-object v5, p0, Lnet/yostore/aws/view/navigate/LibActivity$6;->this$0:Lnet/yostore/aws/view/navigate/LibActivity;

    invoke-static {v5, v4}, Lnet/yostore/aws/view/navigate/LibActivity;->access$25(Lnet/yostore/aws/view/navigate/LibActivity;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 697
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 698
    const/4 v1, 0x1

    .line 700
    .local v1, createSuccess:Z
    iget-object v5, p0, Lnet/yostore/aws/view/navigate/LibActivity$6;->this$0:Lnet/yostore/aws/view/navigate/LibActivity;

    invoke-static {v5}, Lnet/yostore/aws/view/navigate/LibActivity;->access$7(Lnet/yostore/aws/view/navigate/LibActivity;)Ljava/util/List;

    move-result-object v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lnet/yostore/aws/view/navigate/LibActivity$6;->this$0:Lnet/yostore/aws/view/navigate/LibActivity;

    invoke-static {v5}, Lnet/yostore/aws/view/navigate/LibActivity;->access$7(Lnet/yostore/aws/view/navigate/LibActivity;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_0

    .line 701
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    iget-object v5, p0, Lnet/yostore/aws/view/navigate/LibActivity$6;->this$0:Lnet/yostore/aws/view/navigate/LibActivity;

    invoke-static {v5}, Lnet/yostore/aws/view/navigate/LibActivity;->access$7(Lnet/yostore/aws/view/navigate/LibActivity;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-lt v3, v5, :cond_1

    .line 713
    .end local v3           #i:I
    :cond_0
    :goto_1
    if-eqz v1, :cond_3

    .line 714
    new-instance v5, Lnet/yostore/aws/view/navigate/LibActivity$createNewPlayList;

    iget-object v6, p0, Lnet/yostore/aws/view/navigate/LibActivity$6;->this$0:Lnet/yostore/aws/view/navigate/LibActivity;

    invoke-direct {v5, v6, v4}, Lnet/yostore/aws/view/navigate/LibActivity$createNewPlayList;-><init>(Lnet/yostore/aws/view/navigate/LibActivity;Ljava/lang/String;)V

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lnet/yostore/aws/view/navigate/LibActivity$createNewPlayList;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 732
    .end local v1           #createSuccess:Z
    .end local v4           #playlistEdit:Ljava/lang/String;
    :goto_2
    return-void

    .line 702
    .restart local v1       #createSuccess:Z
    .restart local v3       #i:I
    .restart local v4       #playlistEdit:Ljava/lang/String;
    :cond_1
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    iget-object v5, p0, Lnet/yostore/aws/view/navigate/LibActivity$6;->this$0:Lnet/yostore/aws/view/navigate/LibActivity;

    invoke-static {v5}, Lnet/yostore/aws/view/navigate/LibActivity;->access$7(Lnet/yostore/aws/view/navigate/LibActivity;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lnet/yostore/aws/handler/entity/FsInfo;

    iget-object v5, v5, Lnet/yostore/aws/handler/entity/FsInfo;->display:Ljava/lang/String;

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 703
    const/4 v1, 0x0

    .line 704
    goto :goto_1

    .line 701
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 719
    .end local v3           #i:I
    :cond_3
    iget-object v5, p0, Lnet/yostore/aws/view/navigate/LibActivity$6;->this$0:Lnet/yostore/aws/view/navigate/LibActivity;

    invoke-static {v5}, Lnet/yostore/aws/view/navigate/LibActivity;->access$1(Lnet/yostore/aws/view/navigate/LibActivity;)Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f060094

    const/4 v7, 0x1

    invoke-static {v5, v6, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 729
    .end local v1           #createSuccess:Z
    .end local v4           #playlistEdit:Ljava/lang/String;
    :catch_0
    move-exception v5

    move-object v2, v5

    .line 730
    .local v2, e:Ljava/lang/Exception;
    const-string v5, "LibActivity"

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 723
    .end local v2           #e:Ljava/lang/Exception;
    .restart local v4       #playlistEdit:Ljava/lang/String;
    :cond_4
    :try_start_1
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 724
    .local v0, _msg:Landroid/os/Message;
    const/16 v5, 0x82

    iput v5, v0, Landroid/os/Message;->what:I

    .line 725
    iget-object v5, p0, Lnet/yostore/aws/view/navigate/LibActivity$6;->this$0:Lnet/yostore/aws/view/navigate/LibActivity;

    invoke-static {v5}, Lnet/yostore/aws/view/navigate/LibActivity;->access$14(Lnet/yostore/aws/view/navigate/LibActivity;)Landroid/os/Handler;

    move-result-object v5

    invoke-virtual {v5, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method
