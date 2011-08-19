.class public Lcom/layar/ui/AddFavoritesDialog;
.super Landroid/app/Dialog;
.source "AddFavoritesDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/layar/ui/AddFavoritesDialog$GetLogoTask;
    }
.end annotation


# instance fields
.field private bottomBar:Landroid/view/View;

.field private buttonBar:Landroid/widget/LinearLayout;

.field private layerInFavorites:Z

.field private layerLogo:Landroid/widget/ImageView;

.field private layerTitle:Landroid/widget/TextView;

.field private mLayer:Lcom/layar/data/layer/Layer20;

.field private mLayerHandler:Lcom/layar/data/layer/LayerHandler;

.field private mLayerManager:Lcom/layar/data/layer/LayerManager;

.field private mLayout:Lcom/layar/ui/RotateLayout;

.field private message:Landroid/widget/TextView;

.field private poiBlock:Landroid/view/View;

.field private titleBar:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 11
    .parameter "context"
    .parameter "allowRotation"

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x5

    const/4 v8, -0x2

    .line 46
    const v5, 0x7f0b0010

    invoke-direct {p0, p1, v5}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 47
    invoke-static {p1}, Lcom/layar/data/layer/LayerManager;->getLayerManager(Landroid/content/Context;)Lcom/layar/data/layer/LayerManager;

    move-result-object v5

    iput-object v5, p0, Lcom/layar/ui/AddFavoritesDialog;->mLayerManager:Lcom/layar/data/layer/LayerManager;

    .line 48
    iget-object v5, p0, Lcom/layar/ui/AddFavoritesDialog;->mLayerManager:Lcom/layar/data/layer/LayerManager;

    iget-object v5, v5, Lcom/layar/data/layer/LayerManager;->layerHandler:Lcom/layar/data/layer/LayerHandler;

    iput-object v5, p0, Lcom/layar/ui/AddFavoritesDialog;->mLayerHandler:Lcom/layar/data/layer/LayerHandler;

    .line 52
    const v5, 0x7f03000a

    invoke-virtual {p0, v5}, Lcom/layar/ui/AddFavoritesDialog;->setContentView(I)V

    .line 53
    const v5, 0x7f07001d

    invoke-virtual {p0, v5}, Lcom/layar/ui/AddFavoritesDialog;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/layar/ui/RotateLayout;

    iput-object v5, p0, Lcom/layar/ui/AddFavoritesDialog;->mLayout:Lcom/layar/ui/RotateLayout;

    .line 54
    iget-object v5, p0, Lcom/layar/ui/AddFavoritesDialog;->mLayout:Lcom/layar/ui/RotateLayout;

    invoke-virtual {v5, v10}, Lcom/layar/ui/RotateLayout;->useNewImplementation(Z)V

    .line 57
    const v5, 0x7f07000d

    invoke-virtual {p0, v5}, Lcom/layar/ui/AddFavoritesDialog;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/layar/ui/AddFavoritesDialog;->titleBar:Landroid/view/View;

    .line 58
    const v5, 0x7f07000e

    invoke-virtual {p0, v5}, Lcom/layar/ui/AddFavoritesDialog;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, p0, Lcom/layar/ui/AddFavoritesDialog;->layerLogo:Landroid/widget/ImageView;

    .line 59
    const v5, 0x7f07000f

    invoke-virtual {p0, v5}, Lcom/layar/ui/AddFavoritesDialog;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/layar/ui/AddFavoritesDialog;->layerTitle:Landroid/widget/TextView;

    .line 60
    const v5, 0x7f07001e

    invoke-virtual {p0, v5}, Lcom/layar/ui/AddFavoritesDialog;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/layar/ui/AddFavoritesDialog;->poiBlock:Landroid/view/View;

    .line 61
    const v5, 0x7f07001f

    invoke-virtual {p0, v5}, Lcom/layar/ui/AddFavoritesDialog;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/layar/ui/AddFavoritesDialog;->message:Landroid/widget/TextView;

    .line 62
    const v5, 0x7f070020

    invoke-virtual {p0, v5}, Lcom/layar/ui/AddFavoritesDialog;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    iput-object v5, p0, Lcom/layar/ui/AddFavoritesDialog;->buttonBar:Landroid/widget/LinearLayout;

    .line 63
    const v5, 0x7f070022

    invoke-virtual {p0, v5}, Lcom/layar/ui/AddFavoritesDialog;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/layar/ui/AddFavoritesDialog;->bottomBar:Landroid/view/View;

    .line 64
    const v5, 0x7f070021

    invoke-virtual {p0, v5}, Lcom/layar/ui/AddFavoritesDialog;->findViewById(I)Landroid/view/View;

    move-result-object v5

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 66
    iget-object v5, p0, Lcom/layar/ui/AddFavoritesDialog;->mLayerHandler:Lcom/layar/data/layer/LayerHandler;

    invoke-virtual {v5}, Lcom/layar/data/layer/LayerHandler;->getCurrentLayer()Lcom/layar/data/layer/Layer20;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/layar/ui/AddFavoritesDialog;->setLayer(Lcom/layar/data/layer/Layer20;)V

    .line 67
    iget-boolean v5, p0, Lcom/layar/ui/AddFavoritesDialog;->layerInFavorites:Z

    if-eqz v5, :cond_0

    .line 68
    iget-object v5, p0, Lcom/layar/ui/AddFavoritesDialog;->message:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/layar/ui/AddFavoritesDialog;->getContext()Landroid/content/Context;

    move-result-object v6

    const v7, 0x7f0900e2

    invoke-virtual {v6, v7}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 72
    :goto_0
    new-instance v4, Lcom/layar/ui/AddFavoritesDialog$1;

    invoke-direct {v4, p0}, Lcom/layar/ui/AddFavoritesDialog$1;-><init>(Lcom/layar/ui/AddFavoritesDialog;)V

    .line 83
    .local v4, yesListener:Landroid/view/View$OnClickListener;
    new-instance v2, Lcom/layar/ui/AddFavoritesDialog$2;

    invoke-direct {v2, p0}, Lcom/layar/ui/AddFavoritesDialog$2;-><init>(Lcom/layar/ui/AddFavoritesDialog;)V

    .line 90
    .local v2, noListener:Landroid/view/View$OnClickListener;
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v8, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 93
    .local v3, panelParams:Landroid/widget/LinearLayout$LayoutParams;
    iput v10, v3, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 95
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v8, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 97
    .local v0, buttonParams:Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v0, v9, v9, v9, v9}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 99
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/layar/ui/AddFavoritesDialog;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v1, v5}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 100
    .local v1, buttons:Landroid/widget/LinearLayout;
    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 102
    invoke-virtual {p0}, Lcom/layar/ui/AddFavoritesDialog;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f09001c

    invoke-virtual {v5, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    .line 101
    invoke-direct {p0, v5, v4}, Lcom/layar/ui/AddFavoritesDialog;->createButton(Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v1, v5, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 104
    invoke-virtual {p0}, Lcom/layar/ui/AddFavoritesDialog;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f09001d

    invoke-virtual {v5, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    .line 103
    invoke-direct {p0, v5, v2}, Lcom/layar/ui/AddFavoritesDialog;->createButton(Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v1, v5, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 105
    iget-object v5, p0, Lcom/layar/ui/AddFavoritesDialog;->buttonBar:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 106
    return-void

    .line 70
    .end local v0           #buttonParams:Landroid/widget/LinearLayout$LayoutParams;
    .end local v1           #buttons:Landroid/widget/LinearLayout;
    .end local v2           #noListener:Landroid/view/View$OnClickListener;
    .end local v3           #panelParams:Landroid/widget/LinearLayout$LayoutParams;
    .end local v4           #yesListener:Landroid/view/View$OnClickListener;
    :cond_0
    iget-object v5, p0, Lcom/layar/ui/AddFavoritesDialog;->message:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/layar/ui/AddFavoritesDialog;->getContext()Landroid/content/Context;

    move-result-object v6

    const v7, 0x7f0900e1

    invoke-virtual {v6, v7}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method static synthetic access$0(Lcom/layar/ui/AddFavoritesDialog;)Lcom/layar/data/layer/Layer20;
    .locals 1
    .parameter

    .prologue
    .line 33
    iget-object v0, p0, Lcom/layar/ui/AddFavoritesDialog;->mLayer:Lcom/layar/data/layer/Layer20;

    return-object v0
.end method

.method static synthetic access$1(Lcom/layar/ui/AddFavoritesDialog;)Z
    .locals 1
    .parameter

    .prologue
    .line 34
    iget-boolean v0, p0, Lcom/layar/ui/AddFavoritesDialog;->layerInFavorites:Z

    return v0
.end method

.method static synthetic access$2(Lcom/layar/ui/AddFavoritesDialog;)Lcom/layar/data/layer/LayerManager;
    .locals 1
    .parameter

    .prologue
    .line 31
    iget-object v0, p0, Lcom/layar/ui/AddFavoritesDialog;->mLayerManager:Lcom/layar/data/layer/LayerManager;

    return-object v0
.end method

.method private createButton(Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)Landroid/view/View;
    .locals 4
    .parameter "buttonText"
    .parameter "listener"

    .prologue
    .line 109
    invoke-virtual {p0}, Lcom/layar/ui/AddFavoritesDialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f030014

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 110
    .local v0, button:Landroid/widget/Button;
    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 111
    invoke-virtual {v0, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 113
    return-object v0
.end method


# virtual methods
.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 206
    const/16 v0, 0x19

    if-eq p1, v0, :cond_0

    .line 207
    const/16 v0, 0x18

    if-ne p1, v0, :cond_1

    .line 208
    :cond_0
    const/4 v0, 0x1

    .line 210
    :goto_0
    return v0

    :cond_1
    invoke-super {p0, p1, p2}, Landroid/app/Dialog;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 5
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/16 v4, 0x19

    const/4 v3, 0x1

    .line 215
    if-eq p1, v4, :cond_0

    .line 216
    const/16 v1, 0x18

    if-ne p1, v1, :cond_2

    .line 218
    :cond_0
    invoke-virtual {p0}, Lcom/layar/ui/AddFavoritesDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "audio"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 219
    .local v0, audioManager:Landroid/media/AudioManager;
    if-ne p1, v4, :cond_1

    .line 220
    const/4 v1, -0x1

    .line 222
    :goto_0
    const/16 v2, 0x14

    .line 219
    invoke-virtual {v0, v1, v2}, Landroid/media/AudioManager;->adjustVolume(II)V

    move v1, v3

    .line 225
    .end local v0           #audioManager:Landroid/media/AudioManager;
    :goto_1
    return v1

    .restart local v0       #audioManager:Landroid/media/AudioManager;
    :cond_1
    move v1, v3

    .line 221
    goto :goto_0

    .line 225
    .end local v0           #audioManager:Landroid/media/AudioManager;
    :cond_2
    invoke-super {p0, p1, p2}, Landroid/app/Dialog;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_1
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 200
    invoke-super {p0}, Landroid/app/Dialog;->onStop()V

    .line 201
    iget-object v0, p0, Lcom/layar/ui/AddFavoritesDialog;->mLayerManager:Lcom/layar/data/layer/LayerManager;

    iget-object v0, v0, Lcom/layar/data/layer/LayerManager;->layerHandler:Lcom/layar/data/layer/LayerHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/layar/data/layer/LayerHandler;->setShowingAutoTrigger(Z)V

    .line 202
    return-void
.end method

.method public setLayer(Lcom/layar/data/layer/Layer20;)V
    .locals 11
    .parameter "layer"

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 126
    iput-object p1, p0, Lcom/layar/ui/AddFavoritesDialog;->mLayer:Lcom/layar/data/layer/Layer20;

    .line 127
    iget-object v5, p0, Lcom/layar/ui/AddFavoritesDialog;->mLayerManager:Lcom/layar/data/layer/LayerManager;

    invoke-virtual {v5, p1}, Lcom/layar/data/layer/LayerManager;->isBookmarked(Lcom/layar/data/layer/Layer20;)Z

    move-result v5

    iput-boolean v5, p0, Lcom/layar/ui/AddFavoritesDialog;->layerInFavorites:Z

    .line 128
    iget-object v5, p0, Lcom/layar/ui/AddFavoritesDialog;->layerTitle:Landroid/widget/TextView;

    iget v6, p1, Lcom/layar/data/layer/Layer20;->bannerTxtColor:I

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 129
    iget-object v5, p0, Lcom/layar/ui/AddFavoritesDialog;->layerTitle:Landroid/widget/TextView;

    iget-object v6, p1, Lcom/layar/data/layer/Layer20;->title:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 131
    iget-object v5, p0, Lcom/layar/ui/AddFavoritesDialog;->message:Landroid/widget/TextView;

    iget v6, p1, Lcom/layar/data/layer/Layer20;->titleColor:I

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 133
    invoke-virtual {p0}, Lcom/layar/ui/AddFavoritesDialog;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 134
    const v6, 0x7f02003f

    .line 133
    invoke-static {v5, v6}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 135
    .local v0, bm:Landroid/graphics/Bitmap;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    .line 136
    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 135
    invoke-static {v5, v6, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 137
    .local v1, bmResult:Landroid/graphics/Bitmap;
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 138
    .local v2, c:Landroid/graphics/Canvas;
    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    .line 139
    .local v4, paint:Landroid/graphics/Paint;
    new-instance v5, Landroid/graphics/PorterDuffColorFilter;

    iget v6, p1, Lcom/layar/data/layer/Layer20;->bannerBgColor:I

    .line 140
    sget-object v7, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v5, v6, v7}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    .line 139
    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 141
    invoke-virtual {v2, v0, v8, v8, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 142
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 144
    invoke-virtual {p0}, Lcom/layar/ui/AddFavoritesDialog;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 145
    const v6, 0x7f02003e

    .line 144
    invoke-static {v5, v6}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 146
    new-instance v5, Landroid/graphics/PorterDuffColorFilter;

    sget-object v6, Landroid/graphics/PorterDuff$Mode;->DST:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v5, v9, v6}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 147
    invoke-virtual {v2, v0, v8, v8, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 148
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 150
    iget-object v5, p0, Lcom/layar/ui/AddFavoritesDialog;->titleBar:Landroid/view/View;

    new-instance v6, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v6, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v5, v6}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 152
    invoke-virtual {p0}, Lcom/layar/ui/AddFavoritesDialog;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 153
    const v6, 0x7f02003c

    .line 152
    invoke-static {v5, v6}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 154
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    .line 155
    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 154
    invoke-static {v5, v6, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 156
    new-instance v2, Landroid/graphics/Canvas;

    .end local v2           #c:Landroid/graphics/Canvas;
    invoke-direct {v2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 157
    .restart local v2       #c:Landroid/graphics/Canvas;
    new-instance v5, Landroid/graphics/PorterDuffColorFilter;

    iget v6, p1, Lcom/layar/data/layer/Layer20;->biwBgColor:I

    .line 158
    sget-object v7, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v5, v6, v7}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    .line 157
    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 159
    invoke-virtual {v2, v0, v8, v8, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 160
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 162
    invoke-virtual {p0}, Lcom/layar/ui/AddFavoritesDialog;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 163
    const v6, 0x7f02003b

    .line 162
    invoke-static {v5, v6}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 164
    new-instance v5, Landroid/graphics/PorterDuffColorFilter;

    sget-object v6, Landroid/graphics/PorterDuff$Mode;->DST:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v5, v9, v6}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 165
    invoke-virtual {v2, v0, v8, v8, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 166
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 168
    iget-object v5, p0, Lcom/layar/ui/AddFavoritesDialog;->poiBlock:Landroid/view/View;

    new-instance v6, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v6, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v5, v6}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 170
    invoke-virtual {p0}, Lcom/layar/ui/AddFavoritesDialog;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 171
    const v6, 0x7f020039

    .line 170
    invoke-static {v5, v6}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 172
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    .line 173
    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 172
    invoke-static {v5, v6, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 174
    new-instance v2, Landroid/graphics/Canvas;

    .end local v2           #c:Landroid/graphics/Canvas;
    invoke-direct {v2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 175
    .restart local v2       #c:Landroid/graphics/Canvas;
    new-instance v5, Landroid/graphics/PorterDuffColorFilter;

    iget v6, p1, Lcom/layar/data/layer/Layer20;->biwBgColor:I

    .line 176
    sget-object v7, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v5, v6, v7}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    .line 175
    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 177
    invoke-virtual {v2, v0, v8, v8, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 178
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 180
    invoke-virtual {p0}, Lcom/layar/ui/AddFavoritesDialog;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 181
    const v6, 0x7f020038

    .line 180
    invoke-static {v5, v6}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 182
    new-instance v5, Landroid/graphics/PorterDuffColorFilter;

    sget-object v6, Landroid/graphics/PorterDuff$Mode;->DST:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v5, v9, v6}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 183
    invoke-virtual {v2, v0, v8, v8, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 184
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 186
    iget-object v5, p0, Lcom/layar/ui/AddFavoritesDialog;->bottomBar:Landroid/view/View;

    new-instance v6, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v6, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v5, v6}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 188
    iget-object v5, p1, Lcom/layar/data/layer/Layer20;->name:Ljava/lang/String;

    .line 189
    const-string v6, "banner_icon"

    .line 188
    invoke-static {v5, v6, v9}, Lcom/layar/data/ImageCache;->readLayerImage(Ljava/lang/String;Ljava/lang/String;Z)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 190
    .local v3, icon:Landroid/graphics/Bitmap;
    if-eqz v3, :cond_0

    .line 191
    invoke-virtual {p0, v3}, Lcom/layar/ui/AddFavoritesDialog;->setLogo(Landroid/graphics/Bitmap;)V

    .line 196
    :goto_0
    return-void

    .line 193
    :cond_0
    invoke-virtual {p0, v10}, Lcom/layar/ui/AddFavoritesDialog;->setLogo(Landroid/graphics/Bitmap;)V

    .line 194
    new-instance v5, Lcom/layar/ui/AddFavoritesDialog$GetLogoTask;

    invoke-direct {v5, p0, v10}, Lcom/layar/ui/AddFavoritesDialog$GetLogoTask;-><init>(Lcom/layar/ui/AddFavoritesDialog;Lcom/layar/ui/AddFavoritesDialog$GetLogoTask;)V

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    iget-object v7, p1, Lcom/layar/data/layer/Layer20;->name:Ljava/lang/String;

    aput-object v7, v6, v9

    invoke-virtual {v5, v6}, Lcom/layar/ui/AddFavoritesDialog$GetLogoTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method public setLogo(Landroid/graphics/Bitmap;)V
    .locals 2
    .parameter "logo"

    .prologue
    .line 117
    if-nez p1, :cond_0

    .line 118
    iget-object v0, p0, Lcom/layar/ui/AddFavoritesDialog;->layerLogo:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 123
    :goto_0
    return-void

    .line 120
    :cond_0
    iget-object v0, p0, Lcom/layar/ui/AddFavoritesDialog;->layerLogo:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 121
    iget-object v0, p0, Lcom/layar/ui/AddFavoritesDialog;->layerLogo:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method
