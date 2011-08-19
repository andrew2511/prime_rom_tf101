.class Lcom/asus/vibe2/Utils_PanelController$2;
.super Ljava/lang/Object;
.source "Utils_PanelController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/asus/vibe2/Utils_PanelController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/asus/vibe2/Utils_PanelController;


# direct methods
.method constructor <init>(Lcom/asus/vibe2/Utils_PanelController;)V
    .locals 0
    .parameter

    .prologue
    .line 114
    iput-object p1, p0, Lcom/asus/vibe2/Utils_PanelController$2;->this$0:Lcom/asus/vibe2/Utils_PanelController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 116
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 145
    :cond_0
    :goto_0
    return-void

    .line 118
    :pswitch_0
    iget-object v1, p0, Lcom/asus/vibe2/Utils_PanelController$2;->this$0:Lcom/asus/vibe2/Utils_PanelController;

    invoke-static {v1}, Lcom/asus/vibe2/Utils_PanelController;->access$000(Lcom/asus/vibe2/Utils_PanelController;)Lcom/asus/vibe2/Srv_Playback;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 119
    iget-object v1, p0, Lcom/asus/vibe2/Utils_PanelController$2;->this$0:Lcom/asus/vibe2/Utils_PanelController;

    invoke-static {v1}, Lcom/asus/vibe2/Utils_PanelController;->access$000(Lcom/asus/vibe2/Utils_PanelController;)Lcom/asus/vibe2/Srv_Playback;

    move-result-object v1

    invoke-virtual {v1}, Lcom/asus/vibe2/Srv_Playback;->doPausePlay()V

    .line 120
    iget-object v1, p0, Lcom/asus/vibe2/Utils_PanelController$2;->this$0:Lcom/asus/vibe2/Utils_PanelController;

    invoke-static {v1}, Lcom/asus/vibe2/Utils_PanelController;->access$500(Lcom/asus/vibe2/Utils_PanelController;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 121
    iget-object v1, p0, Lcom/asus/vibe2/Utils_PanelController$2;->this$0:Lcom/asus/vibe2/Utils_PanelController;

    invoke-static {v1}, Lcom/asus/vibe2/Utils_PanelController;->access$600(Lcom/asus/vibe2/Utils_PanelController;)V

    goto :goto_0

    .line 126
    :pswitch_1
    invoke-static {}, Lcom/asus/vibe2/Utils_SrvPlayback;->stop()V

    goto :goto_0

    .line 130
    :pswitch_2
    iget-object v1, p0, Lcom/asus/vibe2/Utils_PanelController$2;->this$0:Lcom/asus/vibe2/Utils_PanelController;

    invoke-static {v1}, Lcom/asus/vibe2/Utils_PanelController;->access$000(Lcom/asus/vibe2/Utils_PanelController;)Lcom/asus/vibe2/Srv_Playback;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 131
    iget-object v1, p0, Lcom/asus/vibe2/Utils_PanelController$2;->this$0:Lcom/asus/vibe2/Utils_PanelController;

    invoke-static {v1}, Lcom/asus/vibe2/Utils_PanelController;->access$000(Lcom/asus/vibe2/Utils_PanelController;)Lcom/asus/vibe2/Srv_Playback;

    move-result-object v1

    invoke-virtual {v1}, Lcom/asus/vibe2/Srv_Playback;->getPlayingParam()Lcom/asus/vibe/item/VibeParam;

    move-result-object v0

    .line 132
    .local v0, param:Lcom/asus/vibe/item/VibeParam;
    if-eqz v0, :cond_0

    .line 133
    invoke-static {}, Lcom/asus/vibe2/Vibe;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/asus/vibe/favorite/VibeFavoriteDatabase;->isFavorite(Landroid/content/Context;Lcom/asus/vibe/item/VibeParam;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 134
    invoke-static {}, Lcom/asus/vibe2/Vibe;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/asus/vibe/favorite/VibeFavoriteDatabase;->delete(Landroid/content/Context;Lcom/asus/vibe/item/VibeParam;)Z

    .line 138
    :goto_1
    iget-object v1, p0, Lcom/asus/vibe2/Utils_PanelController$2;->this$0:Lcom/asus/vibe2/Utils_PanelController;

    invoke-static {v1}, Lcom/asus/vibe2/Utils_PanelController;->access$700(Lcom/asus/vibe2/Utils_PanelController;)Landroid/content/Context;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.asus.vibe.action.FAVORITE_UPDATED"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 139
    iget-object v1, p0, Lcom/asus/vibe2/Utils_PanelController$2;->this$0:Lcom/asus/vibe2/Utils_PanelController;

    invoke-static {v1}, Lcom/asus/vibe2/Utils_PanelController;->access$800(Lcom/asus/vibe2/Utils_PanelController;)V

    goto :goto_0

    .line 136
    :cond_1
    invoke-static {}, Lcom/asus/vibe2/Vibe;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/asus/vibe/favorite/VibeFavoriteDatabase;->insert(Landroid/content/Context;Lcom/asus/vibe/item/VibeParam;)J

    goto :goto_1

    .line 116
    :pswitch_data_0
    .packed-switch 0x7f080012
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
