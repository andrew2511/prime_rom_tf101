.class Lcom/asus/DLNA/DLNA$13;
.super Landroid/os/Handler;
.source "DLNA.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/asus/DLNA/DLNA;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/asus/DLNA/DLNA;


# direct methods
.method constructor <init>(Lcom/asus/DLNA/DLNA;)V
    .locals 0
    .parameter

    .prologue
    .line 875
    iput-object p1, p0, Lcom/asus/DLNA/DLNA$13;->this$0:Lcom/asus/DLNA/DLNA;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 13
    .parameter "msg"

    .prologue
    const-wide/16 v11, 0x0

    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 877
    iget v5, p1, Landroid/os/Message;->what:I

    sparse-switch v5, :sswitch_data_0

    .line 1021
    :cond_0
    :goto_0
    return-void

    .line 879
    :sswitch_0
    const-string v5, "DLNA"

    const-string v6, "(add source) Server list need to be updated now!!"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 880
    iget-object v5, p0, Lcom/asus/DLNA/DLNA$13;->this$0:Lcom/asus/DLNA/DLNA;

    invoke-static {v5}, Lcom/asus/DLNA/DLNA;->access$1500(Lcom/asus/DLNA/DLNA;)Lcom/asus/DLNA/ServerList;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 881
    iget-object v5, p0, Lcom/asus/DLNA/DLNA$13;->this$0:Lcom/asus/DLNA/DLNA;

    invoke-static {v5}, Lcom/asus/DLNA/DLNA;->access$1500(Lcom/asus/DLNA/DLNA;)Lcom/asus/DLNA/ServerList;

    move-result-object v5

    invoke-virtual {v5}, Lcom/asus/DLNA/ServerList;->clear()V

    .line 882
    iget-object v5, p0, Lcom/asus/DLNA/DLNA$13;->this$0:Lcom/asus/DLNA/DLNA;

    invoke-static {v5, v9}, Lcom/asus/DLNA/DLNA;->access$1502(Lcom/asus/DLNA/DLNA;Lcom/asus/DLNA/ServerList;)Lcom/asus/DLNA/ServerList;

    .line 884
    :cond_1
    iget-object v6, p0, Lcom/asus/DLNA/DLNA$13;->this$0:Lcom/asus/DLNA/DLNA;

    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Lcom/asus/DLNA/ServerList;

    invoke-virtual {v5}, Lcom/asus/DLNA/ServerList;->clone()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/asus/DLNA/ServerList;

    invoke-static {v6, v5}, Lcom/asus/DLNA/DLNA;->access$1502(Lcom/asus/DLNA/DLNA;Lcom/asus/DLNA/ServerList;)Lcom/asus/DLNA/ServerList;

    .line 885
    iget-object v5, p0, Lcom/asus/DLNA/DLNA$13;->this$0:Lcom/asus/DLNA/DLNA;

    invoke-static {v5}, Lcom/asus/DLNA/DLNA;->access$1600(Lcom/asus/DLNA/DLNA;)Lcom/asus/DLNA/DLNA$DeviceListAdapter;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 886
    iget-object v5, p0, Lcom/asus/DLNA/DLNA$13;->this$0:Lcom/asus/DLNA/DLNA;

    invoke-static {v5}, Lcom/asus/DLNA/DLNA;->access$1600(Lcom/asus/DLNA/DLNA;)Lcom/asus/DLNA/DLNA$DeviceListAdapter;

    move-result-object v5

    invoke-virtual {v5}, Lcom/asus/DLNA/DLNA$DeviceListAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 894
    :sswitch_1
    const-string v5, "DLNA"

    const-string v6, "(remove source)Server list need to be updated now!!"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 895
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 896
    .local v0, b:Landroid/os/Bundle;
    const-string v5, "removeitem"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 897
    .local v3, iRemovedPOS:I
    add-int/lit8 v3, v3, 0x1

    .line 898
    const-string v5, "DLNA"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "the source device, "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", was removed!!"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 900
    const/4 v1, 0x0

    .line 901
    .local v1, bRemovedTheSelectedItem:Z
    iget-object v5, p0, Lcom/asus/DLNA/DLNA$13;->this$0:Lcom/asus/DLNA/DLNA;

    invoke-static {v5}, Lcom/asus/DLNA/DLNA;->access$1600(Lcom/asus/DLNA/DLNA;)Lcom/asus/DLNA/DLNA$DeviceListAdapter;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 902
    iget-object v5, p0, Lcom/asus/DLNA/DLNA$13;->this$0:Lcom/asus/DLNA/DLNA;

    invoke-static {v5}, Lcom/asus/DLNA/DLNA;->access$1600(Lcom/asus/DLNA/DLNA;)Lcom/asus/DLNA/DLNA$DeviceListAdapter;

    move-result-object v5

    invoke-virtual {v5}, Lcom/asus/DLNA/DLNA$DeviceListAdapter;->getNowPOS()I

    move-result v2

    .line 903
    .local v2, iNowSelectedPOS:I
    if-ne v3, v2, :cond_2

    .line 904
    const/4 v1, 0x1

    .line 906
    :cond_2
    iget-object v5, p0, Lcom/asus/DLNA/DLNA$13;->this$0:Lcom/asus/DLNA/DLNA;

    invoke-static {v5}, Lcom/asus/DLNA/DLNA;->access$1500(Lcom/asus/DLNA/DLNA;)Lcom/asus/DLNA/ServerList;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 907
    iget-object v5, p0, Lcom/asus/DLNA/DLNA$13;->this$0:Lcom/asus/DLNA/DLNA;

    invoke-static {v5}, Lcom/asus/DLNA/DLNA;->access$1500(Lcom/asus/DLNA/DLNA;)Lcom/asus/DLNA/ServerList;

    move-result-object v5

    invoke-virtual {v5}, Lcom/asus/DLNA/ServerList;->clear()V

    .line 908
    iget-object v5, p0, Lcom/asus/DLNA/DLNA$13;->this$0:Lcom/asus/DLNA/DLNA;

    invoke-static {v5, v9}, Lcom/asus/DLNA/DLNA;->access$1502(Lcom/asus/DLNA/DLNA;Lcom/asus/DLNA/ServerList;)Lcom/asus/DLNA/ServerList;

    .line 910
    :cond_3
    iget-object v6, p0, Lcom/asus/DLNA/DLNA$13;->this$0:Lcom/asus/DLNA/DLNA;

    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Lcom/asus/DLNA/ServerList;

    invoke-virtual {v5}, Lcom/asus/DLNA/ServerList;->clone()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/asus/DLNA/ServerList;

    invoke-static {v6, v5}, Lcom/asus/DLNA/DLNA;->access$1502(Lcom/asus/DLNA/DLNA;Lcom/asus/DLNA/ServerList;)Lcom/asus/DLNA/ServerList;

    .line 911
    iget-object v5, p0, Lcom/asus/DLNA/DLNA$13;->this$0:Lcom/asus/DLNA/DLNA;

    invoke-static {v5}, Lcom/asus/DLNA/DLNA;->access$1600(Lcom/asus/DLNA/DLNA;)Lcom/asus/DLNA/DLNA$DeviceListAdapter;

    move-result-object v5

    invoke-virtual {v5}, Lcom/asus/DLNA/DLNA$DeviceListAdapter;->notifyDataSetChanged()V

    .line 913
    iget-object v5, p0, Lcom/asus/DLNA/DLNA$13;->this$0:Lcom/asus/DLNA/DLNA;

    invoke-static {v5}, Lcom/asus/DLNA/DLNA;->access$900(Lcom/asus/DLNA/DLNA;)Lcom/asus/DLNA/DLNA$LocalContentListAdapter;

    move-result-object v5

    const/4 v6, -0x1

    invoke-virtual {v5, v6}, Lcom/asus/DLNA/DLNA$LocalContentListAdapter;->updateNowPlayingIndicator(I)V

    .line 914
    iget-object v5, p0, Lcom/asus/DLNA/DLNA$13;->this$0:Lcom/asus/DLNA/DLNA;

    invoke-static {v5}, Lcom/asus/DLNA/DLNA;->access$200(Lcom/asus/DLNA/DLNA;)Lcom/asus/DLNA/MediaControl;

    move-result-object v5

    invoke-virtual {v5, v10}, Lcom/asus/DLNA/MediaControl;->hideControllerPannel(Z)V

    .line 916
    if-eqz v1, :cond_4

    .line 917
    const-string v5, "DLNA"

    const-string v6, "the original selected server item was removed!!"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 919
    iget-object v5, p0, Lcom/asus/DLNA/DLNA$13;->this$0:Lcom/asus/DLNA/DLNA;

    invoke-static {v5}, Lcom/asus/DLNA/DLNA;->access$1700(Lcom/asus/DLNA/DLNA;)Lcom/asus/DLNA/SendServerCMD;

    move-result-object v5

    invoke-virtual {v5}, Lcom/asus/DLNA/SendServerCMD;->cpStopQueryingContent()V

    .line 921
    iget-object v5, p0, Lcom/asus/DLNA/DLNA$13;->this$0:Lcom/asus/DLNA/DLNA;

    invoke-static {v5}, Lcom/asus/DLNA/DLNA;->access$1800(Lcom/asus/DLNA/DLNA;)Landroid/widget/ListView;

    move-result-object v5

    invoke-virtual {v5, v9, v8, v11, v12}, Landroid/widget/ListView;->performItemClick(Landroid/view/View;IJ)Z

    .line 927
    :goto_1
    iget-object v5, p0, Lcom/asus/DLNA/DLNA$13;->this$0:Lcom/asus/DLNA/DLNA;

    invoke-static {v5, v8}, Lcom/asus/DLNA/DLNA;->access$1900(Lcom/asus/DLNA/DLNA;Z)V

    goto/16 :goto_0

    .line 924
    :cond_4
    iget-object v5, p0, Lcom/asus/DLNA/DLNA$13;->this$0:Lcom/asus/DLNA/DLNA;

    invoke-static {v5}, Lcom/asus/DLNA/DLNA;->access$1800(Lcom/asus/DLNA/DLNA;)Landroid/widget/ListView;

    move-result-object v5

    invoke-virtual {v5, v9, v8, v11, v12}, Landroid/widget/ListView;->performItemClick(Landroid/view/View;IJ)Z

    goto :goto_1

    .line 932
    .end local v0           #b:Landroid/os/Bundle;
    .end local v1           #bRemovedTheSelectedItem:Z
    .end local v2           #iNowSelectedPOS:I
    .end local v3           #iRemovedPOS:I
    :sswitch_2
    const-string v5, "DLNA"

    const-string v6, "(add Render) Render list need to be updated now!!"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 933
    iget-object v5, p0, Lcom/asus/DLNA/DLNA$13;->this$0:Lcom/asus/DLNA/DLNA;

    invoke-static {v5}, Lcom/asus/DLNA/DLNA;->access$2000(Lcom/asus/DLNA/DLNA;)Lcom/asus/DLNA/RendererList;

    move-result-object v5

    if-eqz v5, :cond_5

    .line 934
    iget-object v5, p0, Lcom/asus/DLNA/DLNA$13;->this$0:Lcom/asus/DLNA/DLNA;

    invoke-static {v5}, Lcom/asus/DLNA/DLNA;->access$2000(Lcom/asus/DLNA/DLNA;)Lcom/asus/DLNA/RendererList;

    move-result-object v5

    invoke-virtual {v5}, Lcom/asus/DLNA/RendererList;->clear()V

    .line 935
    iget-object v5, p0, Lcom/asus/DLNA/DLNA$13;->this$0:Lcom/asus/DLNA/DLNA;

    invoke-static {v5, v9}, Lcom/asus/DLNA/DLNA;->access$2002(Lcom/asus/DLNA/DLNA;Lcom/asus/DLNA/RendererList;)Lcom/asus/DLNA/RendererList;

    .line 938
    :cond_5
    iget-object v6, p0, Lcom/asus/DLNA/DLNA$13;->this$0:Lcom/asus/DLNA/DLNA;

    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Lcom/asus/DLNA/RendererList;

    invoke-virtual {v5}, Lcom/asus/DLNA/RendererList;->clone()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/asus/DLNA/RendererList;

    invoke-static {v6, v5}, Lcom/asus/DLNA/DLNA;->access$2002(Lcom/asus/DLNA/DLNA;Lcom/asus/DLNA/RendererList;)Lcom/asus/DLNA/RendererList;

    .line 940
    iget-object v5, p0, Lcom/asus/DLNA/DLNA$13;->this$0:Lcom/asus/DLNA/DLNA;

    invoke-static {v5}, Lcom/asus/DLNA/DLNA;->access$2100(Lcom/asus/DLNA/DLNA;)Lcom/asus/DLNA/DLNA$RenderListAdapter;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 941
    iget-object v5, p0, Lcom/asus/DLNA/DLNA$13;->this$0:Lcom/asus/DLNA/DLNA;

    invoke-static {v5}, Lcom/asus/DLNA/DLNA;->access$2100(Lcom/asus/DLNA/DLNA;)Lcom/asus/DLNA/DLNA$RenderListAdapter;

    move-result-object v5

    invoke-virtual {v5}, Lcom/asus/DLNA/DLNA$RenderListAdapter;->notifyDataSetChanged()V

    goto/16 :goto_0

    .line 946
    :sswitch_3
    const-string v5, "DLNA"

    const-string v6, "(remove Render) Render list need to be updated now!!"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 947
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 948
    .restart local v0       #b:Landroid/os/Bundle;
    const-string v5, "removeitem"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 949
    .restart local v3       #iRemovedPOS:I
    add-int/lit8 v3, v3, 0x1

    .line 950
    const-string v5, "DLNA"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "the render device, "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", was removed!!"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 952
    const/4 v1, 0x0

    .line 953
    .restart local v1       #bRemovedTheSelectedItem:Z
    iget-object v5, p0, Lcom/asus/DLNA/DLNA$13;->this$0:Lcom/asus/DLNA/DLNA;

    invoke-static {v5}, Lcom/asus/DLNA/DLNA;->access$2100(Lcom/asus/DLNA/DLNA;)Lcom/asus/DLNA/DLNA$RenderListAdapter;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 954
    iget-object v5, p0, Lcom/asus/DLNA/DLNA$13;->this$0:Lcom/asus/DLNA/DLNA;

    invoke-static {v5}, Lcom/asus/DLNA/DLNA;->access$2100(Lcom/asus/DLNA/DLNA;)Lcom/asus/DLNA/DLNA$RenderListAdapter;

    move-result-object v5

    invoke-virtual {v5}, Lcom/asus/DLNA/DLNA$RenderListAdapter;->getNowPOS()I

    move-result v2

    .line 955
    .restart local v2       #iNowSelectedPOS:I
    if-ne v3, v2, :cond_6

    .line 956
    const/4 v1, 0x1

    .line 958
    :cond_6
    iget-object v5, p0, Lcom/asus/DLNA/DLNA$13;->this$0:Lcom/asus/DLNA/DLNA;

    invoke-static {v5}, Lcom/asus/DLNA/DLNA;->access$2000(Lcom/asus/DLNA/DLNA;)Lcom/asus/DLNA/RendererList;

    move-result-object v5

    if-eqz v5, :cond_7

    .line 959
    iget-object v5, p0, Lcom/asus/DLNA/DLNA$13;->this$0:Lcom/asus/DLNA/DLNA;

    invoke-static {v5}, Lcom/asus/DLNA/DLNA;->access$2000(Lcom/asus/DLNA/DLNA;)Lcom/asus/DLNA/RendererList;

    move-result-object v5

    invoke-virtual {v5}, Lcom/asus/DLNA/RendererList;->clear()V

    .line 960
    iget-object v5, p0, Lcom/asus/DLNA/DLNA$13;->this$0:Lcom/asus/DLNA/DLNA;

    invoke-static {v5, v9}, Lcom/asus/DLNA/DLNA;->access$2002(Lcom/asus/DLNA/DLNA;Lcom/asus/DLNA/RendererList;)Lcom/asus/DLNA/RendererList;

    .line 963
    :cond_7
    iget-object v6, p0, Lcom/asus/DLNA/DLNA$13;->this$0:Lcom/asus/DLNA/DLNA;

    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Lcom/asus/DLNA/RendererList;

    invoke-virtual {v5}, Lcom/asus/DLNA/RendererList;->clone()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/asus/DLNA/RendererList;

    invoke-static {v6, v5}, Lcom/asus/DLNA/DLNA;->access$2002(Lcom/asus/DLNA/DLNA;Lcom/asus/DLNA/RendererList;)Lcom/asus/DLNA/RendererList;

    .line 964
    iget-object v5, p0, Lcom/asus/DLNA/DLNA$13;->this$0:Lcom/asus/DLNA/DLNA;

    invoke-static {v5}, Lcom/asus/DLNA/DLNA;->access$2100(Lcom/asus/DLNA/DLNA;)Lcom/asus/DLNA/DLNA$RenderListAdapter;

    move-result-object v5

    invoke-virtual {v5}, Lcom/asus/DLNA/DLNA$RenderListAdapter;->notifyDataSetChanged()V

    .line 966
    if-eqz v1, :cond_9

    .line 967
    const-string v5, "DLNA"

    const-string v6, "the original selected render item was removed!!"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 969
    iget-object v5, p0, Lcom/asus/DLNA/DLNA$13;->this$0:Lcom/asus/DLNA/DLNA;

    invoke-static {v5}, Lcom/asus/DLNA/DLNA;->access$1700(Lcom/asus/DLNA/DLNA;)Lcom/asus/DLNA/SendServerCMD;

    move-result-object v5

    invoke-virtual {v5}, Lcom/asus/DLNA/SendServerCMD;->cpStopQueryingContent()V

    .line 971
    iget-object v5, p0, Lcom/asus/DLNA/DLNA$13;->this$0:Lcom/asus/DLNA/DLNA;

    invoke-static {v5}, Lcom/asus/DLNA/DLNA;->access$2100(Lcom/asus/DLNA/DLNA;)Lcom/asus/DLNA/DLNA$RenderListAdapter;

    move-result-object v5

    invoke-virtual {v5, v8}, Lcom/asus/DLNA/DLNA$RenderListAdapter;->updateNowPlayingIndicator(I)V

    .line 972
    iget-object v5, p0, Lcom/asus/DLNA/DLNA$13;->this$0:Lcom/asus/DLNA/DLNA;

    invoke-static {v5}, Lcom/asus/DLNA/DLNA;->access$200(Lcom/asus/DLNA/DLNA;)Lcom/asus/DLNA/MediaControl;

    move-result-object v5

    invoke-virtual {v5, v8}, Lcom/asus/DLNA/MediaControl;->updateRenderDevice(I)V

    .line 978
    :cond_8
    :goto_2
    iget-object v5, p0, Lcom/asus/DLNA/DLNA$13;->this$0:Lcom/asus/DLNA/DLNA;

    invoke-static {v5, v8}, Lcom/asus/DLNA/DLNA;->access$1900(Lcom/asus/DLNA/DLNA;Z)V

    goto/16 :goto_0

    .line 974
    :cond_9
    if-ge v3, v2, :cond_8

    .line 975
    iget-object v5, p0, Lcom/asus/DLNA/DLNA$13;->this$0:Lcom/asus/DLNA/DLNA;

    invoke-static {v5}, Lcom/asus/DLNA/DLNA;->access$2100(Lcom/asus/DLNA/DLNA;)Lcom/asus/DLNA/DLNA$RenderListAdapter;

    move-result-object v5

    sub-int v6, v2, v10

    invoke-virtual {v5, v6}, Lcom/asus/DLNA/DLNA$RenderListAdapter;->updateNowPlayingIndicator(I)V

    goto :goto_2

    .line 983
    .end local v0           #b:Landroid/os/Bundle;
    .end local v1           #bRemovedTheSelectedItem:Z
    .end local v2           #iNowSelectedPOS:I
    .end local v3           #iRemovedPOS:I
    :sswitch_4
    const-string v5, "DLNA"

    const-string v6, "Query Content of server is completed!!"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 985
    iget-object v5, p0, Lcom/asus/DLNA/DLNA$13;->this$0:Lcom/asus/DLNA/DLNA;

    invoke-static {v5}, Lcom/asus/DLNA/DLNA;->access$2200(Lcom/asus/DLNA/DLNA;)Lcom/asus/DLNA/ItemList;

    move-result-object v5

    if-eqz v5, :cond_a

    .line 986
    iget-object v5, p0, Lcom/asus/DLNA/DLNA$13;->this$0:Lcom/asus/DLNA/DLNA;

    invoke-static {v5}, Lcom/asus/DLNA/DLNA;->access$2200(Lcom/asus/DLNA/DLNA;)Lcom/asus/DLNA/ItemList;

    move-result-object v5

    invoke-virtual {v5}, Lcom/asus/DLNA/ItemList;->clear()V

    .line 987
    iget-object v5, p0, Lcom/asus/DLNA/DLNA$13;->this$0:Lcom/asus/DLNA/DLNA;

    invoke-static {v5, v9}, Lcom/asus/DLNA/DLNA;->access$2202(Lcom/asus/DLNA/DLNA;Lcom/asus/DLNA/ItemList;)Lcom/asus/DLNA/ItemList;

    .line 989
    :cond_a
    iget-object v6, p0, Lcom/asus/DLNA/DLNA$13;->this$0:Lcom/asus/DLNA/DLNA;

    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Lcom/asus/DLNA/ItemList;

    invoke-virtual {v5}, Lcom/asus/DLNA/ItemList;->clone()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/asus/DLNA/ItemList;

    invoke-static {v6, v5}, Lcom/asus/DLNA/DLNA;->access$2202(Lcom/asus/DLNA/DLNA;Lcom/asus/DLNA/ItemList;)Lcom/asus/DLNA/ItemList;

    .line 990
    iget-object v5, p0, Lcom/asus/DLNA/DLNA$13;->this$0:Lcom/asus/DLNA/DLNA;

    invoke-static {v5}, Lcom/asus/DLNA/DLNA;->access$2300(Lcom/asus/DLNA/DLNA;)Lcom/asus/DLNA/DLNA$RemoteContentListAdapter;

    move-result-object v5

    if-eqz v5, :cond_b

    .line 991
    iget-object v5, p0, Lcom/asus/DLNA/DLNA$13;->this$0:Lcom/asus/DLNA/DLNA;

    invoke-static {v5}, Lcom/asus/DLNA/DLNA;->access$2300(Lcom/asus/DLNA/DLNA;)Lcom/asus/DLNA/DLNA$RemoteContentListAdapter;

    move-result-object v5

    invoke-virtual {v5}, Lcom/asus/DLNA/DLNA$RemoteContentListAdapter;->notifyDataSetChanged()V

    .line 993
    :cond_b
    iget-object v5, p0, Lcom/asus/DLNA/DLNA$13;->this$0:Lcom/asus/DLNA/DLNA;

    invoke-static {v5}, Lcom/asus/DLNA/DLNA;->access$200(Lcom/asus/DLNA/DLNA;)Lcom/asus/DLNA/MediaControl;

    move-result-object v5

    if-eqz v5, :cond_c

    .line 994
    iget-object v5, p0, Lcom/asus/DLNA/DLNA$13;->this$0:Lcom/asus/DLNA/DLNA;

    invoke-static {v5}, Lcom/asus/DLNA/DLNA;->access$200(Lcom/asus/DLNA/DLNA;)Lcom/asus/DLNA/MediaControl;

    move-result-object v5

    iget-object v6, p0, Lcom/asus/DLNA/DLNA$13;->this$0:Lcom/asus/DLNA/DLNA;

    invoke-static {v6}, Lcom/asus/DLNA/DLNA;->access$2200(Lcom/asus/DLNA/DLNA;)Lcom/asus/DLNA/ItemList;

    move-result-object v6

    invoke-virtual {v5, v9, v6}, Lcom/asus/DLNA/MediaControl;->updateContentList(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 996
    :cond_c
    iget-object v5, p0, Lcom/asus/DLNA/DLNA$13;->this$0:Lcom/asus/DLNA/DLNA;

    invoke-static {v5, v8}, Lcom/asus/DLNA/DLNA;->access$1900(Lcom/asus/DLNA/DLNA;Z)V

    goto/16 :goto_0

    .line 1002
    :sswitch_5
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 1003
    .local v4, ierrorCode:I
    iget-object v5, p0, Lcom/asus/DLNA/DLNA$13;->this$0:Lcom/asus/DLNA/DLNA;

    invoke-static {v5, v4}, Lcom/asus/DLNA/DLNA;->access$2400(Lcom/asus/DLNA/DLNA;I)V

    .line 1004
    iget-object v5, p0, Lcom/asus/DLNA/DLNA$13;->this$0:Lcom/asus/DLNA/DLNA;

    invoke-static {v5, v8}, Lcom/asus/DLNA/DLNA;->access$1900(Lcom/asus/DLNA/DLNA;Z)V

    goto/16 :goto_0

    .line 1010
    .end local v4           #ierrorCode:I
    :sswitch_6
    iget-object v5, p0, Lcom/asus/DLNA/DLNA$13;->this$0:Lcom/asus/DLNA/DLNA;

    invoke-virtual {v5}, Lcom/asus/DLNA/DLNA;->fnShowNoDLNADevice()V

    goto/16 :goto_0

    .line 1016
    :sswitch_7
    iget-object v5, p0, Lcom/asus/DLNA/DLNA$13;->this$0:Lcom/asus/DLNA/DLNA;

    invoke-virtual {v5}, Lcom/asus/DLNA/DLNA;->fnShowNotifyEnableDMSSetting()V

    goto/16 :goto_0

    .line 877
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x14 -> :sswitch_6
        0x15 -> :sswitch_7
        0x32 -> :sswitch_5
    .end sparse-switch
.end method
