.class public Lcom/layar/ui/AutoTriggerDialog;
.super Landroid/app/Dialog;
.source "AutoTriggerDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/layar/ui/AutoTriggerDialog$GetLogoTask;
    }
.end annotation


# static fields
.field public static final VIEW_REFRESH_INTERVAL:J = 0x1f4L


# instance fields
.field private final action:Lcom/layar/data/PoiAction;

.field private bottomBar:Landroid/view/View;

.field private buttonBar:Landroid/widget/LinearLayout;

.field private layerLogo:Landroid/widget/ImageView;

.field private layerTitle:Landroid/widget/TextView;

.field private final listener:Lcom/layar/data/layer/LayerHandler$AutoTriggerListener;

.field private mLayer:Lcom/layar/data/layer/Layer20;

.field private final mLayerManager:Lcom/layar/data/layer/LayerManager;

.field private message:Landroid/widget/TextView;

.field private final poi:Lcom/layar/data/BasePOI;

.field private poiBlock:Landroid/view/View;

.field private titleBar:Landroid/view/View;

.field private viewAlwaysAllow:Landroid/widget/CheckBox;

.field private viewRoot:Lcom/layar/ui/RotateLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/layar/data/BasePOI;Lcom/layar/data/PoiAction;Lcom/layar/data/layer/LayerHandler$AutoTriggerListener;)V
    .locals 1
    .parameter "context"
    .parameter "poi"
    .parameter "action"
    .parameter "listener"

    .prologue
    .line 60
    const v0, 0x7f0b0010

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 62
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/layar/data/layer/LayerManager;->getLayerManager(Landroid/content/Context;)Lcom/layar/data/layer/LayerManager;

    move-result-object v0

    iput-object v0, p0, Lcom/layar/ui/AutoTriggerDialog;->mLayerManager:Lcom/layar/data/layer/LayerManager;

    .line 64
    iput-object p2, p0, Lcom/layar/ui/AutoTriggerDialog;->poi:Lcom/layar/data/BasePOI;

    .line 65
    iput-object p3, p0, Lcom/layar/ui/AutoTriggerDialog;->action:Lcom/layar/data/PoiAction;

    .line 66
    iput-object p4, p0, Lcom/layar/ui/AutoTriggerDialog;->listener:Lcom/layar/data/layer/LayerHandler$AutoTriggerListener;

    .line 67
    return-void
.end method

.method static synthetic access$0(Lcom/layar/ui/AutoTriggerDialog;)Lcom/layar/data/layer/Layer20;
    .locals 1
    .parameter

    .prologue
    .line 43
    iget-object v0, p0, Lcom/layar/ui/AutoTriggerDialog;->mLayer:Lcom/layar/data/layer/Layer20;

    return-object v0
.end method

.method static synthetic access$1(Lcom/layar/ui/AutoTriggerDialog;)Lcom/layar/data/layer/LayerHandler$AutoTriggerListener;
    .locals 1
    .parameter

    .prologue
    .line 46
    iget-object v0, p0, Lcom/layar/ui/AutoTriggerDialog;->listener:Lcom/layar/data/layer/LayerHandler$AutoTriggerListener;

    return-object v0
.end method

.method static synthetic access$2(Lcom/layar/ui/AutoTriggerDialog;)Lcom/layar/data/BasePOI;
    .locals 1
    .parameter

    .prologue
    .line 44
    iget-object v0, p0, Lcom/layar/ui/AutoTriggerDialog;->poi:Lcom/layar/data/BasePOI;

    return-object v0
.end method

.method static synthetic access$3(Lcom/layar/ui/AutoTriggerDialog;)Lcom/layar/data/PoiAction;
    .locals 1
    .parameter

    .prologue
    .line 45
    iget-object v0, p0, Lcom/layar/ui/AutoTriggerDialog;->action:Lcom/layar/data/PoiAction;

    return-object v0
.end method

