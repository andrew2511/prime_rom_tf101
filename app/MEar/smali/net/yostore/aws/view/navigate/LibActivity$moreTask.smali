.class Lnet/yostore/aws/view/navigate/LibActivity$moreTask;
.super Landroid/os/AsyncTask;
.source "LibActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/yostore/aws/view/navigate/LibActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "moreTask"
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


# instance fields
.field _msg:Landroid/os/Message;

.field final synthetic this$0:Lnet/yostore/aws/view/navigate/LibActivity;


# direct methods
.method private constructor <init>(Lnet/yostore/aws/view/navigate/LibActivity;)V
    .locals 1
    .parameter

    .prologue
    .line 1158
    iput-object p1, p0, Lnet/yostore/aws/view/navigate/LibActivity$moreTask;->this$0:Lnet/yostore/aws/view/navigate/LibActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 1160
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    iput-object v0, p0, Lnet/yostore/aws/view/navigate/LibActivity$moreTask;->_msg:Landroid/os/Message;

    return-void
.end method

.method synthetic constructor <init>(Lnet/yostore/aws/view/navigate/LibActivity;Lnet/yostore/aws/view/navigate/LibActivity$moreTask;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1158
    invoke-direct {p0, p1}, Lnet/yostore/aws/view/navigate/LibActivity$moreTask;-><init>(Lnet/yostore/aws/view/navigate/LibActivity;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;
    .locals 7
    .parameter "params"

    .prologue
    const/4 v2, 0x0

    .line 1165
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Integer;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v2

    invoke-virtual {p0, v0}, Lnet/yostore/aws/view/navigate/LibActivity$moreTask;->publishProgress([Ljava/lang/Object;)V

    .line 1166
    iget-object v0, p0, Lnet/yostore/aws/view/navigate/LibActivity$moreTask;->this$0:Lnet/yostore/aws/view/navigate/LibActivity;

    iget-object v1, p0, Lnet/yostore/aws/view/navigate/LibActivity$moreTask;->this$0:Lnet/yostore/aws/view/navigate/LibActivity;

    invoke-static {v1}, Lnet/yostore/aws/view/navigate/LibActivity;->access$16(Lnet/yostore/aws/view/navigate/LibActivity;)Lnet/yostore/aws/view/navigate/LibHandler$ROOT;

    move-result-object v1

    iget-object v2, p0, Lnet/yostore/aws/view/navigate/LibActivity$moreTask;->this$0:Lnet/yostore/aws/view/navigate/LibActivity;

    invoke-static {v2}, Lnet/yostore/aws/view/navigate/LibActivity;->access$0(Lnet/yostore/aws/view/navigate/LibActivity;)Lnet/yostore/aws/api/ApiConfig;

    move-result-object v2

    iget-object v3, p0, Lnet/yostore/aws/view/navigate/LibActivity$moreTask;->this$0:Lnet/yostore/aws/view/navigate/LibActivity;

    invoke-static {v3}, Lnet/yostore/aws/view/navigate/LibActivity;->access$17(Lnet/yostore/aws/view/navigate/LibActivity;)Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lnet/yostore/aws/view/navigate/LibHandler;->getInstance(Landroid/content/Context;Lnet/yostore/aws/view/navigate/LibHandler$ROOT;Lnet/yostore/aws/api/ApiConfig;Landroid/content/SharedPreferences;)Lnet/yostore/aws/view/navigate/LibHandler;

    move-result-object v0

    sput-object v0, Lnet/yostore/aws/view/navigate/LibActivity;->nav:Lnet/yostore/aws/view/navigate/LibHandler;

    .line 1167
    sget-object v0, Lnet/yostore/aws/view/navigate/LibActivity;->nav:Lnet/yostore/aws/view/navigate/LibHandler;

    if-eqz v0, :cond_3

    sget-object v0, Lnet/yostore/aws/view/navigate/LibActivity;->nav:Lnet/yostore/aws/view/navigate/LibHandler;

    iget-object v0, v0, Lnet/yostore/aws/view/navigate/LibHandler;->errMsg:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_3

    .line 1168
    sget-object v0, Lnet/yostore/aws/view/navigate/LibActivity;->nav:Lnet/yostore/aws/view/navigate/LibHandler;

    iget-object v0, v0, Lnet/yostore/aws/view/navigate/LibHandler;->errMsg:Ljava/lang/String;

    const-string v1, "err.login.fail"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1169
    iget-object v0, p0, Lnet/yostore/aws/view/navigate/LibActivity$moreTask;->_msg:Landroid/os/Message;

    const/16 v1, 0x3c

    iput v1, v0, Landroid/os/Message;->what:I

    .line 1170
    iget-object v0, p0, Lnet/yostore/aws/view/navigate/LibActivity$moreTask;->this$0:Lnet/yostore/aws/view/navigate/LibActivity;

    invoke-static {v0}, Lnet/yostore/aws/view/navigate/LibActivity;->access$14(Lnet/yostore/aws/view/navigate/LibActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lnet/yostore/aws/view/navigate/LibActivity$moreTask;->_msg:Landroid/os/Message;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1188
    :cond_0
    :goto_0
    const/4 v0, 0x0

    return-object v0

    .line 1172
    :cond_1
    sget-object v0, Lnet/yostore/aws/view/navigate/LibActivity;->nav:Lnet/yostore/aws/view/navigate/LibHandler;

    iget-object v0, v0, Lnet/yostore/aws/view/navigate/LibHandler;->errMsg:Ljava/lang/String;

    const-string v1, "err.login.reject"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1173
    iget-object v0, p0, Lnet/yostore/aws/view/navigate/LibActivity$moreTask;->_msg:Landroid/os/Message;

    const/16 v1, 0x32

    iput v1, v0, Landroid/os/Message;->what:I

    .line 1174
    iget-object v0, p0, Lnet/yostore/aws/view/navigate/LibActivity$moreTask;->this$0:Lnet/yostore/aws/view/navigate/LibActivity;

    invoke-static {v0}, Lnet/yostore/aws/view/navigate/LibActivity;->access$14(Lnet/yostore/aws/view/navigate/LibActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lnet/yostore/aws/view/navigate/LibActivity$moreTask;->_msg:Landroid/os/Message;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 1176
    :cond_2
    sget-object v0, Lnet/yostore/aws/view/navigate/LibActivity;->nav:Lnet/yostore/aws/view/navigate/LibHandler;

    iget-object v0, v0, Lnet/yostore/aws/view/navigate/LibHandler;->errMsg:Ljava/lang/String;

    const-string v1, "err.login.freeze"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1177
    iget-object v0, p0, Lnet/yostore/aws/view/navigate/LibActivity$moreTask;->_msg:Landroid/os/Message;

    const/16 v1, 0x46

    iput v1, v0, Landroid/os/Message;->what:I

    .line 1178
    iget-object v0, p0, Lnet/yostore/aws/view/navigate/LibActivity$moreTask;->this$0:Lnet/yostore/aws/view/navigate/LibActivity;

    invoke-static {v0}, Lnet/yostore/aws/view/navigate/LibActivity;->access$14(Lnet/yostore/aws/view/navigate/LibActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lnet/yostore/aws/view/navigate/LibActivity$moreTask;->_msg:Landroid/os/Message;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 1183
    :cond_3
    sget-object v0, Lnet/yostore/aws/view/navigate/LibActivity;->nav:Lnet/yostore/aws/view/navigate/LibHandler;

    iget-object v1, p0, Lnet/yostore/aws/view/navigate/LibActivity$moreTask;->this$0:Lnet/yostore/aws/view/navigate/LibActivity;

    invoke-static {v1}, Lnet/yostore/aws/view/navigate/LibActivity;->access$9(Lnet/yostore/aws/view/navigate/LibActivity;)Lnet/yostore/aws/view/navigate/BrowseAdapter;

    move-result-object v1

    const-string v2, "1"

    iget-object v3, p0, Lnet/yostore/aws/view/navigate/LibActivity$moreTask;->this$0:Lnet/yostore/aws/view/navigate/LibActivity;

    invoke-static {v3}, Lnet/yostore/aws/view/navigate/LibActivity;->access$11(Lnet/yostore/aws/view/navigate/LibActivity;)Lnet/yostore/aws/handler/entity/Search;

    move-result-object v3

    invoke-virtual {v3}, Lnet/yostore/aws/handler/entity/Search;->getSrhopt()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    iget-object v3, p0, Lnet/yostore/aws/view/navigate/LibActivity$moreTask;->this$0:Lnet/yostore/aws/view/navigate/LibActivity;

    invoke-static {v3}, Lnet/yostore/aws/view/navigate/LibActivity;->access$11(Lnet/yostore/aws/view/navigate/LibActivity;)Lnet/yostore/aws/handler/entity/Search;

    move-result-object v3

    invoke-virtual {v3}, Lnet/yostore/aws/handler/entity/Search;->getName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lnet/yostore/aws/view/navigate/LibActivity$moreTask;->this$0:Lnet/yostore/aws/view/navigate/LibActivity;

    invoke-static {v4}, Lnet/yostore/aws/view/navigate/LibActivity;->access$11(Lnet/yostore/aws/view/navigate/LibActivity;)Lnet/yostore/aws/handler/entity/Search;

    move-result-object v4

    invoke-virtual {v4}, Lnet/yostore/aws/handler/entity/Search;->getMark()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lnet/yostore/aws/view/navigate/LibActivity$moreTask;->this$0:Lnet/yostore/aws/view/navigate/LibActivity;

    invoke-static {v5}, Lnet/yostore/aws/view/navigate/LibActivity;->access$11(Lnet/yostore/aws/view/navigate/LibActivity;)Lnet/yostore/aws/handler/entity/Search;

    move-result-object v5

    invoke-virtual {v5}, Lnet/yostore/aws/handler/entity/Search;->getExt()Ljava/lang/String;

    move-result-object v5

    sget v6, Lcom/ecareme/mear/Mear;->pageSize:I

    invoke-virtual/range {v0 .. v6}, Lnet/yostore/aws/view/navigate/LibHandler;->searchFileDir(Lnet/yostore/aws/view/navigate/BrowseAdapter;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 1185
    iget-object v0, p0, Lnet/yostore/aws/view/navigate/LibActivity$moreTask;->_msg:Landroid/os/Message;

    const/16 v1, 0x50

    iput v1, v0, Landroid/os/Message;->what:I

    .line 1186
    iget-object v0, p0, Lnet/yostore/aws/view/navigate/LibActivity$moreTask;->this$0:Lnet/yostore/aws/view/navigate/LibActivity;

    invoke-static {v0}, Lnet/yostore/aws/view/navigate/LibActivity;->access$14(Lnet/yostore/aws/view/navigate/LibActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lnet/yostore/aws/view/navigate/LibActivity$moreTask;->_msg:Landroid/os/Message;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0
.end method

.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lnet/yostore/aws/view/navigate/LibActivity$moreTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 0
    .parameter "result"

    .prologue
    .line 1205
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lnet/yostore/aws/view/navigate/LibActivity$moreTask;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Integer;)V
    .locals 6
    .parameter "values"

    .prologue
    const/4 v5, 0x1

    .line 1195
    const/4 v0, 0x0

    aget-object v0, p1, v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_0

    .line 1196
    iget-object v0, p0, Lnet/yostore/aws/view/navigate/LibActivity$moreTask;->this$0:Lnet/yostore/aws/view/navigate/LibActivity;

    iget-object v1, p0, Lnet/yostore/aws/view/navigate/LibActivity$moreTask;->this$0:Lnet/yostore/aws/view/navigate/LibActivity;

    invoke-static {v1}, Lnet/yostore/aws/view/navigate/LibActivity;->access$1(Lnet/yostore/aws/view/navigate/LibActivity;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lnet/yostore/aws/view/navigate/LibActivity$moreTask;->this$0:Lnet/yostore/aws/view/navigate/LibActivity;

    const/high16 v3, 0x7f06

    invoke-virtual {v2, v3}, Lnet/yostore/aws/view/navigate/LibActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lnet/yostore/aws/view/navigate/LibActivity$moreTask;->this$0:Lnet/yostore/aws/view/navigate/LibActivity;

    const v4, 0x7f06000d

    invoke-virtual {v3, v4}, Lnet/yostore/aws/view/navigate/LibActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3, v5, v5}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-static {v0, v1}, Lnet/yostore/aws/view/navigate/LibActivity;->access$2(Lnet/yostore/aws/view/navigate/LibActivity;Landroid/app/ProgressDialog;)V

    .line 1200
    :goto_0
    return-void

    .line 1198
    :cond_0
    iget-object v0, p0, Lnet/yostore/aws/view/navigate/LibActivity$moreTask;->this$0:Lnet/yostore/aws/view/navigate/LibActivity;

    invoke-static {v0}, Lnet/yostore/aws/view/navigate/LibActivity;->access$3(Lnet/yostore/aws/view/navigate/LibActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    goto :goto_0
.end method

.method protected bridge varargs synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lnet/yostore/aws/view/navigate/LibActivity$moreTask;->onProgressUpdate([Ljava/lang/Integer;)V

    return-void
.end method
