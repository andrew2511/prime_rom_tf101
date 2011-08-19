.class public Lcom/layar/data/ActionHelper;
.super Ljava/lang/Object;
.source "ActionHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/layar/data/ActionHelper$AsyncLoader;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 52
    const-class v0, Lcom/layar/data/ActionHelper;

    invoke-static {v0}, Lcom/layar/util/Logger;->generateTAG(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/layar/data/ActionHelper;->TAG:Ljava/lang/String;

    .line 51
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static actionAsync(Lcom/layar/data/PoiAction;Landroid/content/Context;Lcom/layar/data/layer/Layer20;Lcom/layar/data/BasePOI;Lcom/layar/core/POIsContainer;Landroid/app/Activity;)V
    .locals 7
    .parameter "action"
    .parameter "context"
    .parameter "layer"
    .parameter "poi"
    .parameter "poisContainer"
    .parameter "owner"

    .prologue
    .line 322
    new-instance v0, Lcom/layar/data/ActionHelper$AsyncLoader;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/layar/data/ActionHelper$AsyncLoader;-><init>(Lcom/layar/data/PoiAction;Landroid/content/Context;Lcom/layar/data/layer/Layer20;Lcom/layar/data/BasePOI;Lcom/layar/core/POIsContainer;Landroid/app/Activity;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/layar/data/ActionHelper$AsyncLoader;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 323
    return-void
.end method

.method public static actionAudio(Lcom/layar/data/PoiAction;Landroid/content/Context;Lcom/layar/data/layer/Layer20;Lcom/layar/data/BasePOI;Lcom/layar/data/AudioPlayer;)V
    .locals 4
    .parameter "action"
    .parameter "context"
    .parameter "layer"
    .parameter "poi"
    .parameter "audioPlayer"

    .prologue
    .line 270
    const/16 v2, 0x2b

    iget-object v3, p0, Lcom/layar/data/PoiAction;->uri:Ljava/lang/String;

    invoke-static {v2, v3, p2, p3}, Lcom/layar/data/ActionHelper;->addEvent(SLjava/lang/String;Lcom/layar/data/layer/Layer20;Lcom/layar/data/BasePOI;)V

    .line 271
    iget-object v2, p0, Lcom/layar/data/PoiAction;->uri:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 272
    .local v1, uri:Landroid/net/Uri;
    if-eqz p4, :cond_0

    .line 273
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/layar/AudioActivity;

    invoke-direct {v0, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 274
    .local v0, i:Landroid/content/Intent;
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 275
    invoke-interface {p4, v0}, Lcom/layar/data/AudioPlayer;->playAudio(Landroid/content/Intent;)V

    .line 281
    :goto_0
    return-void

    .line 277
    .end local v0           #i:Landroid/content/Intent;
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/layar/AudioActivity;

    invoke-direct {v0, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 278
    .restart local v0       #i:Landroid/content/Intent;
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 279
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public static actionHttp(Lcom/layar/data/PoiAction;Landroid/content/Context;Lcom/layar/data/layer/Layer20;Lcom/layar/data/BasePOI;Landroid/app/Activity;)V
    .locals 4
    .parameter "action"
    .parameter "context"
    .parameter "layer"
    .parameter "poi"
    .parameter "caller"

    .prologue
    .line 217
    const/16 v1, 0x2b

    iget-object v2, p0, Lcom/layar/data/PoiAction;->contentType:Ljava/lang/String;

    invoke-static {v1, v2, p2, p3}, Lcom/layar/data/ActionHelper;->addEvent(SLjava/lang/String;Lcom/layar/data/layer/Layer20;Lcom/layar/data/BasePOI;)V

    .line 218
    invoke-virtual {p0}, Lcom/layar/data/PoiAction;->isGetMethod()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 219
    invoke-static {}, Lcom/layar/util/UriHelper;->getInstance()Lcom/layar/util/UriHelper;

    move-result-object v1

    iget-object v2, p0, Lcom/layar/data/PoiAction;->uri:Ljava/lang/String;

    iget-object v3, p0, Lcom/layar/data/PoiAction;->params:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/layar/util/UriHelper;->appendActionParams(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 220
    iget-boolean v2, p0, Lcom/layar/data/PoiAction;->closeBiw:Z

    .line 219
    invoke-static {v1, v2, p2, p4}, Lcom/layar/data/ActionHelper;->startHttp(Ljava/lang/String;ZLcom/layar/data/layer/Layer20;Landroid/app/Activity;)V

    .line 226
    :goto_0
    return-void

    .line 223
    :cond_0
    invoke-static {p0}, Lcom/layar/data/ActionHelper;->paramsPostMap(Lcom/layar/data/PoiAction;)Ljava/util/Map;

    move-result-object v0

    .line 224
    .local v0, postParams:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/layar/data/PoiAction;->uri:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/layar/data/PoiAction;->closeBiw:Z

    invoke-static {v1, v2, p2, p4, v0}, Lcom/layar/data/ActionHelper;->startHttpPOST(Ljava/lang/String;ZLcom/layar/data/layer/Layer20;Landroid/app/Activity;Ljava/util/Map;)V

    goto :goto_0
.end method

.method public static actionInfo(Lcom/layar/data/layer/Layer20;Landroid/app/Activity;)V
    .locals 4
    .parameter "layer"
    .parameter "caller"

    .prologue
    const/4 v3, 0x1

    .line 293
    if-nez p0, :cond_0

    .line 300
    :goto_0
    return-void

    .line 295
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/layar/LayerInfoActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 296
    .local v0, i:Landroid/content/Intent;
    const-string v1, "info:layername"

    iget-object v2, p0, Lcom/layar/data/layer/Layer20;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 297
    const-string v1, "hideAction"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 298
    sput-boolean v3, Lcom/layar/Layar3DActivity;->showDetailBIW:Z

    .line 299
    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public static actionInternal(Lcom/layar/data/PoiAction;Landroid/content/Context;Lcom/layar/data/layer/Layer20;Lcom/layar/data/BasePOI;Landroid/app/Activity;Lcom/layar/data/AudioPlayer;Lcom/layar/core/POIsContainer;)Z
    .locals 9
    .parameter "action"
    .parameter "context"
    .parameter "layer"
    .parameter "poi"
    .parameter "caller"
    .parameter "audioPlayer"
    .parameter "poisContainer"

    .prologue
    const/4 v8, 0x1

    .line 329
    iget-object v5, p0, Lcom/layar/data/PoiAction;->uri:Ljava/lang/String;

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 330
    .local v4, uri:Landroid/net/Uri;
    invoke-virtual {v4}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v5

    const-string v6, "audio"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 331
    iget-object v5, p0, Lcom/layar/data/PoiAction;->uri:Ljava/lang/String;

    const-string v6, "audio://"

    const-string v7, "http://"

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/layar/data/PoiAction;->uri:Ljava/lang/String;

    .line 332
    invoke-static {p0, p1, p2, p3, p5}, Lcom/layar/data/ActionHelper;->actionAudio(Lcom/layar/data/PoiAction;Landroid/content/Context;Lcom/layar/data/layer/Layer20;Lcom/layar/data/BasePOI;Lcom/layar/data/AudioPlayer;)V

    move v5, v8

    .line 371
    .end local p4
    :goto_0
    return v5

    .line 334
    .restart local p4
    :cond_0
    invoke-virtual {v4}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v5

    const-string v6, "video"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 335
    iget-object v5, p0, Lcom/layar/data/PoiAction;->uri:Ljava/lang/String;

    const-string v6, "video://"

    const-string v7, "http://"

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/layar/data/PoiAction;->uri:Ljava/lang/String;

    .line 336
    invoke-static {p0, p1, p2, p3, p4}, Lcom/layar/data/ActionHelper;->actionVideo(Lcom/layar/data/PoiAction;Landroid/content/Context;Lcom/layar/data/layer/Layer20;Lcom/layar/data/BasePOI;Landroid/app/Activity;)V

    move v5, v8

    .line 337
    goto :goto_0

    .line 338
    :cond_1
    invoke-virtual {v4}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v5

    const-string v6, "layarshare"

    invoke-static {v5, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 339
    const-string v5, "type"

    invoke-virtual {v4, v5}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 340
    .local v3, type:Ljava/lang/String;
    const-string v5, "screenshot"

    invoke-static {v5, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 341
    instance-of v5, p4, Lcom/layar/adapters/LayerActionsAdapter$ScreenshotHandler;

    if-eqz v5, :cond_2

    .line 342
    check-cast p4, Lcom/layar/adapters/LayerActionsAdapter$ScreenshotHandler;

    .end local p4
    invoke-interface {p4}, Lcom/layar/adapters/LayerActionsAdapter$ScreenshotHandler;->createScreenshot()V

    move v5, v8

    .line 343
    goto :goto_0

    .line 344
    .restart local p4
    :cond_2
    const-string v5, "message"

    invoke-static {v5, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 345
    invoke-static {p1, v4}, Lcom/layar/data/ActionHelper;->startShareDialog(Landroid/content/Context;Landroid/net/Uri;)V

    move v5, v8

    .line 346
    goto :goto_0

    .line 348
    .end local v3           #type:Ljava/lang/String;
    :cond_3
    iget-object v5, p0, Lcom/layar/data/PoiAction;->uri:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "http://m.layar.com/open/"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, p2, Lcom/layar/data/layer/Layer20;->name:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_4

    iget-object v5, p0, Lcom/layar/data/PoiAction;->uri:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "layar://"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, p2, Lcom/layar/data/layer/Layer20;->name:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 349
    :cond_4
    invoke-static {p0, p6, p2, p3}, Lcom/layar/data/ActionHelper;->refreshLayer(Lcom/layar/data/PoiAction;Lcom/layar/core/POIsContainer;Lcom/layar/data/layer/Layer20;Lcom/layar/data/BasePOI;)V

    move v5, v8

    .line 350
    goto/16 :goto_0

    .line 351
    :cond_5
    iget-object v5, p0, Lcom/layar/data/PoiAction;->uri:Ljava/lang/String;

    const-string v6, "http://m.layar.com/open/"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_6

    iget-object v5, p0, Lcom/layar/data/PoiAction;->uri:Ljava/lang/String;

    const-string v6, "layar://"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 352
    :cond_6
    invoke-static {p0, p1, p2, p3, p6}, Lcom/layar/data/ActionHelper;->startLayer(Lcom/layar/data/PoiAction;Landroid/content/Context;Lcom/layar/data/layer/Layer20;Lcom/layar/data/BasePOI;Lcom/layar/core/POIsContainer;)V

    move v5, v8

    .line 353
    goto/16 :goto_0

    .line 354
    :cond_7
    iget-object v5, p0, Lcom/layar/data/PoiAction;->uri:Ljava/lang/String;

    const-string v6, "http://"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_8

    iget-object v5, p0, Lcom/layar/data/PoiAction;->uri:Ljava/lang/String;

    const-string v6, "https://"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 355
    :cond_8
    invoke-static {p0, p1, p2, p3, p4}, Lcom/layar/data/ActionHelper;->actionHttp(Lcom/layar/data/PoiAction;Landroid/content/Context;Lcom/layar/data/layer/Layer20;Lcom/layar/data/BasePOI;Landroid/app/Activity;)V

    move v5, v8

    .line 356
    goto/16 :goto_0

    .line 359
    :cond_9
    const/16 v5, 0x2b

    iget-object v6, p0, Lcom/layar/data/PoiAction;->contentType:Ljava/lang/String;

    invoke-static {v5, v6, p2, p3}, Lcom/layar/data/ActionHelper;->addEvent(SLjava/lang/String;Lcom/layar/data/layer/Layer20;Lcom/layar/data/BasePOI;)V

    .line 361
    new-instance v0, Landroid/content/Intent;

    const-string v5, "android.intent.action.VIEW"

    invoke-direct {v0, v5, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 362
    .local v0, i:Landroid/content/Intent;
    iget-object v5, p0, Lcom/layar/data/PoiAction;->uri:Ljava/lang/String;

    const-string v6, "sms://"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 363
    iget-object v5, p0, Lcom/layar/data/PoiAction;->uri:Ljava/lang/String;

    const-string v6, "sms://"

    const-string v7, ""

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 364
    .local v1, phoneNumber:Ljava/lang/String;
    const-string v5, "vnd.android-dir/mms-sms"

    invoke-virtual {v0, v5}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 365
    const-string v5, "address"

    invoke-virtual {v0, v5, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 368
    .end local v1           #phoneNumber:Ljava/lang/String;
    :cond_a
    const/high16 v5, 0x1000

    invoke-virtual {v0, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 369
    new-instance v2, Lcom/layar/ui/ResolverDialog;

    const v5, 0x7f090065

    invoke-direct {v2, p1, v0, v5}, Lcom/layar/ui/ResolverDialog;-><init>(Landroid/content/Context;Landroid/content/Intent;I)V

    .line 370
    .local v2, resolverDialog:Lcom/layar/ui/ResolverDialog;
    invoke-virtual {v2}, Lcom/layar/ui/ResolverDialog;->show()V

    .line 371
    const/4 v5, 0x0

    goto/16 :goto_0
.end method

.method public static actionLocation(Landroid/content/Context;Lcom/layar/data/layer/Layer20;Lcom/layar/data/BasePOI;)V
    .locals 6
    .parameter "context"
    .parameter "layer"
    .parameter "poi"

    .prologue
    .line 311
    if-nez p2, :cond_0

    .line 319
    :goto_0
    return-void

    .line 313
    :cond_0
    const/16 v2, 0x2a

    const/4 v3, 0x0

    invoke-static {v2, v3, p1, p2}, Lcom/layar/data/ActionHelper;->addEvent(SLjava/lang/String;Lcom/layar/data/layer/Layer20;Lcom/layar/data/BasePOI;)V

    .line 314
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    .line 315
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "geo:0,0?q="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v4, p2, Lcom/layar/data/BasePOI;->latitude:D

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p2, Lcom/layar/data/BasePOI;->longitude:D

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 314
    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 317
    .local v0, i:Landroid/content/Intent;
    new-instance v1, Lcom/layar/ui/ResolverDialog;

    const v2, 0x7f0900d2

    invoke-direct {v1, p0, v0, v2}, Lcom/layar/ui/ResolverDialog;-><init>(Landroid/content/Context;Landroid/content/Intent;I)V

    .line 318
    .local v1, resolverDialog:Lcom/layar/ui/ResolverDialog;
    invoke-virtual {v1}, Lcom/layar/ui/ResolverDialog;->show()V

    goto :goto_0
.end method

.method public static actionPlain(Lcom/layar/data/PoiAction;Landroid/content/Context;Lcom/layar/data/layer/Layer20;Lcom/layar/data/BasePOI;)V
    .locals 7
    .parameter "action"
    .parameter "context"
    .parameter "layer"
    .parameter "poi"

    .prologue
    const/4 v5, 0x0

    .line 212
    const/16 v0, 0x2b

    iget-object v1, p0, Lcom/layar/data/PoiAction;->contentType:Ljava/lang/String;

    invoke-static {v0, v1, p2, p3}, Lcom/layar/data/ActionHelper;->addEvent(SLjava/lang/String;Lcom/layar/data/layer/Layer20;Lcom/layar/data/BasePOI;)V

    .line 213
    new-instance v0, Lcom/layar/data/ActionHelper$AsyncLoader;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v6, v5

    invoke-direct/range {v0 .. v6}, Lcom/layar/data/ActionHelper$AsyncLoader;-><init>(Lcom/layar/data/PoiAction;Landroid/content/Context;Lcom/layar/data/layer/Layer20;Lcom/layar/data/BasePOI;Lcom/layar/core/POIsContainer;Landroid/app/Activity;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/layar/data/ActionHelper$AsyncLoader;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 214
    return-void
.end method

.method public static actionVideo(Lcom/layar/data/PoiAction;Landroid/content/Context;Lcom/layar/data/layer/Layer20;Lcom/layar/data/BasePOI;Landroid/app/Activity;)V
    .locals 4
    .parameter "action"
    .parameter "context"
    .parameter "layer"
    .parameter "poi"
    .parameter "caller"

    .prologue
    .line 261
    const/16 v2, 0x2b

    iget-object v3, p0, Lcom/layar/data/PoiAction;->contentType:Ljava/lang/String;

    invoke-static {v2, v3, p2, p3}, Lcom/layar/data/ActionHelper;->addEvent(SLjava/lang/String;Lcom/layar/data/layer/Layer20;Lcom/layar/data/BasePOI;)V

    .line 262
    iget-object v2, p0, Lcom/layar/data/PoiAction;->uri:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 263
    .local v1, uri:Landroid/net/Uri;
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/layar/VideoActivity;

    invoke-direct {v0, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 264
    .local v0, i:Landroid/content/Intent;
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 265
    iget-boolean v2, p0, Lcom/layar/data/PoiAction;->closeBiw:Z

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    sput-boolean v2, Lcom/layar/Layar3DActivity;->showDetailBIW:Z

    .line 266
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 267
    return-void

    .line 265
    :cond_0
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public static addEvent(SLjava/lang/String;Lcom/layar/data/layer/Layer20;Lcom/layar/data/BasePOI;)V
    .locals 7
    .parameter "code"
    .parameter "type"
    .parameter "layer"
    .parameter "poi"

    .prologue
    .line 375
    if-nez p3, :cond_0

    .line 379
    :goto_0
    return-void

    .line 377
    :cond_0
    invoke-static {}, Lcom/layar/data/event/EventsManager;->getInstance()Lcom/layar/data/event/EventsManager;

    move-result-object v6

    .line 378
    new-instance v0, Lcom/layar/data/event/Event;

    iget-object v2, p2, Lcom/layar/data/layer/Layer20;->name:Ljava/lang/String;

    iget-object v3, p3, Lcom/layar/data/BasePOI;->id:Ljava/lang/String;

    iget v4, p3, Lcom/layar/data/BasePOI;->geodistance:I

    move v1, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/layar/data/event/Event;-><init>(SLjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 377
    invoke-virtual {v6, v0}, Lcom/layar/data/event/EventsManager;->add(Lcom/layar/data/event/Event;)V

    goto :goto_0
.end method

.method public static executeAction(Lcom/layar/data/PoiAction;Lcom/layar/data/layer/Layer20;Lcom/layar/data/BasePOI;Landroid/app/Activity;Lcom/layar/core/POIsContainer;Lcom/layar/data/AudioPlayer;Lcom/layar/ui/ActionsMenu$ActionsMenuListener;)V
    .locals 7
    .parameter "action"
    .parameter "layer"
    .parameter "poi"
    .parameter "owner"
    .parameter "poisContainer"
    .parameter "audioPlayer"
    .parameter "listener"

    .prologue
    .line 100
    iget-object v0, p0, Lcom/layar/data/PoiAction;->dialog:Lcom/layar/data/ActionsDialogData;

    if-eqz v0, :cond_1

    .line 101
    iget-object v0, p0, Lcom/layar/data/PoiAction;->dialog:Lcom/layar/data/ActionsDialogData;

    invoke-static {p3, p1, v0, p6}, Lcom/layar/data/layer/LayerHelper;->showActionsDialog(Landroid/content/Context;Lcom/layar/data/layer/Layer20;Lcom/layar/data/ActionsDialogData;Lcom/layar/ui/ActionsMenu$ActionsMenuListener;)Lcom/layar/ui/SmartDialog;

    .line 130
    :cond_0
    :goto_0
    return-void

    .line 108
    :cond_1
    iget-boolean v0, p0, Lcom/layar/data/PoiAction;->autoTriggerOnly:Z

    if-eqz v0, :cond_2

    iget v0, p2, Lcom/layar/data/BasePOI;->geodistance:I

    iget v1, p0, Lcom/layar/data/PoiAction;->autoTriggerRange:I

    if-gt v0, v1, :cond_0

    .line 111
    :cond_2
    iget-object v0, p0, Lcom/layar/data/PoiAction;->contentType:Ljava/lang/String;

    if-nez v0, :cond_3

    .line 112
    invoke-static {p3, p1, p2}, Lcom/layar/data/ActionHelper;->actionLocation(Landroid/content/Context;Lcom/layar/data/layer/Layer20;Lcom/layar/data/BasePOI;)V

    goto :goto_0

    .line 113
    :cond_3
    const-string v0, "more"

    iget-object v1, p0, Lcom/layar/data/PoiAction;->contentType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 114
    invoke-static {p3, p2, p1, p4}, Lcom/layar/data/ActionHelper;->showPoiActionsList(Landroid/app/Activity;Lcom/layar/data/BasePOI;Lcom/layar/data/layer/Layer20;Lcom/layar/core/POIsContainer;)V

    goto :goto_0

    .line 115
    :cond_4
    const-string v0, "info"

    iget-object v1, p0, Lcom/layar/data/PoiAction;->contentType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 116
    invoke-static {p1, p3}, Lcom/layar/data/ActionHelper;->actionInfo(Lcom/layar/data/layer/Layer20;Landroid/app/Activity;)V

    goto :goto_0

    .line 117
    :cond_5
    const-string v0, "text/plain"

    iget-object v1, p0, Lcom/layar/data/PoiAction;->contentType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 118
    invoke-static {p0, p3, p1, p2}, Lcom/layar/data/ActionHelper;->actionPlain(Lcom/layar/data/PoiAction;Landroid/content/Context;Lcom/layar/data/layer/Layer20;Lcom/layar/data/BasePOI;)V

    goto :goto_0

    .line 119
    :cond_6
    const-string v0, "text"

    iget-object v1, p0, Lcom/layar/data/PoiAction;->contentType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 120
    invoke-static {p0, p3, p1, p2, p3}, Lcom/layar/data/ActionHelper;->actionHttp(Lcom/layar/data/PoiAction;Landroid/content/Context;Lcom/layar/data/layer/Layer20;Lcom/layar/data/BasePOI;Landroid/app/Activity;)V

    goto :goto_0

    .line 121
    :cond_7
    const-string v0, "video"

    iget-object v1, p0, Lcom/layar/data/PoiAction;->contentType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 122
    invoke-static {p0, p3, p1, p2, p3}, Lcom/layar/data/ActionHelper;->actionVideo(Lcom/layar/data/PoiAction;Landroid/content/Context;Lcom/layar/data/layer/Layer20;Lcom/layar/data/BasePOI;Landroid/app/Activity;)V

    goto :goto_0

    .line 123
    :cond_8
    const-string v0, "audio"

    iget-object v1, p0, Lcom/layar/data/PoiAction;->contentType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 124
    invoke-static {p0, p3, p1, p2, p5}, Lcom/layar/data/ActionHelper;->actionAudio(Lcom/layar/data/PoiAction;Landroid/content/Context;Lcom/layar/data/layer/Layer20;Lcom/layar/data/BasePOI;Lcom/layar/data/AudioPlayer;)V

    goto :goto_0

    .line 125
    :cond_9
    const-string v0, "application/vnd.layar.internal"

    iget-object v1, p0, Lcom/layar/data/PoiAction;->contentType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    move-object v0, p0

    move-object v1, p3

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p5

    move-object v6, p4

    .line 126
    invoke-static/range {v0 .. v6}, Lcom/layar/data/ActionHelper;->actionInternal(Lcom/layar/data/PoiAction;Landroid/content/Context;Lcom/layar/data/layer/Layer20;Lcom/layar/data/BasePOI;Landroid/app/Activity;Lcom/layar/data/AudioPlayer;Lcom/layar/core/POIsContainer;)Z

    goto :goto_0

    .line 127
    :cond_a
    const-string v0, "application/vnd.layar.async"

    iget-object v1, p0, Lcom/layar/data/PoiAction;->contentType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, p0

    move-object v1, p3

    move-object v2, p1

    move-object v3, p2

    move-object v4, p4

    move-object v5, p3

    .line 128
    invoke-static/range {v0 .. v5}, Lcom/layar/data/ActionHelper;->actionAsync(Lcom/layar/data/PoiAction;Landroid/content/Context;Lcom/layar/data/layer/Layer20;Lcom/layar/data/BasePOI;Lcom/layar/core/POIsContainer;Landroid/app/Activity;)V

    goto/16 :goto_0
.end method

.method public static executeAutoTrigger(Lcom/layar/data/layer/LayerHandler$AutoTriggerListener;Lcom/layar/data/layer/Layer20;Lcom/layar/data/BasePOI;Lcom/layar/data/PoiAction;Z)V
    .locals 7
    .parameter "listener"
    .parameter "layer"
    .parameter "poi"
    .parameter "action"
    .parameter "showConfirmDialog"

    .prologue
    .line 56
    if-nez p0, :cond_0

    .line 66
    :goto_0
    return-void

    .line 59
    :cond_0
    if-eqz p4, :cond_1

    .line 60
    new-instance v0, Lcom/layar/ui/AutoTriggerDialog;

    invoke-interface {p0}, Lcom/layar/data/layer/LayerHandler$AutoTriggerListener;->getOwner()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1, p2, p3, p0}, Lcom/layar/ui/AutoTriggerDialog;-><init>(Landroid/content/Context;Lcom/layar/data/BasePOI;Lcom/layar/data/PoiAction;Lcom/layar/data/layer/LayerHandler$AutoTriggerListener;)V

    invoke-virtual {v0}, Lcom/layar/ui/AutoTriggerDialog;->show()V

    goto :goto_0

    .line 64
    :cond_1
    invoke-interface {p0}, Lcom/layar/data/layer/LayerHandler$AutoTriggerListener;->getOwner()Landroid/app/Activity;

    move-result-object v3

    .line 65
    invoke-interface {p0}, Lcom/layar/data/layer/LayerHandler$AutoTriggerListener;->getPoisContainer()Lcom/layar/core/POIsContainer;

    move-result-object v4

    invoke-interface {p0}, Lcom/layar/data/layer/LayerHandler$AutoTriggerListener;->getAudioPlayer()Lcom/layar/data/AudioPlayer;

    move-result-object v5

    const/4 v6, 0x0

    move-object v0, p3

    move-object v1, p1

    move-object v2, p2

    .line 64
    invoke-static/range {v0 .. v6}, Lcom/layar/data/ActionHelper;->executeAction(Lcom/layar/data/PoiAction;Lcom/layar/data/layer/Layer20;Lcom/layar/data/BasePOI;Landroid/app/Activity;Lcom/layar/core/POIsContainer;Lcom/layar/data/AudioPlayer;Lcom/layar/ui/ActionsMenu$ActionsMenuListener;)V

    goto :goto_0
.end method

.method public static executeFirstAction(Landroid/app/Activity;Lcom/layar/data/layer/Layer20;Lcom/layar/data/BasePOI;Lcom/layar/core/POIsContainer;Lcom/layar/data/AudioPlayer;Lcom/layar/ui/ActionsMenu$ActionsMenuListener;)V
    .locals 7
    .parameter "owner"
    .parameter "layer"
    .parameter "poi"
    .parameter "poisContainer"
    .parameter "audioPlayer"
    .parameter "listener"

    .prologue
    .line 80
    iget-object v0, p2, Lcom/layar/data/BasePOI;->actions:[Lcom/layar/data/PoiAction;

    array-length v0, v0

    if-nez v0, :cond_0

    .line 84
    :goto_0
    return-void

    .line 82
    :cond_0
    iget-object v0, p2, Lcom/layar/data/BasePOI;->actions:[Lcom/layar/data/PoiAction;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    move-object v1, p1

    move-object v2, p2

    move-object v3, p0

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-static/range {v0 .. v6}, Lcom/layar/data/ActionHelper;->executeAction(Lcom/layar/data/PoiAction;Lcom/layar/data/layer/Layer20;Lcom/layar/data/BasePOI;Landroid/app/Activity;Lcom/layar/core/POIsContainer;Lcom/layar/data/AudioPlayer;Lcom/layar/ui/ActionsMenu$ActionsMenuListener;)V

    goto :goto_0
.end method

.method private static mapToBundle(Ljava/util/Map;)Landroid/os/Bundle;
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/os/Bundle;"
        }
    .end annotation

    .prologue
    .line 253
    .local p0, postParams:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v1, Landroid/os/Bundle;

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v2

    invoke-direct {v1, v2}, Landroid/os/Bundle;-><init>(I)V

    .line 254
    .local v1, paramsBundle:Landroid/os/Bundle;
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .end local p0           #postParams:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 257
    return-object v1

    .line 254
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 255
    .local v0, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, p0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static paramsPostMap(Lcom/layar/data/PoiAction;)Ljava/util/Map;
    .locals 2
    .parameter "action"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/layar/data/PoiAction;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 229
    invoke-static {}, Lcom/layar/util/UriHelper;->getInstance()Lcom/layar/util/UriHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/layar/data/PoiAction;->params:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/layar/util/UriHelper;->parseActionParams(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public static refreshLayer(Lcom/layar/data/PoiAction;Lcom/layar/core/POIsContainer;Lcom/layar/data/layer/Layer20;Lcom/layar/data/BasePOI;)V
    .locals 2
    .parameter "action"
    .parameter "poisContainer"
    .parameter "layer"
    .parameter "poi"

    .prologue
    .line 175
    const/16 v0, 0x2b

    iget-object v1, p0, Lcom/layar/data/PoiAction;->contentType:Ljava/lang/String;

    invoke-static {v0, v1, p2, p3}, Lcom/layar/data/ActionHelper;->addEvent(SLjava/lang/String;Lcom/layar/data/layer/Layer20;Lcom/layar/data/BasePOI;)V

    .line 176
    iget-object v0, p0, Lcom/layar/data/PoiAction;->uri:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {v0, v1, p2, p3, p1}, Lcom/layar/data/ActionHelper;->startLayer(Ljava/lang/String;Landroid/content/Context;Lcom/layar/data/layer/Layer20;Lcom/layar/data/BasePOI;Lcom/layar/core/POIsContainer;)Z

    .line 177
    return-void
.end method

.method public static showActivity(Lcom/layar/data/PoiAction;Landroid/content/Context;)Lcom/layar/ui/SmartDialog;
    .locals 3
    .parameter "action"
    .parameter "context"

    .prologue
    .line 153
    iget-boolean v1, p0, Lcom/layar/data/PoiAction;->showActivity:Z

    if-nez v1, :cond_0

    .line 154
    const/4 v1, 0x0

    .line 161
    :goto_0
    return-object v1

    .line 156
    :cond_0
    iget-object v1, p0, Lcom/layar/data/PoiAction;->activityMessage:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 157
    const v1, 0x7f090105

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 161
    .local v0, message:Ljava/lang/String;
    :goto_1
    new-instance v1, Lcom/layar/ui/SmartDialog$Builder;

    const/4 v2, 0x1

    invoke-direct {v1, p1, v0, v2}, Lcom/layar/ui/SmartDialog$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;Z)V

    invoke-virtual {v1}, Lcom/layar/ui/SmartDialog$Builder;->build()Lcom/layar/ui/SmartDialog;

    move-result-object v1

    goto :goto_0

    .line 159
    .end local v0           #message:Ljava/lang/String;
    :cond_1
    iget-object v0, p0, Lcom/layar/data/PoiAction;->activityMessage:Ljava/lang/String;

    .restart local v0       #message:Ljava/lang/String;
    goto :goto_1
.end method

.method public static showPoiActionsList(Landroid/app/Activity;Lcom/layar/data/BasePOI;Lcom/layar/data/layer/Layer20;Lcom/layar/core/POIsContainer;)V
    .locals 3
    .parameter "owner"
    .parameter "poi"
    .parameter "layer"
    .parameter "poisContainer"

    .prologue
    .line 134
    new-instance v0, Lcom/layar/adapters/PoiActionsAdapter;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/layar/adapters/PoiActionsAdapter;-><init>(Landroid/app/Activity;Lcom/layar/data/BasePOI;Lcom/layar/data/layer/Layer20;Lcom/layar/core/POIsContainer;)V

    .line 135
    .local v0, adapter:Lcom/layar/adapters/PoiActionsAdapter;
    new-instance v1, Lcom/layar/ui/SmartDialog$Builder;

    invoke-direct {v1, p0}, Lcom/layar/ui/SmartDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 136
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/layar/ui/SmartDialog$Builder;->setCancelable(Z)Lcom/layar/ui/SmartDialog$Builder;

    move-result-object v1

    .line 137
    const v2, 0x7f09019b

    invoke-virtual {v1, v2}, Lcom/layar/ui/SmartDialog$Builder;->setTitle(I)Lcom/layar/ui/SmartDialog$Builder;

    move-result-object v1

    .line 138
    invoke-virtual {v1, v0}, Lcom/layar/ui/SmartDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;)Lcom/layar/ui/SmartDialog$Builder;

    move-result-object v1

    .line 139
    invoke-virtual {v1, v0}, Lcom/layar/ui/SmartDialog$Builder;->setListItemClick(Landroid/view/View$OnClickListener;)Lcom/layar/ui/SmartDialog$Builder;

    move-result-object v1

    .line 140
    invoke-virtual {v1}, Lcom/layar/ui/SmartDialog$Builder;->show()Lcom/layar/ui/SmartDialog;

    .line 141
    return-void
.end method

.method public static startHttp(Ljava/lang/String;ZLcom/layar/data/layer/Layer20;Landroid/app/Activity;)V
    .locals 3
    .parameter "url"
    .parameter "closeBiw"
    .parameter "layer"
    .parameter "caller"

    .prologue
    .line 233
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/layar/DetailsViewActivity;

    invoke-direct {v0, p3, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 234
    .local v0, i:Landroid/content/Intent;
    const-string v1, "UrlToOpen"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 235
    const-string v1, "Title"

    iget-object v2, p2, Lcom/layar/data/layer/Layer20;->title:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 236
    if-eqz p1, :cond_0

    const/4 v1, 0x0

    :goto_0
    sput-boolean v1, Lcom/layar/Layar3DActivity;->showDetailBIW:Z

    .line 237
    invoke-virtual {p3, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 238
    return-void

    .line 236
    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private static startHttpPOST(Ljava/lang/String;ZLcom/layar/data/layer/Layer20;Landroid/app/Activity;Ljava/util/Map;)V
    .locals 5
    .parameter "url"
    .parameter "closeBiw"
    .parameter "layer"
    .parameter "caller"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Lcom/layar/data/layer/Layer20;",
            "Landroid/app/Activity;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p4, postParams:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v4, 0x1

    .line 242
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/layar/DetailsViewActivity;

    invoke-direct {v0, p3, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 243
    .local v0, i:Landroid/content/Intent;
    const-string v2, "UrlToOpen"

    invoke-virtual {v0, v2, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 244
    const-string v2, "Title"

    iget-object v3, p2, Lcom/layar/data/layer/Layer20;->title:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 245
    const-string v2, "Post"

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 246
    invoke-static {p4}, Lcom/layar/data/ActionHelper;->mapToBundle(Ljava/util/Map;)Landroid/os/Bundle;

    move-result-object v1

    .line 247
    .local v1, paramsBundle:Landroid/os/Bundle;
    const-string v2, "PostData"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 248
    if-eqz p1, :cond_0

    const/4 v2, 0x0

    :goto_0
    sput-boolean v2, Lcom/layar/Layar3DActivity;->showDetailBIW:Z

    .line 249
    invoke-virtual {p3, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 250
    return-void

    :cond_0
    move v2, v4

    .line 248
    goto :goto_0
.end method

.method public static startLayer(Lcom/layar/data/PoiAction;Landroid/content/Context;Lcom/layar/data/layer/Layer20;Lcom/layar/data/BasePOI;Lcom/layar/core/POIsContainer;)V
    .locals 2
    .parameter "action"
    .parameter "context"
    .parameter "layer"
    .parameter "poi"
    .parameter "poisContainer"

    .prologue
    .line 180
    const/16 v0, 0x2b

    iget-object v1, p0, Lcom/layar/data/PoiAction;->contentType:Ljava/lang/String;

    invoke-static {v0, v1, p2, p3}, Lcom/layar/data/ActionHelper;->addEvent(SLjava/lang/String;Lcom/layar/data/layer/Layer20;Lcom/layar/data/BasePOI;)V

    .line 181
    iget-object v0, p0, Lcom/layar/data/PoiAction;->uri:Ljava/lang/String;

    invoke-static {v0, p1, p2, p3, p4}, Lcom/layar/data/ActionHelper;->startLayer(Ljava/lang/String;Landroid/content/Context;Lcom/layar/data/layer/Layer20;Lcom/layar/data/BasePOI;Lcom/layar/core/POIsContainer;)Z

    .line 182
    return-void
.end method

.method public static startLayer(Ljava/lang/String;Landroid/content/Context;Lcom/layar/data/layer/Layer20;Lcom/layar/data/BasePOI;Lcom/layar/core/POIsContainer;)Z
    .locals 7
    .parameter "url"
    .parameter "context"
    .parameter "layer"
    .parameter "poi"
    .parameter "poisContainer"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 185
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 186
    .local v2, uri:Landroid/net/Uri;
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "http://m.layar.com/open/"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p2, Lcom/layar/data/layer/Layer20;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 187
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "layar://"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p2, Lcom/layar/data/layer/Layer20;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 188
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "layarshare://"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p2, Lcom/layar/data/layer/Layer20;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 189
    :cond_0
    invoke-static {v2, p2}, Lcom/layar/data/layer/LayerHandler;->setFilters(Landroid/net/Uri;Lcom/layar/data/layer/Layer20;)V

    .line 190
    invoke-static {}, Lcom/layar/App;->getLayerManager()Lcom/layar/data/layer/LayerManager;

    move-result-object v3

    iget-object v3, v3, Lcom/layar/data/layer/LayerManager;->layerHandler:Lcom/layar/data/layer/LayerHandler;

    invoke-virtual {v3, v2}, Lcom/layar/data/layer/LayerHandler;->setShareDialogData(Landroid/net/Uri;)V

    .line 191
    const-string v3, "action"

    invoke-virtual {v2, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 192
    .local v1, refreshAction:Ljava/lang/String;
    if-nez v1, :cond_1

    .line 193
    const-string v1, "refresh"

    .line 194
    :cond_1
    const-string v3, "refresh"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 195
    invoke-virtual {v2}, Landroid/net/Uri;->getQuery()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p4, v5, v3}, Lcom/layar/core/POIsContainer;->forcePOIUpdate(ZLjava/lang/String;)V

    :cond_2
    :goto_0
    move v3, v5

    .line 208
    .end local v1           #refreshAction:Ljava/lang/String;
    :goto_1
    return v3

    .line 196
    .restart local v1       #refreshAction:Ljava/lang/String;
    :cond_3
    const-string v3, "update"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 197
    invoke-virtual {v2}, Landroid/net/Uri;->getQuery()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p4, v6, v3}, Lcom/layar/core/POIsContainer;->forcePOIUpdate(ZLjava/lang/String;)V

    goto :goto_0

    .line 199
    .end local v1           #refreshAction:Ljava/lang/String;
    :cond_4
    const-string v3, "http://m.layar.com/open/"

    invoke-virtual {p0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 200
    const-string v3, "layar://"

    invoke-virtual {p0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 201
    const-string v3, "layarshare://"

    invoke-virtual {p0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 202
    :cond_5
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v0, v3, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 203
    .local v0, i:Landroid/content/Intent;
    const/high16 v3, 0x2

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 205
    const v3, 0x7f090065

    invoke-virtual {p1, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    .line 204
    invoke-static {v0, v3}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    move v3, v5

    .line 206
    goto :goto_1

    .end local v0           #i:Landroid/content/Intent;
    :cond_6
    move v3, v6

    .line 208
    goto :goto_1
.end method

.method public static startShareDialog(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 1
    .parameter "context"
    .parameter "uri"

    .prologue
    .line 170
    invoke-static {p1}, Lcom/layar/data/ShareDialogData;->parse(Landroid/net/Uri;)Lcom/layar/data/ShareDialogData;

    move-result-object v0

    .line 171
    .local v0, dialogData:Lcom/layar/data/ShareDialogData;
    invoke-static {p0, v0}, Lcom/layar/data/layer/LayerHelper;->showShareDialog(Landroid/content/Context;Lcom/layar/data/ShareDialogData;)Lcom/layar/ui/SmartDialog;

    .line 172
    return-void
.end method