.method private createButton(IILandroid/view/View$OnClickListener;)Landroid/view/View;
    .locals 6
    .parameter "buttonText"
    .parameter "iconResource"
    .parameter "listener"

    .prologue
    .line 139
    invoke-virtual {p0}, Lcom/layar/ui/AutoTriggerDialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    .line 140
    const v4, 0x7f03000b

    const/4 v5, 0x0

    .line 139
    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 142
    .local v0, button:Landroid/widget/LinearLayout;
    const v3, 0x7f070024

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 143
    .local v1, icon:Landroid/widget/ImageView;
    const v3, 0x7f070025

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 145
    .local v2, text:Landroid/widget/TextView;
    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(I)V

    .line 146
    invoke-virtual {v1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 147
    invoke-virtual {v0, p3}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 149
    return-object v0
.end method


# virtual methods
.method public cancel()V
    .locals 0

    .prologue
    .line 134
    invoke-super {p0}, Landroid/app/Dialog;->cancel()V

    .line 135
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 12
    .parameter "savedInstanceState"

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    const/4 v9, -0x2

    .line 71
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 72
    const v7, 0x7f03000a

    invoke-virtual {p0, v7}, Lcom/layar/ui/AutoTriggerDialog;->setContentView(I)V

    .line 73
    const v7, 0x7f07001d

    invoke-virtual {p0, v7}, Lcom/layar/ui/AutoTriggerDialog;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/layar/ui/RotateLayout;

    iput-object v7, p0, Lcom/layar/ui/AutoTriggerDialog;->viewRoot:Lcom/layar/ui/RotateLayout;

    .line 74
    iget-object v7, p0, Lcom/layar/ui/AutoTriggerDialog;->viewRoot:Lcom/layar/ui/RotateLayout;

    invoke-virtual {v7, v11}, Lcom/layar/ui/RotateLayout;->useNewImplementation(Z)V

    .line 76
    const v7, 0x7f07000d

    invoke-virtual {p0, v7}, Lcom/layar/ui/AutoTriggerDialog;->findViewById(I)Landroid/view/View;

    move-result-object v7

    iput-object v7, p0, Lcom/layar/ui/AutoTriggerDialog;->titleBar:Landroid/view/View;

    .line 77
    const v7, 0x7f07000e

    invoke-virtual {p0, v7}, Lcom/layar/ui/AutoTriggerDialog;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    iput-object v7, p0, Lcom/layar/ui/AutoTriggerDialog;->layerLogo:Landroid/widget/ImageView;

    .line 78
    const v7, 0x7f07000f

    invoke-virtual {p0, v7}, Lcom/layar/ui/AutoTriggerDialog;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/layar/ui/AutoTriggerDialog;->layerTitle:Landroid/widget/TextView;

    .line 79
    const v7, 0x7f07001e

    invoke-virtual {p0, v7}, Lcom/layar/ui/AutoTriggerDialog;->findViewById(I)Landroid/view/View;

    move-result-object v7

    iput-object v7, p0, Lcom/layar/ui/AutoTriggerDialog;->poiBlock:Landroid/view/View;

    .line 80
    const v7, 0x7f07001f

    invoke-virtual {p0, v7}, Lcom/layar/ui/AutoTriggerDialog;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/layar/ui/AutoTriggerDialog;->message:Landroid/widget/TextView;

    .line 81
    const v7, 0x7f070020

    invoke-virtual {p0, v7}, Lcom/layar/ui/AutoTriggerDialog;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout;

    iput-object v7, p0, Lcom/layar/ui/AutoTriggerDialog;->buttonBar:Landroid/widget/LinearLayout;

    .line 82
    const v7, 0x7f070022

    invoke-virtual {p0, v7}, Lcom/layar/ui/AutoTriggerDialog;->findViewById(I)Landroid/view/View;

    move-result-object v7

    iput-object v7, p0, Lcom/layar/ui/AutoTriggerDialog;->bottomBar:Landroid/view/View;

    .line 84
    const v7, 0x7f070021

    invoke-virtual {p0, v7}, Lcom/layar/ui/AutoTriggerDialog;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/CheckBox;

    iput-object v7, p0, Lcom/layar/ui/AutoTriggerDialog;->viewAlwaysAllow:Landroid/widget/CheckBox;

    .line 85
    iget-object v7, p0, Lcom/layar/ui/AutoTriggerDialog;->viewAlwaysAllow:Landroid/widget/CheckBox;

    invoke-virtual {v7, v10}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 88
    iget-object v7, p0, Lcom/layar/ui/AutoTriggerDialog;->viewAlwaysAllow:Landroid/widget/CheckBox;

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 90
    iget-object v7, p0, Lcom/layar/ui/AutoTriggerDialog;->mLayerManager:Lcom/layar/data/layer/LayerManager;

    iget-object v7, v7, Lcom/layar/data/layer/LayerManager;->layerHandler:Lcom/layar/data/layer/LayerHandler;

    invoke-virtual {v7}, Lcom/layar/data/layer/LayerHandler;->getCurrentLayer()Lcom/layar/data/layer/Layer20;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/layar/ui/AutoTriggerDialog;->setLayer(Lcom/layar/data/layer/Layer20;)V

    .line 91
    iget-object v7, p0, Lcom/layar/ui/AutoTriggerDialog;->message:Landroid/widget/TextView;

    const v8, 0x7f09005e

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(I)V

    .line 93
    new-instance v6, Lcom/layar/ui/AutoTriggerDialog$1;

    invoke-direct {v6, p0}, Lcom/layar/ui/AutoTriggerDialog$1;-><init>(Lcom/layar/ui/AutoTriggerDialog;)V

    .line 101
    .local v6, yesListener:Landroid/view/View$OnClickListener;
    new-instance v4, Lcom/layar/ui/AutoTriggerDialog$2;

    invoke-direct {v4, p0}, Lcom/layar/ui/AutoTriggerDialog$2;-><init>(Lcom/layar/ui/AutoTriggerDialog;)V

    .line 108
    .local v4, noListener:Landroid/view/View$OnClickListener;
    sget-object v7, Lcom/layar/data/PoiAction;->ICONS:[I

    iget-object v8, p0, Lcom/layar/ui/AutoTriggerDialog;->action:Lcom/layar/data/PoiAction;

    iget v8, v8, Lcom/layar/data/PoiAction;->activityType:I

    aget v2, v7, v8

    .line 109
    .local v2, iconRes:I
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v5, v9, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 112
    .local v5, panelParams:Landroid/widget/LinearLayout$LayoutParams;
    iput v11, v5, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 114
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v9, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 116
    .local v0, buttonParams:Landroid/widget/LinearLayout$LayoutParams;
    sget v7, Lcom/layar/App;->DENSITY:F

    const/high16 v8, 0x40a0

    mul-float/2addr v7, v8

    float-to-int v3, v7

    .line 117
    .local v3, margin:I
    invoke-virtual {v0, v3, v3, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 119
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/layar/ui/AutoTriggerDialog;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v1, v7}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 120
    .local v1, buttons:Landroid/widget/LinearLayout;
    invoke-virtual {v1, v10}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 122
    const v7, 0x7f090060

    invoke-direct {p0, v7, v2, v6}, Lcom/layar/ui/AutoTriggerDialog;->createButton(IILandroid/view/View$OnClickListener;)Landroid/view/View;

    move-result-object v7

    .line 121
    invoke-virtual {v1, v7, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 125
    const v7, 0x7f090061

    invoke-direct {p0, v7, v2, v4}, Lcom/layar/ui/AutoTriggerDialog;->createButton(IILandroid/view/View$OnClickListener;)Landroid/view/View;

    move-result-object v7

    .line 124
    invoke-virtual {v1, v7, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 127
    iget-object v7, p0, Lcom/layar/ui/AutoTriggerDialog;->buttonBar:Landroid/widget/LinearLayout;

    invoke-virtual {v7, v1, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 128
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 241
    const/16 v0, 0x19

    if-eq p1, v0, :cond_0

    .line 242
    const/16 v0, 0x18

    if-ne p1, v0, :cond_1

    .line 243
    :cond_0
    const/4 v0, 0x1

    .line 245
    :goto_0
    return v0

    :cond_1
    invoke-super {p0, p1, p2}, Landroid/app/Dialog;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 250
    const/16 v0, 0x19

    if-eq p1, v0, :cond_0

    .line 251
    const/16 v0, 0x18

    if-ne p1, v0, :cond_1

    .line 252
    :cond_0
    const/4 v0, 0x1

    .line 254
    :goto_0
    return v0

    :cond_1
    invoke-super {p0, p1, p2}, Landroid/app/Dialog;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 235
    invoke-super {p0}, Landroid/app/Dialog;->onStop()V

    .line 236
    iget-object v0, p0, Lcom/layar/ui/AutoTriggerDialog;->mLayerManager:Lcom/layar/data/layer/LayerManager;

    iget-object v0, v0, Lcom/layar/data/layer/LayerManager;->layerHandler:Lcom/layar/data/layer/LayerHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/layar/data/layer/LayerHandler;->setShowingAutoTrigger(Z)V

    .line 237
    return-void
.end method

.method public setLayer(Lcom/layar/data/layer/Layer20;)V
    .locals 11
    .parameter "layer"

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 162
    iput-object p1, p0, Lcom/layar/ui/AutoTriggerDialog;->mLayer:Lcom/layar/data/layer/Layer20;

    .line 163
    iget-object v5, p0, Lcom/layar/ui/AutoTriggerDialog;->layerTitle:Landroid/widget/TextView;

    iget v6, p1, Lcom/layar/data/layer/Layer20;->bannerTxtColor:I

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 164
    iget-object v5, p0, Lcom/layar/ui/AutoTriggerDialog;->layerTitle:Landroid/widget/TextView;

    iget-object v6, p1, Lcom/layar/data/layer/Layer20;->title:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 166
    iget-object v5, p0, Lcom/layar/ui/AutoTriggerDialog;->message:Landroid/widget/TextView;

    iget v6, p1, Lcom/layar/data/layer/Layer20;->titleColor:I

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 167
    iget-object v5, p0, Lcom/layar/ui/AutoTriggerDialog;->viewAlwaysAllow:Landroid/widget/CheckBox;

    iget v6, p1, Lcom/layar/data/layer/Layer20;->titleColor:I

    invoke-virtual {v5, v6}, Landroid/widget/CheckBox;->setTextColor(I)V

    .line 169
    invoke-virtual {p0}, Lcom/layar/ui/AutoTriggerDialog;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 170
    const v6, 0x7f02003f

    .line 169
    invoke-static {v5, v6}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 171
    .local v0, bm:Landroid/graphics/Bitmap;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    .line 172
    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 171
    invoke-static {v5, v6, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 173
    .local v1, bmResult:Landroid/graphics/Bitmap;
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 174
    .local v2, c:Landroid/graphics/Canvas;
    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    .line 175
    .local v4, paint:Landroid/graphics/Paint;
    new-instance v5, Landroid/graphics/PorterDuffColorFilter;

    iget v6, p1, Lcom/layar/data/layer/Layer20;->bannerBgColor:I

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
    invoke-virtual {p0}, Lcom/layar/ui/AutoTriggerDialog;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 181
    const v6, 0x7f02003e

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
    iget-object v5, p0, Lcom/layar/ui/AutoTriggerDialog;->titleBar:Landroid/view/View;

    new-instance v6, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v6, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v5, v6}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 188
    invoke-virtual {p0}, Lcom/layar/ui/AutoTriggerDialog;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 189
    const v6, 0x7f02003c

    .line 188
    invoke-static {v5, v6}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 190
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    .line 191
    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 190
    invoke-static {v5, v6, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 192
    new-instance v2, Landroid/graphics/Canvas;

    .end local v2           #c:Landroid/graphics/Canvas;
    invoke-direct {v2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 193
    .restart local v2       #c:Landroid/graphics/Canvas;
    new-instance v5, Landroid/graphics/PorterDuffColorFilter;

    iget v6, p1, Lcom/layar/data/layer/Layer20;->biwBgColor:I

    .line 194
    sget-object v7, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v5, v6, v7}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    .line 193
    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 195
    invoke-virtual {v2, v0, v8, v8, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 196
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 198
    invoke-virtual {p0}, Lcom/layar/ui/AutoTriggerDialog;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 199
    const v6, 0x7f02003b

    .line 198
    invoke-static {v5, v6}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 200
    new-instance v5, Landroid/graphics/PorterDuffColorFilter;

    sget-object v6, Landroid/graphics/PorterDuff$Mode;->DST:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v5, v9, v6}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 201
    invoke-virtual {v2, v0, v8, v8, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 202
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 204
    iget-object v5, p0, Lcom/layar/ui/AutoTriggerDialog;->poiBlock:Landroid/view/View;

    new-instance v6, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v6, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v5, v6}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 206
    invoke-virtual {p0}, Lcom/layar/ui/AutoTriggerDialog;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 207
    const v6, 0x7f020039

    .line 206
    invoke-static {v5, v6}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 208
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    .line 209
    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 208
    invoke-static {v5, v6, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 210
    new-instance v2, Landroid/graphics/Canvas;

    .end local v2           #c:Landroid/graphics/Canvas;
    invoke-direct {v2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 211
    .restart local v2       #c:Landroid/graphics/Canvas;
    new-instance v5, Landroid/graphics/PorterDuffColorFilter;

    iget v6, p1, Lcom/layar/data/layer/Layer20;->biwBgColor:I

    .line 212
    sget-object v7, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v5, v6, v7}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    .line 211
    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 213
    invoke-virtual {v2, v0, v8, v8, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 214
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 216
    invoke-virtual {p0}, Lcom/layar/ui/AutoTriggerDialog;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 217
    const v6, 0x7f020038

    .line 216
    invoke-static {v5, v6}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 218
    new-instance v5, Landroid/graphics/PorterDuffColorFilter;

    sget-object v6, Landroid/graphics/PorterDuff$Mode;->DST:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v5, v9, v6}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 219
    invoke-virtual {v2, v0, v8, v8, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 220
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 222
    iget-object v5, p0, Lcom/layar/ui/AutoTriggerDialog;->bottomBar:Landroid/view/View;

    new-instance v6, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v6, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v5, v6}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 224
    iget-object v5, p1, Lcom/layar/data/layer/Layer20;->name:Ljava/lang/String;

    const-string v6, "banner_icon"

    invoke-static {v5, v6, v9}, Lcom/layar/data/ImageCache;->readLayerImage(Ljava/lang/String;Ljava/lang/String;Z)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 225
    .local v3, icon:Landroid/graphics/Bitmap;
    if-eqz v3, :cond_0

    .line 226
    invoke-virtual {p0, v3}, Lcom/layar/ui/AutoTriggerDialog;->setLogo(Landroid/graphics/Bitmap;)V

    .line 231
    :goto_0
    return-void

    .line 228
    :cond_0
    invoke-virtual {p0, v10}, Lcom/layar/ui/AutoTriggerDialog;->setLogo(Landroid/graphics/Bitmap;)V

    .line 229
    new-instance v5, Lcom/layar/ui/AutoTriggerDialog$GetLogoTask;

    invoke-direct {v5, p0, v10}, Lcom/layar/ui/AutoTriggerDialog$GetLogoTask;-><init>(Lcom/layar/ui/AutoTriggerDialog;Lcom/layar/ui/AutoTriggerDialog$GetLogoTask;)V

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    iget-object v7, p1, Lcom/layar/data/layer/Layer20;->name:Ljava/lang/String;

    aput-object v7, v6, v9

    invoke-virtual {v5, v6}, Lcom/layar/ui/AutoTriggerDialog$GetLogoTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method public setLogo(Landroid/graphics/Bitmap;)V
    .locals 2
    .parameter "logo"

    .prologue
    .line 153
    if-nez p1, :cond_0

    .line 154
    iget-object v0, p0, Lcom/layar/ui/AutoTriggerDialog;->layerLogo:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 159
    :goto_0
    return-void

    .line 156
    :cond_0
    iget-object v0, p0, Lcom/layar/ui/AutoTriggerDialog;->layerLogo:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 157
    iget-object v0, p0, Lcom/layar/ui/AutoTriggerDialog;->layerLogo:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method
