.class Lnet/yostore/aws/view/navigate/PlayListActivity$naviToTask;
.super Landroid/os/AsyncTask;
.source "PlayListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/yostore/aws/view/navigate/PlayListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "naviToTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# static fields
.field private static synthetic $SWITCH_TABLE$net$yostore$aws$view$navigate$PlayListActivity$NAVI:[I


# instance fields
.field mdialog:Landroid/app/ProgressDialog;

.field na:Lnet/yostore/aws/view/navigate/PlayListActivity$NAVI;

.field final synthetic this$0:Lnet/yostore/aws/view/navigate/PlayListActivity;


# direct methods
.method static synthetic $SWITCH_TABLE$net$yostore$aws$view$navigate$PlayListActivity$NAVI()[I
    .locals 3

    .prologue
    .line 671
    sget-object v0, Lnet/yostore/aws/view/navigate/PlayListActivity$naviToTask;->$SWITCH_TABLE$net$yostore$aws$view$navigate$PlayListActivity$NAVI:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lnet/yostore/aws/view/navigate/PlayListActivity$NAVI;->values()[Lnet/yostore/aws/view/navigate/PlayListActivity$NAVI;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lnet/yostore/aws/view/navigate/PlayListActivity$NAVI;->DEEP:Lnet/yostore/aws/view/navigate/PlayListActivity$NAVI;

    invoke-virtual {v1}, Lnet/yostore/aws/view/navigate/PlayListActivity$NAVI;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_5

    :goto_1
    :try_start_1
    sget-object v1, Lnet/yostore/aws/view/navigate/PlayListActivity$NAVI;->FLOAT:Lnet/yostore/aws/view/navigate/PlayListActivity$NAVI;

    invoke-virtual {v1}, Lnet/yostore/aws/view/navigate/PlayListActivity$NAVI;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_4

    :goto_2
    :try_start_2
    sget-object v1, Lnet/yostore/aws/view/navigate/PlayListActivity$NAVI;->HERE:Lnet/yostore/aws/view/navigate/PlayListActivity$NAVI;

    invoke-virtual {v1}, Lnet/yostore/aws/view/navigate/PlayListActivity$NAVI;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_3

    :goto_3
    :try_start_3
    sget-object v1, Lnet/yostore/aws/view/navigate/PlayListActivity$NAVI;->SEARCH_DEEP:Lnet/yostore/aws/view/navigate/PlayListActivity$NAVI;

    invoke-virtual {v1}, Lnet/yostore/aws/view/navigate/PlayListActivity$NAVI;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_2

    :goto_4
    :try_start_4
    sget-object v1, Lnet/yostore/aws/view/navigate/PlayListActivity$NAVI;->SHARE_DEEP:Lnet/yostore/aws/view/navigate/PlayListActivity$NAVI;

    invoke-virtual {v1}, Lnet/yostore/aws/view/navigate/PlayListActivity$NAVI;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_1

    :goto_5
    :try_start_5
    sget-object v1, Lnet/yostore/aws/view/navigate/PlayListActivity$NAVI;->TOP:Lnet/yostore/aws/view/navigate/PlayListActivity$NAVI;

    invoke-virtual {v1}, Lnet/yostore/aws/view/navigate/PlayListActivity$NAVI;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_0

    :goto_6
    sput-object v0, Lnet/yostore/aws/view/navigate/PlayListActivity$naviToTask;->$SWITCH_TABLE$net$yostore$aws$view$navigate$PlayListActivity$NAVI:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_6

    :catch_1
    move-exception v1

    goto :goto_5

    :catch_2
    move-exception v1

    goto :goto_4

    :catch_3
    move-exception v1

    goto :goto_3

    :catch_4
    move-exception v1

    goto :goto_2

    :catch_5
    move-exception v1

    goto :goto_1
.end method

.method public constructor <init>(Lnet/yostore/aws/view/navigate/PlayListActivity;Lnet/yostore/aws/view/navigate/PlayListActivity$NAVI;)V
    .locals 0
    .parameter
    .parameter "na"

    .prologue
    .line 677
    iput-object p1, p0, Lnet/yostore/aws/view/navigate/PlayListActivity$naviToTask;->this$0:Lnet/yostore/aws/view/navigate/PlayListActivity;

    .line 675
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 676
    iput-object p2, p0, Lnet/yostore/aws/view/navigate/PlayListActivity$naviToTask;->na:Lnet/yostore/aws/view/navigate/PlayListActivity$NAVI;

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;
    .locals 5
    .parameter "arg0"

    .prologue
    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 682
    new-array v0, v4, [Ljava/lang/Integer;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v2

    invoke-virtual {p0, v0}, Lnet/yostore/aws/view/navigate/PlayListActivity$naviToTask;->publishProgress([Ljava/lang/Object;)V

    .line 683
    sget-object v0, Lnet/yostore/aws/view/navigate/PlayListActivity;->nav:Lnet/yostore/aws/view/navigate/PlayListHandler;

    if-eqz v0, :cond_0

    .line 685
    invoke-static {}, Lnet/yostore/aws/view/navigate/PlayListActivity$naviToTask;->$SWITCH_TABLE$net$yostore$aws$view$navigate$PlayListActivity$NAVI()[I

    move-result-object v0

    iget-object v1, p0, Lnet/yostore/aws/view/navigate/PlayListActivity$naviToTask;->na:Lnet/yostore/aws/view/navigate/PlayListActivity$NAVI;

    invoke-virtual {v1}, Lnet/yostore/aws/view/navigate/PlayListActivity$NAVI;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 708
    :goto_0
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 710
    :goto_1
    return-object v0

    .line 687
    :pswitch_0
    iget-object v0, p0, Lnet/yostore/aws/view/navigate/PlayListActivity$naviToTask;->this$0:Lnet/yostore/aws/view/navigate/PlayListActivity;

    sget-object v1, Lnet/yostore/aws/view/navigate/PlayListActivity;->nav:Lnet/yostore/aws/view/navigate/PlayListHandler;

    invoke-virtual {v1}, Lnet/yostore/aws/view/navigate/PlayListHandler;->diveTop()Lnet/yostore/aws/view/navigate/BrowseAdapter;

    move-result-object v1

    invoke-static {v0, v1}, Lnet/yostore/aws/view/navigate/PlayListActivity;->access$3(Lnet/yostore/aws/view/navigate/PlayListActivity;Lnet/yostore/aws/view/navigate/BrowseAdapter;)V

    .line 688
    iget-object v0, p0, Lnet/yostore/aws/view/navigate/PlayListActivity$naviToTask;->this$0:Lnet/yostore/aws/view/navigate/PlayListActivity;

    invoke-static {v0}, Lnet/yostore/aws/view/navigate/PlayListActivity;->access$4(Lnet/yostore/aws/view/navigate/PlayListActivity;)Lnet/yostore/aws/view/navigate/BrowseAdapter;

    move-result-object v0

    sget-wide v1, Lcom/ecareme/mear/Mear;->meta_folder_id:J

    iput-wide v1, v0, Lnet/yostore/aws/view/navigate/BrowseAdapter;->browseFolderid:J

    goto :goto_0

    .line 691
    :pswitch_1
    iget-object v0, p0, Lnet/yostore/aws/view/navigate/PlayListActivity$naviToTask;->this$0:Lnet/yostore/aws/view/navigate/PlayListActivity;

    sget-object v1, Lnet/yostore/aws/view/navigate/PlayListActivity;->nav:Lnet/yostore/aws/view/navigate/PlayListHandler;

    invoke-virtual {v1}, Lnet/yostore/aws/view/navigate/PlayListHandler;->diveFloat()Lnet/yostore/aws/view/navigate/BrowseAdapter;

    move-result-object v1

    invoke-static {v0, v1}, Lnet/yostore/aws/view/navigate/PlayListActivity;->access$3(Lnet/yostore/aws/view/navigate/PlayListActivity;Lnet/yostore/aws/view/navigate/BrowseAdapter;)V

    .line 692
    iget-object v0, p0, Lnet/yostore/aws/view/navigate/PlayListActivity$naviToTask;->this$0:Lnet/yostore/aws/view/navigate/PlayListActivity;

    invoke-static {v0}, Lnet/yostore/aws/view/navigate/PlayListActivity;->access$4(Lnet/yostore/aws/view/navigate/PlayListActivity;)Lnet/yostore/aws/view/navigate/BrowseAdapter;

    move-result-object v0

    sget-wide v1, Lcom/ecareme/mear/Mear;->meta_folder_id:J

    iput-wide v1, v0, Lnet/yostore/aws/view/navigate/BrowseAdapter;->browseFolderid:J

    goto :goto_0

    .line 695
    :pswitch_2
    iget-object v0, p0, Lnet/yostore/aws/view/navigate/PlayListActivity$naviToTask;->this$0:Lnet/yostore/aws/view/navigate/PlayListActivity;

    sget-object v1, Lnet/yostore/aws/view/navigate/PlayListActivity;->nav:Lnet/yostore/aws/view/navigate/PlayListHandler;

    sget-object v2, Lnet/yostore/aws/view/navigate/PlayListActivity;->fi:Lnet/yostore/aws/handler/entity/FsInfo;

    iget-object v2, v2, Lnet/yostore/aws/handler/entity/FsInfo;->display:Ljava/lang/String;

    sget-object v3, Lnet/yostore/aws/view/navigate/PlayListActivity;->fi:Lnet/yostore/aws/handler/entity/FsInfo;

    iget-object v3, v3, Lnet/yostore/aws/handler/entity/FsInfo;->id:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lnet/yostore/aws/view/navigate/PlayListHandler;->diveDeep(Ljava/lang/String;Ljava/lang/String;)Lnet/yostore/aws/view/navigate/BrowseAdapter;

    move-result-object v1

    invoke-static {v0, v1}, Lnet/yostore/aws/view/navigate/PlayListActivity;->access$3(Lnet/yostore/aws/view/navigate/PlayListActivity;Lnet/yostore/aws/view/navigate/BrowseAdapter;)V

    .line 696
    iget-object v0, p0, Lnet/yostore/aws/view/navigate/PlayListActivity$naviToTask;->this$0:Lnet/yostore/aws/view/navigate/PlayListActivity;

    invoke-static {v0}, Lnet/yostore/aws/view/navigate/PlayListActivity;->access$4(Lnet/yostore/aws/view/navigate/PlayListActivity;)Lnet/yostore/aws/view/navigate/BrowseAdapter;

    move-result-object v0

    sget-object v1, Lnet/yostore/aws/view/navigate/PlayListActivity;->fi:Lnet/yostore/aws/handler/entity/FsInfo;

    iget-object v1, v1, Lnet/yostore/aws/handler/entity/FsInfo;->id:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, v0, Lnet/yostore/aws/view/navigate/BrowseAdapter;->browseFolderid:J

    goto :goto_0

    .line 699
    :pswitch_3
    iget-object v0, p0, Lnet/yostore/aws/view/navigate/PlayListActivity$naviToTask;->this$0:Lnet/yostore/aws/view/navigate/PlayListActivity;

    sget-object v1, Lnet/yostore/aws/view/navigate/PlayListActivity;->nav:Lnet/yostore/aws/view/navigate/PlayListHandler;

    invoke-virtual {v1}, Lnet/yostore/aws/view/navigate/PlayListHandler;->diveHere()Lnet/yostore/aws/view/navigate/BrowseAdapter;

    move-result-object v1

    invoke-static {v0, v1}, Lnet/yostore/aws/view/navigate/PlayListActivity;->access$3(Lnet/yostore/aws/view/navigate/PlayListActivity;Lnet/yostore/aws/view/navigate/BrowseAdapter;)V

    goto :goto_0

    .line 702
    :pswitch_4
    iget-object v0, p0, Lnet/yostore/aws/view/navigate/PlayListActivity$naviToTask;->this$0:Lnet/yostore/aws/view/navigate/PlayListActivity;

    sget-object v1, Lnet/yostore/aws/view/navigate/PlayListActivity;->nav:Lnet/yostore/aws/view/navigate/PlayListHandler;

    sget-object v2, Lnet/yostore/aws/view/navigate/PlayListActivity;->fi:Lnet/yostore/aws/handler/entity/FsInfo;

    iget-object v2, v2, Lnet/yostore/aws/handler/entity/FsInfo;->display:Ljava/lang/String;

    sget-object v3, Lnet/yostore/aws/view/navigate/PlayListActivity;->fi:Lnet/yostore/aws/handler/entity/FsInfo;

    iget-object v3, v3, Lnet/yostore/aws/handler/entity/FsInfo;->id:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lnet/yostore/aws/view/navigate/PlayListHandler;->diveDeep(Ljava/lang/String;Ljava/lang/String;)Lnet/yostore/aws/view/navigate/BrowseAdapter;

    move-result-object v1

    invoke-static {v0, v1}, Lnet/yostore/aws/view/navigate/PlayListActivity;->access$3(Lnet/yostore/aws/view/navigate/PlayListActivity;Lnet/yostore/aws/view/navigate/BrowseAdapter;)V

    goto :goto_0

    .line 705
    :pswitch_5
    iget-object v0, p0, Lnet/yostore/aws/view/navigate/PlayListActivity$naviToTask;->this$0:Lnet/yostore/aws/view/navigate/PlayListActivity;

    sget-object v1, Lnet/yostore/aws/view/navigate/PlayListActivity;->nav:Lnet/yostore/aws/view/navigate/PlayListHandler;

    sget-object v2, Lnet/yostore/aws/view/navigate/PlayListActivity;->fi:Lnet/yostore/aws/handler/entity/FsInfo;

    iget-object v2, v2, Lnet/yostore/aws/handler/entity/FsInfo;->display:Ljava/lang/String;

    sget-object v3, Lnet/yostore/aws/view/navigate/PlayListActivity;->fi:Lnet/yostore/aws/handler/entity/FsInfo;

    iget-object v3, v3, Lnet/yostore/aws/handler/entity/FsInfo;->id:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lnet/yostore/aws/view/navigate/PlayListHandler;->diveDeep(Ljava/lang/String;Ljava/lang/String;)Lnet/yostore/aws/view/navigate/BrowseAdapter;

    move-result-object v1

    invoke-static {v0, v1}, Lnet/yostore/aws/view/navigate/PlayListActivity;->access$3(Lnet/yostore/aws/view/navigate/PlayListActivity;Lnet/yostore/aws/view/navigate/BrowseAdapter;)V

    goto/16 :goto_0

    .line 710
    :cond_0
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto/16 :goto_1

    .line 685
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lnet/yostore/aws/view/navigate/PlayListActivity$naviToTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected onCancelled()V
    .locals 1

    .prologue
    .line 717
    invoke-super {p0}, Landroid/os/AsyncTask;->onCancelled()V

    .line 718
    iget-object v0, p0, Lnet/yostore/aws/view/navigate/PlayListActivity$naviToTask;->mdialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 719
    iget-object v0, p0, Lnet/yostore/aws/view/navigate/PlayListActivity$naviToTask;->mdialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 721
    :cond_0
    return-void
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 5
    .parameter "result"

    .prologue
    .line 733
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 734
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 735
    .local v0, _msg:Landroid/os/Message;
    iget-object v1, p0, Lnet/yostore/aws/view/navigate/PlayListActivity$naviToTask;->this$0:Lnet/yostore/aws/view/navigate/PlayListActivity;

    invoke-static {v1}, Lnet/yostore/aws/view/navigate/PlayListActivity;->access$4(Lnet/yostore/aws/view/navigate/PlayListActivity;)Lnet/yostore/aws/view/navigate/BrowseAdapter;

    move-result-object v1

    if-nez v1, :cond_0

    .line 736
    iget-object v1, p0, Lnet/yostore/aws/view/navigate/PlayListActivity$naviToTask;->this$0:Lnet/yostore/aws/view/navigate/PlayListActivity;

    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lnet/yostore/aws/view/navigate/PlayListActivity$naviToTask;->this$0:Lnet/yostore/aws/view/navigate/PlayListActivity;

    const v4, 0x7f060011

    invoke-virtual {v3, v4}, Lnet/yostore/aws/view/navigate/PlayListActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lnet/yostore/aws/view/navigate/PlayListActivity;->nav:Lnet/yostore/aws/view/navigate/PlayListHandler;

    iget-object v3, v3, Lnet/yostore/aws/view/navigate/PlayListHandler;->errMsg:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lnet/yostore/aws/view/navigate/PlayListActivity;->access$6(Lnet/yostore/aws/view/navigate/PlayListActivity;Ljava/lang/String;)V

    .line 737
    const/16 v1, 0x78

    iput v1, v0, Landroid/os/Message;->what:I

    .line 741
    :goto_0
    iget-object v1, p0, Lnet/yostore/aws/view/navigate/PlayListActivity$naviToTask;->mdialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V

    .line 742
    iget-object v1, p0, Lnet/yostore/aws/view/navigate/PlayListActivity$naviToTask;->this$0:Lnet/yostore/aws/view/navigate/PlayListActivity;

    invoke-static {v1}, Lnet/yostore/aws/view/navigate/PlayListActivity;->access$7(Lnet/yostore/aws/view/navigate/PlayListActivity;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 747
    .end local v0           #_msg:Landroid/os/Message;
    :goto_1
    return-void

    .line 739
    .restart local v0       #_msg:Landroid/os/Message;
    :cond_0
    const/16 v1, 0xbe

    iput v1, v0, Landroid/os/Message;->what:I

    goto :goto_0

    .line 744
    .end local v0           #_msg:Landroid/os/Message;
    :cond_1
    iget-object v1, p0, Lnet/yostore/aws/view/navigate/PlayListActivity$naviToTask;->mdialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V

    goto :goto_1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lnet/yostore/aws/view/navigate/PlayListActivity$naviToTask;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Integer;)V
    .locals 5
    .parameter "values"

    .prologue
    const/4 v4, 0x1

    .line 727
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onProgressUpdate([Ljava/lang/Object;)V

    .line 728
    iget-object v0, p0, Lnet/yostore/aws/view/navigate/PlayListActivity$naviToTask;->this$0:Lnet/yostore/aws/view/navigate/PlayListActivity;

    invoke-static {v0}, Lnet/yostore/aws/view/navigate/PlayListActivity;->access$5(Lnet/yostore/aws/view/navigate/PlayListActivity;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lnet/yostore/aws/view/navigate/PlayListActivity$naviToTask;->this$0:Lnet/yostore/aws/view/navigate/PlayListActivity;

    const/high16 v2, 0x7f06

    invoke-virtual {v1, v2}, Lnet/yostore/aws/view/navigate/PlayListActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lnet/yostore/aws/view/navigate/PlayListActivity$naviToTask;->this$0:Lnet/yostore/aws/view/navigate/PlayListActivity;

    const v3, 0x7f06000d

    invoke-virtual {v2, v3}, Lnet/yostore/aws/view/navigate/PlayListActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2, v4, v4}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lnet/yostore/aws/view/navigate/PlayListActivity$naviToTask;->mdialog:Landroid/app/ProgressDialog;

    .line 729
    return-void
.end method

.method protected bridge varargs synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lnet/yostore/aws/view/navigate/PlayListActivity$naviToTask;->onProgressUpdate([Ljava/lang/Integer;)V

    return-void
.end method
