.class public Lcom/layar/LayerInfoActivity;
.super Lcom/layar/OurActivity;
.source "LayerInfoActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/layar/LayerInfoActivity$LoadLayerTask;,
        Lcom/layar/LayerInfoActivity$LoadScreenshotTask;
    }
.end annotation


# static fields
.field private static final ACTION_SEND_BY_EMAIL:I = 0x0

.field private static final ACTION_SHARE:I = 0x1

.field public static final EXTRAS_HIDE_ACTION:Ljava/lang/String; = "hideAction"

.field public static final EXTRAS_LAYER_NAME:Ljava/lang/String; = "info:layername"

.field public static final EXTRAS_USE_CURRENT_LAYER:Ljava/lang/String; = "useCurrentLayer"

.field public static final MAX_SCREENSHOT_SIZE:I = 0x3e800

.field private static final MENU_REPORT_PROBLEM:I = 0x4

.field private static final SUBACTIVITY_PURCHASE:I = 0x1

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private buttonsBar:Landroid/view/View;

.field private layerDescription:Landroid/webkit/WebView;

.field private layerIcon:Landroid/widget/ImageView;

.field private layerPublisher:Landroid/widget/TextView;

.field private layerScreenshot:Landroid/widget/ImageView;

.field private layerTitle:Landroid/widget/TextView;

.field private mActionButton:Landroid/widget/Button;

.field private mAddFavoritesButton:Landroid/widget/Button;

.field protected mCheckUpdate:Z

.field private mItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/layar/adapters/CustomAlertDialogAdapter$CustomAlertDialogItem;",
            ">;"
        }
    .end annotation
.end field

.field protected mLayer:Lcom/layar/data/layer/Layer20;

.field protected mLayerManager:Lcom/layar/data/layer/LayerManager;

.field private mShareButton:Landroid/widget/Button;

.field protected mUseCurrentLayer:Z

.field private progress:Landroid/widget/ProgressBar;

