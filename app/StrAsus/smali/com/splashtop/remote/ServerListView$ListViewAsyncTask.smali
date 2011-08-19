.class Lcom/splashtop/remote/ServerListView$ListViewAsyncTask;
.super Landroid/os/AsyncTask;
.source "ServerListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/splashtop/remote/ServerListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ListViewAsyncTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Integer;",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field private handshakeSucceedArray:[Lcom/splashtop/remote/bean/MacBean;

.field private mac:Lcom/splashtop/remote/bean/MacBean;

.field final synthetic this$0:Lcom/splashtop/remote/ServerListView;

.field private type:I


# direct methods
.method constructor <init>(Lcom/splashtop/remote/ServerListView;)V
    .locals 0
    .parameter

    .prologue
    .line 225
    iput-object p1, p0, Lcom/splashtop/remote/ServerListView$ListViewAsyncTask;->this$0:Lcom/splashtop/remote/ServerListView;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 6
    .parameter "params"

    .prologue
    .line 232
    const/4 v4, 0x0

    aget-object v4, p1, v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iput v4, p0, Lcom/splashtop/remote/ServerListView$ListViewAsyncTask;->type:I

    .line 233
    iget v4, p0, Lcom/splashtop/remote/ServerListView$ListViewAsyncTask;->type:I

    packed-switch v4, :pswitch_data_0

    .line 254
    :goto_0
    const/4 v4, 0x0

    return-object v4

    .line 237
    :pswitch_0
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    iget-object v4, p0, Lcom/splashtop/remote/ServerListView$ListViewAsyncTask;->this$0:Lcom/splashtop/remote/ServerListView;

    invoke-static {v4}, Lcom/splashtop/remote/ServerListView;->access$200(Lcom/splashtop/remote/ServerListView;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_0

    .line 238
    iget-object v4, p0, Lcom/splashtop/remote/ServerListView$ListViewAsyncTask;->this$0:Lcom/splashtop/remote/ServerListView;

    invoke-static {v4}, Lcom/splashtop/remote/ServerListView;->access$200(Lcom/splashtop/remote/ServerListView;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/splashtop/remote/bean/MacBean;

    invoke-virtual {v4}, Lcom/splashtop/remote/bean/MacBean;->getMacAddr()Ljava/lang/String;

    move-result-object v2

    .line 240
    .local v2, mac_addr:Ljava/lang/String;
    :try_start_0
    invoke-static {v2}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v3

    .line 241
    .local v3, server_ip:Ljava/net/InetAddress;
    iget-object v4, p0, Lcom/splashtop/remote/ServerListView$ListViewAsyncTask;->this$0:Lcom/splashtop/remote/ServerListView;

    invoke-static {v4}, Lcom/splashtop/remote/ServerListView;->access$200(Lcom/splashtop/remote/ServerListView;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/splashtop/remote/bean/MacBean;

    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/splashtop/remote/bean/MacBean;->setMacIP(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    .line 237
    .end local v3           #server_ip:Ljava/net/InetAddress;
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 242
    :catch_0
    move-exception v4

    move-object v0, v4

    .line 243
    .local v0, ex:Ljava/net/UnknownHostException;
    iget-object v4, p0, Lcom/splashtop/remote/ServerListView$ListViewAsyncTask;->this$0:Lcom/splashtop/remote/ServerListView;

    invoke-static {v4}, Lcom/splashtop/remote/ServerListView;->access$200(Lcom/splashtop/remote/ServerListView;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/splashtop/remote/bean/MacBean;

    const-string v5, "0.0.0.0"

    invoke-virtual {v4, v5}, Lcom/splashtop/remote/bean/MacBean;->setMacIP(Ljava/lang/String;)V

    goto :goto_2

    .line 246
    .end local v0           #ex:Ljava/net/UnknownHostException;
    .end local v2           #mac_addr:Ljava/lang/String;
    :cond_0
    iget-object v4, p0, Lcom/splashtop/remote/ServerListView$ListViewAsyncTask;->this$0:Lcom/splashtop/remote/ServerListView;

    invoke-static {v4}, Lcom/splashtop/remote/ServerListView;->access$200(Lcom/splashtop/remote/ServerListView;)Ljava/util/List;

    move-result-object v4

    iget-object v5, p0, Lcom/splashtop/remote/ServerListView$ListViewAsyncTask;->this$0:Lcom/splashtop/remote/ServerListView;

    invoke-static {v5}, Lcom/splashtop/remote/ServerListView;->access$200(Lcom/splashtop/remote/ServerListView;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    new-array v5, v5, [Lcom/splashtop/remote/bean/MacBean;

    invoke-interface {v4, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lcom/splashtop/remote/bean/MacBean;

    check-cast v4, [Lcom/splashtop/remote/bean/MacBean;

    const/4 v5, 0x4

    invoke-static {v4, v5}, Lcom/splashtop/remote/JNILib;->nativeHandshakeServer([Lcom/splashtop/remote/bean/MacBean;I)[Lcom/splashtop/remote/bean/MacBean;

    move-result-object v4

    iput-object v4, p0, Lcom/splashtop/remote/ServerListView$ListViewAsyncTask;->handshakeSucceedArray:[Lcom/splashtop/remote/bean/MacBean;

    goto :goto_0

    .line 249
    .end local v1           #i:I
    :pswitch_1
    invoke-static {}, Lcom/splashtop/remote/JNILib;->nativeGetServerItem()Lcom/splashtop/remote/bean/MacBean;

    move-result-object v4

    iput-object v4, p0, Lcom/splashtop/remote/ServerListView$ListViewAsyncTask;->mac:Lcom/splashtop/remote/bean/MacBean;

    goto :goto_0

    .line 233
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 225
    check-cast p1, [Ljava/lang/Integer;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/splashtop/remote/ServerListView$ListViewAsyncTask;->doInBackground([Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 11
    .parameter "result"

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 259
    iget v8, p0, Lcom/splashtop/remote/ServerListView$ListViewAsyncTask;->type:I

    packed-switch v8, :pswitch_data_0

    .line 296
    :goto_0
    return-void

    .line 261
    :pswitch_0
    iget-object v8, p0, Lcom/splashtop/remote/ServerListView$ListViewAsyncTask;->handshakeSucceedArray:[Lcom/splashtop/remote/bean/MacBean;

    if-eqz v8, :cond_4

    .line 262
    iget-object v8, p0, Lcom/splashtop/remote/ServerListView$ListViewAsyncTask;->handshakeSucceedArray:[Lcom/splashtop/remote/bean/MacBean;

    array-length v3, v8

    .line 265
    .local v3, length:I
    iget-object v8, p0, Lcom/splashtop/remote/ServerListView$ListViewAsyncTask;->this$0:Lcom/splashtop/remote/ServerListView;

    invoke-static {v8}, Lcom/splashtop/remote/ServerListView;->access$200(Lcom/splashtop/remote/ServerListView;)Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/splashtop/remote/bean/MacBean;

    .line 266
    .local v6, mb:Lcom/splashtop/remote/bean/MacBean;
    invoke-virtual {v6}, Lcom/splashtop/remote/bean/MacBean;->getMacAddr()Ljava/lang/String;

    move-result-object v4

    .line 268
    .local v4, macaddr:Ljava/lang/String;
    :try_start_0
    invoke-static {v4}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v7

    .line 269
    .local v7, serverip:Ljava/net/InetAddress;
    invoke-virtual {v7}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 273
    .end local v7           #serverip:Ljava/net/InetAddress;
    .local v5, macip:Ljava/lang/String;
    :goto_2
    if-nez v3, :cond_1

    .line 274
    invoke-virtual {v6, v9}, Lcom/splashtop/remote/bean/MacBean;->setMacOnline(Z)V

    goto :goto_1

    .line 270
    .end local v5           #macip:Ljava/lang/String;
    :catch_0
    move-exception v8

    move-object v0, v8

    .line 271
    .local v0, ex:Ljava/net/UnknownHostException;
    const-string v5, "0.0.0.0"

    .restart local v5       #macip:Ljava/lang/String;
    goto :goto_2

    .line 277
    .end local v0           #ex:Ljava/net/UnknownHostException;
    :cond_1
    const/4 v2, 0x0

    .local v2, j:I
    :goto_3
    if-ge v2, v3, :cond_0

    .line 278
    iget-object v8, p0, Lcom/splashtop/remote/ServerListView$ListViewAsyncTask;->handshakeSucceedArray:[Lcom/splashtop/remote/bean/MacBean;

    aget-object v8, v8, v2

    invoke-virtual {v8}, Lcom/splashtop/remote/bean/MacBean;->getMacIP()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 279
    invoke-virtual {v6, v10}, Lcom/splashtop/remote/bean/MacBean;->setMacOnline(Z)V

    goto :goto_1

    .line 281
    :cond_2
    sub-int v8, v3, v10

    if-ne v2, v8, :cond_3

    .line 282
    invoke-virtual {v6, v9}, Lcom/splashtop/remote/bean/MacBean;->setMacOnline(Z)V

    .line 277
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 287
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #j:I
    .end local v3           #length:I
    .end local v4           #macaddr:Ljava/lang/String;
    .end local v5           #macip:Ljava/lang/String;
    .end local v6           #mb:Lcom/splashtop/remote/bean/MacBean;
    :cond_4
    iget-object v8, p0, Lcom/splashtop/remote/ServerListView$ListViewAsyncTask;->this$0:Lcom/splashtop/remote/ServerListView;

    invoke-static {v8}, Lcom/splashtop/remote/ServerListView;->access$000(Lcom/splashtop/remote/ServerListView;)Lcom/splashtop/remote/ServerListAdapter;

    move-result-object v8

    invoke-virtual {v8}, Lcom/splashtop/remote/ServerListAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 290
    :pswitch_1
    iget-object v8, p0, Lcom/splashtop/remote/ServerListView$ListViewAsyncTask;->this$0:Lcom/splashtop/remote/ServerListView;

    iget-object v9, p0, Lcom/splashtop/remote/ServerListView$ListViewAsyncTask;->mac:Lcom/splashtop/remote/bean/MacBean;

    invoke-virtual {v8, v9}, Lcom/splashtop/remote/ServerListView;->preparedToAdd(Lcom/splashtop/remote/bean/MacBean;)V

    .line 291
    iget-object v8, p0, Lcom/splashtop/remote/ServerListView$ListViewAsyncTask;->this$0:Lcom/splashtop/remote/ServerListView;

    invoke-static {v8}, Lcom/splashtop/remote/ServerListView;->access$300(Lcom/splashtop/remote/ServerListView;)V

    goto :goto_0

    .line 259
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 225
    check-cast p1, Ljava/lang/Integer;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/splashtop/remote/ServerListView$ListViewAsyncTask;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method
