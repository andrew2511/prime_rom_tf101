.class public Lcom/layar/ui/SmartDialog;
.super Landroid/app/Dialog;
.source "SmartDialog.java"

# interfaces
.implements Lcom/layar/ui/OnDestroyListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/layar/ui/SmartDialog$Builder;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private destroyInformer:Lcom/layar/ui/OnDestroyInformer;

.field private mUiThread:Landroid/os/Handler;

.field private viewList:Landroid/widget/ListView;

.field private viewMessage:Landroid/widget/TextView;

.field private viewRoot:Lcom/layar/ui/RotateLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    const-class v0, Lcom/layar/ui/SmartDialog;

    invoke-static {v0}, Lcom/layar/util/Logger;->generateTAG(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/layar/ui/SmartDialog;->TAG:Ljava/lang/String;

    .line 40
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/layar/ui/SmartDialog$Builder$DialogParams;)V
    .locals 3
    .parameter "context"
    .parameter "params"

    .prologue
    .line 178
    iget v2, p2, Lcom/layar/ui/SmartDialog$Builder$DialogParams;->theme:I

    invoke-direct {p0, p1, v2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 48
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/layar/ui/SmartDialog;->destroyInformer:Lcom/layar/ui/OnDestroyInformer;

    .line 180
    instance-of v2, p1, Lcom/layar/ui/OnDestroyInformer;

    if-eqz v2, :cond_0

    .line 181
    move-object v0, p1

    check-cast v0, Lcom/layar/ui/OnDestroyInformer;

    move-object v1, v0

    .line 182
    .local v1, informer:Lcom/layar/ui/OnDestroyInformer;
    invoke-interface {v1, p0}, Lcom/layar/ui/OnDestroyInformer;->registerOnDestroyListener(Lcom/layar/ui/OnDestroyListener;)V

    .line 183
    iput-object v1, p0, Lcom/layar/ui/SmartDialog;->destroyInformer:Lcom/layar/ui/OnDestroyInformer;

    .line 191
    .end local v1           #informer:Lcom/layar/ui/OnDestroyInformer;
    :cond_0
    iget-boolean v2, p2, Lcom/layar/ui/SmartDialog$Builder$DialogParams;->cancelable:Z

    invoke-virtual {p0, v2}, Lcom/layar/ui/SmartDialog;->setCancelable(Z)V

    .line 192
    invoke-direct {p0, p2}, Lcom/layar/ui/SmartDialog;->installContent(Lcom/layar/ui/SmartDialog$Builder$DialogParams;)V

    .line 193
    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Lcom/layar/ui/SmartDialog$Builder$DialogParams;Lcom/layar/ui/SmartDialog;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 177
    invoke-direct {p0, p1, p2}, Lcom/layar/ui/SmartDialog;-><init>(Landroid/content/Context;Lcom/layar/ui/SmartDialog$Builder$DialogParams;)V

    return-void
.end method

.method static synthetic access$1(Lcom/layar/ui/SmartDialog;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 44
    iget-object v0, p0, Lcom/layar/ui/SmartDialog;->viewMessage:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$2(Lcom/layar/ui/SmartDialog;)Lcom/layar/ui/RotateLayout;
    .locals 1
    .parameter

    .prologue
    .line 43
    iget-object v0, p0, Lcom/layar/ui/SmartDialog;->viewRoot:Lcom/layar/ui/RotateLayout;

    return-object v0
.end method

.method private installContent(Lcom/layar/ui/SmartDialog$Builder$DialogParams;)V
    .locals 2
    .parameter "params"

    .prologue
    .line 196
    invoke-virtual {p0}, Lcom/layar/ui/SmartDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 198
    .local v0, window:Landroid/view/Window;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/Window;->requestFeature(I)Z

    .line 200
    iget-boolean v1, p1, Lcom/layar/ui/SmartDialog$Builder$DialogParams;->isProgress:Z

    if-eqz v1, :cond_0

    .line 201
    const v1, 0x7f030050

    invoke-virtual {v0, v1}, Landroid/view/Window;->setContentView(I)V

    .line 206
    :goto_0
    invoke-direct {p0, p1}, Lcom/layar/ui/SmartDialog;->setupView(Lcom/layar/ui/SmartDialog$Builder$DialogParams;)V

    .line 207
    return-void

    .line 203
    :cond_0
    const v1, 0x106000d

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 204
    const v1, 0x7f03004f

    invoke-virtual {v0, v1}, Landroid/view/Window;->setContentView(I)V

    goto :goto_0
.end method

.method private setupView(Lcom/layar/ui/SmartDialog$Builder$DialogParams;)V
    .locals 12
    .parameter "params"

    .prologue
    const v11, 0x7f0200f8

    const/4 v10, 0x1

    const/4 v9, -0x1

    const/16 v7, 0x8

    const/4 v8, 0x0

    .line 210
    const v5, 0x7f070026

    invoke-virtual {p0, v5}, Lcom/layar/ui/SmartDialog;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/layar/ui/RotateLayout;

    iput-object v5, p0, Lcom/layar/ui/SmartDialog;->viewRoot:Lcom/layar/ui/RotateLayout;

    .line 211
    iget-object v5, p0, Lcom/layar/ui/SmartDialog;->viewRoot:Lcom/layar/ui/RotateLayout;

    invoke-virtual {v5, v10}, Lcom/layar/ui/RotateLayout;->useNewImplementation(Z)V

    .line 213
    const v5, 0x7f07001f

    invoke-virtual {p0, v5}, Lcom/layar/ui/SmartDialog;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/layar/ui/SmartDialog;->viewMessage:Landroid/widget/TextView;

    .line 214
    const v5, 0x102000a

    invoke-virtual {p0, v5}, Lcom/layar/ui/SmartDialog;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ListView;

    iput-object v5, p0, Lcom/layar/ui/SmartDialog;->viewList:Landroid/widget/ListView;

    .line 215
    if-nez p1, :cond_0

    .line 314
    :goto_0
    return-void

    .line 218
    :cond_0
    iget-object v5, p1, Lcom/layar/ui/SmartDialog$Builder$DialogParams;->adapter:Landroid/widget/ListAdapter;

    if-eqz v5, :cond_6

    .line 219
    iget-object v5, p0, Lcom/layar/ui/SmartDialog;->viewList:Landroid/widget/ListView;

    iget-object v6, p1, Lcom/layar/ui/SmartDialog$Builder$DialogParams;->adapter:Landroid/widget/ListAdapter;

    invoke-virtual {v5, v6}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 220
    iget-object v5, p0, Lcom/layar/ui/SmartDialog;->viewList:Landroid/widget/ListView;

    invoke-virtual {v5, v8}, Landroid/widget/ListView;->setVisibility(I)V

    .line 221
    iget-object v5, p0, Lcom/layar/ui/SmartDialog;->viewList:Landroid/widget/ListView;

    new-instance v6, Lcom/layar/ui/SmartDialog$1;

    invoke-direct {v6, p0, p1}, Lcom/layar/ui/SmartDialog$1;-><init>(Lcom/layar/ui/SmartDialog;Lcom/layar/ui/SmartDialog$Builder$DialogParams;)V

    invoke-virtual {v5, v6}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 230
    const v5, 0x7f0700c3

    invoke-virtual {p0, v5}, Lcom/layar/ui/SmartDialog;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/view/View;->setVisibility(I)V

    .line 235
    :goto_1
    iget v5, p1, Lcom/layar/ui/SmartDialog$Builder$DialogParams;->rotation:I

    if-eq v5, v9, :cond_1

    .line 236
    iget-object v5, p0, Lcom/layar/ui/SmartDialog;->viewRoot:Lcom/layar/ui/RotateLayout;

    iget v6, p1, Lcom/layar/ui/SmartDialog$Builder$DialogParams;->rotation:I

    invoke-virtual {v5, v6}, Lcom/layar/ui/RotateLayout;->setRotation(I)V

    .line 238
    :cond_1
    iget-boolean v5, p1, Lcom/layar/ui/SmartDialog$Builder$DialogParams;->isProgress:Z

    if-nez v5, :cond_5

    .line 239
    iget v5, p1, Lcom/layar/ui/SmartDialog$Builder$DialogParams;->titleId:I

    if-lez v5, :cond_7

    .line 240
    const v5, 0x7f07008f

    invoke-virtual {p0, v5}, Lcom/layar/ui/SmartDialog;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iget v6, p1, Lcom/layar/ui/SmartDialog$Builder$DialogParams;->titleId:I

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    .line 241
    const v5, 0x7f0700b6

    invoke-virtual {p0, v5}, Lcom/layar/ui/SmartDialog;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/view/View;->setVisibility(I)V

    .line 242
    const v5, 0x7f070013

    invoke-virtual {p0, v5}, Lcom/layar/ui/SmartDialog;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/view/View;->setVisibility(I)V

    .line 250
    :cond_2
    :goto_2
    const v5, 0x7f0700c5

    invoke-virtual {p0, v5}, Lcom/layar/ui/SmartDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 251
    .local v2, dialogImage:Landroid/widget/ImageView;
    iget-object v5, p1, Lcom/layar/ui/SmartDialog$Builder$DialogParams;->iconUrl:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_8

    .line 252
    invoke-virtual {v2, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 253
    const v5, 0x7f0700c6

    invoke-virtual {p0, v5}, Lcom/layar/ui/SmartDialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ProgressBar;

    .line 254
    .local v3, progress:Landroid/widget/ProgressBar;
    invoke-static {}, Lcom/layar/data/ImageCache;->getInstance()Lcom/layar/data/ImageCache;

    move-result-object v5

    iget-object v6, p1, Lcom/layar/ui/SmartDialog$Builder$DialogParams;->iconUrl:Ljava/lang/String;

    invoke-virtual {v5, v6, v2, v3}, Lcom/layar/data/ImageCache;->setActionImageBitmap(Ljava/lang/String;Landroid/widget/ImageView;Landroid/widget/ProgressBar;)Ljava/lang/String;

    .line 258
    .end local v3           #progress:Landroid/widget/ProgressBar;
    :goto_3
    const/4 v4, 0x0

    .line 259
    .local v4, showButtons:Z
    iget-object v5, p1, Lcom/layar/ui/SmartDialog$Builder$DialogParams;->viewButtonPanel:Landroid/view/ViewGroup;

    if-eqz v5, :cond_9

    .line 260
    const/4 v4, 0x1

    .line 261
    const v5, 0x7f0700c7

    invoke-virtual {p0, v5}, Lcom/layar/ui/SmartDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 262
    .local v1, buttonPanel:Landroid/view/ViewGroup;
    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 263
    iget-object v5, p1, Lcom/layar/ui/SmartDialog$Builder$DialogParams;->viewButtonPanel:Landroid/view/ViewGroup;

    new-instance v6, Landroid/view/ViewGroup$LayoutParams;

    .line 264
    const/4 v7, -0x2

    invoke-direct {v6, v9, v7}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 263
    invoke-virtual {v1, v5, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 297
    .end local v1           #buttonPanel:Landroid/view/ViewGroup;
    :cond_3
    :goto_4
    if-eqz v4, :cond_b

    .line 298
    const v5, 0x7f0700c7

    invoke-virtual {p0, v5}, Lcom/layar/ui/SmartDialog;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/view/View;->setVisibility(I)V

    .line 304
    :goto_5
    iget-object v5, p1, Lcom/layar/ui/SmartDialog$Builder$DialogParams;->cancelClick:Landroid/content/DialogInterface$OnCancelListener;

    if-eqz v5, :cond_4

    .line 305
    iget-object v5, p1, Lcom/layar/ui/SmartDialog$Builder$DialogParams;->cancelClick:Landroid/content/DialogInterface$OnCancelListener;

    invoke-virtual {p0, v5}, Lcom/layar/ui/SmartDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 306
    invoke-virtual {p0, v10}, Lcom/layar/ui/SmartDialog;->setCancelable(Z)V

    .line 309
    :cond_4
    iget-object v5, p1, Lcom/layar/ui/SmartDialog$Builder$DialogParams;->dismiss:Landroid/content/DialogInterface$OnDismissListener;

    if-eqz v5, :cond_5

    .line 310
    iget-object v5, p1, Lcom/layar/ui/SmartDialog$Builder$DialogParams;->dismiss:Landroid/content/DialogInterface$OnDismissListener;

    invoke-virtual {p0, v5}, Lcom/layar/ui/SmartDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 313
    .end local v2           #dialogImage:Landroid/widget/ImageView;
    .end local v4           #showButtons:Z
    :cond_5
    iget-object v5, p0, Lcom/layar/ui/SmartDialog;->viewRoot:Lcom/layar/ui/RotateLayout;

    invoke-virtual {v5}, Lcom/layar/ui/RotateLayout;->invalidate()V

    goto/16 :goto_0

    .line 232
    :cond_6
    iget-object v5, p0, Lcom/layar/ui/SmartDialog;->viewMessage:Landroid/widget/TextView;

    iget-object v6, p1, Lcom/layar/ui/SmartDialog$Builder$DialogParams;->message:Ljava/lang/CharSequence;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 243
    :cond_7
    iget-object v5, p1, Lcom/layar/ui/SmartDialog$Builder$DialogParams;->title:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 244
    const v5, 0x7f07008f

    invoke-virtual {p0, v5}, Lcom/layar/ui/SmartDialog;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iget-object v6, p1, Lcom/layar/ui/SmartDialog$Builder$DialogParams;->title:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 245
    const v5, 0x7f0700b6

    invoke-virtual {p0, v5}, Lcom/layar/ui/SmartDialog;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/view/View;->setVisibility(I)V

    .line 246
    const v5, 0x7f070013

    invoke-virtual {p0, v5}, Lcom/layar/ui/SmartDialog;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/view/View;->setVisibility(I)V

    .line 247
    const v5, 0x7f070024

    invoke-virtual {p0, v5}, Lcom/layar/ui/SmartDialog;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_2

    .line 256
    .restart local v2       #dialogImage:Landroid/widget/ImageView;
    :cond_8
    invoke-virtual {v2, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_3

    .line 266
    .restart local v4       #showButtons:Z
    :cond_9
    iget v5, p1, Lcom/layar/ui/SmartDialog$Builder$DialogParams;->positiveId:I

    if-lez v5, :cond_a

    .line 267
    const/4 v4, 0x1

    .line 268
    const v5, 0x7f0700c8

    invoke-virtual {p0, v5}, Lcom/layar/ui/SmartDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 269
    .local v0, button:Landroid/widget/Button;
    iget v5, p1, Lcom/layar/ui/SmartDialog$Builder$DialogParams;->positiveId:I

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setText(I)V

    .line 270
    invoke-virtual {v0, v8}, Landroid/widget/Button;->setVisibility(I)V

    .line 271
    new-instance v5, Lcom/layar/ui/SmartDialog$2;

    invoke-direct {v5, p0, p1}, Lcom/layar/ui/SmartDialog$2;-><init>(Lcom/layar/ui/SmartDialog;Lcom/layar/ui/SmartDialog$Builder$DialogParams;)V

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 281
    .end local v0           #button:Landroid/widget/Button;
    :cond_a
    iget v5, p1, Lcom/layar/ui/SmartDialog$Builder$DialogParams;->negativeId:I

    if-lez v5, :cond_3

    .line 282
    const/4 v4, 0x1

    .line 283
    const v5, 0x7f0700c9

    invoke-virtual {p0, v5}, Lcom/layar/ui/SmartDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 284
    .restart local v0       #button:Landroid/widget/Button;
    iget v5, p1, Lcom/layar/ui/SmartDialog$Builder$DialogParams;->negativeId:I

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setText(I)V

    .line 285
    invoke-virtual {v0, v8}, Landroid/widget/Button;->setVisibility(I)V

    .line 286
    new-instance v5, Lcom/layar/ui/SmartDialog$3;

    invoke-direct {v5, p0, p1}, Lcom/layar/ui/SmartDialog$3;-><init>(Lcom/layar/ui/SmartDialog;Lcom/layar/ui/SmartDialog$Builder$DialogParams;)V

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_4

    .line 300
    .end local v0           #button:Landroid/widget/Button;
    :cond_b
    const v5, 0x7f0700c3

    invoke-virtual {p0, v5}, Lcom/layar/ui/SmartDialog;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v11}, Landroid/view/View;->setBackgroundResource(I)V

    .line 301
    iget-object v5, p0, Lcom/layar/ui/SmartDialog;->viewList:Landroid/widget/ListView;

    invoke-virtual {v5, v11}, Landroid/widget/ListView;->setBackgroundResource(I)V

    goto/16 :goto_5
.end method


# virtual methods
.method public destroyingEvent()V
    .locals 0

    .prologue
    .line 335
    invoke-virtual {p0}, Lcom/layar/ui/SmartDialog;->dismiss()V

    .line 336
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 318
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 319
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/layar/ui/SmartDialog;->mUiThread:Landroid/os/Handler;

    .line 320
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 348
    const/16 v0, 0x19

    if-eq p1, v0, :cond_0

    .line 349
    const/16 v0, 0x18

    if-eq p1, v0, :cond_0

    .line 350
    const/16 v0, 0x54

    if-ne p1, v0, :cond_1

    .line 351
    :cond_0
    const/4 v0, 0x1

    .line 353
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

    .line 358
    if-eq p1, v4, :cond_0

    .line 359
    const/16 v1, 0x18

    if-ne p1, v1, :cond_2

    .line 361
    :cond_0
    invoke-virtual {p0}, Lcom/layar/ui/SmartDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "audio"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 362
    .local v0, audioManager:Landroid/media/AudioManager;
    if-ne p1, v4, :cond_1

    .line 363
    const/4 v1, -0x1

    .line 365
    :goto_0
    const/16 v2, 0x14

    .line 362
    invoke-virtual {v0, v1, v2}, Landroid/media/AudioManager;->adjustVolume(II)V

    move v1, v3

    .line 368
    .end local v0           #audioManager:Landroid/media/AudioManager;
    :goto_1
    return v1

    .restart local v0       #audioManager:Landroid/media/AudioManager;
    :cond_1
    move v1, v3

    .line 364
    goto :goto_0

    .line 368
    .end local v0           #audioManager:Landroid/media/AudioManager;
    :cond_2
    invoke-super {p0, p1, p2}, Landroid/app/Dialog;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_1
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 340
    iget-object v0, p0, Lcom/layar/ui/SmartDialog;->destroyInformer:Lcom/layar/ui/OnDestroyInformer;

    if-eqz v0, :cond_0

    .line 341
    iget-object v0, p0, Lcom/layar/ui/SmartDialog;->destroyInformer:Lcom/layar/ui/OnDestroyInformer;

    invoke-interface {v0, p0}, Lcom/layar/ui/OnDestroyInformer;->unregisterOnDestroyListener(Lcom/layar/ui/OnDestroyListener;)V

    .line 343
    :cond_0
    invoke-super {p0}, Landroid/app/Dialog;->onStop()V

    .line 344
    return-void
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 2
    .parameter "message"

    .prologue
    .line 323
    iget-object v0, p0, Lcom/layar/ui/SmartDialog;->mUiThread:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 324
    iget-object v0, p0, Lcom/layar/ui/SmartDialog;->mUiThread:Landroid/os/Handler;

    new-instance v1, Lcom/layar/ui/SmartDialog$4;

    invoke-direct {v1, p0, p1}, Lcom/layar/ui/SmartDialog$4;-><init>(Lcom/layar/ui/SmartDialog;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 331
    :cond_0
    return-void
.end method
