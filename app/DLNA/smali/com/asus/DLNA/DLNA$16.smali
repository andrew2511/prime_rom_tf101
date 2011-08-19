.class Lcom/asus/DLNA/DLNA$16;
.super Ljava/lang/Object;
.source "DLNA.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/asus/DLNA/DLNA;->TabWidgetListener()V
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
    .line 1174
    iput-object p1, p0, Lcom/asus/DLNA/DLNA$16;->this$0:Lcom/asus/DLNA/DLNA;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter "v"

    .prologue
    const/4 v5, -0x1

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1176
    iget-object v2, p0, Lcom/asus/DLNA/DLNA$16;->this$0:Lcom/asus/DLNA/DLNA;

    invoke-static {v2}, Lcom/asus/DLNA/DLNA;->access$1600(Lcom/asus/DLNA/DLNA;)Lcom/asus/DLNA/DLNA$DeviceListAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/asus/DLNA/DLNA$DeviceListAdapter;->getNowPOS()I

    move-result v1

    .line 1178
    .local v1, iSelectedSource:I
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1179
    .local v0, iClickedTab:I
    iget-object v2, p0, Lcom/asus/DLNA/DLNA$16;->this$0:Lcom/asus/DLNA/DLNA;

    invoke-static {v2}, Lcom/asus/DLNA/DLNA;->access$2700(Lcom/asus/DLNA/DLNA;)Landroid/widget/TabWidget;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/TabWidget;->setCurrentTab(I)V

    .line 1181
    iget-object v2, p0, Lcom/asus/DLNA/DLNA$16;->this$0:Lcom/asus/DLNA/DLNA;

    invoke-static {v2}, Lcom/asus/DLNA/DLNA;->access$1700(Lcom/asus/DLNA/DLNA;)Lcom/asus/DLNA/SendServerCMD;

    move-result-object v2

    invoke-virtual {v2}, Lcom/asus/DLNA/SendServerCMD;->cpStopQueryingContent()V

    .line 1183
    iget-object v2, p0, Lcom/asus/DLNA/DLNA$16;->this$0:Lcom/asus/DLNA/DLNA;

    invoke-static {v2}, Lcom/asus/DLNA/DLNA;->access$2300(Lcom/asus/DLNA/DLNA;)Lcom/asus/DLNA/DLNA$RemoteContentListAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/asus/DLNA/DLNA$RemoteContentListAdapter;->doClearAllQueuedCMD()V

    .line 1184
    iget-object v2, p0, Lcom/asus/DLNA/DLNA$16;->this$0:Lcom/asus/DLNA/DLNA;

    invoke-virtual {v2}, Lcom/asus/DLNA/DLNA;->fnClearBitmapItems()V

    .line 1187
    iget-object v2, p0, Lcom/asus/DLNA/DLNA$16;->this$0:Lcom/asus/DLNA/DLNA;

    invoke-static {v2}, Lcom/asus/DLNA/DLNA;->access$200(Lcom/asus/DLNA/DLNA;)Lcom/asus/DLNA/MediaControl;

    move-result-object v2

    invoke-virtual {v2}, Lcom/asus/DLNA/MediaControl;->clickOnStopBTN()V

    .line 1188
    iget-object v2, p0, Lcom/asus/DLNA/DLNA$16;->this$0:Lcom/asus/DLNA/DLNA;

    invoke-static {v2}, Lcom/asus/DLNA/DLNA;->access$200(Lcom/asus/DLNA/DLNA;)Lcom/asus/DLNA/MediaControl;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/asus/DLNA/MediaControl;->hideControllerPannel(Z)V

    .line 1189
    iget-object v2, p0, Lcom/asus/DLNA/DLNA$16;->this$0:Lcom/asus/DLNA/DLNA;

    invoke-static {v2}, Lcom/asus/DLNA/DLNA;->access$2800(Lcom/asus/DLNA/DLNA;)V

    .line 1191
    iget-object v2, p0, Lcom/asus/DLNA/DLNA$16;->this$0:Lcom/asus/DLNA/DLNA;

    invoke-static {v2}, Lcom/asus/DLNA/DLNA;->access$900(Lcom/asus/DLNA/DLNA;)Lcom/asus/DLNA/DLNA$LocalContentListAdapter;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/asus/DLNA/DLNA$LocalContentListAdapter;->updateNowPlayingIndicator(I)V

    .line 1192
    iget-object v2, p0, Lcom/asus/DLNA/DLNA$16;->this$0:Lcom/asus/DLNA/DLNA;

    invoke-static {v2}, Lcom/asus/DLNA/DLNA;->access$2300(Lcom/asus/DLNA/DLNA;)Lcom/asus/DLNA/DLNA$RemoteContentListAdapter;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/asus/DLNA/DLNA$RemoteContentListAdapter;->updateNowPlayingIndicator(I)V

    .line 1195
    iget-object v2, p0, Lcom/asus/DLNA/DLNA$16;->this$0:Lcom/asus/DLNA/DLNA;

    invoke-static {v2}, Lcom/asus/DLNA/DLNA;->access$2100(Lcom/asus/DLNA/DLNA;)Lcom/asus/DLNA/DLNA$RenderListAdapter;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/asus/DLNA/DLNA$RenderListAdapter;->updateNowPlayingIndicator(I)V

    .line 1196
    iget-object v2, p0, Lcom/asus/DLNA/DLNA$16;->this$0:Lcom/asus/DLNA/DLNA;

    invoke-static {v2}, Lcom/asus/DLNA/DLNA;->access$200(Lcom/asus/DLNA/DLNA;)Lcom/asus/DLNA/MediaControl;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/asus/DLNA/MediaControl;->updateRenderDevice(I)V

    .line 1197
    iget-object v2, p0, Lcom/asus/DLNA/DLNA$16;->this$0:Lcom/asus/DLNA/DLNA;

    invoke-static {v2}, Lcom/asus/DLNA/DLNA;->access$2100(Lcom/asus/DLNA/DLNA;)Lcom/asus/DLNA/DLNA$RenderListAdapter;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/asus/DLNA/DLNA$RenderListAdapter;->switchToAnotherRender(I)V

    .line 1199
    packed-switch v0, :pswitch_data_0

    .line 1215
    :goto_0
    if-nez v1, :cond_2

    .line 1216
    iget-object v2, p0, Lcom/asus/DLNA/DLNA$16;->this$0:Lcom/asus/DLNA/DLNA;

    invoke-static {v2}, Lcom/asus/DLNA/DLNA;->access$2200(Lcom/asus/DLNA/DLNA;)Lcom/asus/DLNA/ItemList;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/asus/DLNA/DLNA$16;->this$0:Lcom/asus/DLNA/DLNA;

    invoke-static {v2}, Lcom/asus/DLNA/DLNA;->access$2200(Lcom/asus/DLNA/DLNA;)Lcom/asus/DLNA/ItemList;

    move-result-object v2

    invoke-virtual {v2}, Lcom/asus/DLNA/ItemList;->clear()V

    .line 1217
    :cond_0
    iget-object v2, p0, Lcom/asus/DLNA/DLNA$16;->this$0:Lcom/asus/DLNA/DLNA;

    invoke-static {v2}, Lcom/asus/DLNA/DLNA;->access$700(Lcom/asus/DLNA/DLNA;)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/asus/DLNA/DLNA$16;->this$0:Lcom/asus/DLNA/DLNA;

    invoke-static {v2}, Lcom/asus/DLNA/DLNA;->access$700(Lcom/asus/DLNA/DLNA;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 1218
    :cond_1
    iget-object v2, p0, Lcom/asus/DLNA/DLNA$16;->this$0:Lcom/asus/DLNA/DLNA;

    invoke-static {v2}, Lcom/asus/DLNA/DLNA;->access$900(Lcom/asus/DLNA/DLNA;)Lcom/asus/DLNA/DLNA$LocalContentListAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/asus/DLNA/DLNA$LocalContentListAdapter;->notifyDataSetChanged()V

    .line 1219
    iget-object v2, p0, Lcom/asus/DLNA/DLNA$16;->this$0:Lcom/asus/DLNA/DLNA;

    iget-object v3, p0, Lcom/asus/DLNA/DLNA$16;->this$0:Lcom/asus/DLNA/DLNA;

    invoke-static {v3}, Lcom/asus/DLNA/DLNA;->access$2900(Lcom/asus/DLNA/DLNA;)Z

    move-result v3

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/asus/DLNA/DLNA;->access$3000(Lcom/asus/DLNA/DLNA;Z[J)V

    .line 1231
    :goto_1
    iget-object v2, p0, Lcom/asus/DLNA/DLNA$16;->this$0:Lcom/asus/DLNA/DLNA;

    iget-object v3, p0, Lcom/asus/DLNA/DLNA$16;->this$0:Lcom/asus/DLNA/DLNA;

    invoke-static {v3}, Lcom/asus/DLNA/DLNA;->access$200(Lcom/asus/DLNA/DLNA;)Lcom/asus/DLNA/MediaControl;

    move-result-object v3

    invoke-virtual {v3}, Lcom/asus/DLNA/MediaControl;->getNowFilterType()I

    move-result v3

    invoke-static {v2, v3}, Lcom/asus/DLNA/DLNA;->access$3102(Lcom/asus/DLNA/DLNA;I)I

    .line 1233
    return-void

    .line 1201
    :pswitch_0
    iget-object v2, p0, Lcom/asus/DLNA/DLNA$16;->this$0:Lcom/asus/DLNA/DLNA;

    invoke-static {v2}, Lcom/asus/DLNA/DLNA;->access$200(Lcom/asus/DLNA/DLNA;)Lcom/asus/DLNA/MediaControl;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/asus/DLNA/MediaControl;->updateNowFilterType(I)V

    .line 1202
    iget-object v2, p0, Lcom/asus/DLNA/DLNA$16;->this$0:Lcom/asus/DLNA/DLNA;

    invoke-static {v2}, Lcom/asus/DLNA/DLNA;->access$200(Lcom/asus/DLNA/DLNA;)Lcom/asus/DLNA/MediaControl;

    move-result-object v2

    invoke-virtual {v2}, Lcom/asus/DLNA/MediaControl;->switchToMusicPanel()V

    goto :goto_0

    .line 1205
    :pswitch_1
    iget-object v2, p0, Lcom/asus/DLNA/DLNA$16;->this$0:Lcom/asus/DLNA/DLNA;

    invoke-static {v2}, Lcom/asus/DLNA/DLNA;->access$200(Lcom/asus/DLNA/DLNA;)Lcom/asus/DLNA/MediaControl;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/asus/DLNA/MediaControl;->updateNowFilterType(I)V

    .line 1206
    iget-object v2, p0, Lcom/asus/DLNA/DLNA$16;->this$0:Lcom/asus/DLNA/DLNA;

    invoke-static {v2}, Lcom/asus/DLNA/DLNA;->access$200(Lcom/asus/DLNA/DLNA;)Lcom/asus/DLNA/MediaControl;

    move-result-object v2

    invoke-virtual {v2}, Lcom/asus/DLNA/MediaControl;->switchToPhotoPanel()V

    goto :goto_0

    .line 1209
    :pswitch_2
    iget-object v2, p0, Lcom/asus/DLNA/DLNA$16;->this$0:Lcom/asus/DLNA/DLNA;

    invoke-static {v2}, Lcom/asus/DLNA/DLNA;->access$200(Lcom/asus/DLNA/DLNA;)Lcom/asus/DLNA/MediaControl;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/asus/DLNA/MediaControl;->updateNowFilterType(I)V

    .line 1210
    iget-object v2, p0, Lcom/asus/DLNA/DLNA$16;->this$0:Lcom/asus/DLNA/DLNA;

    invoke-static {v2}, Lcom/asus/DLNA/DLNA;->access$200(Lcom/asus/DLNA/DLNA;)Lcom/asus/DLNA/MediaControl;

    move-result-object v2

    invoke-virtual {v2}, Lcom/asus/DLNA/MediaControl;->switchToVideoPanel()V

    goto/16 :goto_0

    .line 1221
    :cond_2
    iget-object v2, p0, Lcom/asus/DLNA/DLNA$16;->this$0:Lcom/asus/DLNA/DLNA;

    invoke-static {v2, v4}, Lcom/asus/DLNA/DLNA;->access$1900(Lcom/asus/DLNA/DLNA;Z)V

    .line 1223
    iget-object v2, p0, Lcom/asus/DLNA/DLNA$16;->this$0:Lcom/asus/DLNA/DLNA;

    invoke-static {v2}, Lcom/asus/DLNA/DLNA;->access$2200(Lcom/asus/DLNA/DLNA;)Lcom/asus/DLNA/ItemList;

    move-result-object v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/asus/DLNA/DLNA$16;->this$0:Lcom/asus/DLNA/DLNA;

    invoke-static {v2}, Lcom/asus/DLNA/DLNA;->access$2200(Lcom/asus/DLNA/DLNA;)Lcom/asus/DLNA/ItemList;

    move-result-object v2

    invoke-virtual {v2}, Lcom/asus/DLNA/ItemList;->clear()V

    .line 1224
    :cond_3
    iget-object v2, p0, Lcom/asus/DLNA/DLNA$16;->this$0:Lcom/asus/DLNA/DLNA;

    invoke-static {v2}, Lcom/asus/DLNA/DLNA;->access$700(Lcom/asus/DLNA/DLNA;)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/asus/DLNA/DLNA$16;->this$0:Lcom/asus/DLNA/DLNA;

    invoke-static {v2}, Lcom/asus/DLNA/DLNA;->access$700(Lcom/asus/DLNA/DLNA;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 1225
    :cond_4
    iget-object v2, p0, Lcom/asus/DLNA/DLNA$16;->this$0:Lcom/asus/DLNA/DLNA;

    invoke-static {v2}, Lcom/asus/DLNA/DLNA;->access$2300(Lcom/asus/DLNA/DLNA;)Lcom/asus/DLNA/DLNA$RemoteContentListAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/asus/DLNA/DLNA$RemoteContentListAdapter;->notifyDataSetChanged()V

    .line 1228
    iget-object v2, p0, Lcom/asus/DLNA/DLNA$16;->this$0:Lcom/asus/DLNA/DLNA;

    invoke-static {v2}, Lcom/asus/DLNA/DLNA;->access$1700(Lcom/asus/DLNA/DLNA;)Lcom/asus/DLNA/SendServerCMD;

    move-result-object v2

    invoke-virtual {v2}, Lcom/asus/DLNA/SendServerCMD;->cpReQueryAgain()V

    goto/16 :goto_1

    .line 1199
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
