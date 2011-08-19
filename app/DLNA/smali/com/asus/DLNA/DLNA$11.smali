.class Lcom/asus/DLNA/DLNA$11;
.super Landroid/content/BroadcastReceiver;
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
    .line 673
    iput-object p1, p0, Lcom/asus/DLNA/DLNA$11;->this$0:Lcom/asus/DLNA/DLNA;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v3, 0x0

    .line 676
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 678
    .local v0, act:Ljava/lang/String;
    const-string v1, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_1

    .line 679
    iget-object v1, p0, Lcom/asus/DLNA/DLNA$11;->this$0:Lcom/asus/DLNA/DLNA;

    invoke-static {v1}, Lcom/asus/DLNA/DLNA;->access$700(Lcom/asus/DLNA/DLNA;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 680
    iget-object v1, p0, Lcom/asus/DLNA/DLNA$11;->this$0:Lcom/asus/DLNA/DLNA;

    invoke-static {v1}, Lcom/asus/DLNA/DLNA;->access$200(Lcom/asus/DLNA/DLNA;)Lcom/asus/DLNA/MediaControl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/asus/DLNA/MediaControl;->getNowFilterType()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 695
    :goto_0
    :pswitch_0
    iget-object v1, p0, Lcom/asus/DLNA/DLNA$11;->this$0:Lcom/asus/DLNA/DLNA;

    invoke-static {v1}, Lcom/asus/DLNA/DLNA;->access$900(Lcom/asus/DLNA/DLNA;)Lcom/asus/DLNA/DLNA$LocalContentListAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/asus/DLNA/DLNA$LocalContentListAdapter;->notifyDataSetChanged()V

    .line 706
    :cond_0
    :goto_1
    return-void

    .line 682
    :pswitch_1
    iget-object v1, p0, Lcom/asus/DLNA/DLNA$11;->this$0:Lcom/asus/DLNA/DLNA;

    invoke-static {v1}, Lcom/asus/DLNA/DLNA;->access$800(Lcom/asus/DLNA/DLNA;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/asus/DLNA/DLNA$11;->this$0:Lcom/asus/DLNA/DLNA;

    invoke-static {v2}, Lcom/asus/DLNA/DLNA;->access$700(Lcom/asus/DLNA/DLNA;)Ljava/util/List;

    move-result-object v2

    invoke-static {v1, v2, v3}, Lcom/asus/DLNA/DB;->queryAllSongs(Landroid/content/Context;Ljava/util/List;I)V

    goto :goto_0

    .line 685
    :pswitch_2
    iget-object v1, p0, Lcom/asus/DLNA/DLNA$11;->this$0:Lcom/asus/DLNA/DLNA;

    invoke-static {v1}, Lcom/asus/DLNA/DLNA;->access$800(Lcom/asus/DLNA/DLNA;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/asus/DLNA/DLNA$11;->this$0:Lcom/asus/DLNA/DLNA;

    invoke-static {v2}, Lcom/asus/DLNA/DLNA;->access$700(Lcom/asus/DLNA/DLNA;)Ljava/util/List;

    move-result-object v2

    invoke-static {v1, v2, v3}, Lcom/asus/DLNA/DB;->queryAllImagesAndVideos(Landroid/content/Context;Ljava/util/List;I)V

    goto :goto_0

    .line 688
    :pswitch_3
    iget-object v1, p0, Lcom/asus/DLNA/DLNA$11;->this$0:Lcom/asus/DLNA/DLNA;

    invoke-static {v1}, Lcom/asus/DLNA/DLNA;->access$800(Lcom/asus/DLNA/DLNA;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/asus/DLNA/DLNA$11;->this$0:Lcom/asus/DLNA/DLNA;

    invoke-static {v2}, Lcom/asus/DLNA/DLNA;->access$700(Lcom/asus/DLNA/DLNA;)Ljava/util/List;

    move-result-object v2

    invoke-static {v1, v2, v3}, Lcom/asus/DLNA/DB;->queryAllImages(Landroid/content/Context;Ljava/util/List;I)V

    goto :goto_0

    .line 691
    :pswitch_4
    iget-object v1, p0, Lcom/asus/DLNA/DLNA$11;->this$0:Lcom/asus/DLNA/DLNA;

    invoke-static {v1}, Lcom/asus/DLNA/DLNA;->access$800(Lcom/asus/DLNA/DLNA;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/asus/DLNA/DLNA$11;->this$0:Lcom/asus/DLNA/DLNA;

    invoke-static {v2}, Lcom/asus/DLNA/DLNA;->access$700(Lcom/asus/DLNA/DLNA;)Ljava/util/List;

    move-result-object v2

    invoke-static {v1, v2, v3}, Lcom/asus/DLNA/DB;->queryAllVideos(Landroid/content/Context;Ljava/util/List;I)V

    goto :goto_0

    .line 696
    :cond_1
    const-string v1, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_2

    .line 697
    iget-object v1, p0, Lcom/asus/DLNA/DLNA$11;->this$0:Lcom/asus/DLNA/DLNA;

    invoke-static {v1}, Lcom/asus/DLNA/DLNA;->access$700(Lcom/asus/DLNA/DLNA;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 698
    iget-object v1, p0, Lcom/asus/DLNA/DLNA$11;->this$0:Lcom/asus/DLNA/DLNA;

    invoke-static {v1}, Lcom/asus/DLNA/DLNA;->access$900(Lcom/asus/DLNA/DLNA;)Lcom/asus/DLNA/DLNA$LocalContentListAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/asus/DLNA/DLNA$LocalContentListAdapter;->notifyDataSetChanged()V

    goto :goto_1

    .line 699
    :cond_2
    const-string v1, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_3

    .line 700
    iget-object v1, p0, Lcom/asus/DLNA/DLNA$11;->this$0:Lcom/asus/DLNA/DLNA;

    invoke-static {v1}, Lcom/asus/DLNA/DLNA;->access$700(Lcom/asus/DLNA/DLNA;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 701
    iget-object v1, p0, Lcom/asus/DLNA/DLNA$11;->this$0:Lcom/asus/DLNA/DLNA;

    invoke-static {v1}, Lcom/asus/DLNA/DLNA;->access$900(Lcom/asus/DLNA/DLNA;)Lcom/asus/DLNA/DLNA$LocalContentListAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/asus/DLNA/DLNA$LocalContentListAdapter;->notifyDataSetChanged()V

    goto :goto_1

    .line 702
    :cond_3
    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 680
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
