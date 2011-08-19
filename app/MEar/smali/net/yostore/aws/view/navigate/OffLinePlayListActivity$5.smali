.class Lnet/yostore/aws/view/navigate/OffLinePlayListActivity$5;
.super Ljava/lang/Thread;
.source "OffLinePlayListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/yostore/aws/view/navigate/OffLinePlayListActivity;->naviTo(Lnet/yostore/aws/view/navigate/OffLinePlayListActivity$NAVI;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static synthetic $SWITCH_TABLE$net$yostore$aws$view$navigate$OffLinePlayListActivity$NAVI:[I


# instance fields
.field final synthetic this$0:Lnet/yostore/aws/view/navigate/OffLinePlayListActivity;


# direct methods
.method static synthetic $SWITCH_TABLE$net$yostore$aws$view$navigate$OffLinePlayListActivity$NAVI()[I
    .locals 3

    .prologue
    .line 235
    sget-object v0, Lnet/yostore/aws/view/navigate/OffLinePlayListActivity$5;->$SWITCH_TABLE$net$yostore$aws$view$navigate$OffLinePlayListActivity$NAVI:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lnet/yostore/aws/view/navigate/OffLinePlayListActivity$NAVI;->values()[Lnet/yostore/aws/view/navigate/OffLinePlayListActivity$NAVI;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lnet/yostore/aws/view/navigate/OffLinePlayListActivity$NAVI;->DEEP:Lnet/yostore/aws/view/navigate/OffLinePlayListActivity$NAVI;

    invoke-virtual {v1}, Lnet/yostore/aws/view/navigate/OffLinePlayListActivity$NAVI;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_5

    :goto_1
    :try_start_1
    sget-object v1, Lnet/yostore/aws/view/navigate/OffLinePlayListActivity$NAVI;->FLOAT:Lnet/yostore/aws/view/navigate/OffLinePlayListActivity$NAVI;

    invoke-virtual {v1}, Lnet/yostore/aws/view/navigate/OffLinePlayListActivity$NAVI;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_4

    :goto_2
    :try_start_2
    sget-object v1, Lnet/yostore/aws/view/navigate/OffLinePlayListActivity$NAVI;->HERE:Lnet/yostore/aws/view/navigate/OffLinePlayListActivity$NAVI;

    invoke-virtual {v1}, Lnet/yostore/aws/view/navigate/OffLinePlayListActivity$NAVI;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_3

    :goto_3
    :try_start_3
    sget-object v1, Lnet/yostore/aws/view/navigate/OffLinePlayListActivity$NAVI;->SEARCH_DEEP:Lnet/yostore/aws/view/navigate/OffLinePlayListActivity$NAVI;

    invoke-virtual {v1}, Lnet/yostore/aws/view/navigate/OffLinePlayListActivity$NAVI;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_2

    :goto_4
    :try_start_4
    sget-object v1, Lnet/yostore/aws/view/navigate/OffLinePlayListActivity$NAVI;->SHARE_DEEP:Lnet/yostore/aws/view/navigate/OffLinePlayListActivity$NAVI;

    invoke-virtual {v1}, Lnet/yostore/aws/view/navigate/OffLinePlayListActivity$NAVI;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_1

    :goto_5
    :try_start_5
    sget-object v1, Lnet/yostore/aws/view/navigate/OffLinePlayListActivity$NAVI;->TOP:Lnet/yostore/aws/view/navigate/OffLinePlayListActivity$NAVI;

    invoke-virtual {v1}, Lnet/yostore/aws/view/navigate/OffLinePlayListActivity$NAVI;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_0

    :goto_6
    sput-object v0, Lnet/yostore/aws/view/navigate/OffLinePlayListActivity$5;->$SWITCH_TABLE$net$yostore$aws$view$navigate$OffLinePlayListActivity$NAVI:[I

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

.method constructor <init>(Lnet/yostore/aws/view/navigate/OffLinePlayListActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lnet/yostore/aws/view/navigate/OffLinePlayListActivity$5;->this$0:Lnet/yostore/aws/view/navigate/OffLinePlayListActivity;

    .line 235
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method static synthetic access$1(Lnet/yostore/aws/view/navigate/OffLinePlayListActivity$5;)Lnet/yostore/aws/view/navigate/OffLinePlayListActivity;
    .locals 1
    .parameter

    .prologue
    .line 235
    iget-object v0, p0, Lnet/yostore/aws/view/navigate/OffLinePlayListActivity$5;->this$0:Lnet/yostore/aws/view/navigate/OffLinePlayListActivity;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 238
    invoke-static {}, Lnet/yostore/aws/view/navigate/OffLinePlayListActivity$5;->$SWITCH_TABLE$net$yostore$aws$view$navigate$OffLinePlayListActivity$NAVI()[I

    move-result-object v0

    iget-object v1, p0, Lnet/yostore/aws/view/navigate/OffLinePlayListActivity$5;->this$0:Lnet/yostore/aws/view/navigate/OffLinePlayListActivity;

    invoke-static {v1}, Lnet/yostore/aws/view/navigate/OffLinePlayListActivity;->access$7(Lnet/yostore/aws/view/navigate/OffLinePlayListActivity;)Lnet/yostore/aws/view/navigate/OffLinePlayListActivity$NAVI;

    move-result-object v1

    invoke-virtual {v1}, Lnet/yostore/aws/view/navigate/OffLinePlayListActivity$NAVI;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 265
    :cond_0
    :goto_0
    iget-object v0, p0, Lnet/yostore/aws/view/navigate/OffLinePlayListActivity$5;->this$0:Lnet/yostore/aws/view/navigate/OffLinePlayListActivity;

    invoke-static {v0}, Lnet/yostore/aws/view/navigate/OffLinePlayListActivity;->access$3(Lnet/yostore/aws/view/navigate/OffLinePlayListActivity;)Lnet/yostore/aws/view/navigate/BrowseAdapter;

    move-result-object v0

    if-nez v0, :cond_2

    .line 266
    iget-object v0, p0, Lnet/yostore/aws/view/navigate/OffLinePlayListActivity$5;->this$0:Lnet/yostore/aws/view/navigate/OffLinePlayListActivity;

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lnet/yostore/aws/view/navigate/OffLinePlayListActivity$5;->this$0:Lnet/yostore/aws/view/navigate/OffLinePlayListActivity;

    const v3, 0x7f060011

    invoke-virtual {v2, v3}, Lnet/yostore/aws/view/navigate/OffLinePlayListActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lnet/yostore/aws/view/navigate/OffLinePlayListActivity;->nav:Lnet/yostore/aws/view/navigate/OffLinePlayListHandler;

    iget-object v2, v2, Lnet/yostore/aws/view/navigate/OffLinePlayListHandler;->errMsg:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lnet/yostore/aws/view/navigate/OffLinePlayListActivity;->access$11(Lnet/yostore/aws/view/navigate/OffLinePlayListActivity;Ljava/lang/String;)V

    .line 267
    iget-object v0, p0, Lnet/yostore/aws/view/navigate/OffLinePlayListActivity$5;->this$0:Lnet/yostore/aws/view/navigate/OffLinePlayListActivity;

    invoke-static {v0}, Lnet/yostore/aws/view/navigate/OffLinePlayListActivity;->access$9(Lnet/yostore/aws/view/navigate/OffLinePlayListActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lnet/yostore/aws/view/navigate/OffLinePlayListActivity$5;->this$0:Lnet/yostore/aws/view/navigate/OffLinePlayListActivity;

    invoke-static {v1}, Lnet/yostore/aws/view/navigate/OffLinePlayListActivity;->access$12(Lnet/yostore/aws/view/navigate/OffLinePlayListActivity;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 276
    :goto_1
    return-void

    .line 240
    :pswitch_0
    iget-object v0, p0, Lnet/yostore/aws/view/navigate/OffLinePlayListActivity$5;->this$0:Lnet/yostore/aws/view/navigate/OffLinePlayListActivity;

    sget-object v1, Lnet/yostore/aws/view/navigate/OffLinePlayListActivity;->nav:Lnet/yostore/aws/view/navigate/OffLinePlayListHandler;

    invoke-virtual {v1}, Lnet/yostore/aws/view/navigate/OffLinePlayListHandler;->diveTop()Lnet/yostore/aws/view/navigate/BrowseAdapter;

    move-result-object v1

    invoke-static {v0, v1}, Lnet/yostore/aws/view/navigate/OffLinePlayListActivity;->access$8(Lnet/yostore/aws/view/navigate/OffLinePlayListActivity;Lnet/yostore/aws/view/navigate/BrowseAdapter;)V

    .line 241
    iget-object v0, p0, Lnet/yostore/aws/view/navigate/OffLinePlayListActivity$5;->this$0:Lnet/yostore/aws/view/navigate/OffLinePlayListActivity;

    invoke-static {v0}, Lnet/yostore/aws/view/navigate/OffLinePlayListActivity;->access$3(Lnet/yostore/aws/view/navigate/OffLinePlayListActivity;)Lnet/yostore/aws/view/navigate/BrowseAdapter;

    move-result-object v0

    sget-wide v1, Lcom/ecareme/mear/Mear;->meta_folder_id:J

    iput-wide v1, v0, Lnet/yostore/aws/view/navigate/BrowseAdapter;->browseFolderid:J

    .line 242
    iget-object v0, p0, Lnet/yostore/aws/view/navigate/OffLinePlayListActivity$5;->this$0:Lnet/yostore/aws/view/navigate/OffLinePlayListActivity;

    invoke-static {v0}, Lnet/yostore/aws/view/navigate/OffLinePlayListActivity;->access$3(Lnet/yostore/aws/view/navigate/OffLinePlayListActivity;)Lnet/yostore/aws/view/navigate/BrowseAdapter;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lnet/yostore/aws/view/navigate/OffLinePlayListActivity$5;->this$0:Lnet/yostore/aws/view/navigate/OffLinePlayListActivity;

    invoke-static {v0}, Lnet/yostore/aws/view/navigate/OffLinePlayListActivity;->access$3(Lnet/yostore/aws/view/navigate/OffLinePlayListActivity;)Lnet/yostore/aws/view/navigate/BrowseAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lnet/yostore/aws/view/navigate/BrowseAdapter;->getCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 243
    :cond_1
    iget-object v0, p0, Lnet/yostore/aws/view/navigate/OffLinePlayListActivity$5;->this$0:Lnet/yostore/aws/view/navigate/OffLinePlayListActivity;

    invoke-static {v0}, Lnet/yostore/aws/view/navigate/OffLinePlayListActivity;->access$9(Lnet/yostore/aws/view/navigate/OffLinePlayListActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lnet/yostore/aws/view/navigate/OffLinePlayListActivity$5;->this$0:Lnet/yostore/aws/view/navigate/OffLinePlayListActivity;

    invoke-static {v1}, Lnet/yostore/aws/view/navigate/OffLinePlayListActivity;->access$10(Lnet/yostore/aws/view/navigate/OffLinePlayListActivity;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 247
    :pswitch_1
    iget-object v0, p0, Lnet/yostore/aws/view/navigate/OffLinePlayListActivity$5;->this$0:Lnet/yostore/aws/view/navigate/OffLinePlayListActivity;

    sget-object v1, Lnet/yostore/aws/view/navigate/OffLinePlayListActivity;->nav:Lnet/yostore/aws/view/navigate/OffLinePlayListHandler;

    invoke-virtual {v1}, Lnet/yostore/aws/view/navigate/OffLinePlayListHandler;->diveFloat()Lnet/yostore/aws/view/navigate/BrowseAdapter;

    move-result-object v1

    invoke-static {v0, v1}, Lnet/yostore/aws/view/navigate/OffLinePlayListActivity;->access$8(Lnet/yostore/aws/view/navigate/OffLinePlayListActivity;Lnet/yostore/aws/view/navigate/BrowseAdapter;)V

    .line 248
    iget-object v0, p0, Lnet/yostore/aws/view/navigate/OffLinePlayListActivity$5;->this$0:Lnet/yostore/aws/view/navigate/OffLinePlayListActivity;

    invoke-static {v0}, Lnet/yostore/aws/view/navigate/OffLinePlayListActivity;->access$3(Lnet/yostore/aws/view/navigate/OffLinePlayListActivity;)Lnet/yostore/aws/view/navigate/BrowseAdapter;

    move-result-object v0

    sget-wide v1, Lcom/ecareme/mear/Mear;->meta_folder_id:J

    iput-wide v1, v0, Lnet/yostore/aws/view/navigate/BrowseAdapter;->browseFolderid:J

    goto/16 :goto_0

    .line 251
    :pswitch_2
    iget-object v0, p0, Lnet/yostore/aws/view/navigate/OffLinePlayListActivity$5;->this$0:Lnet/yostore/aws/view/navigate/OffLinePlayListActivity;

    sget-object v1, Lnet/yostore/aws/view/navigate/OffLinePlayListActivity;->nav:Lnet/yostore/aws/view/navigate/OffLinePlayListHandler;

    sget-object v2, Lnet/yostore/aws/view/navigate/OffLinePlayListActivity;->fi:Lnet/yostore/aws/handler/entity/FsInfo;

    iget-object v2, v2, Lnet/yostore/aws/handler/entity/FsInfo;->display:Ljava/lang/String;

    sget-object v3, Lnet/yostore/aws/view/navigate/OffLinePlayListActivity;->fi:Lnet/yostore/aws/handler/entity/FsInfo;

    iget-object v3, v3, Lnet/yostore/aws/handler/entity/FsInfo;->id:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lnet/yostore/aws/view/navigate/OffLinePlayListHandler;->diveDeep(Ljava/lang/String;Ljava/lang/String;)Lnet/yostore/aws/view/navigate/BrowseAdapter;

    move-result-object v1

    invoke-static {v0, v1}, Lnet/yostore/aws/view/navigate/OffLinePlayListActivity;->access$8(Lnet/yostore/aws/view/navigate/OffLinePlayListActivity;Lnet/yostore/aws/view/navigate/BrowseAdapter;)V

    .line 252
    iget-object v0, p0, Lnet/yostore/aws/view/navigate/OffLinePlayListActivity$5;->this$0:Lnet/yostore/aws/view/navigate/OffLinePlayListActivity;

    invoke-static {v0}, Lnet/yostore/aws/view/navigate/OffLinePlayListActivity;->access$3(Lnet/yostore/aws/view/navigate/OffLinePlayListActivity;)Lnet/yostore/aws/view/navigate/BrowseAdapter;

    move-result-object v0

    sget-object v1, Lnet/yostore/aws/view/navigate/OffLinePlayListActivity;->fi:Lnet/yostore/aws/handler/entity/FsInfo;

    iget-object v1, v1, Lnet/yostore/aws/handler/entity/FsInfo;->id:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, v0, Lnet/yostore/aws/view/navigate/BrowseAdapter;->browseFolderid:J

    goto/16 :goto_0

    .line 255
    :pswitch_3
    iget-object v0, p0, Lnet/yostore/aws/view/navigate/OffLinePlayListActivity$5;->this$0:Lnet/yostore/aws/view/navigate/OffLinePlayListActivity;

    sget-object v1, Lnet/yostore/aws/view/navigate/OffLinePlayListActivity;->nav:Lnet/yostore/aws/view/navigate/OffLinePlayListHandler;

    invoke-virtual {v1}, Lnet/yostore/aws/view/navigate/OffLinePlayListHandler;->diveHere()Lnet/yostore/aws/view/navigate/BrowseAdapter;

    move-result-object v1

    invoke-static {v0, v1}, Lnet/yostore/aws/view/navigate/OffLinePlayListActivity;->access$8(Lnet/yostore/aws/view/navigate/OffLinePlayListActivity;Lnet/yostore/aws/view/navigate/BrowseAdapter;)V

    goto/16 :goto_0

    .line 258
    :pswitch_4
    iget-object v0, p0, Lnet/yostore/aws/view/navigate/OffLinePlayListActivity$5;->this$0:Lnet/yostore/aws/view/navigate/OffLinePlayListActivity;

    sget-object v1, Lnet/yostore/aws/view/navigate/OffLinePlayListActivity;->nav:Lnet/yostore/aws/view/navigate/OffLinePlayListHandler;

    sget-object v2, Lnet/yostore/aws/view/navigate/OffLinePlayListActivity;->fi:Lnet/yostore/aws/handler/entity/FsInfo;

    iget-object v2, v2, Lnet/yostore/aws/handler/entity/FsInfo;->display:Ljava/lang/String;

    sget-object v3, Lnet/yostore/aws/view/navigate/OffLinePlayListActivity;->fi:Lnet/yostore/aws/handler/entity/FsInfo;

    iget-object v3, v3, Lnet/yostore/aws/handler/entity/FsInfo;->id:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lnet/yostore/aws/view/navigate/OffLinePlayListHandler;->diveDeep(Ljava/lang/String;Ljava/lang/String;)Lnet/yostore/aws/view/navigate/BrowseAdapter;

    move-result-object v1

    invoke-static {v0, v1}, Lnet/yostore/aws/view/navigate/OffLinePlayListActivity;->access$8(Lnet/yostore/aws/view/navigate/OffLinePlayListActivity;Lnet/yostore/aws/view/navigate/BrowseAdapter;)V

    goto/16 :goto_0

    .line 261
    :pswitch_5
    iget-object v0, p0, Lnet/yostore/aws/view/navigate/OffLinePlayListActivity$5;->this$0:Lnet/yostore/aws/view/navigate/OffLinePlayListActivity;

    sget-object v1, Lnet/yostore/aws/view/navigate/OffLinePlayListActivity;->nav:Lnet/yostore/aws/view/navigate/OffLinePlayListHandler;

    sget-object v2, Lnet/yostore/aws/view/navigate/OffLinePlayListActivity;->fi:Lnet/yostore/aws/handler/entity/FsInfo;

    iget-object v2, v2, Lnet/yostore/aws/handler/entity/FsInfo;->display:Ljava/lang/String;

    sget-object v3, Lnet/yostore/aws/view/navigate/OffLinePlayListActivity;->fi:Lnet/yostore/aws/handler/entity/FsInfo;

    iget-object v3, v3, Lnet/yostore/aws/handler/entity/FsInfo;->id:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lnet/yostore/aws/view/navigate/OffLinePlayListHandler;->diveDeep(Ljava/lang/String;Ljava/lang/String;)Lnet/yostore/aws/view/navigate/BrowseAdapter;

    move-result-object v1

    invoke-static {v0, v1}, Lnet/yostore/aws/view/navigate/OffLinePlayListActivity;->access$8(Lnet/yostore/aws/view/navigate/OffLinePlayListActivity;Lnet/yostore/aws/view/navigate/BrowseAdapter;)V

    goto/16 :goto_0

    .line 269
    :cond_2
    iget-object v0, p0, Lnet/yostore/aws/view/navigate/OffLinePlayListActivity$5;->this$0:Lnet/yostore/aws/view/navigate/OffLinePlayListActivity;

    invoke-static {v0}, Lnet/yostore/aws/view/navigate/OffLinePlayListActivity;->access$9(Lnet/yostore/aws/view/navigate/OffLinePlayListActivity;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lnet/yostore/aws/view/navigate/OffLinePlayListActivity$5$1;

    invoke-direct {v1, p0}, Lnet/yostore/aws/view/navigate/OffLinePlayListActivity$5$1;-><init>(Lnet/yostore/aws/view/navigate/OffLinePlayListActivity$5;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_1

    .line 238
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
