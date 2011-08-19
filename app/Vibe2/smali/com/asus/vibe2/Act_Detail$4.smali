.class Lcom/asus/vibe2/Act_Detail$4;
.super Ljava/lang/Object;
.source "Act_Detail.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/asus/vibe2/Act_Detail;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/asus/vibe2/Act_Detail;


# direct methods
.method constructor <init>(Lcom/asus/vibe2/Act_Detail;)V
    .locals 0
    .parameter

    .prologue
    .line 258
    iput-object p1, p0, Lcom/asus/vibe2/Act_Detail$4;->this$0:Lcom/asus/vibe2/Act_Detail;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8
    .parameter "v"

    .prologue
    .line 260
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    .line 342
    :cond_0
    :goto_0
    return-void

    .line 262
    :pswitch_0
    invoke-static {}, Lcom/asus/vibe2/Vibe;->getContext()Landroid/content/Context;

    move-result-object v5

    iget-object v6, p0, Lcom/asus/vibe2/Act_Detail$4;->this$0:Lcom/asus/vibe2/Act_Detail;

    invoke-static {v6}, Lcom/asus/vibe2/Act_Detail;->access$200(Lcom/asus/vibe2/Act_Detail;)Lcom/asus/vibe/item/VibeParam;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/asus/vibe/favorite/VibeFavoriteDatabase;->isFavorite(Landroid/content/Context;Lcom/asus/vibe/item/VibeParam;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 263
    invoke-static {}, Lcom/asus/vibe2/Vibe;->getContext()Landroid/content/Context;

    move-result-object v5

    iget-object v6, p0, Lcom/asus/vibe2/Act_Detail$4;->this$0:Lcom/asus/vibe2/Act_Detail;

    invoke-static {v6}, Lcom/asus/vibe2/Act_Detail;->access$200(Lcom/asus/vibe2/Act_Detail;)Lcom/asus/vibe/item/VibeParam;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/asus/vibe/favorite/VibeFavoriteDatabase;->delete(Landroid/content/Context;Lcom/asus/vibe/item/VibeParam;)Z

    .line 267
    :goto_1
    iget-object v5, p0, Lcom/asus/vibe2/Act_Detail$4;->this$0:Lcom/asus/vibe2/Act_Detail;

    new-instance v6, Landroid/content/Intent;

    const-string v7, "com.asus.vibe.action.FAVORITE_UPDATED"

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Lcom/asus/vibe2/Act_Detail;->sendBroadcast(Landroid/content/Intent;)V

    .line 268
    iget-object v5, p0, Lcom/asus/vibe2/Act_Detail$4;->this$0:Lcom/asus/vibe2/Act_Detail;

    invoke-static {v5}, Lcom/asus/vibe2/Act_Detail;->access$000(Lcom/asus/vibe2/Act_Detail;)V

    goto :goto_0

    .line 265
    :cond_1
    invoke-static {}, Lcom/asus/vibe2/Vibe;->getContext()Landroid/content/Context;

    move-result-object v5

    iget-object v6, p0, Lcom/asus/vibe2/Act_Detail$4;->this$0:Lcom/asus/vibe2/Act_Detail;

    invoke-static {v6}, Lcom/asus/vibe2/Act_Detail;->access$200(Lcom/asus/vibe2/Act_Detail;)Lcom/asus/vibe/item/VibeParam;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/asus/vibe/favorite/VibeFavoriteDatabase;->insert(Landroid/content/Context;Lcom/asus/vibe/item/VibeParam;)J

    goto :goto_1

    .line 272
    :pswitch_1
    iget-object v5, p0, Lcom/asus/vibe2/Act_Detail$4;->this$0:Lcom/asus/vibe2/Act_Detail;

    invoke-static {v5}, Lcom/asus/vibe2/Act_Detail;->access$600(Lcom/asus/vibe2/Act_Detail;)Landroid/widget/Button;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Button;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 273
    .local v1, curTag:Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 274
    const-string v5, "play"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 275
    iget-object v5, p0, Lcom/asus/vibe2/Act_Detail$4;->this$0:Lcom/asus/vibe2/Act_Detail;

    invoke-static {v5}, Lcom/asus/vibe2/Act_Detail;->access$200(Lcom/asus/vibe2/Act_Detail;)Lcom/asus/vibe/item/VibeParam;

    move-result-object v5

    iget-object v5, v5, Lcom/asus/vibe/item/VibeParam;->detail:Lcom/asus/vibe/item/VibeItem_Detail;

    iget-object v5, v5, Lcom/asus/vibe/item/VibeItem_Detail;->mUriList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/asus/vibe/item/VibeUri;

    .line 276
    .local v4, uri:Lcom/asus/vibe/item/VibeUri;
    iget-object v5, v4, Lcom/asus/vibe/item/VibeUri;->uriType:Ljava/lang/String;

    const-string v6, "free"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    iget-object v5, v4, Lcom/asus/vibe/item/VibeUri;->uriType:Ljava/lang/String;

    const-string v6, "premium"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    iget-object v5, v4, Lcom/asus/vibe/item/VibeUri;->uriType:Ljava/lang/String;

    const-string v6, "preview"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 277
    :cond_3
    iget-object v5, v4, Lcom/asus/vibe/item/VibeUri;->uriPlayerType:Ljava/lang/String;

    const-string v6, "MEDIAPLAYER"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    iget-object v5, v4, Lcom/asus/vibe/item/VibeUri;->uriPlayerType:Ljava/lang/String;

    const-string v6, "audio/mpeg"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 279
    :cond_4
    iget-object v5, p0, Lcom/asus/vibe2/Act_Detail$4;->this$0:Lcom/asus/vibe2/Act_Detail;

    invoke-static {v5}, Lcom/asus/vibe2/Act_Detail;->access$200(Lcom/asus/vibe2/Act_Detail;)Lcom/asus/vibe/item/VibeParam;

    move-result-object v5

    invoke-static {v5}, Lcom/asus/vibe2/Utils_SrvPlayback;->play(Lcom/asus/vibe/item/VibeParam;)V

    .line 280
    iget-object v5, p0, Lcom/asus/vibe2/Act_Detail$4;->this$0:Lcom/asus/vibe2/Act_Detail;

    invoke-virtual {v5}, Lcom/asus/vibe2/Act_Detail;->finish()V

    goto/16 :goto_0

    .line 282
    :cond_5
    iget-object v5, v4, Lcom/asus/vibe/item/VibeUri;->uriPlayerType:Ljava/lang/String;

    const-string v6, "BROWSER"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    iget-object v5, v4, Lcom/asus/vibe/item/VibeUri;->uriPlayerType:Ljava/lang/String;

    const-string v6, "text/html"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    iget-object v5, v4, Lcom/asus/vibe/item/VibeUri;->uriPlayerType:Ljava/lang/String;

    const-string v6, "application/x-shockwave-flash"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 285
    :cond_6
    iget-object v5, p0, Lcom/asus/vibe2/Act_Detail$4;->this$0:Lcom/asus/vibe2/Act_Detail;

    invoke-static {v5}, Lcom/asus/vibe2/Act_Detail;->access$200(Lcom/asus/vibe2/Act_Detail;)Lcom/asus/vibe/item/VibeParam;

    move-result-object v5

    invoke-static {v5}, Lcom/asus/vibe2/Utils_SrvPlayback;->play(Lcom/asus/vibe/item/VibeParam;)V

    goto/16 :goto_0

    .line 290
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v4           #uri:Lcom/asus/vibe/item/VibeUri;
    :cond_7
    const-string v5, "download"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 291
    iget-object v5, p0, Lcom/asus/vibe2/Act_Detail$4;->this$0:Lcom/asus/vibe2/Act_Detail;

    invoke-static {v5}, Lcom/asus/vibe2/Act_Detail;->access$200(Lcom/asus/vibe2/Act_Detail;)Lcom/asus/vibe/item/VibeParam;

    move-result-object v5

    iget-object v5, v5, Lcom/asus/vibe/item/VibeParam;->detail:Lcom/asus/vibe/item/VibeItem_Detail;

    iget-object v5, v5, Lcom/asus/vibe/item/VibeItem_Detail;->mUriList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .restart local v2       #i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/asus/vibe/item/VibeUri;

    .line 292
    .restart local v4       #uri:Lcom/asus/vibe/item/VibeUri;
    iget-object v5, v4, Lcom/asus/vibe/item/VibeUri;->uriType:Ljava/lang/String;

    const-string v6, "download"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 293
    invoke-static {}, Lcom/asus/vibe2/Vibe;->getContext()Landroid/content/Context;

    move-result-object v5

    iget-object v6, p0, Lcom/asus/vibe2/Act_Detail$4;->this$0:Lcom/asus/vibe2/Act_Detail;

    invoke-static {v6}, Lcom/asus/vibe2/Act_Detail;->access$200(Lcom/asus/vibe2/Act_Detail;)Lcom/asus/vibe/item/VibeParam;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/asus/vibe2/Utils_Download;->downloadItem(Landroid/content/Context;Lcom/asus/vibe/item/VibeParam;)V

    .line 295
    :cond_8
    iget-object v5, p0, Lcom/asus/vibe2/Act_Detail$4;->this$0:Lcom/asus/vibe2/Act_Detail;

    invoke-static {v5}, Lcom/asus/vibe2/Act_Detail;->access$000(Lcom/asus/vibe2/Act_Detail;)V

    goto :goto_2

    .line 297
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v4           #uri:Lcom/asus/vibe/item/VibeUri;
    :cond_9
    const-string v5, "local"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 298
    iget-object v5, p0, Lcom/asus/vibe2/Act_Detail$4;->this$0:Lcom/asus/vibe2/Act_Detail;

    invoke-static {v5}, Lcom/asus/vibe2/Act_Detail;->access$200(Lcom/asus/vibe2/Act_Detail;)Lcom/asus/vibe/item/VibeParam;

    move-result-object v5

    iget-object v5, v5, Lcom/asus/vibe/item/VibeParam;->vibeAction:Ljava/lang/String;

    const-string v6, "com.asus.vibe.action.LIST_MUSIC"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/asus/vibe2/Act_Detail$4;->this$0:Lcom/asus/vibe2/Act_Detail;

    invoke-static {v5}, Lcom/asus/vibe2/Act_Detail;->access$200(Lcom/asus/vibe2/Act_Detail;)Lcom/asus/vibe/item/VibeParam;

    move-result-object v5

    iget-object v5, v5, Lcom/asus/vibe/item/VibeParam;->main:Lcom/asus/vibe/item/VibeItem_Main;

    iget-object v5, v5, Lcom/asus/vibe/item/VibeItem_Main;->mMainCategoryName:Ljava/lang/String;

    const-string v6, "music"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/asus/vibe2/Act_Detail$4;->this$0:Lcom/asus/vibe2/Act_Detail;

    invoke-static {v5}, Lcom/asus/vibe2/Act_Detail;->access$200(Lcom/asus/vibe2/Act_Detail;)Lcom/asus/vibe/item/VibeParam;

    move-result-object v5

    iget-object v5, v5, Lcom/asus/vibe/item/VibeParam;->sub:Lcom/asus/vibe/item/VibeItem_Sub;

    iget-object v5, v5, Lcom/asus/vibe/item/VibeItem_Sub;->mSPName:Ljava/lang/String;

    const-string v6, "InMusic"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 301
    iget-object v5, p0, Lcom/asus/vibe2/Act_Detail$4;->this$0:Lcom/asus/vibe2/Act_Detail;

    invoke-static {v5}, Lcom/asus/vibe2/Act_Detail;->access$200(Lcom/asus/vibe2/Act_Detail;)Lcom/asus/vibe/item/VibeParam;

    move-result-object v5

    iget-object v5, v5, Lcom/asus/vibe/item/VibeParam;->detail:Lcom/asus/vibe/item/VibeItem_Detail;

    iget-object v5, v5, Lcom/asus/vibe/item/VibeItem_Detail;->mUriList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .restart local v2       #i$:Ljava/util/Iterator;
    :cond_a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/asus/vibe/item/VibeUri;

    .line 302
    .restart local v4       #uri:Lcom/asus/vibe/item/VibeUri;
    iget-object v5, v4, Lcom/asus/vibe/item/VibeUri;->uriType:Ljava/lang/String;

    const-string v6, "local"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    iget-object v5, v4, Lcom/asus/vibe/item/VibeUri;->uriPlayerType:Ljava/lang/String;

    const-string v6, "audio/mpeg"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 304
    iget-object v5, p0, Lcom/asus/vibe2/Act_Detail$4;->this$0:Lcom/asus/vibe2/Act_Detail;

    invoke-static {v5}, Lcom/asus/vibe2/Act_Detail;->access$200(Lcom/asus/vibe2/Act_Detail;)Lcom/asus/vibe/item/VibeParam;

    move-result-object v5

    invoke-static {v5}, Lcom/asus/vibe2/Utils_SrvPlayback;->play(Lcom/asus/vibe/item/VibeParam;)V

    .line 305
    iget-object v5, p0, Lcom/asus/vibe2/Act_Detail$4;->this$0:Lcom/asus/vibe2/Act_Detail;

    invoke-virtual {v5}, Lcom/asus/vibe2/Act_Detail;->finish()V

    goto/16 :goto_0

    .line 321
    .end local v1           #curTag:Ljava/lang/String;
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v4           #uri:Lcom/asus/vibe/item/VibeUri;
    :pswitch_2
    invoke-static {}, Lcom/asus/vibe2/Vibe;->loggedIn()Z

    move-result v5

    if-nez v5, :cond_b

    .line 322
    iget-object v5, p0, Lcom/asus/vibe2/Act_Detail$4;->this$0:Lcom/asus/vibe2/Act_Detail;

    invoke-static {v5}, Lcom/asus/vibe2/mycloud/Utils_MyCloud;->requestGetAccInfo(Landroid/app/Activity;)V

    goto/16 :goto_0

    .line 324
    :cond_b
    new-instance v3, Lcom/asus/vibe2/Adapter_Package_List;

    iget-object v5, p0, Lcom/asus/vibe2/Act_Detail$4;->this$0:Lcom/asus/vibe2/Act_Detail;

    iget-object v6, p0, Lcom/asus/vibe2/Act_Detail$4;->this$0:Lcom/asus/vibe2/Act_Detail;

    invoke-static {v6}, Lcom/asus/vibe2/Act_Detail;->access$400(Lcom/asus/vibe2/Act_Detail;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-direct {v3, v5, v6}, Lcom/asus/vibe2/Adapter_Package_List;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 325
    .local v3, packList:Lcom/asus/vibe2/Adapter_Package_List;
    new-instance v5, Landroid/app/AlertDialog$Builder;

    iget-object v6, p0, Lcom/asus/vibe2/Act_Detail$4;->this$0:Lcom/asus/vibe2/Act_Detail;

    invoke-direct {v5, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v6, -0x1

    new-instance v7, Lcom/asus/vibe2/Act_Detail$4$1;

    invoke-direct {v7, p0, v3}, Lcom/asus/vibe2/Act_Detail$4$1;-><init>(Lcom/asus/vibe2/Act_Detail$4;Lcom/asus/vibe2/Adapter_Package_List;)V

    invoke-virtual {v5, v3, v6, v7}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 337
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    iget-object v5, p0, Lcom/asus/vibe2/Act_Detail$4;->this$0:Lcom/asus/vibe2/Act_Detail;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/asus/vibe2/Act_Detail;->access$502(Lcom/asus/vibe2/Act_Detail;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    goto/16 :goto_0

    .line 260
    nop

    :pswitch_data_0
    .packed-switch 0x7f080002
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
