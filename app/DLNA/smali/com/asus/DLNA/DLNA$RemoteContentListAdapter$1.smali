.class Lcom/asus/DLNA/DLNA$RemoteContentListAdapter$1;
.super Landroid/os/Handler;
.source "DLNA.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/asus/DLNA/DLNA$RemoteContentListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/asus/DLNA/DLNA$RemoteContentListAdapter;


# direct methods
.method constructor <init>(Lcom/asus/DLNA/DLNA$RemoteContentListAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 2041
    iput-object p1, p0, Lcom/asus/DLNA/DLNA$RemoteContentListAdapter$1;->this$1:Lcom/asus/DLNA/DLNA$RemoteContentListAdapter;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 2044
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 2062
    :cond_0
    :goto_0
    return-void

    .line 2046
    :pswitch_0
    iget-object v0, p0, Lcom/asus/DLNA/DLNA$RemoteContentListAdapter$1;->this$1:Lcom/asus/DLNA/DLNA$RemoteContentListAdapter;

    invoke-static {v0}, Lcom/asus/DLNA/DLNA$RemoteContentListAdapter;->access$5900(Lcom/asus/DLNA/DLNA$RemoteContentListAdapter;)Ljava/lang/Thread;

    move-result-object v0

    if-nez v0, :cond_1

    .line 2047
    iget-object v0, p0, Lcom/asus/DLNA/DLNA$RemoteContentListAdapter$1;->this$1:Lcom/asus/DLNA/DLNA$RemoteContentListAdapter;

    iget-object v1, p0, Lcom/asus/DLNA/DLNA$RemoteContentListAdapter$1;->this$1:Lcom/asus/DLNA/DLNA$RemoteContentListAdapter;

    invoke-static {v1}, Lcom/asus/DLNA/DLNA$RemoteContentListAdapter;->access$6000(Lcom/asus/DLNA/DLNA$RemoteContentListAdapter;)Ljava/lang/Thread;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/asus/DLNA/DLNA$RemoteContentListAdapter;->access$5902(Lcom/asus/DLNA/DLNA$RemoteContentListAdapter;Ljava/lang/Thread;)Ljava/lang/Thread;

    goto :goto_0

    .line 2049
    :cond_1
    sget-object v0, Ljava/lang/Thread$State;->TERMINATED:Ljava/lang/Thread$State;

    iget-object v1, p0, Lcom/asus/DLNA/DLNA$RemoteContentListAdapter$1;->this$1:Lcom/asus/DLNA/DLNA$RemoteContentListAdapter;

    invoke-static {v1}, Lcom/asus/DLNA/DLNA$RemoteContentListAdapter;->access$5900(Lcom/asus/DLNA/DLNA$RemoteContentListAdapter;)Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getState()Ljava/lang/Thread$State;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 2050
    iget-object v0, p0, Lcom/asus/DLNA/DLNA$RemoteContentListAdapter$1;->this$1:Lcom/asus/DLNA/DLNA$RemoteContentListAdapter;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/asus/DLNA/DLNA$RemoteContentListAdapter;->access$5902(Lcom/asus/DLNA/DLNA$RemoteContentListAdapter;Ljava/lang/Thread;)Ljava/lang/Thread;

    .line 2051
    iget-object v0, p0, Lcom/asus/DLNA/DLNA$RemoteContentListAdapter$1;->this$1:Lcom/asus/DLNA/DLNA$RemoteContentListAdapter;

    iget-object v1, p0, Lcom/asus/DLNA/DLNA$RemoteContentListAdapter$1;->this$1:Lcom/asus/DLNA/DLNA$RemoteContentListAdapter;

    invoke-static {v1}, Lcom/asus/DLNA/DLNA$RemoteContentListAdapter;->access$6000(Lcom/asus/DLNA/DLNA$RemoteContentListAdapter;)Ljava/lang/Thread;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/asus/DLNA/DLNA$RemoteContentListAdapter;->access$5902(Lcom/asus/DLNA/DLNA$RemoteContentListAdapter;Ljava/lang/Thread;)Ljava/lang/Thread;

    goto :goto_0

    .line 2057
    :pswitch_1
    iget-object v0, p0, Lcom/asus/DLNA/DLNA$RemoteContentListAdapter$1;->this$1:Lcom/asus/DLNA/DLNA$RemoteContentListAdapter;

    iget-object v0, v0, Lcom/asus/DLNA/DLNA$RemoteContentListAdapter;->this$0:Lcom/asus/DLNA/DLNA;

    invoke-static {v0}, Lcom/asus/DLNA/DLNA;->access$2300(Lcom/asus/DLNA/DLNA;)Lcom/asus/DLNA/DLNA$RemoteContentListAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2058
    iget-object v0, p0, Lcom/asus/DLNA/DLNA$RemoteContentListAdapter$1;->this$1:Lcom/asus/DLNA/DLNA$RemoteContentListAdapter;

    iget-object v0, v0, Lcom/asus/DLNA/DLNA$RemoteContentListAdapter;->this$0:Lcom/asus/DLNA/DLNA;

    invoke-static {v0}, Lcom/asus/DLNA/DLNA;->access$2300(Lcom/asus/DLNA/DLNA;)Lcom/asus/DLNA/DLNA$RemoteContentListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/asus/DLNA/DLNA$RemoteContentListAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 2044
    :pswitch_data_0
    .packed-switch 0x384
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