.field private urlText:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    const-class v0, Lcom/layar/LayerInfoActivity;

    invoke-static {v0}, Lcom/layar/util/Logger;->generateTAG(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/layar/LayerInfoActivity;->TAG:Ljava/lang/String;

    .line 45
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 45
    invoke-direct {p0}, Lcom/layar/OurActivity;-><init>()V

    .line 79
    iput-boolean v0, p0, Lcom/layar/LayerInfoActivity;->mUseCurrentLayer:Z

    .line 80
    iput-boolean v0, p0, Lcom/layar/LayerInfoActivity;->mCheckUpdate:Z

    .line 45
    return-void
.end method

.method static synthetic access$0(Lcom/layar/LayerInfoActivity;)Landroid/widget/ImageView;
    .locals 1
    .parameter

    .prologue
    .line 65
    iget-object v0, p0, Lcom/layar/LayerInfoActivity;->layerScreenshot:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$1(Lcom/layar/LayerInfoActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 359
    invoke-direct {p0}, Lcom/layar/LayerInfoActivity;->bindUnFavouriteListener()V

    return-void
.end method

.method static synthetic access$2(Lcom/layar/LayerInfoActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 348
    invoke-direct {p0}, Lcom/layar/LayerInfoActivity;->bindFavouriteListener()V

    return-void
.end method

.method static synthetic access$3(Lcom/layar/LayerInfoActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 183
    invoke-direct {p0}, Lcom/layar/LayerInfoActivity;->shareSocials()V

    return-void
.end method

.method private bindFavouriteListener()V
    .locals 2

    .prologue
    .line 349
    iget-object v0, p0, Lcom/layar/LayerInfoActivity;->mAddFavoritesButton:Landroid/widget/Button;

    const v1, 0x7f090015

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 350
    iget-object v0, p0, Lcom/layar/LayerInfoActivity;->mAddFavoritesButton:Landroid/widget/Button;

    new-instance v1, Lcom/layar/LayerInfoActivity$2;

    invoke-direct {v1, p0}, Lcom/layar/LayerInfoActivity$2;-><init>(Lcom/layar/LayerInfoActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 357
    return-void
.end method

.method private bindUnFavouriteListener()V
    .locals 2

    .prologue
    .line 360
    iget-object v0, p0, Lcom/layar/LayerInfoActivity;->mAddFavoritesButton:Landroid/widget/Button;

    const v1, 0x7f0900e0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 361
    iget-object v0, p0, Lcom/layar/LayerInfoActivity;->mAddFavoritesButton:Landroid/widget/Button;

    new-instance v1, Lcom/layar/LayerInfoActivity$3;

    invoke-direct {v1, p0}, Lcom/layar/LayerInfoActivity$3;-><init>(Lcom/layar/LayerInfoActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 368
    return-void
.end method

.method private copyLayerLink()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 417
    iget-object v2, p0, Lcom/layar/LayerInfoActivity;->urlText:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 418
    .local v1, link:Ljava/lang/String;
    if-eqz v1, :cond_0

    const-string v2, ""

    if-eq v1, v2, :cond_0

    .line 420
    const-string v2, "clipboard"

    invoke-virtual {p0, v2}, Lcom/layar/LayerInfoActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/ClipboardManager;

    .line 421
    .local v0, clipboard:Landroid/text/ClipboardManager;
    invoke-virtual {v0, v1}, Landroid/text/ClipboardManager;->setText(Ljava/lang/CharSequence;)V

    .line 422
    invoke-virtual {p0}, Lcom/layar/LayerInfoActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0900ed

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 426
    .end local v0           #clipboard:Landroid/text/ClipboardManager;
    :goto_0
    return-void

    .line 424
    :cond_0
    invoke-virtual {p0}, Lcom/layar/LayerInfoActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0900ee

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method private shareSocials()V
    .locals 3

    .prologue
    .line 184
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/layar/ShareSocialActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 185
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "layer:name"

    iget-object v2, p0, Lcom/layar/LayerInfoActivity;->mLayer:Lcom/layar/data/layer/Layer20;

    iget-object v2, v2, Lcom/layar/data/layer/Layer20;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 186
    const-string v1, "layer:title"

    iget-object v2, p0, Lcom/layar/LayerInfoActivity;->mLayer:Lcom/layar/data/layer/Layer20;

    iget-object v2, v2, Lcom/layar/data/layer/Layer20;->title:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 187
    const-string v1, "share:type"

    const-string v2, "layer"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 188
    invoke-virtual {p0, v0}, Lcom/layar/LayerInfoActivity;->startActivity(Landroid/content/Intent;)V

    .line 189
    return-void
.end method

.method private showShowActions()V
    .locals 5

    .prologue
    .line 389
    iget-object v0, p0, Lcom/layar/LayerInfoActivity;->mItems:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 390
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/layar/LayerInfoActivity;->mItems:Ljava/util/ArrayList;

    .line 391
    iget-object v0, p0, Lcom/layar/LayerInfoActivity;->mItems:Ljava/util/ArrayList;

    new-instance v1, Lcom/layar/adapters/CustomAlertDialogAdapter$CustomAlertDialogItem;

    .line 392
    const/4 v2, 0x0

    const v3, 0x7f090096

    const v4, 0x7f02008b

    invoke-direct {v1, v2, v3, v4}, Lcom/layar/adapters/CustomAlertDialogAdapter$CustomAlertDialogItem;-><init>(III)V

    .line 391
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 393
    iget-object v0, p0, Lcom/layar/LayerInfoActivity;->mItems:Ljava/util/ArrayList;

    new-instance v1, Lcom/layar/adapters/CustomAlertDialogAdapter$CustomAlertDialogItem;

    .line 394
    const/4 v2, 0x1

    const v3, 0x7f090098

    const v4, 0x7f02010b

    invoke-direct {v1, v2, v3, v4}, Lcom/layar/adapters/CustomAlertDialogAdapter$CustomAlertDialogItem;-><init>(III)V

    .line 393
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 397
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 398
    invoke-virtual {p0}, Lcom/layar/LayerInfoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090094

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 399
    new-instance v1, Lcom/layar/adapters/CustomAlertDialogAdapter;

    iget-object v2, p0, Lcom/layar/LayerInfoActivity;->mItems:Ljava/util/ArrayList;

    invoke-direct {v1, p0, v2}, Lcom/layar/adapters/CustomAlertDialogAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 400
    new-instance v2, Lcom/layar/LayerInfoActivity$4;

    invoke-direct {v2, p0}, Lcom/layar/LayerInfoActivity$4;-><init>(Lcom/layar/LayerInfoActivity;)V

    .line 399
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 412
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 413
    return-void
.end method


# virtual methods
.method protected _setLayer(Lcom/layar/data/layer/Layer20;)V
    .locals 9
    .parameter "layer"

    .prologue
    const/4 v5, 0x0

    const/4 v8, 0x0

    .line 280
    if-nez p1, :cond_0

    .line 319
    :goto_0
    return-void

    .line 283
    :cond_0
    iput-object p1, p0, Lcom/layar/LayerInfoActivity;->mLayer:Lcom/layar/data/layer/Layer20;

    .line 284
    iget-object v0, p0, Lcom/layar/LayerInfoActivity;->mLayerManager:Lcom/layar/data/layer/LayerManager;

    iget-object v0, v0, Lcom/layar/data/layer/LayerManager;->layerHandler:Lcom/layar/data/layer/LayerHandler;

    iget-object v1, p0, Lcom/layar/LayerInfoActivity;->mLayer:Lcom/layar/data/layer/Layer20;

    invoke-virtual {v0, v1, v8}, Lcom/layar/data/layer/LayerHandler;->setCurrentLayer(Lcom/layar/data/layer/Layer20;Z)V

    .line 286
    iget-object v0, p0, Lcom/layar/LayerInfoActivity;->layerTitle:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/layar/data/layer/Layer20;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 287
    iget-object v0, p0, Lcom/layar/LayerInfoActivity;->layerPublisher:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/layar/data/layer/Layer20;->publisher:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 288
    const v0, 0x7f070081

    invoke-virtual {p0, v0}, Lcom/layar/LayerInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    .line 289
    iget-object v0, p1, Lcom/layar/data/layer/Layer20;->premium:Lcom/layar/data/layer/Layer20$Premium;

    if-eqz v0, :cond_2

    iget-object v0, p1, Lcom/layar/data/layer/Layer20;->premium:Lcom/layar/data/layer/Layer20$Premium;

    iget-boolean v0, v0, Lcom/layar/data/layer/Layer20$Premium;->purchased:Z

    if-nez v0, :cond_2

    .line 290
    iget-object v0, p0, Lcom/layar/LayerInfoActivity;->mActionButton:Landroid/widget/Button;

    iget-object v1, p1, Lcom/layar/data/layer/Layer20;->premium:Lcom/layar/data/layer/Layer20$Premium;

    invoke-static {v1}, Lcom/layar/util/CurrencyUtil;->getCurrencyString(Lcom/layar/data/layer/Layer20$Premium;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 294
    :goto_1
    const v0, 0x7f070077

    invoke-virtual {p0, v0}, Lcom/layar/LayerInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    .line 295
    const v0, 0x7f070084

    invoke-virtual {p0, v0}, Lcom/layar/LayerInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    .line 297
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 298
    .local v6, details:Ljava/lang/StringBuilder;
    const-string v0, "<?xml version=\'1.0\' encoding=\'utf-8\'?><html><body>"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 299
    iget-object v0, p1, Lcom/layar/data/layer/Layer20;->description:Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 300
    const-string v0, "</body></html>"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 301
    iget-object v0, p0, Lcom/layar/LayerInfoActivity;->layerDescription:Landroid/webkit/WebView;

    .line 302
    const-string v1, "http://layar.com"

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "text/html"

    const-string v4, "utf-8"

    .line 301
    invoke-virtual/range {v0 .. v5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    iget-object v0, p0, Lcom/layar/LayerInfoActivity;->urlText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/layar/LayerInfoActivity;->mLayer:Lcom/layar/data/layer/Layer20;

    iget-object v1, v1, Lcom/layar/data/layer/Layer20;->linkUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 304
    sget-boolean v0, Lcom/layar/data/layer/LayerManager;->ADD_FAVORITE_MODE:Z

    if-nez v0, :cond_1

    .line 305
    iget-object v0, p0, Lcom/layar/LayerInfoActivity;->mLayerManager:Lcom/layar/data/layer/LayerManager;

    iget-object v1, p0, Lcom/layar/LayerInfoActivity;->mLayer:Lcom/layar/data/layer/Layer20;

    invoke-virtual {v0, v1}, Lcom/layar/data/layer/LayerManager;->isBookmarked(Lcom/layar/data/layer/Layer20;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 306
    invoke-direct {p0}, Lcom/layar/LayerInfoActivity;->bindUnFavouriteListener()V

    .line 311
    :cond_1
    :goto_2
    iget-object v0, p0, Lcom/layar/LayerInfoActivity;->buttonsBar:Landroid/view/View;

    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    .line 312
    invoke-static {}, Lcom/layar/data/ImageCache;->getInstance()Lcom/layar/data/ImageCache;

    move-result-object v7

    .line 313
    .local v7, ic:Lcom/layar/data/ImageCache;
    iget-object v0, p1, Lcom/layar/data/layer/Layer20;->name:Ljava/lang/String;

    const-string v1, "icon"

    iget-object v2, p0, Lcom/layar/LayerInfoActivity;->layerIcon:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/layar/LayerInfoActivity;->progress:Landroid/widget/ProgressBar;

    invoke-virtual {v7, v0, v1, v2, v3}, Lcom/layar/data/ImageCache;->setLayerImageBitmap(Ljava/lang/String;Ljava/lang/String;Landroid/widget/ImageView;Landroid/widget/ProgressBar;)V

    .line 315
    iget-object v0, p1, Lcom/layar/data/layer/Layer20;->screenshotURL:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 316
    new-instance v0, Lcom/layar/LayerInfoActivity$LoadScreenshotTask;

    invoke-direct {v0, p0, v5}, Lcom/layar/LayerInfoActivity$LoadScreenshotTask;-><init>(Lcom/layar/LayerInfoActivity;Lcom/layar/LayerInfoActivity$LoadScreenshotTask;)V

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/layar/data/layer/Layer20;

    aput-object p1, v1, v8

    invoke-virtual {v0, v1}, Lcom/layar/LayerInfoActivity$LoadScreenshotTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_0

    .line 292
    .end local v6           #details:Ljava/lang/StringBuilder;
    .end local v7           #ic:Lcom/layar/data/ImageCache;
    :cond_2
    iget-object v0, p0, Lcom/layar/LayerInfoActivity;->mActionButton:Landroid/widget/Button;

    const v1, 0x7f09016c

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    goto :goto_1

    .line 308
    .restart local v6       #details:Ljava/lang/StringBuilder;
    :cond_3
    invoke-direct {p0}, Lcom/layar/LayerInfoActivity;->bindFavouriteListener()V

    goto :goto_2

    .line 318
    .restart local v7       #ic:Lcom/layar/data/ImageCache;
    :cond_4
    iget-object v0, p0, Lcom/layar/LayerInfoActivity;->layerScreenshot:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_0
.end method

.method public finish()V
    .locals 0

    .prologue
    .line 92
    invoke-super {p0}, Lcom/layar/OurActivity;->finish()V

    .line 93
    invoke-static {p0}, Lcom/layar/util/Util;->disableTransitions(Landroid/app/Activity;)V

    .line 94
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 217
    if-ne p1, v1, :cond_0

    .line 218
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 220
    new-instance v0, Lcom/layar/LayerInfoActivity$LoadLayerTask;

    invoke-direct {v0, p0}, Lcom/layar/LayerInfoActivity$LoadLayerTask;-><init>(Lcom/layar/LayerInfoActivity;)V

    new-array v1, v1, [Ljava/lang/String;

    iget-object v2, p0, Lcom/layar/LayerInfoActivity;->mLayer:Lcom/layar/data/layer/Layer20;

    iget-object v2, v2, Lcom/layar/data/layer/Layer20;->name:Ljava/lang/String;

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/layar/LayerInfoActivity$LoadLayerTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 221
    invoke-virtual {p0}, Lcom/layar/LayerInfoActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 222
    const v1, 0x7f09017d

    .line 221
    invoke-static {v0, v1, v3}, Lcom/layar/ui/SmartToast;->makeText(Landroid/content/Context;II)Lcom/layar/ui/SmartToast;

    move-result-object v0

    .line 222
    invoke-virtual {v0}, Lcom/layar/ui/SmartToast;->show()V

    .line 225
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/layar/OurActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 226
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 372
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 373
    .local v0, id:I
    sparse-switch v0, :sswitch_data_0

    .line 386
    :goto_0
    return-void

    .line 375
    :sswitch_0
    invoke-direct {p0}, Lcom/layar/LayerInfoActivity;->copyLayerLink()V

    goto :goto_0

    .line 378
    :sswitch_1
    invoke-direct {p0}, Lcom/layar/LayerInfoActivity;->showShowActions()V

    goto :goto_0

    .line 381
    :sswitch_2
    iget-object v1, p0, Lcom/layar/LayerInfoActivity;->mLayer:Lcom/layar/data/layer/Layer20;

    const/4 v2, 0x1

    invoke-static {p0, v1, v2}, Lcom/layar/data/layer/LayerHelper;->openNewLayer(Landroid/content/Context;Lcom/layar/data/layer/Layer20;I)V

    goto :goto_0

    .line 373
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f07007c -> :sswitch_2
        0x7f070083 -> :sswitch_0
        0x7f070088 -> :sswitch_1
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    const/4 v1, 0x0

    .line 98
    invoke-super {p0, p1}, Lcom/layar/OurActivity;->onCreate(Landroid/os/Bundle;)V

    .line 99
    const v0, 0x7f03002b

    invoke-virtual {p0, v0}, Lcom/layar/LayerInfoActivity;->setContentView(I)V

    .line 101
    invoke-virtual {p0}, Lcom/layar/LayerInfoActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/layar/data/layer/LayerManager;->getLayerManager(Landroid/content/Context;)Lcom/layar/data/layer/LayerManager;

    move-result-object v0

    iput-object v0, p0, Lcom/layar/LayerInfoActivity;->mLayerManager:Lcom/layar/data/layer/LayerManager;

    .line 103
    const v0, 0x7f07004b

    invoke-virtual {p0, v0}, Lcom/layar/LayerInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/layar/LayerInfoActivity;->progress:Landroid/widget/ProgressBar;

    .line 105
    const v0, 0x7f07007e

    invoke-virtual {p0, v0}, Lcom/layar/LayerInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/layar/LayerInfoActivity;->layerPublisher:Landroid/widget/TextView;

    .line 106
    const v0, 0x7f07007f

    invoke-virtual {p0, v0}, Lcom/layar/LayerInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/layar/LayerInfoActivity;->layerTitle:Landroid/widget/TextView;

    .line 107
    const v0, 0x7f070079

    invoke-virtual {p0, v0}, Lcom/layar/LayerInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/layar/LayerInfoActivity;->layerIcon:Landroid/widget/ImageView;

    .line 108
    const v0, 0x7f070087

    invoke-virtual {p0, v0}, Lcom/layar/LayerInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/layar/LayerInfoActivity;->layerScreenshot:Landroid/widget/ImageView;

    .line 109
    const v0, 0x7f070086

    invoke-virtual {p0, v0}, Lcom/layar/LayerInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    iput-object v0, p0, Lcom/layar/LayerInfoActivity;->layerDescription:Landroid/webkit/WebView;

    .line 110
    iget-object v0, p0, Lcom/layar/LayerInfoActivity;->layerDescription:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    .line 111
    const v0, 0x7f07007c

    invoke-virtual {p0, v0}, Lcom/layar/LayerInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/layar/LayerInfoActivity;->mActionButton:Landroid/widget/Button;

    .line 112
    iget-object v0, p0, Lcom/layar/LayerInfoActivity;->mActionButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 113
    const v0, 0x7f070020

    invoke-virtual {p0, v0}, Lcom/layar/LayerInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/layar/LayerInfoActivity;->buttonsBar:Landroid/view/View;

    .line 114
    const v0, 0x7f070088

    invoke-virtual {p0, v0}, Lcom/layar/LayerInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/layar/LayerInfoActivity;->mShareButton:Landroid/widget/Button;

    .line 115
    const v0, 0x7f070089

    invoke-virtual {p0, v0}, Lcom/layar/LayerInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/layar/LayerInfoActivity;->mAddFavoritesButton:Landroid/widget/Button;

    .line 117
    const v0, 0x7f070083

    invoke-virtual {p0, v0}, Lcom/layar/LayerInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 119
    const v0, 0x7f070082

    invoke-virtual {p0, v0}, Lcom/layar/LayerInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/layar/LayerInfoActivity;->urlText:Landroid/widget/TextView;

    .line 121
    iget-object v0, p0, Lcom/layar/LayerInfoActivity;->mShareButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 123
    sget-boolean v0, Lcom/layar/data/layer/LayerManager;->ADD_FAVORITE_MODE:Z

    if-eqz v0, :cond_0

    .line 124
    iget-object v0, p0, Lcom/layar/LayerInfoActivity;->buttonsBar:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 125
    iget-object v0, p0, Lcom/layar/LayerInfoActivity;->mAddFavoritesButton:Landroid/widget/Button;

    new-instance v1, Lcom/layar/LayerInfoActivity$1;

    invoke-direct {v1, p0}, Lcom/layar/LayerInfoActivity$1;-><init>(Lcom/layar/LayerInfoActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 135
    :goto_0
    return-void

    .line 133
    :cond_0
    iget-object v0, p0, Lcom/layar/LayerInfoActivity;->buttonsBar:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v1, 0x1

    .line 193
    const/4 v0, 0x4

    if-ne p1, v0, :cond_3

    .line 197
    iget-object v0, p0, Lcom/layar/LayerInfoActivity;->mLayer:Lcom/layar/data/layer/Layer20;

    if-nez v0, :cond_0

    move v0, v1

    .line 212
    :goto_0
    return v0

    .line 199
    :cond_0
    iget-object v0, p0, Lcom/layar/LayerInfoActivity;->mLayer:Lcom/layar/data/layer/Layer20;

    iget-object v0, v0, Lcom/layar/data/layer/Layer20;->premium:Lcom/layar/data/layer/Layer20$Premium;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/layar/LayerInfoActivity;->mLayer:Lcom/layar/data/layer/Layer20;

    iget-object v0, v0, Lcom/layar/data/layer/Layer20;->premium:Lcom/layar/data/layer/Layer20$Premium;

    iget-boolean v0, v0, Lcom/layar/data/layer/Layer20$Premium;->purchased:Z

    if-eqz v0, :cond_2

    .line 202
    :cond_1
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/layar/LayerInfoActivity;->setResult(I)V

    .line 208
    :goto_1
    invoke-virtual {p0}, Lcom/layar/LayerInfoActivity;->finish()V

    move v0, v1

    .line 209
    goto :goto_0

    .line 206
    :cond_2
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/layar/LayerInfoActivity;->setResult(I)V

    goto :goto_1

    .line 212
    :cond_3
    invoke-super {p0, p1, p2}, Lcom/layar/OurActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 175
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 180
    invoke-super {p0, p1}, Lcom/layar/OurActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 177
    :pswitch_0
    iget-object v0, p0, Lcom/layar/LayerInfoActivity;->mLayer:Lcom/layar/data/layer/Layer20;

    iget-object v0, v0, Lcom/layar/data/layer/Layer20;->title:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/layar/data/layer/LayerManager;->reportLayerProblem(Landroid/content/Context;Ljava/lang/String;)V

    .line 178
    const/4 v0, 0x1

    goto :goto_0

    .line 175
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .parameter "menu"

    .prologue
    const/4 v2, 0x0

    .line 165
    iget-object v0, p0, Lcom/layar/LayerInfoActivity;->mLayer:Lcom/layar/data/layer/Layer20;

    if-nez v0, :cond_0

    move v0, v2

    .line 171
    :goto_0
    return v0

    .line 167
    :cond_0
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 169
    const/4 v0, 0x4

    const v1, 0x7f09018e

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 170
    const v1, 0x7f0200cd

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 171
    invoke-super {p0, p1}, Lcom/layar/OurActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 430
    invoke-super {p0}, Lcom/layar/OurActivity;->onResume()V

    .line 431
    iget-object v0, p0, Lcom/layar/LayerInfoActivity;->mLayer:Lcom/layar/data/layer/Layer20;

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/layar/data/layer/LayerManager;->ADD_FAVORITE_MODE:Z

    if-nez v0, :cond_0

    .line 432
    iget-object v0, p0, Lcom/layar/LayerInfoActivity;->mLayerManager:Lcom/layar/data/layer/LayerManager;

    iget-object v1, p0, Lcom/layar/LayerInfoActivity;->mLayer:Lcom/layar/data/layer/Layer20;

    invoke-virtual {v0, v1}, Lcom/layar/data/layer/LayerManager;->isBookmarked(Lcom/layar/data/layer/Layer20;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 433
    invoke-direct {p0}, Lcom/layar/LayerInfoActivity;->bindUnFavouriteListener()V

    .line 438
    :cond_0
    :goto_0
    return-void

    .line 435
    :cond_1
    invoke-direct {p0}, Lcom/layar/LayerInfoActivity;->bindFavouriteListener()V

    goto :goto_0
.end method

.method protected onStart()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 139
    invoke-super {p0}, Lcom/layar/OurActivity;->onStart()V

    .line 141
    invoke-virtual {p0}, Lcom/layar/LayerInfoActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 142
    .local v1, intent:Landroid/content/Intent;
    const-string v3, "useCurrentLayer"

    invoke-virtual {v1, v3, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/layar/LayerInfoActivity;->mUseCurrentLayer:Z

    .line 144
    const-string v3, "hideAction"

    invoke-virtual {v1, v3, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 145
    .local v0, hideAction:Z
    if-eqz v0, :cond_0

    .line 146
    const v3, 0x7f07007b

    invoke-virtual {p0, v3}, Lcom/layar/LayerInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 148
    :cond_0
    iget-boolean v3, p0, Lcom/layar/LayerInfoActivity;->mUseCurrentLayer:Z

    if-eqz v3, :cond_2

    .line 149
    iget-object v3, p0, Lcom/layar/LayerInfoActivity;->mLayerManager:Lcom/layar/data/layer/LayerManager;

    iget-object v3, v3, Lcom/layar/data/layer/LayerManager;->layerHandler:Lcom/layar/data/layer/LayerHandler;

    invoke-virtual {v3}, Lcom/layar/data/layer/LayerHandler;->getCurrentLayer()Lcom/layar/data/layer/Layer20;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/layar/LayerInfoActivity;->_setLayer(Lcom/layar/data/layer/Layer20;)V

    .line 150
    iget-object v3, p0, Lcom/layar/LayerInfoActivity;->mLayer:Lcom/layar/data/layer/Layer20;

    if-nez v3, :cond_1

    .line 151
    invoke-virtual {p0}, Lcom/layar/LayerInfoActivity;->finish()V

    .line 161
    :cond_1
    :goto_0
    return-void

    .line 155
    :cond_2
    const-string v3, "info:layername"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 158
    .local v2, layername:Ljava/lang/String;
    iget-object v3, p0, Lcom/layar/LayerInfoActivity;->mLayer:Lcom/layar/data/layer/Layer20;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/layar/LayerInfoActivity;->mLayer:Lcom/layar/data/layer/Layer20;

    iget-object v3, v3, Lcom/layar/data/layer/Layer20;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 159
    :cond_3
    new-instance v3, Lcom/layar/LayerInfoActivity$LoadLayerTask;

    invoke-direct {v3, p0}, Lcom/layar/LayerInfoActivity$LoadLayerTask;-><init>(Lcom/layar/LayerInfoActivity;)V

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    aput-object v2, v4, v5

    invoke-virtual {v3, v4}, Lcom/layar/LayerInfoActivity$LoadLayerTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method public useNavigationBar()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 87
    invoke-virtual {p0}, Lcom/layar/LayerInfoActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "hideAction"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/layar/data/layer/LayerManager;->ADD_FAVORITE_MODE:Z

    if-eqz v0, :cond_1

    :cond_0
    move v0, v2

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method
