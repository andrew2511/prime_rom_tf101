.class Lnet/yostore/aws/view/present/PlayerActivity$7;
.super Ljava/lang/Object;
.source "PlayerActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/yostore/aws/view/present/PlayerActivity;->showCreateNewPlayList(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/yostore/aws/view/present/PlayerActivity;

.field private final synthetic val$textEntryView:Landroid/view/View;


# direct methods
.method constructor <init>(Lnet/yostore/aws/view/present/PlayerActivity;Landroid/view/View;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lnet/yostore/aws/view/present/PlayerActivity$7;->this$0:Lnet/yostore/aws/view/present/PlayerActivity;

    iput-object p2, p0, Lnet/yostore/aws/view/present/PlayerActivity$7;->val$textEntryView:Landroid/view/View;

    .line 620
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7
    .parameter "dialog"
    .parameter "id"

    .prologue
    .line 623
    iget-object v4, p0, Lnet/yostore/aws/view/present/PlayerActivity$7;->val$textEntryView:Landroid/view/View;

    const/high16 v5, 0x7f08

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-interface {v4}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 624
    .local v3, playlistEdit:Ljava/lang/String;
    iget-object v4, p0, Lnet/yostore/aws/view/present/PlayerActivity$7;->this$0:Lnet/yostore/aws/view/present/PlayerActivity;

    invoke-static {v4, v3}, Lnet/yostore/aws/view/present/PlayerActivity;->access$17(Lnet/yostore/aws/view/present/PlayerActivity;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 625
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 626
    const/4 v1, 0x1

    .line 627
    .local v1, createSuccess:Z
    iget-object v4, p0, Lnet/yostore/aws/view/present/PlayerActivity$7;->this$0:Lnet/yostore/aws/view/present/PlayerActivity;

    invoke-static {v4}, Lnet/yostore/aws/view/present/PlayerActivity;->access$7(Lnet/yostore/aws/view/present/PlayerActivity;)Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lnet/yostore/aws/view/present/PlayerActivity$7;->this$0:Lnet/yostore/aws/view/present/PlayerActivity;

    invoke-static {v4}, Lnet/yostore/aws/view/present/PlayerActivity;->access$7(Lnet/yostore/aws/view/present/PlayerActivity;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 628
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    iget-object v4, p0, Lnet/yostore/aws/view/present/PlayerActivity$7;->this$0:Lnet/yostore/aws/view/present/PlayerActivity;

    invoke-static {v4}, Lnet/yostore/aws/view/present/PlayerActivity;->access$7(Lnet/yostore/aws/view/present/PlayerActivity;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lt v2, v4, :cond_1

    .line 638
    .end local v2           #i:I
    :cond_0
    :goto_1
    if-eqz v1, :cond_3

    .line 639
    new-instance v4, Lnet/yostore/aws/view/present/PlayerActivity$createNewPlayList;

    iget-object v5, p0, Lnet/yostore/aws/view/present/PlayerActivity$7;->this$0:Lnet/yostore/aws/view/present/PlayerActivity;

    invoke-direct {v4, v5, v3}, Lnet/yostore/aws/view/present/PlayerActivity$createNewPlayList;-><init>(Lnet/yostore/aws/view/present/PlayerActivity;Ljava/lang/String;)V

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lnet/yostore/aws/view/present/PlayerActivity$createNewPlayList;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 652
    .end local v1           #createSuccess:Z
    :goto_2
    return-void

    .line 629
    .restart local v1       #createSuccess:Z
    .restart local v2       #i:I
    :cond_1
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    iget-object v4, p0, Lnet/yostore/aws/view/present/PlayerActivity$7;->this$0:Lnet/yostore/aws/view/present/PlayerActivity;

    invoke-static {v4}, Lnet/yostore/aws/view/present/PlayerActivity;->access$7(Lnet/yostore/aws/view/present/PlayerActivity;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lnet/yostore/aws/handler/entity/FsInfo;

    iget-object v4, v4, Lnet/yostore/aws/handler/entity/FsInfo;->display:Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 630
    const/4 v1, 0x0

    .line 631
    goto :goto_1

    .line 628
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 644
    .end local v2           #i:I
    :cond_3
    iget-object v4, p0, Lnet/yostore/aws/view/present/PlayerActivity$7;->this$0:Lnet/yostore/aws/view/present/PlayerActivity;

    invoke-static {v4}, Lnet/yostore/aws/view/present/PlayerActivity;->access$1(Lnet/yostore/aws/view/present/PlayerActivity;)Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f060094

    const/4 v6, 0x1

    invoke-static {v4, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto :goto_2

    .line 648
    .end local v1           #createSuccess:Z
    :cond_4
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 649
    .local v0, _msg:Landroid/os/Message;
    const/16 v4, 0x82

    iput v4, v0, Landroid/os/Message;->what:I

    .line 650
    iget-object v4, p0, Lnet/yostore/aws/view/present/PlayerActivity$7;->this$0:Lnet/yostore/aws/view/present/PlayerActivity;

    invoke-static {v4}, Lnet/yostore/aws/view/present/PlayerActivity;->access$8(Lnet/yostore/aws/view/present/PlayerActivity;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_2
.end method
