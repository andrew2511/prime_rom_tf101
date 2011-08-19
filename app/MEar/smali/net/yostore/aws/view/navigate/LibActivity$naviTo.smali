.class Lnet/yostore/aws/view/navigate/LibActivity$naviTo;
.super Landroid/os/AsyncTask;
.source "LibActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/yostore/aws/view/navigate/LibActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "naviTo"
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
.field private static synthetic $SWITCH_TABLE$net$yostore$aws$view$navigate$LibActivity$NAVI:[I


# instance fields
.field _msg:Landroid/os/Message;

.field private na:Lnet/yostore/aws/view/navigate/LibActivity$NAVI;

.field final synthetic this$0:Lnet/yostore/aws/view/navigate/LibActivity;


# direct methods
.method static synthetic $SWITCH_TABLE$net$yostore$aws$view$navigate$LibActivity$NAVI()[I
    .locals 3

    .prologue
    .line 1121
    sget-object v0, Lnet/yostore/aws/view/navigate/LibActivity$naviTo;->$SWITCH_TABLE$net$yostore$aws$view$navigate$LibActivity$NAVI:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lnet/yostore/aws/view/navigate/LibActivity$NAVI;->values()[Lnet/yostore/aws/view/navigate/LibActivity$NAVI;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lnet/yostore/aws/view/navigate/LibActivity$NAVI;->DEEP:Lnet/yostore/aws/view/navigate/LibActivity$NAVI;

    invoke-virtual {v1}, Lnet/yostore/aws/view/navigate/LibActivity$NAVI;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_5

    :goto_1
    :try_start_1
    sget-object v1, Lnet/yostore/aws/view/navigate/LibActivity$NAVI;->FLOAT:Lnet/yostore/aws/view/navigate/LibActivity$NAVI;

    invoke-virtual {v1}, Lnet/yostore/aws/view/navigate/LibActivity$NAVI;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_4

    :goto_2
    :try_start_2
    sget-object v1, Lnet/yostore/aws/view/navigate/LibActivity$NAVI;->HERE:Lnet/yostore/aws/view/navigate/LibActivity$NAVI;

    invoke-virtual {v1}, Lnet/yostore/aws/view/navigate/LibActivity$NAVI;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_3

    :goto_3
    :try_start_3
    sget-object v1, Lnet/yostore/aws/view/navigate/LibActivity$NAVI;->SEARCH_DEEP:Lnet/yostore/aws/view/navigate/LibActivity$NAVI;

    invoke-virtual {v1}, Lnet/yostore/aws/view/navigate/LibActivity$NAVI;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_2

    :goto_4
    :try_start_4
    sget-object v1, Lnet/yostore/aws/view/navigate/LibActivity$NAVI;->SHARE_DEEP:Lnet/yostore/aws/view/navigate/LibActivity$NAVI;

    invoke-virtual {v1}, Lnet/yostore/aws/view/navigate/LibActivity$NAVI;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_1

    :goto_5
    :try_start_5
    sget-object v1, Lnet/yostore/aws/view/navigate/LibActivity$NAVI;->TOP:Lnet/yostore/aws/view/navigate/LibActivity$NAVI;

    invoke-virtual {v1}, Lnet/yostore/aws/view/navigate/LibActivity$NAVI;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_0

    :goto_6
    sput-object v0, Lnet/yostore/aws/view/navigate/LibActivity$naviTo;->$SWITCH_TABLE$net$yostore$aws$view$navigate$LibActivity$NAVI:[I

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

.method public constructor <init>(Lnet/yostore/aws/view/navigate/LibActivity;Lnet/yostore/aws/view/navigate/LibActivity$NAVI;)V
    .locals 1
    .parameter
    .parameter "na"

    .prologue
    .line 1127
    iput-object p1, p0, Lnet/yostore/aws/view/navigate/LibActivity$naviTo;->this$0:Lnet/yostore/aws/view/navigate/LibActivity;

    .line 1125
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 1124
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    iput-object v0, p0, Lnet/yostore/aws/view/navigate/LibActivity$naviTo;->_msg:Landroid/os/Message;

    .line 1126
    iput-object p2, p0, Lnet/yostore/aws/view/navigate/LibActivity$naviTo;->na:Lnet/yostore/aws/view/navigate/LibActivity$NAVI;

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;
    .locals 4
    .parameter "params"

    .prologue
    .line 1132
    invoke-static {}, Lnet/yostore/aws/view/navigate/LibActivity$naviTo;->$SWITCH_TABLE$net$yostore$aws$view$navigate$LibActivity$NAVI()[I

    move-result-object v0

    iget-object v1, p0, Lnet/yostore/aws/view/navigate/LibActivity$naviTo;->this$0:Lnet/yostore/aws/view/navigate/LibActivity;

    invoke-static {v1}, Lnet/yostore/aws/view/navigate/LibActivity;->access$15(Lnet/yostore/aws/view/navigate/LibActivity;)Lnet/yostore/aws/view/navigate/LibActivity$NAVI;

    move-result-object v1

    invoke-virtual {v1}, Lnet/yostore/aws/view/navigate/LibActivity$NAVI;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 1140
    :goto_0
    iget-object v0, p0, Lnet/yostore/aws/view/navigate/LibActivity$naviTo;->this$0:Lnet/yostore/aws/view/navigate/LibActivity;

    invoke-static {v0}, Lnet/yostore/aws/view/navigate/LibActivity;->access$9(Lnet/yostore/aws/view/navigate/LibActivity;)Lnet/yostore/aws/view/navigate/BrowseAdapter;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1141
    iget-object v0, p0, Lnet/yostore/aws/view/navigate/LibActivity$naviTo;->this$0:Lnet/yostore/aws/view/navigate/LibActivity;

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lnet/yostore/aws/view/navigate/LibActivity$naviTo;->this$0:Lnet/yostore/aws/view/navigate/LibActivity;

    const v3, 0x7f060011

    invoke-virtual {v2, v3}, Lnet/yostore/aws/view/navigate/LibActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lnet/yostore/aws/view/navigate/LibActivity;->nav:Lnet/yostore/aws/view/navigate/LibHandler;

    iget-object v2, v2, Lnet/yostore/aws/view/navigate/LibHandler;->errMsg:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lnet/yostore/aws/view/navigate/LibActivity;->access$13(Lnet/yostore/aws/view/navigate/LibActivity;Ljava/lang/String;)V

    .line 1142
    iget-object v0, p0, Lnet/yostore/aws/view/navigate/LibActivity$naviTo;->_msg:Landroid/os/Message;

    const/16 v1, 0x78

    iput v1, v0, Landroid/os/Message;->what:I

    .line 1143
    iget-object v0, p0, Lnet/yostore/aws/view/navigate/LibActivity$naviTo;->this$0:Lnet/yostore/aws/view/navigate/LibActivity;

    invoke-static {v0}, Lnet/yostore/aws/view/navigate/LibActivity;->access$14(Lnet/yostore/aws/view/navigate/LibActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lnet/yostore/aws/view/navigate/LibActivity$naviTo;->_msg:Landroid/os/Message;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1149
    :goto_1
    const/4 v0, 0x0

    return-object v0

    .line 1135
    :pswitch_0
    iget-object v0, p0, Lnet/yostore/aws/view/navigate/LibActivity$naviTo;->_msg:Landroid/os/Message;

    const/16 v1, 0x64

    iput v1, v0, Landroid/os/Message;->what:I

    .line 1136
    iget-object v0, p0, Lnet/yostore/aws/view/navigate/LibActivity$naviTo;->this$0:Lnet/yostore/aws/view/navigate/LibActivity;

    invoke-static {v0}, Lnet/yostore/aws/view/navigate/LibActivity;->access$14(Lnet/yostore/aws/view/navigate/LibActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lnet/yostore/aws/view/navigate/LibActivity$naviTo;->_msg:Landroid/os/Message;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 1145
    :cond_0
    iget-object v0, p0, Lnet/yostore/aws/view/navigate/LibActivity$naviTo;->this$0:Lnet/yostore/aws/view/navigate/LibActivity;

    invoke-static {v0}, Lnet/yostore/aws/view/navigate/LibActivity;->access$9(Lnet/yostore/aws/view/navigate/LibActivity;)Lnet/yostore/aws/view/navigate/BrowseAdapter;

    move-result-object v0

    sget-wide v1, Lcom/ecareme/mear/Mear;->lib_folder_id:J

    iput-wide v1, v0, Lnet/yostore/aws/view/navigate/BrowseAdapter;->browseFolderid:J

    .line 1146
    iget-object v0, p0, Lnet/yostore/aws/view/navigate/LibActivity$naviTo;->_msg:Landroid/os/Message;

    const/16 v1, 0x6e

    iput v1, v0, Landroid/os/Message;->what:I

    .line 1147
    iget-object v0, p0, Lnet/yostore/aws/view/navigate/LibActivity$naviTo;->this$0:Lnet/yostore/aws/view/navigate/LibActivity;

    invoke-static {v0}, Lnet/yostore/aws/view/navigate/LibActivity;->access$14(Lnet/yostore/aws/view/navigate/LibActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lnet/yostore/aws/view/navigate/LibActivity$naviTo;->_msg:Landroid/os/Message;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_1

    .line 1132
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lnet/yostore/aws/view/navigate/LibActivity$naviTo;->doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 0
    .parameter "result"

    .prologue
    .line 1155
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lnet/yostore/aws/view/navigate/LibActivity$naviTo;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method
