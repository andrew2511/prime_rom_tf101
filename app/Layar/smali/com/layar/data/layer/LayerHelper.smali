.class public Lcom/layar/data/layer/LayerHelper;
.super Ljava/lang/Object;
.source "LayerHelper.java"


# static fields
.field private static synthetic $SWITCH_TABLE$com$layar$data$layer$LayerManager$LayarView:[I = null

.field public static final CTXMENU_ADD_TO_FAV:I = 0xa

.field public static final CTXMENU_REMOVE_FROM_FAV:I = 0xb

.field public static final CTXMENU_REPORT_PROBLEM:I = 0xd

.field public static final LAYER_UNPUBLISHED:I = 0x7

.field public static final SUBACTIVITY_LAYAR_INFO:I = 0x4e20

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static synthetic $SWITCH_TABLE$com$layar$data$layer$LayerManager$LayarView()[I
    .locals 3

    .prologue
    .line 58
    sget-object v0, Lcom/layar/data/layer/LayerHelper;->$SWITCH_TABLE$com$layar$data$layer$LayerManager$LayarView:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/layar/data/layer/LayerManager$LayarView;->values()[Lcom/layar/data/layer/LayerManager$LayarView;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/layar/data/layer/LayerManager$LayarView;->AR:Lcom/layar/data/layer/LayerManager$LayarView;

    invoke-virtual {v1}, Lcom/layar/data/layer/LayerManager$LayarView;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_6

    :goto_1
    :try_start_1
    sget-object v1, Lcom/layar/data/layer/LayerManager$LayarView;->FAVORITES:Lcom/layar/data/layer/LayerManager$LayarView;

    invoke-virtual {v1}, Lcom/layar/data/layer/LayerManager$LayarView;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_5

    :goto_2
    :try_start_2
    sget-object v1, Lcom/layar/data/layer/LayerManager$LayarView;->LIST:Lcom/layar/data/layer/LayerManager$LayarView;

    invoke-virtual {v1}, Lcom/layar/data/layer/LayerManager$LayarView;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_4

    :goto_3
    :try_start_3
    sget-object v1, Lcom/layar/data/layer/LayerManager$LayarView;->MAP:Lcom/layar/data/layer/LayerManager$LayarView;

    invoke-virtual {v1}, Lcom/layar/data/layer/LayerManager$LayarView;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :goto_4
    :try_start_4
    sget-object v1, Lcom/layar/data/layer/LayerManager$LayarView;->POI_DETAILS:Lcom/layar/data/layer/LayerManager$LayarView;

    invoke-virtual {v1}, Lcom/layar/data/layer/LayerManager$LayarView;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_2

    :goto_5
    :try_start_5
    sget-object v1, Lcom/layar/data/layer/LayerManager$LayarView;->POPULAR:Lcom/layar/data/layer/LayerManager$LayarView;

    invoke-virtual {v1}, Lcom/layar/data/layer/LayerManager$LayarView;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_1

    :goto_6
    :try_start_6
    sget-object v1, Lcom/layar/data/layer/LayerManager$LayarView;->SHARE:Lcom/layar/data/layer/LayerManager$LayarView;

    invoke-virtual {v1}, Lcom/layar/data/layer/LayerManager$LayarView;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_0

    :goto_7
    sput-object v0, Lcom/layar/data/layer/LayerHelper;->$SWITCH_TABLE$com$layar$data$layer$LayerManager$LayarView:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_7

    :catch_1
    move-exception v1

    goto :goto_6

    :catch_2
    move-exception v1

    goto :goto_5

    :catch_3
    move-exception v1

    goto :goto_4

    :catch_4
    move-exception v1

    goto :goto_3

    :catch_5
    move-exception v1

    goto :goto_2

    :catch_6
    move-exception v1

    goto :goto_1
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 59
    const-class v0, Lcom/layar/data/layer/LayerHelper;

    invoke-static {v0}, Lcom/layar/util/Logger;->generateTAG(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/layar/data/layer/LayerHelper;->TAG:Ljava/lang/String;

    .line 58
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkStatus(Landroid/content/Context;Lcom/layar/data/layer/Layer20;)Z
    .locals 1
    .parameter "context"
    .parameter "layer"

    .prologue
    const/4 v0, 0x0

    .line 135
    invoke-static {p0, p1, v0, v0}, Lcom/layar/data/layer/LayerHelper;->checkStatus(Landroid/content/Context;Lcom/layar/data/layer/Layer20;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)Z

    move-result v0

    return v0
.end method

.method public static checkStatus(Landroid/content/Context;Lcom/layar/data/layer/Layer20;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)Z
    .locals 5
    .parameter "context"
    .parameter "layer"
    .parameter "positive"
    .parameter "negative"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 88
    iget v0, p1, Lcom/layar/data/layer/Layer20;->status:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget v0, p1, Lcom/layar/data/layer/Layer20;->status:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 90
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 91
    const v1, 0x7f090038

    .line 90
    invoke-static {v0, v1, v3}, Lcom/layar/ui/SmartToast;->makeText(Landroid/content/Context;II)Lcom/layar/ui/SmartToast;

    move-result-object v0

    .line 91
    invoke-virtual {v0}, Lcom/layar/ui/SmartToast;->show()V

    move v0, v4

    .line 125
    :goto_0
    return v0

    .line 96
    :cond_1
    iget v0, p1, Lcom/layar/data/layer/Layer20;->status:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_4

    iget-object v0, p1, Lcom/layar/data/layer/Layer20;->premium:Lcom/layar/data/layer/Layer20$Premium;

    if-eqz v0, :cond_4

    .line 98
    new-instance v0, Lcom/layar/ui/SmartDialog$Builder;

    const v1, 0x7f090101

    invoke-direct {v0, p0, v1, v3}, Lcom/layar/ui/SmartDialog$Builder;-><init>(Landroid/content/Context;IZ)V

    .line 99
    const v1, 0x7f090103

    .line 100
    if-eqz p2, :cond_2

    move-object v2, p2

    .line 99
    :goto_1
    invoke-virtual {v0, v1, v2}, Lcom/layar/ui/SmartDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/layar/ui/SmartDialog$Builder;

    move-result-object v0

    .line 113
    const v1, 0x7f090054

    .line 114
    if-eqz p3, :cond_3

    move-object v2, p3

    .line 113
    :goto_2
    invoke-virtual {v0, v1, v2}, Lcom/layar/ui/SmartDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/layar/ui/SmartDialog$Builder;

    move-result-object v0

    .line 120
    const v1, 0x7f090102

    invoke-virtual {v0, v1}, Lcom/layar/ui/SmartDialog$Builder;->setTitle(I)Lcom/layar/ui/SmartDialog$Builder;

    move-result-object v0

    .line 121
    invoke-virtual {v0, v3}, Lcom/layar/ui/SmartDialog$Builder;->setCancelable(Z)Lcom/layar/ui/SmartDialog$Builder;

    move-result-object v0

    .line 122
    invoke-virtual {v0}, Lcom/layar/ui/SmartDialog$Builder;->show()Lcom/layar/ui/SmartDialog;

    move v0, v4

    .line 123
    goto :goto_0

    .line 100
    :cond_2
    new-instance v2, Lcom/layar/data/layer/LayerHelper$1;

    invoke-direct {v2, p0, p1}, Lcom/layar/data/layer/LayerHelper$1;-><init>(Landroid/content/Context;Lcom/layar/data/layer/Layer20;)V

    goto :goto_1

    .line 114
    :cond_3
    new-instance v2, Lcom/layar/data/layer/LayerHelper$2;

    invoke-direct {v2, p0, p1}, Lcom/layar/data/layer/LayerHelper$2;-><init>(Landroid/content/Context;Lcom/layar/data/layer/Layer20;)V

    goto :goto_2

    :cond_4
    move v0, v3

    .line 125
    goto :goto_0
.end method

.method public static forceOpenLayer(Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/String;Lcom/layar/data/layer/Layer20;)V
    .locals 5
    .parameter "context"
    .parameter "extras"
    .parameter "poiId"
    .parameter "layer"

    .prologue
    const/4 v4, 0x0

    .line 322
    invoke-static {}, Lcom/layar/App;->getLayerManager()Lcom/layar/data/layer/LayerManager;

    move-result-object v2

    .line 324
    .local v2, layerManager:Lcom/layar/data/layer/LayerManager;
    if-nez p3, :cond_0

    .line 325
    iget-object v3, v2, Lcom/layar/data/layer/LayerManager;->layerHandler:Lcom/layar/data/layer/LayerHandler;

    invoke-virtual {v3}, Lcom/layar/data/layer/LayerHandler;->getCurrentLayer()Lcom/layar/data/layer/Layer20;

    move-result-object p3

    .line 327
    :cond_0
    if-nez p3, :cond_2

    .line 380
    :cond_1
    :goto_0
    return-void

    .line 332
    :cond_2
    invoke-static {p3}, Lcom/layar/data/layer/LayerHelper;->isFree(Lcom/layar/data/layer/Layer20;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 334
    new-instance v1, Landroid/content/Intent;

    const-class v3, Lcom/layar/PaymentProviderChooserActivity;

    invoke-direct {v1, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 335
    .local v1, intent:Landroid/content/Intent;
    const-string v3, "layerId"

    iget-object v4, p3, Lcom/layar/data/layer/Layer20;->name:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 336
    const-string v3, "layerTitle"

    iget-object v4, p3, Lcom/layar/data/layer/Layer20;->title:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 337
    const-string v3, "layerPublisher"

    iget-object v4, p3, Lcom/layar/data/layer/Layer20;->publisher:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 338
    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 342
    .end local v1           #intent:Landroid/content/Intent;
    :cond_3
    const/4 v0, 0x0

    .line 343
    .local v0, dontOpenFilters:Z
    if-eqz p1, :cond_4

    .line 344
    const-string v3, "dontOpenFilters"

    invoke-virtual {p1, v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 346
    :cond_4
    if-nez v0, :cond_5

    iget-object v3, v2, Lcom/layar/data/layer/LayerManager;->layerHandler:Lcom/layar/data/layer/LayerHandler;

    iget-boolean v3, v3, Lcom/layar/data/layer/LayerHandler;->mustShowFilters:Z

    if-eqz v3, :cond_5

    .line 347
    const/4 v3, 0x1

    invoke-static {p0, p3, v3}, Lcom/layar/data/layer/LayerHelper;->onSettingsButtonClicked(Landroid/content/Context;Lcom/layar/data/layer/Layer20;Z)V

    .line 348
    iget-object v3, v2, Lcom/layar/data/layer/LayerManager;->layerHandler:Lcom/layar/data/layer/LayerHandler;

    iput-boolean v4, v3, Lcom/layar/data/layer/LayerHandler;->mustShowFilters:Z

    goto :goto_0

    .line 352
    :cond_5
    invoke-static {p0, p3}, Lcom/layar/data/layer/LayerHelper;->isAuthOkay(Landroid/content/Context;Lcom/layar/data/layer/Layer20;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 359
    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.layar.OPEN_MAP"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 360
    .restart local v1       #intent:Landroid/content/Intent;
    invoke-static {}, Lcom/layar/data/layer/LayerHelper;->$SWITCH_TABLE$com$layar$data$layer$LayerManager$LayarView()[I

    move-result-object v3

    iget-object v4, v2, Lcom/layar/data/layer/LayerManager;->defaultView:Lcom/layar/data/layer/LayerManager$LayarView;

    invoke-virtual {v4}, Lcom/layar/data/layer/LayerManager$LayarView;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 372
    :goto_1
    if-eqz p1, :cond_6

    .line 373
    invoke-virtual {v1, p1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 375
    :cond_6
    if-eqz p2, :cond_7

    .line 376
    const-string v3, "AR:dataId"

    invoke-virtual {v1, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 378
    :cond_7
    invoke-static {p0, p3}, Lcom/layar/data/layer/LayerHelper;->saveToRecent(Landroid/content/Context;Lcom/layar/data/layer/Layer20;)V

    .line 379
    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 362
    :pswitch_0
    const-class v3, Lcom/layar/CameraActivity;

    invoke-virtual {v1, p0, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    goto :goto_1

    .line 365
    :pswitch_1
    const-class v3, Lcom/layar/OneLayerMapActivity;

    invoke-virtual {v1, p0, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    goto :goto_1

    .line 368
    :pswitch_2
    const-class v3, Lcom/layar/LayarListActivity;

    invoke-virtual {v1, p0, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    goto :goto_1

    .line 360
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static gotoList(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 248
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/layar/LayarListActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 249
    .local v0, i:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 250
    return-void
.end method

.method public static gotoMap(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 243
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/layar/OneLayerMapActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 244
    .local v0, i:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 245
    return-void
.end method

.method public static isAuthOkay(Landroid/content/Context;Lcom/layar/data/layer/Layer20;)Z
    .locals 6
    .parameter "context"
    .parameter "layer"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 389
    invoke-static {}, Lcom/layar/App;->getLayerManager()Lcom/layar/data/layer/LayerManager;

    move-result-object v1

    .line 395
    .local v1, layerManager:Lcom/layar/data/layer/LayerManager;
    iget-boolean v2, p1, Lcom/layar/data/layer/Layer20;->replaceFilters:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p1, Lcom/layar/data/layer/Layer20;->showFilterOnLaunch:Z

    if-eqz v2, :cond_0

    .line 396
    iget-object v2, v1, Lcom/layar/data/layer/LayerManager;->layerHandler:Lcom/layar/data/layer/LayerHandler;

    iget-boolean v2, v2, Lcom/layar/data/layer/LayerHandler;->mustShowFilters:Z

    if-eqz v2, :cond_0

    .line 397
    invoke-static {p0, p1}, Lcom/layar/data/layer/LayerHelper;->showAuthPage(Landroid/content/Context;Lcom/layar/data/layer/Layer20;)V

    move v2, v4

    .line 418
    :goto_0
    return v2

    .line 399
    :cond_0
    iget-boolean v2, p1, Lcom/layar/data/layer/Layer20;->authRequired:Z

    if-eqz v2, :cond_3

    .line 400
    invoke-static {}, Lcom/layar/util/CookieStore;->get()Lcom/layar/util/CookieStore;

    move-result-object v2

    iget-object v3, p1, Lcom/layar/data/layer/Layer20;->poiDomainURL:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/layar/util/CookieStore;->getCookie(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 403
    .local v0, cookies:Ljava/lang/String;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_3

    .line 404
    :cond_1
    iget-boolean v2, p1, Lcom/layar/data/layer/Layer20;->triedAuthOnce:Z

    if-eqz v2, :cond_2

    :goto_1
    move v2, v4

    .line 415
    goto :goto_0

    .line 412
    :cond_2
    iput-boolean v5, p1, Lcom/layar/data/layer/Layer20;->triedAuthOnce:Z

    .line 413
    invoke-static {p0, p1}, Lcom/layar/data/layer/LayerHelper;->showAuthPage(Landroid/content/Context;Lcom/layar/data/layer/Layer20;)V

    goto :goto_1

    .end local v0           #cookies:Ljava/lang/String;
    :cond_3
    move v2, v5

    .line 418
    goto :goto_0
.end method

.method public static isFree(Lcom/layar/data/layer/Layer20;)Z
    .locals 1
    .parameter "layer"

    .prologue
    .line 139
    iget-object v0, p0, Lcom/layar/data/layer/Layer20;->premium:Lcom/layar/data/layer/Layer20$Premium;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/layar/data/layer/Layer20;->premium:Lcom/layar/data/layer/Layer20$Premium;

    iget-boolean v0, v0, Lcom/layar/data/layer/Layer20$Premium;->purchased:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static launchLayer(Landroid/content/Context;Lcom/layar/data/layer/Layer20;I)V
    .locals 7
    .parameter "context"
    .parameter "layer"
    .parameter "requestCode"

    .prologue
    const/4 v4, 0x1

    .line 451
    invoke-static {p1}, Lcom/layar/data/layer/LayerHelper;->isFree(Lcom/layar/data/layer/Layer20;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 453
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/layar/PaymentProviderChooserActivity;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 454
    .local v2, intent:Landroid/content/Intent;
    const-string v3, "layerId"

    iget-object v4, p1, Lcom/layar/data/layer/Layer20;->name:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 455
    const-string v3, "layerTitle"

    iget-object v4, p1, Lcom/layar/data/layer/Layer20;->title:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 456
    const-string v3, "layerPublisher"

    iget-object v4, p1, Lcom/layar/data/layer/Layer20;->publisher:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 457
    const/4 v3, -0x1

    if-eq p2, v3, :cond_0

    instance-of v3, p0, Landroid/app/Activity;

    if-eqz v3, :cond_0

    .line 458
    move-object v0, p0

    check-cast v0, Landroid/app/Activity;

    move-object v1, v0

    .line 459
    .local v1, activity:Landroid/app/Activity;
    invoke-virtual {v1, v2, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 466
    .end local v1           #activity:Landroid/app/Activity;
    .end local v2           #intent:Landroid/content/Intent;
    :goto_0
    return-void

    .line 461
    .restart local v2       #intent:Landroid/content/Intent;
    :cond_0
    invoke-virtual {p0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 464
    .end local v2           #intent:Landroid/content/Intent;
    :cond_1
    new-instance v3, Lcom/layar/data/layer/OpenLayerTask;

    invoke-direct {v3, p0, v4}, Lcom/layar/data/layer/OpenLayerTask;-><init>(Landroid/content/Context;I)V

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    iget-object v6, p1, Lcom/layar/data/layer/Layer20;->name:Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-virtual {v3, v4}, Lcom/layar/data/layer/OpenLayerTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method public static onActivityResult(Landroid/app/Activity;IILandroid/content/Intent;)V
    .locals 1
    .parameter "parent"
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 476
    const/16 v0, 0x4e20

    if-ne p1, v0, :cond_0

    .line 477
    if-nez p2, :cond_0

    .line 481
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 483
    :cond_0
    return-void
.end method

.method public static onClick(Landroid/view/View;ZLcom/layar/ActivityHelper;)Lcom/layar/data/layer/Layer20;
    .locals 4
    .parameter "v"
    .parameter "doLaunchOnClick"
    .parameter "helper"

    .prologue
    .line 143
    const/4 v1, 0x0

    .line 145
    .local v1, layer:Lcom/layar/data/layer/Layer20;
    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result v2

    .line 148
    .local v2, viewId:I
    sparse-switch v2, :sswitch_data_0

    .line 165
    :goto_0
    return-object v1

    .line 150
    :sswitch_0
    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    .end local v1           #layer:Lcom/layar/data/layer/Layer20;
    check-cast v1, Lcom/layar/data/layer/Layer20;

    .line 151
    .restart local v1       #layer:Lcom/layar/data/layer/Layer20;
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 152
    .local v0, contect:Landroid/content/Context;
    if-eqz p1, :cond_0

    .line 153
    invoke-static {v0, v1}, Lcom/layar/data/layer/LayerHelper;->openNewLayer(Landroid/content/Context;Lcom/layar/data/layer/Layer20;)V

    goto :goto_0

    .line 155
    :cond_0
    invoke-static {v0, v1, p2}, Lcom/layar/data/layer/LayerHelper;->showLayerDetails(Landroid/content/Context;Lcom/layar/data/layer/Layer20;Lcom/layar/ActivityHelper;)V

    goto :goto_0

    .line 158
    .end local v0           #contect:Landroid/content/Context;
    :sswitch_1
    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    .end local v1           #layer:Lcom/layar/data/layer/Layer20;
    check-cast v1, Lcom/layar/data/layer/Layer20;

    .line 161
    .restart local v1       #layer:Lcom/layar/data/layer/Layer20;
    invoke-static {}, Lcom/layar/App;->getLayerManager()Lcom/layar/data/layer/LayerManager;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/layar/data/layer/LayerManager;->addBookmark(Lcom/layar/data/layer/Layer20;)V

    .line 162
    invoke-virtual {p2}, Lcom/layar/ActivityHelper;->gotoMain()V

    goto :goto_0

    .line 148
    :sswitch_data_0
    .sparse-switch
        0x7f070074 -> :sswitch_1
        0x7f07008a -> :sswitch_0
    .end sparse-switch
.end method

.method public static onContextItemSelected(Landroid/content/Context;Landroid/view/MenuItem;Lcom/layar/data/layer/Layer20;)Z
    .locals 4
    .parameter "context"
    .parameter "item"
    .parameter "layer"

    .prologue
    const/4 v3, 0x1

    .line 187
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 188
    .local v0, itemId:I
    invoke-static {}, Lcom/layar/App;->getLayerManager()Lcom/layar/data/layer/LayerManager;

    move-result-object v1

    .line 189
    .local v1, layerManager:Lcom/layar/data/layer/LayerManager;
    packed-switch v0, :pswitch_data_0

    .line 200
    :pswitch_0
    const/4 v2, 0x0

    :goto_0
    return v2

    .line 191
    :pswitch_1
    invoke-virtual {v1, p2}, Lcom/layar/data/layer/LayerManager;->addBookmark(Lcom/layar/data/layer/Layer20;)V

    move v2, v3

    .line 192
    goto :goto_0

    .line 194
    :pswitch_2
    invoke-virtual {v1, p2}, Lcom/layar/data/layer/LayerManager;->removeBookmark(Lcom/layar/data/layer/Layer20;)V

    move v2, v3

    .line 195
    goto :goto_0

    .line 197
    :pswitch_3
    iget-object v2, p2, Lcom/layar/data/layer/Layer20;->title:Ljava/lang/String;

    invoke-static {p0, v2}, Lcom/layar/data/layer/LayerManager;->reportLayerProblem(Landroid/content/Context;Ljava/lang/String;)V

    move v2, v3

    .line 198
    goto :goto_0

    .line 189
    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public static onCreateContextMenu(Landroid/view/ContextMenu;Lcom/layar/data/layer/Layer20;)V
    .locals 4
    .parameter "menu"
    .parameter "layer"

    .prologue
    const/4 v3, 0x0

    .line 169
    if-nez p1, :cond_0

    .line 184
    :goto_0
    return-void

    .line 171
    :cond_0
    invoke-static {}, Lcom/layar/App;->getLayerManager()Lcom/layar/data/layer/LayerManager;

    move-result-object v0

    .line 172
    .local v0, layerManager:Lcom/layar/data/layer/LayerManager;
    const v1, 0x7f0900de

    invoke-interface {p0, v1}, Landroid/view/ContextMenu;->setHeaderTitle(I)Landroid/view/ContextMenu;

    .line 174
    invoke-virtual {v0, p1}, Lcom/layar/data/layer/LayerManager;->isPurchased(Lcom/layar/data/layer/Layer20;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 175
    invoke-virtual {v0, p1}, Lcom/layar/data/layer/LayerManager;->isBookmarked(Lcom/layar/data/layer/Layer20;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 176
    const/16 v1, 0xb

    const v2, 0x7f0900e0

    invoke-interface {p0, v3, v1, v3, v2}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 183
    :cond_1
    :goto_1
    const/16 v1, 0xd

    const v2, 0x7f09018e

    invoke-interface {p0, v3, v1, v3, v2}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    goto :goto_0

    .line 178
    :cond_2
    const/16 v1, 0xa

    const v2, 0x7f0900df

    invoke-interface {p0, v3, v1, v3, v2}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    goto :goto_1
.end method

.method public static onSettingsButtonClicked(Landroid/content/Context;Lcom/layar/data/layer/Layer20;)V
    .locals 1
    .parameter "context"
    .parameter "layer"

    .prologue
    .line 204
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/layar/data/layer/LayerHelper;->onSettingsButtonClicked(Landroid/content/Context;Lcom/layar/data/layer/Layer20;Z)V

    .line 205
    return-void
.end method

.method public static onSettingsButtonClicked(Landroid/content/Context;Lcom/layar/data/layer/Layer20;Z)V
    .locals 1
    .parameter "context"
    .parameter "layer"
    .parameter "returnToAR"

    .prologue
    .line 208
    if-nez p1, :cond_0

    .line 213
    :goto_0
    return-void

    .line 210
    :cond_0
    iget-boolean v0, p1, Lcom/layar/data/layer/Layer20;->replaceFilters:Z

    if-eqz v0, :cond_1

    .line 211
    invoke-static {p0, p1}, Lcom/layar/data/layer/LayerHelper;->showAuthPage(Landroid/content/Context;Lcom/layar/data/layer/Layer20;)V

    goto :goto_0

    .line 212
    :cond_1
    invoke-static {p0, p2}, Lcom/layar/data/layer/LayerHelper;->showFiltersPage(Landroid/content/Context;Z)V

    goto :goto_0
.end method

.method public static openCurrentLayer(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 282
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/layar/data/layer/LayerHelper;->openCurrentLayer(Landroid/content/Context;Landroid/os/Bundle;)V

    .line 283
    return-void
.end method

.method public static openCurrentLayer(Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 1
    .parameter "context"
    .parameter "extras"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 292
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/layar/data/layer/LayerHelper;->openCurrentLayer(Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 293
    return-void
.end method

.method public static openCurrentLayer(Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 3
    .parameter "context"
    .parameter "extras"
    .parameter "poiId"

    .prologue
    .line 302
    invoke-static {}, Lcom/layar/App;->getLayerManager()Lcom/layar/data/layer/LayerManager;

    move-result-object v1

    .line 303
    .local v1, layerManager:Lcom/layar/data/layer/LayerManager;
    iget-object v2, v1, Lcom/layar/data/layer/LayerManager;->layerHandler:Lcom/layar/data/layer/LayerHandler;

    invoke-virtual {v2}, Lcom/layar/data/layer/LayerHandler;->getCurrentLayer()Lcom/layar/data/layer/Layer20;

    move-result-object v0

    .line 304
    .local v0, layer:Lcom/layar/data/layer/Layer20;
    if-nez v0, :cond_1

    .line 311
    :cond_0
    :goto_0
    return-void

    .line 307
    :cond_1
    invoke-static {p0, v0}, Lcom/layar/data/layer/LayerHelper;->checkStatus(Landroid/content/Context;Lcom/layar/data/layer/Layer20;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 310
    invoke-static {p0, p1, p2, v0}, Lcom/layar/data/layer/LayerHelper;->forceOpenLayer(Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/String;Lcom/layar/data/layer/Layer20;)V

    goto :goto_0
.end method

.method public static openNewLayer(Landroid/content/Context;Lcom/layar/data/layer/Layer20;)V
    .locals 1
    .parameter "context"
    .parameter "layer"

    .prologue
    .line 422
    const/4 v0, -0x1

    invoke-static {p0, p1, v0}, Lcom/layar/data/layer/LayerHelper;->openNewLayer(Landroid/content/Context;Lcom/layar/data/layer/Layer20;I)V

    .line 423
    return-void
.end method

.method public static openNewLayer(Landroid/content/Context;Lcom/layar/data/layer/Layer20;I)V
    .locals 1
    .parameter "context"
    .parameter "layer"
    .parameter "requestCode"

    .prologue
    .line 433
    if-nez p1, :cond_1

    .line 441
    :cond_0
    :goto_0
    return-void

    .line 436
    :cond_1
    invoke-static {p0, p1}, Lcom/layar/data/layer/LayerHelper;->checkStatus(Landroid/content/Context;Lcom/layar/data/layer/Layer20;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 439
    invoke-static {p0, p1, p2}, Lcom/layar/data/layer/LayerHelper;->launchLayer(Landroid/content/Context;Lcom/layar/data/layer/Layer20;I)V

    goto :goto_0
.end method

.method public static saveToRecent(Landroid/content/Context;Lcom/layar/data/layer/Layer20;)V
    .locals 6
    .parameter "context"
    .parameter "layer"

    .prologue
    const/4 v5, 0x0

    .line 264
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 266
    .local v2, resolver:Landroid/content/ContentResolver;
    invoke-static {p1}, Lcom/layar/provider/LayerAlias;->generateValues(Lcom/layar/data/layer/Layer20;)Landroid/content/ContentValues;

    move-result-object v0

    .line 267
    .local v0, layerValues:Landroid/content/ContentValues;
    sget-object v3, Lcom/layar/provider/LayarProvider;->LAYER_CONTENT_URI:Landroid/net/Uri;

    .line 268
    invoke-static {p1}, Lcom/layar/provider/LayerAlias;->selection(Lcom/layar/data/layer/Layer20;)Ljava/lang/String;

    move-result-object v4

    .line 267
    invoke-static {v2, v3, v0, v4, v5}, Lcom/layar/provider/ResolverHelper;->insertOrThrow(Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)V

    .line 270
    invoke-static {p1}, Lcom/layar/provider/RecentLayerAlias;->generateValues(Lcom/layar/data/layer/Layer20;)Landroid/content/ContentValues;

    move-result-object v1

    .line 272
    .local v1, recentValues:Landroid/content/ContentValues;
    sget-object v3, Lcom/layar/provider/LayarProvider;->RECENT_LAYER_CONTENT_URI:Landroid/net/Uri;

    invoke-static {p1}, Lcom/layar/provider/RecentLayerAlias;->selection(Lcom/layar/data/layer/Layer20;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 274
    sget-object v3, Lcom/layar/provider/LayarProvider;->RECENT_LAYER_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2, v3, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 275
    return-void
.end method

.method public static sendEmail(Landroid/content/Context;Lcom/layar/data/layer/Layer20;)V
    .locals 5
    .parameter "context"
    .parameter "layer"

    .prologue
    .line 628
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.SEND"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 630
    .local v1, send:Landroid/content/Intent;
    const v3, 0x7f0900a4

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 631
    .local v2, subject:Ljava/lang/String;
    const-string v3, "%title%"

    iget-object v4, p1, Lcom/layar/data/layer/Layer20;->title:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 633
    const v3, 0x7f0900a5

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 634
    .local v0, message:Ljava/lang/String;
    const-string v3, "%android%"

    sget-object v4, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 635
    const-string v3, "%name%"

    iget-object v4, p1, Lcom/layar/data/layer/Layer20;->title:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 636
    const-string v3, "%description%"

    iget-object v4, p1, Lcom/layar/data/layer/Layer20;->shortDescription:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 637
    const-string v3, "%publisher%"

    iget-object v4, p1, Lcom/layar/data/layer/Layer20;->publisher:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 638
    const-string v3, "%link%"

    iget-object v4, p1, Lcom/layar/data/layer/Layer20;->linkUrl:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 639
    iget-object v3, p1, Lcom/layar/data/layer/Layer20;->premium:Lcom/layar/data/layer/Layer20$Premium;

    if-eqz v3, :cond_0

    .line 640
    const-string v3, "%price%"

    iget-object v4, p1, Lcom/layar/data/layer/Layer20;->premium:Lcom/layar/data/layer/Layer20$Premium;

    invoke-static {v4}, Lcom/layar/util/CurrencyUtil;->getCurrencyString(Lcom/layar/data/layer/Layer20$Premium;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 644
    :goto_0
    const-string v3, "android.intent.extra.SUBJECT"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 645
    const-string v3, "plain/text"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 646
    const-string v3, "android.intent.extra.TEXT"

    invoke-virtual {v1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 647
    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 648
    return-void

    .line 642
    :cond_0
    const-string v3, "%price%"

    const v4, 0x7f09008d

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static setPriceValue(Landroid/widget/TextView;Lcom/layar/data/layer/Layer20;)V
    .locals 1
    .parameter "viewPrice"
    .parameter "layer"

    .prologue
    .line 70
    iget-object v0, p1, Lcom/layar/data/layer/Layer20;->premium:Lcom/layar/data/layer/Layer20$Premium;

    if-eqz v0, :cond_1

    .line 71
    iget-object v0, p1, Lcom/layar/data/layer/Layer20;->premium:Lcom/layar/data/layer/Layer20$Premium;

    iget-boolean v0, v0, Lcom/layar/data/layer/Layer20$Premium;->purchased:Z

    if-nez v0, :cond_0

    .line 73
    iget-object v0, p1, Lcom/layar/data/layer/Layer20;->premium:Lcom/layar/data/layer/Layer20$Premium;

    invoke-static {v0}, Lcom/layar/util/CurrencyUtil;->getCurrencyString(Lcom/layar/data/layer/Layer20$Premium;)Ljava/lang/String;

    move-result-object v0

    .line 72
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 78
    :goto_0
    return-void

    .line 75
    :cond_0
    const v0, 0x7f090045

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 77
    :cond_1
    const v0, 0x7f09008d

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method

.method public static share(Landroid/content/Context;Lcom/layar/data/layer/Layer20;)Lcom/layar/ui/ResolverDialog;
    .locals 4
    .parameter "context"
    .parameter "layer"

    .prologue
    .line 651
    if-nez p1, :cond_0

    .line 652
    const/4 v2, 0x0

    .line 660
    :goto_0
    return-object v2

    .line 653
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/layar/ShareSocialActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 654
    .local v1, shareIntent:Landroid/content/Intent;
    const-string v2, "layer:name"

    iget-object v3, p1, Lcom/layar/data/layer/Layer20;->name:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 655
    const-string v2, "layer:title"

    iget-object v3, p1, Lcom/layar/data/layer/Layer20;->title:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 656
    const-string v2, "share:type"

    const-string v3, "layer"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 658
    new-instance v0, Lcom/layar/ui/ResolverDialog;

    const v2, 0x7f090094

    invoke-direct {v0, p0, v1, v2}, Lcom/layar/ui/ResolverDialog;-><init>(Landroid/content/Context;Landroid/content/Intent;I)V

    .line 659
    .local v0, resolverDialog:Lcom/layar/ui/ResolverDialog;
    invoke-virtual {v0}, Lcom/layar/ui/ResolverDialog;->show()V

    move-object v2, v0

    .line 660
    goto :goto_0
.end method

.method public static showActionsDialog(Landroid/content/Context;Lcom/layar/data/layer/Layer20;Lcom/layar/data/ActionsDialogData;Lcom/layar/ui/ActionsMenu$ActionsMenuListener;)Lcom/layar/ui/SmartDialog;
    .locals 12
    .parameter "context"
    .parameter "layer"
    .parameter "data"
    .parameter "listener"

    .prologue
    .line 552
    iget-object v0, p2, Lcom/layar/data/ActionsDialogData;->actions:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    move v2, v0

    .line 554
    .local v2, count:I
    :goto_0
    if-lez v2, :cond_2

    const/4 v0, 0x1

    .line 557
    .local v0, addActions:Z
    :goto_1
    if-eqz v0, :cond_3

    .line 558
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 559
    .local v1, viewButtonPanel:Landroid/widget/LinearLayout;
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    move-object v10, v1

    .line 563
    .end local v1           #viewButtonPanel:Landroid/widget/LinearLayout;
    .local v10, viewButtonPanel:Landroid/widget/LinearLayout;
    :goto_2
    new-instance v1, Lcom/layar/ui/SmartDialog$Builder;

    iget-object v3, p2, Lcom/layar/data/ActionsDialogData;->description:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-direct {v1, p0, v3, v4}, Lcom/layar/ui/SmartDialog$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 564
    iget-object v3, p2, Lcom/layar/data/ActionsDialogData;->title:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/layar/ui/SmartDialog$Builder;->setTitle(Ljava/lang/String;)Lcom/layar/ui/SmartDialog$Builder;

    move-result-object v1

    .line 565
    iget-object v3, p2, Lcom/layar/data/ActionsDialogData;->icon:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/layar/ui/SmartDialog$Builder;->setIcon(Ljava/lang/String;)Lcom/layar/ui/SmartDialog$Builder;

    move-result-object v1

    .line 566
    invoke-virtual {v1, v10}, Lcom/layar/ui/SmartDialog$Builder;->setButtonView(Landroid/view/ViewGroup;)Lcom/layar/ui/SmartDialog$Builder;

    move-result-object v1

    .line 567
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/layar/ui/SmartDialog$Builder;->setCancelable(Z)Lcom/layar/ui/SmartDialog$Builder;

    move-result-object v1

    .line 568
    invoke-virtual {v1}, Lcom/layar/ui/SmartDialog$Builder;->build()Lcom/layar/ui/SmartDialog;

    move-result-object v3

    .line 570
    .local v3, dialog:Lcom/layar/ui/SmartDialog;
    if-eqz v0, :cond_0

    .line 571
    const/4 v0, 0x6

    .line 572
    .local v0, MAX_ITEMS:I
    const/4 v0, 0x1

    sub-int v0, v2, v0

    div-int/lit8 v0, v0, 0x3

    .end local v0           #MAX_ITEMS:I
    add-int/lit8 v0, v0, 0x1

    const/4 v1, 0x2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    new-array v8, v0, [Landroid/widget/LinearLayout;

    .line 573
    .local v8, rows:[Landroid/widget/LinearLayout;
    const/4 v0, 0x3

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 575
    .local v1, to:I
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v0, 0x0

    const/4 v4, -0x2

    const/high16 v5, 0x3f80

    invoke-direct {v6, v0, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 576
    .local v6, params:Landroid/widget/LinearLayout$LayoutParams;
    const/high16 v0, 0x4040

    sget v4, Lcom/layar/App;->DENSITY:F

    mul-float/2addr v0, v4

    float-to-int v0, v0

    .line 577
    .local v0, margin:I
    iput v0, v6, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 578
    iput v0, v6, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 580
    const/4 v0, 0x0

    .local v0, i:I
    move v4, v0

    .end local v0           #i:I
    .local v4, i:I
    move v9, v1

    .end local v1           #to:I
    .local v9, to:I
    :goto_3
    array-length v0, v8

    if-lt v4, v0, :cond_4

    .line 619
    const/4 p0, 0x0

    .end local p1
    .local p0, k:I
    :goto_4
    array-length p1, v8

    if-lt p0, p1, :cond_9

    .line 623
    .end local v4           #i:I
    .end local v6           #params:Landroid/widget/LinearLayout$LayoutParams;
    .end local v8           #rows:[Landroid/widget/LinearLayout;
    .end local v9           #to:I
    .end local p0           #k:I
    :cond_0
    invoke-virtual {v3}, Lcom/layar/ui/SmartDialog;->show()V

    .line 624
    return-object v3

    .line 552
    .end local v2           #count:I
    .end local v3           #dialog:Lcom/layar/ui/SmartDialog;
    .end local v10           #viewButtonPanel:Landroid/widget/LinearLayout;
    .local p0, context:Landroid/content/Context;
    .restart local p1
    :cond_1
    iget-object v0, p2, Lcom/layar/data/ActionsDialogData;->actions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    move v2, v0

    goto :goto_0

    .line 554
    .restart local v2       #count:I
    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    .line 561
    .local v0, addActions:Z
    :cond_3
    const/4 v1, 0x0

    .local v1, viewButtonPanel:Landroid/widget/LinearLayout;
    move-object v10, v1

    .end local v1           #viewButtonPanel:Landroid/widget/LinearLayout;
    .restart local v10       #viewButtonPanel:Landroid/widget/LinearLayout;
    goto :goto_2

    .line 581
    .end local v0           #addActions:Z
    .restart local v3       #dialog:Lcom/layar/ui/SmartDialog;
    .restart local v4       #i:I
    .restart local v6       #params:Landroid/widget/LinearLayout$LayoutParams;
    .restart local v8       #rows:[Landroid/widget/LinearLayout;
    .restart local v9       #to:I
    :cond_4
    new-instance v7, Landroid/widget/LinearLayout;

    invoke-direct {v7, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 582
    .local v7, row:Landroid/widget/LinearLayout;
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v5, -0x2

    invoke-direct {v0, v1, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v7, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 583
    aput-object v7, v8, v4

    .line 584
    const/4 v0, 0x3

    sub-int v0, v9, v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 585
    .local v0, from:I
    move v0, v0

    .local v0, j:I
    move v5, v0

    .end local v0           #j:I
    .local v5, j:I
    :goto_5
    if-lt v5, v9, :cond_5

    .line 616
    :goto_6
    add-int/lit8 v1, v9, 0x3

    .line 580
    .end local v9           #to:I
    .local v1, to:I
    add-int/lit8 v0, v4, 0x1

    .end local v4           #i:I
    .local v0, i:I
    move v4, v0

    .end local v0           #i:I
    .restart local v4       #i:I
    move v9, v1

    .end local v1           #to:I
    .restart local v9       #to:I
    goto :goto_3

    .line 587
    :cond_5
    const/4 v0, 0x5

    if-ne v5, v0, :cond_6

    const/4 v0, 0x1

    sub-int v0, v2, v0

    if-ge v5, v0, :cond_6

    .line 588
    invoke-static {}, Lcom/layar/data/PoiAction;->getMoreAction()Lcom/layar/data/PoiAction;

    move-result-object v0

    .line 590
    .local v0, action:Lcom/layar/data/PoiAction;
    goto :goto_6

    .line 591
    .end local v0           #action:Lcom/layar/data/PoiAction;
    :cond_6
    if-ge v5, v2, :cond_7

    .line 592
    iget-object v0, p2, Lcom/layar/data/ActionsDialogData;->actions:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/layar/data/PoiAction;

    .line 597
    .restart local v0       #action:Lcom/layar/data/PoiAction;
    :goto_7
    if-nez v0, :cond_8

    .line 585
    :goto_8
    add-int/lit8 v0, v5, 0x1

    .end local v5           #j:I
    .local v0, j:I
    move v5, v0

    .end local v0           #j:I
    .restart local v5       #j:I
    goto :goto_5

    .line 595
    :cond_7
    const/4 v0, 0x0

    .local v0, action:Lcom/layar/data/PoiAction;
    goto :goto_7

    .line 600
    :cond_8
    new-instance v1, Landroid/widget/Button;

    invoke-direct {v1, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 601
    .local v1, button:Landroid/widget/Button;
    iget-object v11, v0, Lcom/layar/data/PoiAction;->label:Ljava/lang/String;

    invoke-virtual {v1, v11}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 602
    invoke-virtual {v1, v6}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 603
    invoke-virtual {v1}, Landroid/widget/Button;->setSingleLine()V

    .line 604
    sget-object v11, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v1, v11}, Landroid/widget/Button;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 605
    const/4 v11, 0x1

    invoke-virtual {v1, v11}, Landroid/widget/Button;->setClickable(Z)V

    .line 606
    new-instance v11, Lcom/layar/data/layer/LayerHelper$4;

    invoke-direct {v11, p3, v0, p1, v3}, Lcom/layar/data/layer/LayerHelper$4;-><init>(Lcom/layar/ui/ActionsMenu$ActionsMenuListener;Lcom/layar/data/PoiAction;Lcom/layar/data/layer/Layer20;Lcom/layar/ui/SmartDialog;)V

    invoke-virtual {v1, v11}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 614
    invoke-virtual {v7, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_8

    .line 620
    .end local v0           #action:Lcom/layar/data/PoiAction;
    .end local v1           #button:Landroid/widget/Button;
    .end local v5           #j:I
    .end local v7           #row:Landroid/widget/LinearLayout;
    .end local p1
    .local p0, k:I
    :cond_9
    aget-object p1, v8, p0

    invoke-virtual {v10, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 619
    add-int/lit8 p0, p0, 0x1

    goto/16 :goto_4
.end method

.method public static showAddFavoritesDialog(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 486
    new-instance v0, Lcom/layar/ui/AddFavoritesDialog;

    .line 487
    const/4 v1, 0x1

    .line 486
    invoke-direct {v0, p0, v1}, Lcom/layar/ui/AddFavoritesDialog;-><init>(Landroid/content/Context;Z)V

    .line 488
    .local v0, mAddFavDialog:Lcom/layar/ui/AddFavoritesDialog;
    invoke-virtual {v0}, Lcom/layar/ui/AddFavoritesDialog;->show()V

    .line 489
    return-void
.end method

.method public static showAuthPage(Landroid/content/Context;Lcom/layar/data/layer/Layer20;)V
    .locals 5
    .parameter "context"
    .parameter "layer"

    .prologue
    .line 216
    iget-object v2, p1, Lcom/layar/data/layer/Layer20;->authURL:Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 217
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/layar/DetailsViewActivity;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 218
    .local v0, i:Landroid/content/Intent;
    invoke-static {}, Lcom/layar/util/UriHelper;->getInstance()Lcom/layar/util/UriHelper;

    move-result-object v2

    .line 219
    iget-object v3, p1, Lcom/layar/data/layer/Layer20;->authURL:Ljava/lang/String;

    iget-object v4, p1, Lcom/layar/data/layer/Layer20;->authParams:Ljava/lang/String;

    .line 218
    invoke-virtual {v2, v3, v4}, Lcom/layar/util/UriHelper;->appendActionParams(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 221
    .local v1, url:Ljava/lang/String;
    const-string v2, "UrlToOpen"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 222
    const-string v2, "Title"

    iget-object v3, p1, Lcom/layar/data/layer/Layer20;->authLabel:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 223
    iget-boolean v2, p1, Lcom/layar/data/layer/Layer20;->authRequired:Z

    if-nez v2, :cond_0

    iget-boolean v2, p1, Lcom/layar/data/layer/Layer20;->showFilterOnLaunch:Z

    if-eqz v2, :cond_1

    iget-boolean v2, p1, Lcom/layar/data/layer/Layer20;->replaceFilters:Z

    if-eqz v2, :cond_1

    .line 224
    :cond_0
    const-string v2, "RestartARView"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 226
    :cond_1
    const/high16 v2, 0x1000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 227
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 229
    .end local v0           #i:Landroid/content/Intent;
    .end local v1           #url:Ljava/lang/String;
    :cond_2
    return-void
.end method

.method public static showFiltersPage(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 232
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/layar/data/layer/LayerHelper;->showFiltersPage(Landroid/content/Context;Z)V

    .line 233
    return-void
.end method

.method public static showFiltersPage(Landroid/content/Context;Z)V
    .locals 3
    .parameter "context"
    .parameter "returnToAr"

    .prologue
    .line 236
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/layar/FilterSettingsActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 237
    .local v0, i:Landroid/content/Intent;
    invoke-static {}, Lcom/layar/App;->getLayerManager()Lcom/layar/data/layer/LayerManager;

    move-result-object v1

    iget-object v1, v1, Lcom/layar/data/layer/LayerManager;->layerHandler:Lcom/layar/data/layer/LayerHandler;

    iget-boolean v1, v1, Lcom/layar/data/layer/LayerHandler;->mustShowFilters:Z

    if-eqz v1, :cond_0

    .line 238
    const-string v1, "shownOnStartup"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 239
    :cond_0
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 240
    return-void
.end method

.method public static showInfo(Landroid/app/Activity;)V
    .locals 3
    .parameter "parent"

    .prologue
    const/4 v2, 0x1

    .line 469
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/layar/LayerInfoActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 470
    .local v0, i:Landroid/content/Intent;
    const-string v1, "useCurrentLayer"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 471
    const-string v1, "hideAction"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 472
    const/16 v1, 0x4e20

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 473
    return-void
.end method

.method public static showLayerActionList(Landroid/app/Activity;)V
    .locals 6
    .parameter "owner"

    .prologue
    .line 665
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    .line 664
    invoke-static {v4}, Lcom/layar/data/layer/LayerManager;->getLayerManager(Landroid/content/Context;)Lcom/layar/data/layer/LayerManager;

    move-result-object v4

    .line 665
    iget-object v2, v4, Lcom/layar/data/layer/LayerManager;->layerHandler:Lcom/layar/data/layer/LayerHandler;

    .line 667
    .local v2, handler:Lcom/layar/data/layer/LayerHandler;
    const/4 v3, 0x0

    .line 668
    .local v3, screenshot:Lcom/layar/adapters/LayerActionsAdapter$ScreenshotHandler;
    instance-of v4, p0, Lcom/layar/adapters/LayerActionsAdapter$ScreenshotHandler;

    if-eqz v4, :cond_0

    .line 669
    move-object v0, p0

    check-cast v0, Lcom/layar/adapters/LayerActionsAdapter$ScreenshotHandler;

    move-object v3, v0

    .line 670
    :cond_0
    new-instance v1, Lcom/layar/adapters/LayerActionsAdapter;

    .line 671
    iget-object v4, v2, Lcom/layar/data/layer/LayerHandler;->actions:Ljava/util/ArrayList;

    .line 670
    invoke-direct {v1, p0, v4, v3}, Lcom/layar/adapters/LayerActionsAdapter;-><init>(Landroid/app/Activity;Ljava/util/ArrayList;Lcom/layar/adapters/LayerActionsAdapter$ScreenshotHandler;)V

    .line 672
    .local v1, adapter:Lcom/layar/adapters/LayerActionsAdapter;
    new-instance v4, Lcom/layar/ui/SmartDialog$Builder;

    invoke-direct {v4, p0}, Lcom/layar/ui/SmartDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 673
    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/layar/ui/SmartDialog$Builder;->setCancelable(Z)Lcom/layar/ui/SmartDialog$Builder;

    move-result-object v4

    .line 674
    const v5, 0x7f09016b

    invoke-virtual {v4, v5}, Lcom/layar/ui/SmartDialog$Builder;->setTitle(I)Lcom/layar/ui/SmartDialog$Builder;

    move-result-object v4

    .line 675
    invoke-virtual {v4, v1}, Lcom/layar/ui/SmartDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;)Lcom/layar/ui/SmartDialog$Builder;

    move-result-object v4

    .line 676
    invoke-virtual {v4, v1}, Lcom/layar/ui/SmartDialog$Builder;->setListItemClick(Landroid/view/View$OnClickListener;)Lcom/layar/ui/SmartDialog$Builder;

    move-result-object v4

    .line 677
    invoke-virtual {v4}, Lcom/layar/ui/SmartDialog$Builder;->show()Lcom/layar/ui/SmartDialog;

    .line 678
    return-void
.end method

.method public static showLayerDetails(Landroid/content/Context;Lcom/layar/data/layer/Layer20;Lcom/layar/ActivityHelper;)V
    .locals 3
    .parameter "context"
    .parameter "layer"
    .parameter "helper"

    .prologue
    .line 254
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/layar/LayerInfoActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 255
    .local v0, i:Landroid/content/Intent;
    const-string v1, "info:layername"

    iget-object v2, p1, Lcom/layar/data/layer/Layer20;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 256
    if-eqz p2, :cond_0

    .line 257
    invoke-virtual {p2, v0}, Lcom/layar/ActivityHelper;->startActivity(Landroid/content/Intent;)V

    .line 260
    :goto_0
    return-void

    .line 259
    :cond_0
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public static showResponseDialog(Landroid/content/Context;Lcom/layar/ui/ActionsMenu$ActionsMenuListener;)Lcom/layar/ui/SmartDialog;
    .locals 9
    .parameter "context"
    .parameter "listener"

    .prologue
    const/4 v8, 0x0

    .line 493
    invoke-static {}, Lcom/layar/App;->getLayerManager()Lcom/layar/data/layer/LayerManager;

    move-result-object v7

    iget-object v4, v7, Lcom/layar/data/layer/LayerManager;->layerHandler:Lcom/layar/data/layer/LayerHandler;

    .line 494
    .local v4, handler:Lcom/layar/data/layer/LayerHandler;
    iget-object v3, v4, Lcom/layar/data/layer/LayerHandler;->dialogData:Lcom/layar/data/DialogData;

    .line 495
    .local v3, dialogData:Lcom/layar/data/DialogData;
    if-nez v3, :cond_0

    move-object v7, v8

    .line 511
    :goto_0
    return-object v7

    .line 498
    :cond_0
    invoke-virtual {v4}, Lcom/layar/data/layer/LayerHandler;->getCurrentLayer()Lcom/layar/data/layer/Layer20;

    move-result-object v5

    .line 501
    .local v5, layer:Lcom/layar/data/layer/Layer20;
    instance-of v7, v3, Lcom/layar/data/ShareDialogData;

    if-eqz v7, :cond_1

    .line 502
    move-object v0, v3

    check-cast v0, Lcom/layar/data/ShareDialogData;

    move-object v6, v0

    .line 503
    .local v6, shareData:Lcom/layar/data/ShareDialogData;
    invoke-static {p0, v6}, Lcom/layar/data/layer/LayerHelper;->showShareDialog(Landroid/content/Context;Lcom/layar/data/ShareDialogData;)Lcom/layar/ui/SmartDialog;

    move-result-object v2

    .line 510
    .end local v6           #shareData:Lcom/layar/data/ShareDialogData;
    .local v2, dialog:Lcom/layar/ui/SmartDialog;
    :goto_1
    iput-object v8, v4, Lcom/layar/data/layer/LayerHandler;->dialogData:Lcom/layar/data/DialogData;

    move-object v7, v2

    .line 511
    goto :goto_0

    .line 504
    .end local v2           #dialog:Lcom/layar/ui/SmartDialog;
    :cond_1
    instance-of v7, v3, Lcom/layar/data/ActionsDialogData;

    if-eqz v7, :cond_2

    .line 505
    move-object v0, v3

    check-cast v0, Lcom/layar/data/ActionsDialogData;

    move-object v1, v0

    .line 506
    .local v1, actionsData:Lcom/layar/data/ActionsDialogData;
    invoke-static {p0, v5, v1, p1}, Lcom/layar/data/layer/LayerHelper;->showActionsDialog(Landroid/content/Context;Lcom/layar/data/layer/Layer20;Lcom/layar/data/ActionsDialogData;Lcom/layar/ui/ActionsMenu$ActionsMenuListener;)Lcom/layar/ui/SmartDialog;

    move-result-object v2

    .restart local v2       #dialog:Lcom/layar/ui/SmartDialog;
    goto :goto_1

    .line 508
    .end local v1           #actionsData:Lcom/layar/data/ActionsDialogData;
    .end local v2           #dialog:Lcom/layar/ui/SmartDialog;
    :cond_2
    const/4 v2, 0x0

    .restart local v2       #dialog:Lcom/layar/ui/SmartDialog;
    goto :goto_1
.end method

.method public static showShareDialog(Landroid/content/Context;Lcom/layar/data/ShareDialogData;)Lcom/layar/ui/SmartDialog;
    .locals 5
    .parameter "context"
    .parameter "data"

    .prologue
    .line 515
    new-instance v1, Lcom/layar/data/layer/LayerHelper$3;

    invoke-direct {v1, p0, p1}, Lcom/layar/data/layer/LayerHelper$3;-><init>(Landroid/content/Context;Lcom/layar/data/ShareDialogData;)V

    .line 538
    .local v1, shareListener:Landroid/content/DialogInterface$OnClickListener;
    new-instance v2, Lcom/layar/ui/SmartDialog$Builder;

    iget-object v3, p1, Lcom/layar/data/ShareDialogData;->description:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-direct {v2, p0, v3, v4}, Lcom/layar/ui/SmartDialog$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 539
    iget-object v3, p1, Lcom/layar/data/ShareDialogData;->title:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/layar/ui/SmartDialog$Builder;->setTitle(Ljava/lang/String;)Lcom/layar/ui/SmartDialog$Builder;

    move-result-object v2

    .line 540
    const v3, 0x7f090020

    invoke-virtual {v2, v3, v1}, Lcom/layar/ui/SmartDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/layar/ui/SmartDialog$Builder;

    move-result-object v2

    .line 541
    const v3, 0x7f09002a

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/layar/ui/SmartDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/layar/ui/SmartDialog$Builder;

    move-result-object v2

    .line 542
    iget-object v3, p1, Lcom/layar/data/ShareDialogData;->icon:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/layar/ui/SmartDialog$Builder;->setIcon(Ljava/lang/String;)Lcom/layar/ui/SmartDialog$Builder;

    move-result-object v2

    .line 543
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/layar/ui/SmartDialog$Builder;->setCancelable(Z)Lcom/layar/ui/SmartDialog$Builder;

    move-result-object v2

    .line 544
    invoke-virtual {v2}, Lcom/layar/ui/SmartDialog$Builder;->build()Lcom/layar/ui/SmartDialog;

    move-result-object v0

    .line 545
    .local v0, dialog:Lcom/layar/ui/SmartDialog;
    invoke-virtual {v0}, Lcom/layar/ui/SmartDialog;->show()V

    .line 546
    return-object v0
.end method
