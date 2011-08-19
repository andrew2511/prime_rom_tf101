.class public Lcom/asus/vibe2/Act_Detail;
.super Landroid/app/Activity;
.source "Act_Detail.java"


# instance fields
.field private mAlertDialog:Landroid/app/AlertDialog;

.field private mBitmap:Landroid/graphics/Bitmap;

.field private mBuy:Landroid/widget/Button;

.field private mDescription:Landroid/widget/TextView;

.field private mEmptyText:Landroid/widget/TextView;

.field private mEmptyView:Landroid/view/View;

.field private mFavorite:Landroid/widget/Button;

.field private mHandler:Landroid/os/Handler;

.field private mIcon:Landroid/widget/ImageView;

.field mIntent:Landroid/content/Intent;

.field private mOnClickListener:Landroid/view/View$OnClickListener;

.field private mPackageList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/asus/vibe/item/VibeItem_Package;",
            ">;"
        }
    .end annotation
.end field

.field private mParam:Lcom/asus/vibe/item/VibeParam;

.field private mPlay:Landroid/widget/Button;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mRunningTask:Lcom/asus/vibe/api/VibeApiTask;

.field private mTitle:Landroid/widget/TextView;

.field private mTriedBuy:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 107
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 49
    iput-object v1, p0, Lcom/asus/vibe2/Act_Detail;->mIntent:Landroid/content/Intent;

    .line 51
    iput-object v1, p0, Lcom/asus/vibe2/Act_Detail;->mIcon:Landroid/widget/ImageView;

    .line 52
    iput-object v1, p0, Lcom/asus/vibe2/Act_Detail;->mTitle:Landroid/widget/TextView;

    .line 53
    iput-object v1, p0, Lcom/asus/vibe2/Act_Detail;->mDescription:Landroid/widget/TextView;

    .line 54
    iput-object v1, p0, Lcom/asus/vibe2/Act_Detail;->mFavorite:Landroid/widget/Button;

    .line 55
    iput-object v1, p0, Lcom/asus/vibe2/Act_Detail;->mPlay:Landroid/widget/Button;

    .line 56
    iput-object v1, p0, Lcom/asus/vibe2/Act_Detail;->mBuy:Landroid/widget/Button;

    .line 57
    iput-object v1, p0, Lcom/asus/vibe2/Act_Detail;->mEmptyView:Landroid/view/View;

    .line 59
    iput-object v1, p0, Lcom/asus/vibe2/Act_Detail;->mEmptyText:Landroid/widget/TextView;

    .line 61
    iput-object v1, p0, Lcom/asus/vibe2/Act_Detail;->mParam:Lcom/asus/vibe/item/VibeParam;

    .line 62
    iput-object v1, p0, Lcom/asus/vibe2/Act_Detail;->mPackageList:Ljava/util/ArrayList;

    .line 63
    iput-object v1, p0, Lcom/asus/vibe2/Act_Detail;->mBitmap:Landroid/graphics/Bitmap;

    .line 64
    iput-object v1, p0, Lcom/asus/vibe2/Act_Detail;->mRunningTask:Lcom/asus/vibe/api/VibeApiTask;

    .line 65
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/asus/vibe2/Act_Detail;->mTriedBuy:Z

    .line 66
    iput-object v1, p0, Lcom/asus/vibe2/Act_Detail;->mAlertDialog:Landroid/app/AlertDialog;

    .line 68
    new-instance v0, Lcom/asus/vibe2/Act_Detail$1;

    invoke-direct {v0, p0}, Lcom/asus/vibe2/Act_Detail$1;-><init>(Lcom/asus/vibe2/Act_Detail;)V

    iput-object v0, p0, Lcom/asus/vibe2/Act_Detail;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 76
    new-instance v0, Lcom/asus/vibe2/Act_Detail$2;

    invoke-direct {v0, p0}, Lcom/asus/vibe2/Act_Detail$2;-><init>(Lcom/asus/vibe2/Act_Detail;)V

    iput-object v0, p0, Lcom/asus/vibe2/Act_Detail;->mHandler:Landroid/os/Handler;

    .line 258
    new-instance v0, Lcom/asus/vibe2/Act_Detail$4;

    invoke-direct {v0, p0}, Lcom/asus/vibe2/Act_Detail$4;-><init>(Lcom/asus/vibe2/Act_Detail;)V

    iput-object v0, p0, Lcom/asus/vibe2/Act_Detail;->mOnClickListener:Landroid/view/View$OnClickListener;

    .line 108
    sget-boolean v0, Lcom/asus/vibe2/Vibe;->MEM_DEBUG:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/asus/vibe2/debug/MemDebug;->add(Ljava/lang/Object;)V

    const-string v0, "ASUS@Vibe_Mem"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " created!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/asus/vibe2/Act_Detail;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/asus/vibe2/Act_Detail;->updateContent()V

    return-void
.end method

.method static synthetic access$100(Lcom/asus/vibe2/Act_Detail;)Lcom/asus/vibe/api/VibeApiTask;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/asus/vibe2/Act_Detail;->mRunningTask:Lcom/asus/vibe/api/VibeApiTask;

    return-object v0
.end method

.method static synthetic access$102(Lcom/asus/vibe2/Act_Detail;Lcom/asus/vibe/api/VibeApiTask;)Lcom/asus/vibe/api/VibeApiTask;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47
    iput-object p1, p0, Lcom/asus/vibe2/Act_Detail;->mRunningTask:Lcom/asus/vibe/api/VibeApiTask;

    return-object p1
.end method

.method static synthetic access$200(Lcom/asus/vibe2/Act_Detail;)Lcom/asus/vibe/item/VibeParam;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/asus/vibe2/Act_Detail;->mParam:Lcom/asus/vibe/item/VibeParam;

    return-object v0
.end method

.method static synthetic access$202(Lcom/asus/vibe2/Act_Detail;Lcom/asus/vibe/item/VibeParam;)Lcom/asus/vibe/item/VibeParam;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47
    iput-object p1, p0, Lcom/asus/vibe2/Act_Detail;->mParam:Lcom/asus/vibe/item/VibeParam;

    return-object p1
.end method

.method static synthetic access$300(Lcom/asus/vibe2/Act_Detail;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/asus/vibe2/Act_Detail;->mEmptyView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$400(Lcom/asus/vibe2/Act_Detail;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/asus/vibe2/Act_Detail;->mPackageList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$402(Lcom/asus/vibe2/Act_Detail;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47
    iput-object p1, p0, Lcom/asus/vibe2/Act_Detail;->mPackageList:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$502(Lcom/asus/vibe2/Act_Detail;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47
    iput-object p1, p0, Lcom/asus/vibe2/Act_Detail;->mAlertDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$600(Lcom/asus/vibe2/Act_Detail;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/asus/vibe2/Act_Detail;->mPlay:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$702(Lcom/asus/vibe2/Act_Detail;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47
    iput-boolean p1, p0, Lcom/asus/vibe2/Act_Detail;->mTriedBuy:Z

    return p1
.end method

.method private refreshViews()V
    .locals 3

    .prologue
    .line 237
    const/high16 v0, 0x7f03

    invoke-virtual {p0, v0}, Lcom/asus/vibe2/Act_Detail;->setContentView(I)V

    .line 238
    invoke-virtual {p0}, Lcom/asus/vibe2/Act_Detail;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 239
    invoke-virtual {p0}, Lcom/asus/vibe2/Act_Detail;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {p0}, Lcom/asus/vibe2/Act_Detail;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020001

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 241
    const/high16 v0, 0x7f08

    invoke-virtual {p0, v0}, Lcom/asus/vibe2/Act_Detail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/asus/vibe2/Act_Detail;->mIcon:Landroid/widget/ImageView;

    .line 242
    const v0, 0x7f080001

    invoke-virtual {p0, v0}, Lcom/asus/vibe2/Act_Detail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/asus/vibe2/Act_Detail;->mTitle:Landroid/widget/TextView;

    .line 243
    const v0, 0x7f080005

    invoke-virtual {p0, v0}, Lcom/asus/vibe2/Act_Detail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/asus/vibe2/Act_Detail;->mDescription:Landroid/widget/TextView;

    .line 244
    const v0, 0x7f080002

    invoke-virtual {p0, v0}, Lcom/asus/vibe2/Act_Detail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/asus/vibe2/Act_Detail;->mFavorite:Landroid/widget/Button;

    .line 245
    const v0, 0x7f080003

    invoke-virtual {p0, v0}, Lcom/asus/vibe2/Act_Detail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/asus/vibe2/Act_Detail;->mPlay:Landroid/widget/Button;

    .line 246
    const v0, 0x7f080004

    invoke-virtual {p0, v0}, Lcom/asus/vibe2/Act_Detail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/asus/vibe2/Act_Detail;->mBuy:Landroid/widget/Button;

    .line 247
    const v0, 0x7f08000d

    invoke-virtual {p0, v0}, Lcom/asus/vibe2/Act_Detail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/asus/vibe2/Act_Detail;->mEmptyView:Landroid/view/View;

    .line 249
    const v0, 0x7f08000e

    invoke-virtual {p0, v0}, Lcom/asus/vibe2/Act_Detail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/asus/vibe2/Act_Detail;->mEmptyText:Landroid/widget/TextView;

    .line 251
    iget-object v0, p0, Lcom/asus/vibe2/Act_Detail;->mFavorite:Landroid/widget/Button;

    iget-object v1, p0, Lcom/asus/vibe2/Act_Detail;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 252
    iget-object v0, p0, Lcom/asus/vibe2/Act_Detail;->mPlay:Landroid/widget/Button;

    iget-object v1, p0, Lcom/asus/vibe2/Act_Detail;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 253
    iget-object v0, p0, Lcom/asus/vibe2/Act_Detail;->mBuy:Landroid/widget/Button;

    iget-object v1, p0, Lcom/asus/vibe2/Act_Detail;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 255
    iget-object v0, p0, Lcom/asus/vibe2/Act_Detail;->mParam:Lcom/asus/vibe/item/VibeParam;

    iget-object v0, v0, Lcom/asus/vibe/item/VibeParam;->vibeAction:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/asus/vibe2/Utils_Vibe;->updateTitle(Ljava/lang/String;Landroid/app/Activity;)V

    .line 256
    return-void
.end method

.method private updateContent()V
    .locals 14

    .prologue
    const v13, 0x7f04000e

    const v12, 0x7f04000d

    const/4 v11, 0x0

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 346
    iget-object v6, p0, Lcom/asus/vibe2/Act_Detail;->mParam:Lcom/asus/vibe/item/VibeParam;

    if-nez v6, :cond_1

    .line 563
    :cond_0
    :goto_0
    return-void

    .line 347
    :cond_1
    iget-object v6, p0, Lcom/asus/vibe2/Act_Detail;->mParam:Lcom/asus/vibe/item/VibeParam;

    iget-object v6, v6, Lcom/asus/vibe/item/VibeParam;->detail:Lcom/asus/vibe/item/VibeItem_Detail;

    if-nez v6, :cond_b

    .line 348
    iget-object v6, p0, Lcom/asus/vibe2/Act_Detail;->mEmptyText:Landroid/widget/TextView;

    const v7, 0x7f04000a

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(I)V

    .line 349
    iget-object v6, p0, Lcom/asus/vibe2/Act_Detail;->mEmptyView:Landroid/view/View;

    invoke-virtual {v6, v9}, Landroid/view/View;->setVisibility(I)V

    .line 350
    iget-object v6, p0, Lcom/asus/vibe2/Act_Detail;->mRunningTask:Lcom/asus/vibe/api/VibeApiTask;

    if-nez v6, :cond_0

    .line 354
    const/16 v6, 0xe

    iget-object v7, p0, Lcom/asus/vibe2/Act_Detail;->mParam:Lcom/asus/vibe/item/VibeParam;

    iget-object v8, p0, Lcom/asus/vibe2/Act_Detail;->mHandler:Landroid/os/Handler;

    invoke-static {v6, v7, v8}, Lcom/asus/vibe/api/VibeApiTask;->newTaskThread(ILcom/asus/vibe/item/VibeParam;Landroid/os/Handler;)Lcom/asus/vibe/api/VibeApiTask;

    move-result-object v6

    iput-object v6, p0, Lcom/asus/vibe2/Act_Detail;->mRunningTask:Lcom/asus/vibe/api/VibeApiTask;

    .line 356
    iget-object v6, p0, Lcom/asus/vibe2/Act_Detail;->mTitle:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/asus/vibe2/Act_Detail;->mParam:Lcom/asus/vibe/item/VibeParam;

    iget-object v7, v7, Lcom/asus/vibe/item/VibeParam;->cont:Lcom/asus/vibe/item/VibeItem_Cont;

    iget-object v7, v7, Lcom/asus/vibe/item/VibeItem_Cont;->mContentName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 358
    iget-object v6, p0, Lcom/asus/vibe2/Act_Detail;->mParam:Lcom/asus/vibe/item/VibeParam;

    iget-object v6, v6, Lcom/asus/vibe/item/VibeParam;->cont:Lcom/asus/vibe/item/VibeItem_Cont;

    iget-object v6, v6, Lcom/asus/vibe/item/VibeItem_Cont;->mImageBuffer:[B

    if-eqz v6, :cond_7

    iget-object v6, p0, Lcom/asus/vibe2/Act_Detail;->mParam:Lcom/asus/vibe/item/VibeParam;

    iget-object v6, v6, Lcom/asus/vibe/item/VibeParam;->cont:Lcom/asus/vibe/item/VibeItem_Cont;

    iget-object v6, v6, Lcom/asus/vibe/item/VibeItem_Cont;->mImageBuffer:[B

    array-length v6, v6

    if-lez v6, :cond_7

    .line 359
    iget-object v6, p0, Lcom/asus/vibe2/Act_Detail;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/asus/vibe2/Act_Detail;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v11, p0, Lcom/asus/vibe2/Act_Detail;->mBitmap:Landroid/graphics/Bitmap;

    .line 360
    :cond_2
    iget-object v6, p0, Lcom/asus/vibe2/Act_Detail;->mParam:Lcom/asus/vibe/item/VibeParam;

    iget-object v6, v6, Lcom/asus/vibe/item/VibeParam;->cont:Lcom/asus/vibe/item/VibeItem_Cont;

    iget-object v6, v6, Lcom/asus/vibe/item/VibeItem_Cont;->mImageBuffer:[B

    iget-object v7, p0, Lcom/asus/vibe2/Act_Detail;->mParam:Lcom/asus/vibe/item/VibeParam;

    iget-object v7, v7, Lcom/asus/vibe/item/VibeParam;->cont:Lcom/asus/vibe/item/VibeItem_Cont;

    iget-object v7, v7, Lcom/asus/vibe/item/VibeItem_Cont;->mImageBuffer:[B

    array-length v7, v7

    invoke-static {v6, v9, v7}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v6

    iput-object v6, p0, Lcom/asus/vibe2/Act_Detail;->mBitmap:Landroid/graphics/Bitmap;

    .line 361
    iget-object v6, p0, Lcom/asus/vibe2/Act_Detail;->mBitmap:Landroid/graphics/Bitmap;

    if-nez v6, :cond_6

    .line 362
    const-string v6, "ASUS@Vibe"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Can not decode bitmap for item: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/asus/vibe2/Act_Detail;->mParam:Lcom/asus/vibe/item/VibeParam;

    iget-object v8, v8, Lcom/asus/vibe/item/VibeParam;->cont:Lcom/asus/vibe/item/VibeItem_Cont;

    iget-object v8, v8, Lcom/asus/vibe/item/VibeItem_Cont;->mContentName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "!!"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    iget-object v6, p0, Lcom/asus/vibe2/Act_Detail;->mParam:Lcom/asus/vibe/item/VibeParam;

    iget-object v6, v6, Lcom/asus/vibe/item/VibeParam;->cont:Lcom/asus/vibe/item/VibeItem_Cont;

    iput-object v11, v6, Lcom/asus/vibe/item/VibeItem_Cont;->mImageUrl:Ljava/lang/String;

    .line 371
    :cond_3
    :goto_1
    invoke-static {}, Lcom/asus/vibe2/Vibe;->getContext()Landroid/content/Context;

    move-result-object v6

    iget-object v7, p0, Lcom/asus/vibe2/Act_Detail;->mParam:Lcom/asus/vibe/item/VibeParam;

    invoke-static {v6, v7}, Lcom/asus/vibe/favorite/VibeFavoriteDatabase;->isFavorite(Landroid/content/Context;Lcom/asus/vibe/item/VibeParam;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 372
    iget-object v6, p0, Lcom/asus/vibe2/Act_Detail;->mFavorite:Landroid/widget/Button;

    const v7, 0x7f040013

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setText(I)V

    .line 376
    :goto_2
    iget-object v6, p0, Lcom/asus/vibe2/Act_Detail;->mFavorite:Landroid/widget/Button;

    invoke-virtual {v6, v9}, Landroid/widget/Button;->setEnabled(Z)V

    .line 378
    iget-object v6, p0, Lcom/asus/vibe2/Act_Detail;->mParam:Lcom/asus/vibe/item/VibeParam;

    iget-object v6, v6, Lcom/asus/vibe/item/VibeParam;->main:Lcom/asus/vibe/item/VibeItem_Main;

    iget-object v6, v6, Lcom/asus/vibe/item/VibeItem_Main;->mMainCategoryName:Ljava/lang/String;

    const-string v7, "music"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_4

    iget-object v6, p0, Lcom/asus/vibe2/Act_Detail;->mParam:Lcom/asus/vibe/item/VibeParam;

    iget-object v6, v6, Lcom/asus/vibe/item/VibeParam;->main:Lcom/asus/vibe/item/VibeItem_Main;

    iget-object v6, v6, Lcom/asus/vibe/item/VibeItem_Main;->mMainCategoryName:Ljava/lang/String;

    const-string v7, "radio"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 379
    :cond_4
    iget-object v6, p0, Lcom/asus/vibe2/Act_Detail;->mPlay:Landroid/widget/Button;

    invoke-virtual {v6, v12}, Landroid/widget/Button;->setText(I)V

    .line 383
    :goto_3
    iget-object v6, p0, Lcom/asus/vibe2/Act_Detail;->mPlay:Landroid/widget/Button;

    invoke-virtual {v6, v9}, Landroid/widget/Button;->setEnabled(Z)V

    .line 385
    iget-object v6, p0, Lcom/asus/vibe2/Act_Detail;->mParam:Lcom/asus/vibe/item/VibeParam;

    iget-object v6, v6, Lcom/asus/vibe/item/VibeParam;->sub:Lcom/asus/vibe/item/VibeItem_Sub;

    if-eqz v6, :cond_5

    iget-object v6, p0, Lcom/asus/vibe2/Act_Detail;->mParam:Lcom/asus/vibe/item/VibeParam;

    iget-object v6, v6, Lcom/asus/vibe/item/VibeParam;->sub:Lcom/asus/vibe/item/VibeItem_Sub;

    iget-object v6, v6, Lcom/asus/vibe/item/VibeItem_Sub;->mPackageUrl:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 386
    :cond_5
    iget-object v6, p0, Lcom/asus/vibe2/Act_Detail;->mBuy:Landroid/widget/Button;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_0

    .line 365
    :cond_6
    iget-object v6, p0, Lcom/asus/vibe2/Act_Detail;->mIcon:Landroid/widget/ImageView;

    iget-object v7, p0, Lcom/asus/vibe2/Act_Detail;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_1

    .line 367
    :cond_7
    iget-object v6, p0, Lcom/asus/vibe2/Act_Detail;->mParam:Lcom/asus/vibe/item/VibeParam;

    iget-object v6, v6, Lcom/asus/vibe/item/VibeParam;->cont:Lcom/asus/vibe/item/VibeItem_Cont;

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/asus/vibe2/Act_Detail;->mParam:Lcom/asus/vibe/item/VibeParam;

    iget-object v6, v6, Lcom/asus/vibe/item/VibeParam;->cont:Lcom/asus/vibe/item/VibeItem_Cont;

    iget-object v6, v6, Lcom/asus/vibe/item/VibeItem_Cont;->mImageUrl:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 368
    const/4 v6, -0x1

    iget-object v7, p0, Lcom/asus/vibe2/Act_Detail;->mParam:Lcom/asus/vibe/item/VibeParam;

    iget-object v7, v7, Lcom/asus/vibe/item/VibeParam;->cont:Lcom/asus/vibe/item/VibeItem_Cont;

    iget-object v8, p0, Lcom/asus/vibe2/Act_Detail;->mHandler:Landroid/os/Handler;

    invoke-static {v6, v7, v8}, Lcom/asus/vibe/api/IconCacheMgr;->newCacher(ILcom/asus/vibe/item/VibeItem_Cont;Landroid/os/Handler;)V

    goto :goto_1

    .line 374
    :cond_8
    iget-object v6, p0, Lcom/asus/vibe2/Act_Detail;->mFavorite:Landroid/widget/Button;

    const v7, 0x7f040012

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setText(I)V

    goto :goto_2

    .line 381
    :cond_9
    iget-object v6, p0, Lcom/asus/vibe2/Act_Detail;->mPlay:Landroid/widget/Button;

    invoke-virtual {v6, v13}, Landroid/widget/Button;->setText(I)V

    goto :goto_3

    .line 388
    :cond_a
    iget-object v6, p0, Lcom/asus/vibe2/Act_Detail;->mBuy:Landroid/widget/Button;

    invoke-virtual {v6, v9}, Landroid/widget/Button;->setEnabled(Z)V

    goto/16 :goto_0

    .line 392
    :cond_b
    iget-object v6, p0, Lcom/asus/vibe2/Act_Detail;->mEmptyView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-nez v6, :cond_c

    .line 393
    new-instance v2, Landroid/view/animation/AlphaAnimation;

    const/high16 v6, 0x3f80

    const/4 v7, 0x0

    invoke-direct {v2, v6, v7}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .local v2, fadeOut:Landroid/view/animation/Animation;
    const-wide/16 v6, 0x1f4

    invoke-virtual {v2, v6, v7}, Landroid/view/animation/Animation;->setDuration(J)V

    iget-object v6, p0, Lcom/asus/vibe2/Act_Detail;->mEmptyView:Landroid/view/View;

    invoke-virtual {v6, v2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 394
    iget-object v6, p0, Lcom/asus/vibe2/Act_Detail;->mEmptyView:Landroid/view/View;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    .line 397
    .end local v2           #fadeOut:Landroid/view/animation/Animation;
    :cond_c
    iget-object v6, p0, Lcom/asus/vibe2/Act_Detail;->mTitle:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/asus/vibe2/Act_Detail;->mParam:Lcom/asus/vibe/item/VibeParam;

    iget-object v7, v7, Lcom/asus/vibe/item/VibeParam;->detail:Lcom/asus/vibe/item/VibeItem_Detail;

    iget-object v7, v7, Lcom/asus/vibe/item/VibeItem_Detail;->mContentName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 399
    iget-object v6, p0, Lcom/asus/vibe2/Act_Detail;->mParam:Lcom/asus/vibe/item/VibeParam;

    iget-object v6, v6, Lcom/asus/vibe/item/VibeParam;->detail:Lcom/asus/vibe/item/VibeItem_Detail;

    if-eqz v6, :cond_d

    iget-object v6, p0, Lcom/asus/vibe2/Act_Detail;->mParam:Lcom/asus/vibe/item/VibeParam;

    iget-object v6, v6, Lcom/asus/vibe/item/VibeParam;->detail:Lcom/asus/vibe/item/VibeItem_Detail;

    iget-object v6, v6, Lcom/asus/vibe/item/VibeItem_Detail;->mDescription:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_d

    .line 400
    iget-object v6, p0, Lcom/asus/vibe2/Act_Detail;->mDescription:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/asus/vibe2/Act_Detail;->mParam:Lcom/asus/vibe/item/VibeParam;

    iget-object v7, v7, Lcom/asus/vibe/item/VibeParam;->detail:Lcom/asus/vibe/item/VibeItem_Detail;

    iget-object v7, v7, Lcom/asus/vibe/item/VibeItem_Detail;->mDescription:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 401
    iget-object v6, p0, Lcom/asus/vibe2/Act_Detail;->mDescription:Landroid/widget/TextView;

    invoke-static {v6, v10}, Landroid/text/util/Linkify;->addLinks(Landroid/widget/TextView;I)Z

    .line 404
    :cond_d
    iget-object v6, p0, Lcom/asus/vibe2/Act_Detail;->mParam:Lcom/asus/vibe/item/VibeParam;

    iget-object v6, v6, Lcom/asus/vibe/item/VibeParam;->detail:Lcom/asus/vibe/item/VibeItem_Detail;

    iget-object v6, v6, Lcom/asus/vibe/item/VibeItem_Detail;->mImageBuffer:[B

    if-eqz v6, :cond_15

    iget-object v6, p0, Lcom/asus/vibe2/Act_Detail;->mParam:Lcom/asus/vibe/item/VibeParam;

    iget-object v6, v6, Lcom/asus/vibe/item/VibeParam;->detail:Lcom/asus/vibe/item/VibeItem_Detail;

    iget-object v6, v6, Lcom/asus/vibe/item/VibeItem_Detail;->mImageBuffer:[B

    array-length v6, v6

    if-lez v6, :cond_15

    .line 405
    iget-object v6, p0, Lcom/asus/vibe2/Act_Detail;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v6, :cond_e

    iget-object v6, p0, Lcom/asus/vibe2/Act_Detail;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v11, p0, Lcom/asus/vibe2/Act_Detail;->mBitmap:Landroid/graphics/Bitmap;

    .line 406
    :cond_e
    iget-object v6, p0, Lcom/asus/vibe2/Act_Detail;->mParam:Lcom/asus/vibe/item/VibeParam;

    iget-object v6, v6, Lcom/asus/vibe/item/VibeParam;->detail:Lcom/asus/vibe/item/VibeItem_Detail;

    iget-object v6, v6, Lcom/asus/vibe/item/VibeItem_Detail;->mImageBuffer:[B

    iget-object v7, p0, Lcom/asus/vibe2/Act_Detail;->mParam:Lcom/asus/vibe/item/VibeParam;

    iget-object v7, v7, Lcom/asus/vibe/item/VibeParam;->detail:Lcom/asus/vibe/item/VibeItem_Detail;

    iget-object v7, v7, Lcom/asus/vibe/item/VibeItem_Detail;->mImageBuffer:[B

    array-length v7, v7

    invoke-static {v6, v9, v7}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v6

    iput-object v6, p0, Lcom/asus/vibe2/Act_Detail;->mBitmap:Landroid/graphics/Bitmap;

    .line 407
    iget-object v6, p0, Lcom/asus/vibe2/Act_Detail;->mBitmap:Landroid/graphics/Bitmap;

    if-nez v6, :cond_14

    .line 408
    const-string v6, "ASUS@Vibe"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Can not decode bitmap for item: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/asus/vibe2/Act_Detail;->mParam:Lcom/asus/vibe/item/VibeParam;

    iget-object v8, v8, Lcom/asus/vibe/item/VibeParam;->detail:Lcom/asus/vibe/item/VibeItem_Detail;

    iget-object v8, v8, Lcom/asus/vibe/item/VibeItem_Detail;->mContentName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "!!"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    iget-object v6, p0, Lcom/asus/vibe2/Act_Detail;->mParam:Lcom/asus/vibe/item/VibeParam;

    iget-object v6, v6, Lcom/asus/vibe/item/VibeParam;->detail:Lcom/asus/vibe/item/VibeItem_Detail;

    iput-object v11, v6, Lcom/asus/vibe/item/VibeItem_Detail;->mImageUrl:Ljava/lang/String;

    .line 434
    :cond_f
    :goto_4
    invoke-static {}, Lcom/asus/vibe2/Vibe;->getContext()Landroid/content/Context;

    move-result-object v6

    iget-object v7, p0, Lcom/asus/vibe2/Act_Detail;->mParam:Lcom/asus/vibe/item/VibeParam;

    invoke-static {v6, v7}, Lcom/asus/vibe/favorite/VibeFavoriteDatabase;->isFavorite(Landroid/content/Context;Lcom/asus/vibe/item/VibeParam;)Z

    move-result v6

    if-eqz v6, :cond_1b

    .line 435
    iget-object v6, p0, Lcom/asus/vibe2/Act_Detail;->mFavorite:Landroid/widget/Button;

    const v7, 0x7f040013

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setText(I)V

    .line 439
    :goto_5
    iget-object v6, p0, Lcom/asus/vibe2/Act_Detail;->mFavorite:Landroid/widget/Button;

    invoke-virtual {v6, v10}, Landroid/widget/Button;->setEnabled(Z)V

    .line 441
    iget-object v6, p0, Lcom/asus/vibe2/Act_Detail;->mParam:Lcom/asus/vibe/item/VibeParam;

    iget-object v6, v6, Lcom/asus/vibe/item/VibeParam;->main:Lcom/asus/vibe/item/VibeItem_Main;

    iget-object v6, v6, Lcom/asus/vibe/item/VibeItem_Main;->mMainCategoryName:Ljava/lang/String;

    const-string v7, "music"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_10

    iget-object v6, p0, Lcom/asus/vibe2/Act_Detail;->mParam:Lcom/asus/vibe/item/VibeParam;

    iget-object v6, v6, Lcom/asus/vibe/item/VibeParam;->main:Lcom/asus/vibe/item/VibeItem_Main;

    iget-object v6, v6, Lcom/asus/vibe/item/VibeItem_Main;->mMainCategoryName:Ljava/lang/String;

    const-string v7, "radio"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1c

    .line 442
    :cond_10
    iget-object v6, p0, Lcom/asus/vibe2/Act_Detail;->mPlay:Landroid/widget/Button;

    invoke-virtual {v6, v12}, Landroid/widget/Button;->setText(I)V

    .line 446
    :goto_6
    iget-object v6, p0, Lcom/asus/vibe2/Act_Detail;->mPlay:Landroid/widget/Button;

    invoke-virtual {v6, v9}, Landroid/widget/Button;->setEnabled(Z)V

    .line 447
    iget-object v6, p0, Lcom/asus/vibe2/Act_Detail;->mParam:Lcom/asus/vibe/item/VibeParam;

    iget-object v6, v6, Lcom/asus/vibe/item/VibeParam;->detail:Lcom/asus/vibe/item/VibeItem_Detail;

    iget-object v6, v6, Lcom/asus/vibe/item/VibeItem_Detail;->mUriList:Ljava/util/ArrayList;

    if-eqz v6, :cond_11

    iget-object v6, p0, Lcom/asus/vibe2/Act_Detail;->mParam:Lcom/asus/vibe/item/VibeParam;

    iget-object v6, v6, Lcom/asus/vibe/item/VibeParam;->detail:Lcom/asus/vibe/item/VibeItem_Detail;

    iget-object v6, v6, Lcom/asus/vibe/item/VibeItem_Detail;->mUriList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v6, v10, :cond_1d

    .line 448
    :cond_11
    iget-object v6, p0, Lcom/asus/vibe2/Act_Detail;->mPlay:Landroid/widget/Button;

    invoke-virtual {v6, v9}, Landroid/widget/Button;->setEnabled(Z)V

    .line 542
    :cond_12
    :goto_7
    iget-object v6, p0, Lcom/asus/vibe2/Act_Detail;->mParam:Lcom/asus/vibe/item/VibeParam;

    iget-object v6, v6, Lcom/asus/vibe/item/VibeParam;->sub:Lcom/asus/vibe/item/VibeItem_Sub;

    if-eqz v6, :cond_13

    iget-object v6, p0, Lcom/asus/vibe2/Act_Detail;->mParam:Lcom/asus/vibe/item/VibeParam;

    iget-object v6, v6, Lcom/asus/vibe/item/VibeParam;->sub:Lcom/asus/vibe/item/VibeItem_Sub;

    iget-object v6, v6, Lcom/asus/vibe/item/VibeItem_Sub;->mPackageUrl:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_33

    .line 543
    :cond_13
    iget-object v6, p0, Lcom/asus/vibe2/Act_Detail;->mBuy:Landroid/widget/Button;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_0

    .line 411
    :cond_14
    iget-object v6, p0, Lcom/asus/vibe2/Act_Detail;->mIcon:Landroid/widget/ImageView;

    iget-object v7, p0, Lcom/asus/vibe2/Act_Detail;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_4

    .line 414
    :cond_15
    iget-object v6, p0, Lcom/asus/vibe2/Act_Detail;->mParam:Lcom/asus/vibe/item/VibeParam;

    iget-object v6, v6, Lcom/asus/vibe/item/VibeParam;->detail:Lcom/asus/vibe/item/VibeItem_Detail;

    iget-object v6, v6, Lcom/asus/vibe/item/VibeItem_Detail;->mImageUrl:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_17

    .line 415
    iget-object v6, p0, Lcom/asus/vibe2/Act_Detail;->mParam:Lcom/asus/vibe/item/VibeParam;

    iget-object v6, v6, Lcom/asus/vibe/item/VibeParam;->cont:Lcom/asus/vibe/item/VibeItem_Cont;

    if-eqz v6, :cond_16

    iget-object v6, p0, Lcom/asus/vibe2/Act_Detail;->mParam:Lcom/asus/vibe/item/VibeParam;

    iget-object v6, v6, Lcom/asus/vibe/item/VibeParam;->cont:Lcom/asus/vibe/item/VibeItem_Cont;

    iget-object v6, v6, Lcom/asus/vibe/item/VibeItem_Cont;->mImageUrl:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_16

    iget-object v6, p0, Lcom/asus/vibe2/Act_Detail;->mParam:Lcom/asus/vibe/item/VibeParam;

    iget-object v6, v6, Lcom/asus/vibe/item/VibeParam;->cont:Lcom/asus/vibe/item/VibeItem_Cont;

    iget-object v6, v6, Lcom/asus/vibe/item/VibeItem_Cont;->mImageUrl:Ljava/lang/String;

    iget-object v7, p0, Lcom/asus/vibe2/Act_Detail;->mParam:Lcom/asus/vibe/item/VibeParam;

    iget-object v7, v7, Lcom/asus/vibe/item/VibeParam;->detail:Lcom/asus/vibe/item/VibeItem_Detail;

    iget-object v7, v7, Lcom/asus/vibe/item/VibeItem_Detail;->mImageUrl:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_17

    .line 416
    :cond_16
    const/4 v6, -0x1

    iget-object v7, p0, Lcom/asus/vibe2/Act_Detail;->mParam:Lcom/asus/vibe/item/VibeParam;

    iget-object v7, v7, Lcom/asus/vibe/item/VibeParam;->detail:Lcom/asus/vibe/item/VibeItem_Detail;

    iget-object v8, p0, Lcom/asus/vibe2/Act_Detail;->mHandler:Landroid/os/Handler;

    invoke-static {v6, v7, v8}, Lcom/asus/vibe/api/IconCacheMgr;->newCacher(ILcom/asus/vibe/item/VibeItem_Cont;Landroid/os/Handler;)V

    .line 419
    :cond_17
    iget-object v6, p0, Lcom/asus/vibe2/Act_Detail;->mParam:Lcom/asus/vibe/item/VibeParam;

    iget-object v6, v6, Lcom/asus/vibe/item/VibeParam;->cont:Lcom/asus/vibe/item/VibeItem_Cont;

    iget-object v6, v6, Lcom/asus/vibe/item/VibeItem_Cont;->mImageBuffer:[B

    if-eqz v6, :cond_1a

    iget-object v6, p0, Lcom/asus/vibe2/Act_Detail;->mParam:Lcom/asus/vibe/item/VibeParam;

    iget-object v6, v6, Lcom/asus/vibe/item/VibeParam;->cont:Lcom/asus/vibe/item/VibeItem_Cont;

    iget-object v6, v6, Lcom/asus/vibe/item/VibeItem_Cont;->mImageBuffer:[B

    array-length v6, v6

    if-lez v6, :cond_1a

    .line 420
    iget-object v6, p0, Lcom/asus/vibe2/Act_Detail;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v6, :cond_18

    iget-object v6, p0, Lcom/asus/vibe2/Act_Detail;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v11, p0, Lcom/asus/vibe2/Act_Detail;->mBitmap:Landroid/graphics/Bitmap;

    .line 421
    :cond_18
    iget-object v6, p0, Lcom/asus/vibe2/Act_Detail;->mParam:Lcom/asus/vibe/item/VibeParam;

    iget-object v6, v6, Lcom/asus/vibe/item/VibeParam;->cont:Lcom/asus/vibe/item/VibeItem_Cont;

    iget-object v6, v6, Lcom/asus/vibe/item/VibeItem_Cont;->mImageBuffer:[B

    iget-object v7, p0, Lcom/asus/vibe2/Act_Detail;->mParam:Lcom/asus/vibe/item/VibeParam;

    iget-object v7, v7, Lcom/asus/vibe/item/VibeParam;->cont:Lcom/asus/vibe/item/VibeItem_Cont;

    iget-object v7, v7, Lcom/asus/vibe/item/VibeItem_Cont;->mImageBuffer:[B

    array-length v7, v7

    invoke-static {v6, v9, v7}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v6

    iput-object v6, p0, Lcom/asus/vibe2/Act_Detail;->mBitmap:Landroid/graphics/Bitmap;

    .line 422
    iget-object v6, p0, Lcom/asus/vibe2/Act_Detail;->mBitmap:Landroid/graphics/Bitmap;

    if-nez v6, :cond_19

    .line 423
    const-string v6, "ASUS@Vibe"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Can not decode bitmap for item: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/asus/vibe2/Act_Detail;->mParam:Lcom/asus/vibe/item/VibeParam;

    iget-object v8, v8, Lcom/asus/vibe/item/VibeParam;->detail:Lcom/asus/vibe/item/VibeItem_Detail;

    iget-object v8, v8, Lcom/asus/vibe/item/VibeItem_Detail;->mContentName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "!!"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    iget-object v6, p0, Lcom/asus/vibe2/Act_Detail;->mParam:Lcom/asus/vibe/item/VibeParam;

    iget-object v6, v6, Lcom/asus/vibe/item/VibeParam;->cont:Lcom/asus/vibe/item/VibeItem_Cont;

    iput-object v11, v6, Lcom/asus/vibe/item/VibeItem_Cont;->mImageUrl:Ljava/lang/String;

    goto/16 :goto_4

    .line 426
    :cond_19
    iget-object v6, p0, Lcom/asus/vibe2/Act_Detail;->mIcon:Landroid/widget/ImageView;

    iget-object v7, p0, Lcom/asus/vibe2/Act_Detail;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto/16 :goto_4

    .line 428
    :cond_1a
    iget-object v6, p0, Lcom/asus/vibe2/Act_Detail;->mParam:Lcom/asus/vibe/item/VibeParam;

    iget-object v6, v6, Lcom/asus/vibe/item/VibeParam;->cont:Lcom/asus/vibe/item/VibeItem_Cont;

    iget-object v6, v6, Lcom/asus/vibe/item/VibeItem_Cont;->mImageUrl:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_f

    .line 429
    const/4 v6, -0x1

    iget-object v7, p0, Lcom/asus/vibe2/Act_Detail;->mParam:Lcom/asus/vibe/item/VibeParam;

    iget-object v7, v7, Lcom/asus/vibe/item/VibeParam;->cont:Lcom/asus/vibe/item/VibeItem_Cont;

    iget-object v8, p0, Lcom/asus/vibe2/Act_Detail;->mHandler:Landroid/os/Handler;

    invoke-static {v6, v7, v8}, Lcom/asus/vibe/api/IconCacheMgr;->newCacher(ILcom/asus/vibe/item/VibeItem_Cont;Landroid/os/Handler;)V

    goto/16 :goto_4

    .line 437
    :cond_1b
    iget-object v6, p0, Lcom/asus/vibe2/Act_Detail;->mFavorite:Landroid/widget/Button;

    const v7, 0x7f040012

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setText(I)V

    goto/16 :goto_5

    .line 444
    :cond_1c
    iget-object v6, p0, Lcom/asus/vibe2/Act_Detail;->mPlay:Landroid/widget/Button;

    invoke-virtual {v6, v13}, Landroid/widget/Button;->setText(I)V

    goto/16 :goto_6

    .line 449
    :cond_1d
    iget-object v6, p0, Lcom/asus/vibe2/Act_Detail;->mParam:Lcom/asus/vibe/item/VibeParam;

    iget-object v6, v6, Lcom/asus/vibe/item/VibeParam;->detail:Lcom/asus/vibe/item/VibeItem_Detail;

    iget-boolean v6, v6, Lcom/asus/vibe/item/VibeItem_Detail;->mIsFree:Z

    if-eqz v6, :cond_22

    .line 450
    iget-object v6, p0, Lcom/asus/vibe2/Act_Detail;->mPlay:Landroid/widget/Button;

    invoke-virtual {v6, v9}, Landroid/widget/Button;->setEnabled(Z)V

    .line 451
    iget-object v6, p0, Lcom/asus/vibe2/Act_Detail;->mParam:Lcom/asus/vibe/item/VibeParam;

    iget-object v6, v6, Lcom/asus/vibe/item/VibeParam;->detail:Lcom/asus/vibe/item/VibeItem_Detail;

    iget-object v6, v6, Lcom/asus/vibe/item/VibeItem_Detail;->mUriList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_1e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_12

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/asus/vibe/item/VibeUri;

    .line 452
    .local v5, uri:Lcom/asus/vibe/item/VibeUri;
    iget-object v6, v5, Lcom/asus/vibe/item/VibeUri;->uriType:Ljava/lang/String;

    const-string v7, "free"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1f

    iget-object v6, v5, Lcom/asus/vibe/item/VibeUri;->uriType:Ljava/lang/String;

    const-string v7, "premium"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1e

    .line 453
    :cond_1f
    iget-object v6, p0, Lcom/asus/vibe2/Act_Detail;->mParam:Lcom/asus/vibe/item/VibeParam;

    iget-object v6, v6, Lcom/asus/vibe/item/VibeParam;->main:Lcom/asus/vibe/item/VibeItem_Main;

    iget-object v6, v6, Lcom/asus/vibe/item/VibeItem_Main;->mMainCategoryName:Ljava/lang/String;

    const-string v7, "music"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_20

    iget-object v6, p0, Lcom/asus/vibe2/Act_Detail;->mParam:Lcom/asus/vibe/item/VibeParam;

    iget-object v6, v6, Lcom/asus/vibe/item/VibeParam;->main:Lcom/asus/vibe/item/VibeItem_Main;

    iget-object v6, v6, Lcom/asus/vibe/item/VibeItem_Main;->mMainCategoryName:Ljava/lang/String;

    const-string v7, "radio"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_21

    .line 454
    :cond_20
    iget-object v6, p0, Lcom/asus/vibe2/Act_Detail;->mPlay:Landroid/widget/Button;

    invoke-virtual {v6, v12}, Landroid/widget/Button;->setText(I)V

    .line 459
    :goto_8
    iget-object v6, p0, Lcom/asus/vibe2/Act_Detail;->mPlay:Landroid/widget/Button;

    const-string v7, "play"

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 460
    iget-object v6, p0, Lcom/asus/vibe2/Act_Detail;->mPlay:Landroid/widget/Button;

    invoke-virtual {v6, v10}, Landroid/widget/Button;->setEnabled(Z)V

    goto/16 :goto_7

    .line 456
    :cond_21
    iget-object v6, p0, Lcom/asus/vibe2/Act_Detail;->mPlay:Landroid/widget/Button;

    invoke-virtual {v6, v13}, Landroid/widget/Button;->setText(I)V

    goto :goto_8

    .line 464
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v5           #uri:Lcom/asus/vibe/item/VibeUri;
    :cond_22
    iget-object v6, p0, Lcom/asus/vibe2/Act_Detail;->mParam:Lcom/asus/vibe/item/VibeParam;

    iget-object v6, v6, Lcom/asus/vibe/item/VibeParam;->detail:Lcom/asus/vibe/item/VibeItem_Detail;

    iget-boolean v6, v6, Lcom/asus/vibe/item/VibeItem_Detail;->mIsPaid:Z

    if-nez v6, :cond_24

    .line 465
    iget-object v6, p0, Lcom/asus/vibe2/Act_Detail;->mParam:Lcom/asus/vibe/item/VibeParam;

    iget-object v6, v6, Lcom/asus/vibe/item/VibeParam;->detail:Lcom/asus/vibe/item/VibeItem_Detail;

    iget-object v6, v6, Lcom/asus/vibe/item/VibeItem_Detail;->mUriList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .restart local v3       #i$:Ljava/util/Iterator;
    :cond_23
    :goto_9
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_12

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/asus/vibe/item/VibeUri;

    .line 466
    .restart local v5       #uri:Lcom/asus/vibe/item/VibeUri;
    iget-object v6, v5, Lcom/asus/vibe/item/VibeUri;->uriType:Ljava/lang/String;

    const-string v7, "preview"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_23

    .line 467
    iget-object v6, p0, Lcom/asus/vibe2/Act_Detail;->mPlay:Landroid/widget/Button;

    const v7, 0x7f04000c

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setText(I)V

    .line 469
    iget-object v6, p0, Lcom/asus/vibe2/Act_Detail;->mPlay:Landroid/widget/Button;

    const-string v7, "play"

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 470
    iget-object v6, p0, Lcom/asus/vibe2/Act_Detail;->mPlay:Landroid/widget/Button;

    invoke-virtual {v6, v10}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_9

    .line 473
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v5           #uri:Lcom/asus/vibe/item/VibeUri;
    :cond_24
    iget-object v6, p0, Lcom/asus/vibe2/Act_Detail;->mParam:Lcom/asus/vibe/item/VibeParam;

    iget-object v6, v6, Lcom/asus/vibe/item/VibeParam;->detail:Lcom/asus/vibe/item/VibeItem_Detail;

    iget-boolean v6, v6, Lcom/asus/vibe/item/VibeItem_Detail;->mIsPaid:Z

    if-eqz v6, :cond_12

    .line 474
    iput-boolean v9, p0, Lcom/asus/vibe2/Act_Detail;->mTriedBuy:Z

    .line 475
    iget-object v6, p0, Lcom/asus/vibe2/Act_Detail;->mAlertDialog:Landroid/app/AlertDialog;

    if-eqz v6, :cond_25

    iget-object v6, p0, Lcom/asus/vibe2/Act_Detail;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v6}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v6

    if-eqz v6, :cond_25

    .line 476
    iget-object v6, p0, Lcom/asus/vibe2/Act_Detail;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v6}, Landroid/app/AlertDialog;->dismiss()V

    .line 477
    iput-object v11, p0, Lcom/asus/vibe2/Act_Detail;->mAlertDialog:Landroid/app/AlertDialog;

    .line 480
    :cond_25
    iget-object v6, p0, Lcom/asus/vibe2/Act_Detail;->mParam:Lcom/asus/vibe/item/VibeParam;

    iget-object v6, v6, Lcom/asus/vibe/item/VibeParam;->detail:Lcom/asus/vibe/item/VibeItem_Detail;

    iget-object v6, v6, Lcom/asus/vibe/item/VibeItem_Detail;->mUriList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .restart local v3       #i$:Ljava/util/Iterator;
    :cond_26
    :goto_a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_12

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/asus/vibe/item/VibeUri;

    .line 481
    .restart local v5       #uri:Lcom/asus/vibe/item/VibeUri;
    iget-object v6, v5, Lcom/asus/vibe/item/VibeUri;->uriType:Ljava/lang/String;

    const-string v7, "local"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_29

    iget-object v6, v5, Lcom/asus/vibe/item/VibeUri;->uri:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_29

    .line 482
    iget-object v6, p0, Lcom/asus/vibe2/Act_Detail;->mParam:Lcom/asus/vibe/item/VibeParam;

    iget-object v6, v6, Lcom/asus/vibe/item/VibeParam;->main:Lcom/asus/vibe/item/VibeItem_Main;

    iget-object v6, v6, Lcom/asus/vibe/item/VibeItem_Main;->mMainCategoryName:Ljava/lang/String;

    const-string v7, "music"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_27

    iget-object v6, p0, Lcom/asus/vibe2/Act_Detail;->mParam:Lcom/asus/vibe/item/VibeParam;

    iget-object v6, v6, Lcom/asus/vibe/item/VibeParam;->main:Lcom/asus/vibe/item/VibeItem_Main;

    iget-object v6, v6, Lcom/asus/vibe/item/VibeItem_Main;->mMainCategoryName:Ljava/lang/String;

    const-string v7, "radio"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_28

    .line 483
    :cond_27
    iget-object v6, p0, Lcom/asus/vibe2/Act_Detail;->mPlay:Landroid/widget/Button;

    invoke-virtual {v6, v12}, Landroid/widget/Button;->setText(I)V

    .line 488
    :goto_b
    iget-object v6, p0, Lcom/asus/vibe2/Act_Detail;->mPlay:Landroid/widget/Button;

    const-string v7, "local"

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 489
    iget-object v6, p0, Lcom/asus/vibe2/Act_Detail;->mPlay:Landroid/widget/Button;

    invoke-virtual {v6, v10}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_a

    .line 485
    :cond_28
    iget-object v6, p0, Lcom/asus/vibe2/Act_Detail;->mPlay:Landroid/widget/Button;

    invoke-virtual {v6, v13}, Landroid/widget/Button;->setText(I)V

    goto :goto_b

    .line 490
    :cond_29
    iget-object v6, v5, Lcom/asus/vibe/item/VibeUri;->uriType:Ljava/lang/String;

    const-string v7, "download"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2f

    iget-object v6, v5, Lcom/asus/vibe/item/VibeUri;->uri:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2f

    .line 491
    const/4 v4, 0x0

    .line 492
    .local v4, localUri:Lcom/asus/vibe/item/VibeUri;
    iget-object v6, p0, Lcom/asus/vibe2/Act_Detail;->mParam:Lcom/asus/vibe/item/VibeParam;

    iget-object v6, v6, Lcom/asus/vibe/item/VibeParam;->vibeAction:Ljava/lang/String;

    const-string v7, "com.asus.vibe.action.LIST_MUSIC"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2a

    iget-object v6, p0, Lcom/asus/vibe2/Act_Detail;->mParam:Lcom/asus/vibe/item/VibeParam;

    iget-object v6, v6, Lcom/asus/vibe/item/VibeParam;->main:Lcom/asus/vibe/item/VibeItem_Main;

    iget-object v6, v6, Lcom/asus/vibe/item/VibeItem_Main;->mMainCategoryName:Ljava/lang/String;

    const-string v7, "music"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2a

    iget-object v6, p0, Lcom/asus/vibe2/Act_Detail;->mParam:Lcom/asus/vibe/item/VibeParam;

    iget-object v6, v6, Lcom/asus/vibe/item/VibeParam;->sub:Lcom/asus/vibe/item/VibeItem_Sub;

    iget-object v6, v6, Lcom/asus/vibe/item/VibeItem_Sub;->mSPName:Ljava/lang/String;

    const-string v7, "InMusic"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2a

    .line 495
    new-instance v1, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    invoke-static {v7}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/asus/vibe2/Act_Detail;->mParam:Lcom/asus/vibe/item/VibeParam;

    iget-object v7, v7, Lcom/asus/vibe/item/VibeParam;->cont:Lcom/asus/vibe/item/VibeItem_Cont;

    iget-object v7, v7, Lcom/asus/vibe/item/VibeItem_Cont;->mContentName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".mp3"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v1, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 496
    .local v1, f:Ljava/io/File;
    if-eqz v1, :cond_2a

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_2a

    .line 497
    new-instance v4, Lcom/asus/vibe/item/VibeUri;

    .end local v4           #localUri:Lcom/asus/vibe/item/VibeUri;
    invoke-direct {v4}, Lcom/asus/vibe/item/VibeUri;-><init>()V

    .line 498
    .restart local v4       #localUri:Lcom/asus/vibe/item/VibeUri;
    const-string v6, "local"

    iput-object v6, v4, Lcom/asus/vibe/item/VibeUri;->uriType:Ljava/lang/String;

    .line 499
    const-string v6, "audio/mpeg"

    iput-object v6, v4, Lcom/asus/vibe/item/VibeUri;->uriPlayerType:Ljava/lang/String;

    .line 500
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "file://"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    invoke-static {v7}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/asus/vibe2/Act_Detail;->mParam:Lcom/asus/vibe/item/VibeParam;

    iget-object v7, v7, Lcom/asus/vibe/item/VibeParam;->cont:Lcom/asus/vibe/item/VibeItem_Cont;

    iget-object v7, v7, Lcom/asus/vibe/item/VibeItem_Cont;->mContentName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".mp3"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Lcom/asus/vibe/item/VibeUri;->uri:Ljava/lang/String;

    .line 503
    .end local v1           #f:Ljava/io/File;
    :cond_2a
    if-eqz v4, :cond_2d

    iget-object v6, v4, Lcom/asus/vibe/item/VibeUri;->uri:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2d

    .line 504
    iget-object v6, p0, Lcom/asus/vibe2/Act_Detail;->mParam:Lcom/asus/vibe/item/VibeParam;

    iget-object v6, v6, Lcom/asus/vibe/item/VibeParam;->detail:Lcom/asus/vibe/item/VibeItem_Detail;

    iget-object v6, v6, Lcom/asus/vibe/item/VibeItem_Detail;->mUriList:Ljava/util/ArrayList;

    invoke-virtual {v6, v9, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 505
    iget-object v6, p0, Lcom/asus/vibe2/Act_Detail;->mParam:Lcom/asus/vibe/item/VibeParam;

    iget-object v6, v6, Lcom/asus/vibe/item/VibeParam;->main:Lcom/asus/vibe/item/VibeItem_Main;

    iget-object v6, v6, Lcom/asus/vibe/item/VibeItem_Main;->mMainCategoryName:Ljava/lang/String;

    const-string v7, "music"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2b

    iget-object v6, p0, Lcom/asus/vibe2/Act_Detail;->mParam:Lcom/asus/vibe/item/VibeParam;

    iget-object v6, v6, Lcom/asus/vibe/item/VibeParam;->main:Lcom/asus/vibe/item/VibeItem_Main;

    iget-object v6, v6, Lcom/asus/vibe/item/VibeItem_Main;->mMainCategoryName:Ljava/lang/String;

    const-string v7, "radio"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2c

    .line 506
    :cond_2b
    iget-object v6, p0, Lcom/asus/vibe2/Act_Detail;->mPlay:Landroid/widget/Button;

    invoke-virtual {v6, v12}, Landroid/widget/Button;->setText(I)V

    .line 511
    :goto_c
    iget-object v6, p0, Lcom/asus/vibe2/Act_Detail;->mPlay:Landroid/widget/Button;

    const-string v7, "local"

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 512
    iget-object v6, p0, Lcom/asus/vibe2/Act_Detail;->mPlay:Landroid/widget/Button;

    invoke-virtual {v6, v10}, Landroid/widget/Button;->setEnabled(Z)V

    goto/16 :goto_7

    .line 508
    :cond_2c
    iget-object v6, p0, Lcom/asus/vibe2/Act_Detail;->mPlay:Landroid/widget/Button;

    invoke-virtual {v6, v13}, Landroid/widget/Button;->setText(I)V

    goto :goto_c

    .line 514
    :cond_2d
    iget-object v6, p0, Lcom/asus/vibe2/Act_Detail;->mPlay:Landroid/widget/Button;

    invoke-virtual {v6}, Landroid/widget/Button;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 516
    .local v0, curTag:Ljava/lang/String;
    if-eqz v0, :cond_2e

    const-string v6, "local"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_12

    .line 517
    :cond_2e
    iget-object v6, p0, Lcom/asus/vibe2/Act_Detail;->mPlay:Landroid/widget/Button;

    const v7, 0x7f040010

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setText(I)V

    .line 518
    iget-object v6, p0, Lcom/asus/vibe2/Act_Detail;->mPlay:Landroid/widget/Button;

    const-string v7, "download"

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 519
    iget-object v6, p0, Lcom/asus/vibe2/Act_Detail;->mPlay:Landroid/widget/Button;

    invoke-virtual {v6, v10}, Landroid/widget/Button;->setEnabled(Z)V

    .line 520
    invoke-static {}, Lcom/asus/vibe2/Vibe;->getContext()Landroid/content/Context;

    move-result-object v6

    iget-object v7, p0, Lcom/asus/vibe2/Act_Detail;->mParam:Lcom/asus/vibe/item/VibeParam;

    invoke-static {v6, v7}, Lcom/asus/vibe2/Utils_Download;->isInDownloadQueue(Landroid/content/Context;Lcom/asus/vibe/item/VibeParam;)Z

    move-result v6

    if-eqz v6, :cond_12

    .line 521
    iget-object v6, p0, Lcom/asus/vibe2/Act_Detail;->mPlay:Landroid/widget/Button;

    invoke-virtual {v6, v9}, Landroid/widget/Button;->setEnabled(Z)V

    goto/16 :goto_7

    .line 526
    .end local v0           #curTag:Ljava/lang/String;
    .end local v4           #localUri:Lcom/asus/vibe/item/VibeUri;
    :cond_2f
    iget-object v6, v5, Lcom/asus/vibe/item/VibeUri;->uriType:Ljava/lang/String;

    const-string v7, "premium"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_26

    iget-object v6, v5, Lcom/asus/vibe/item/VibeUri;->uri:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_26

    .line 528
    iget-object v6, p0, Lcom/asus/vibe2/Act_Detail;->mPlay:Landroid/widget/Button;

    invoke-virtual {v6}, Landroid/widget/Button;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 529
    .restart local v0       #curTag:Ljava/lang/String;
    if-eqz v0, :cond_30

    const-string v6, "local"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_26

    const-string v6, "download"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_26

    .line 530
    :cond_30
    iget-object v6, p0, Lcom/asus/vibe2/Act_Detail;->mParam:Lcom/asus/vibe/item/VibeParam;

    iget-object v6, v6, Lcom/asus/vibe/item/VibeParam;->main:Lcom/asus/vibe/item/VibeItem_Main;

    iget-object v6, v6, Lcom/asus/vibe/item/VibeItem_Main;->mMainCategoryName:Ljava/lang/String;

    const-string v7, "music"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_31

    iget-object v6, p0, Lcom/asus/vibe2/Act_Detail;->mParam:Lcom/asus/vibe/item/VibeParam;

    iget-object v6, v6, Lcom/asus/vibe/item/VibeParam;->main:Lcom/asus/vibe/item/VibeItem_Main;

    iget-object v6, v6, Lcom/asus/vibe/item/VibeItem_Main;->mMainCategoryName:Ljava/lang/String;

    const-string v7, "radio"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_32

    .line 531
    :cond_31
    iget-object v6, p0, Lcom/asus/vibe2/Act_Detail;->mPlay:Landroid/widget/Button;

    invoke-virtual {v6, v12}, Landroid/widget/Button;->setText(I)V

    .line 535
    :goto_d
    iget-object v6, p0, Lcom/asus/vibe2/Act_Detail;->mPlay:Landroid/widget/Button;

    const-string v7, "play"

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 536
    iget-object v6, p0, Lcom/asus/vibe2/Act_Detail;->mPlay:Landroid/widget/Button;

    invoke-virtual {v6, v10}, Landroid/widget/Button;->setEnabled(Z)V

    goto/16 :goto_a

    .line 533
    :cond_32
    iget-object v6, p0, Lcom/asus/vibe2/Act_Detail;->mPlay:Landroid/widget/Button;

    invoke-virtual {v6, v13}, Landroid/widget/Button;->setText(I)V

    goto :goto_d

    .line 544
    .end local v0           #curTag:Ljava/lang/String;
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v5           #uri:Lcom/asus/vibe/item/VibeUri;
    :cond_33
    iget-object v6, p0, Lcom/asus/vibe2/Act_Detail;->mParam:Lcom/asus/vibe/item/VibeParam;

    iget-object v6, v6, Lcom/asus/vibe/item/VibeParam;->detail:Lcom/asus/vibe/item/VibeItem_Detail;

    iget-boolean v6, v6, Lcom/asus/vibe/item/VibeItem_Detail;->mIsPaid:Z

    if-eqz v6, :cond_34

    .line 545
    iget-object v6, p0, Lcom/asus/vibe2/Act_Detail;->mBuy:Landroid/widget/Button;

    invoke-virtual {v6, v9}, Landroid/widget/Button;->setVisibility(I)V

    .line 546
    iget-object v6, p0, Lcom/asus/vibe2/Act_Detail;->mBuy:Landroid/widget/Button;

    invoke-virtual {v6, v9}, Landroid/widget/Button;->setEnabled(Z)V

    goto/16 :goto_0

    .line 547
    :cond_34
    iget-object v6, p0, Lcom/asus/vibe2/Act_Detail;->mPackageList:Ljava/util/ArrayList;

    if-eqz v6, :cond_35

    iget-object v6, p0, Lcom/asus/vibe2/Act_Detail;->mPackageList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v6, v10, :cond_37

    .line 548
    :cond_35
    iget-object v6, p0, Lcom/asus/vibe2/Act_Detail;->mRunningTask:Lcom/asus/vibe/api/VibeApiTask;

    if-nez v6, :cond_36

    .line 549
    const/16 v6, 0xf

    iget-object v7, p0, Lcom/asus/vibe2/Act_Detail;->mParam:Lcom/asus/vibe/item/VibeParam;

    iget-object v8, p0, Lcom/asus/vibe2/Act_Detail;->mHandler:Landroid/os/Handler;

    invoke-static {v6, v7, v8}, Lcom/asus/vibe/api/VibeApiTask;->newTaskThread(ILcom/asus/vibe/item/VibeParam;Landroid/os/Handler;)Lcom/asus/vibe/api/VibeApiTask;

    move-result-object v6

    iput-object v6, p0, Lcom/asus/vibe2/Act_Detail;->mRunningTask:Lcom/asus/vibe/api/VibeApiTask;

    .line 551
    :cond_36
    iget-object v6, p0, Lcom/asus/vibe2/Act_Detail;->mBuy:Landroid/widget/Button;

    invoke-virtual {v6, v9}, Landroid/widget/Button;->setVisibility(I)V

    .line 552
    iget-object v6, p0, Lcom/asus/vibe2/Act_Detail;->mBuy:Landroid/widget/Button;

    invoke-virtual {v6, v9}, Landroid/widget/Button;->setEnabled(Z)V

    goto/16 :goto_0

    .line 559
    :cond_37
    iget-object v6, p0, Lcom/asus/vibe2/Act_Detail;->mBuy:Landroid/widget/Button;

    invoke-virtual {v6, v9}, Landroid/widget/Button;->setVisibility(I)V

    .line 560
    iget-object v6, p0, Lcom/asus/vibe2/Act_Detail;->mBuy:Landroid/widget/Button;

    invoke-virtual {v6, v10}, Landroid/widget/Button;->setEnabled(Z)V

    goto/16 :goto_0
.end method


# virtual methods
.method protected finalize()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 113
    sget-boolean v0, Lcom/asus/vibe2/Vibe;->MEM_DEBUG:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/asus/vibe2/debug/MemDebug;->remove(Ljava/lang/Object;)V

    const-string v0, "ASUS@Vibe_Mem"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " finalized!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 115
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 5
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 140
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 141
    const/16 v2, 0x99

    if-ne p1, v2, :cond_0

    .line 142
    invoke-static {p2, p3}, Lcom/asus/vibe2/mycloud/Utils_MyCloud;->updateAccountInfoByResult(ILandroid/content/Intent;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 165
    :cond_0
    :goto_0
    return-void

    .line 146
    :cond_1
    invoke-static {}, Lcom/asus/vibe2/Vibe;->loggedIn()Z

    move-result v2

    if-nez v2, :cond_2

    .line 147
    invoke-static {p0}, Lcom/asus/vibe2/mycloud/Utils_MyCloud;->requestGetAccInfo(Landroid/app/Activity;)V

    goto :goto_0

    .line 149
    :cond_2
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/asus/vibe2/Act_Detail;->mTriedBuy:Z

    .line 150
    new-instance v1, Lcom/asus/vibe2/Adapter_Package_List;

    iget-object v2, p0, Lcom/asus/vibe2/Act_Detail;->mPackageList:Ljava/util/ArrayList;

    invoke-direct {v1, p0, v2}, Lcom/asus/vibe2/Adapter_Package_List;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 151
    .local v1, packList:Lcom/asus/vibe2/Adapter_Package_List;
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v3, -0x1

    new-instance v4, Lcom/asus/vibe2/Act_Detail$3;

    invoke-direct {v4, p0, v1}, Lcom/asus/vibe2/Act_Detail$3;-><init>(Lcom/asus/vibe2/Act_Detail;Lcom/asus/vibe2/Adapter_Package_List;)V

    invoke-virtual {v2, v1, v3, v4}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 162
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/asus/vibe2/Act_Detail;->mAlertDialog:Landroid/app/AlertDialog;

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .parameter "newConfig"

    .prologue
    .line 169
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 170
    invoke-direct {p0}, Lcom/asus/vibe2/Act_Detail;->refreshViews()V

    .line 171
    invoke-direct {p0}, Lcom/asus/vibe2/Act_Detail;->updateContent()V

    .line 172
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 119
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 120
    invoke-virtual {p0}, Lcom/asus/vibe2/Act_Detail;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/asus/vibe2/Vibe;->setContext(Landroid/content/Context;)V

    .line 121
    invoke-virtual {p0}, Lcom/asus/vibe2/Act_Detail;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "com.asus.vibe.PARAM"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/asus/vibe/item/VibeItemParcelable;

    .line 122
    .local v1, vpp:Lcom/asus/vibe/item/VibeItemParcelable;
    if-nez v1, :cond_0

    .line 123
    invoke-virtual {p0}, Lcom/asus/vibe2/Act_Detail;->finish()V

    .line 136
    :goto_0
    return-void

    .line 126
    :cond_0
    invoke-virtual {v1}, Lcom/asus/vibe/item/VibeItemParcelable;->getItem()Lcom/asus/vibe/item/VibeItem;

    move-result-object v0

    check-cast v0, Lcom/asus/vibe/item/VibeParam;

    .line 127
    .local v0, param:Lcom/asus/vibe/item/VibeParam;
    const/4 v1, 0x0

    .line 128
    if-eqz v0, :cond_1

    iget-object v2, v0, Lcom/asus/vibe/item/VibeParam;->cont:Lcom/asus/vibe/item/VibeItem_Cont;

    if-nez v2, :cond_2

    .line 129
    :cond_1
    invoke-virtual {p0}, Lcom/asus/vibe2/Act_Detail;->finish()V

    goto :goto_0

    .line 133
    :cond_2
    new-instance v2, Lcom/asus/vibe/item/VibeParam;

    invoke-direct {v2, v0}, Lcom/asus/vibe/item/VibeParam;-><init>(Lcom/asus/vibe/item/VibeParam;)V

    iput-object v2, p0, Lcom/asus/vibe2/Act_Detail;->mParam:Lcom/asus/vibe/item/VibeParam;

    .line 134
    invoke-direct {p0}, Lcom/asus/vibe2/Act_Detail;->refreshViews()V

    .line 135
    invoke-direct {p0}, Lcom/asus/vibe2/Act_Detail;->updateContent()V

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 206
    iget-object v0, p0, Lcom/asus/vibe2/Act_Detail;->mRunningTask:Lcom/asus/vibe/api/VibeApiTask;

    if-eqz v0, :cond_0

    .line 207
    iget-object v0, p0, Lcom/asus/vibe2/Act_Detail;->mRunningTask:Lcom/asus/vibe/api/VibeApiTask;

    invoke-virtual {v0}, Lcom/asus/vibe/api/VibeApiTask;->stop()V

    .line 208
    iput-object v1, p0, Lcom/asus/vibe2/Act_Detail;->mRunningTask:Lcom/asus/vibe/api/VibeApiTask;

    .line 210
    :cond_0
    invoke-static {}, Lcom/asus/vibe/api/IconCacheMgr;->clearCacher()V

    .line 212
    iput-object v1, p0, Lcom/asus/vibe2/Act_Detail;->mIntent:Landroid/content/Intent;

    .line 214
    iput-object v1, p0, Lcom/asus/vibe2/Act_Detail;->mIcon:Landroid/widget/ImageView;

    .line 215
    iput-object v1, p0, Lcom/asus/vibe2/Act_Detail;->mTitle:Landroid/widget/TextView;

    .line 216
    iput-object v1, p0, Lcom/asus/vibe2/Act_Detail;->mDescription:Landroid/widget/TextView;

    .line 217
    iput-object v1, p0, Lcom/asus/vibe2/Act_Detail;->mFavorite:Landroid/widget/Button;

    .line 218
    iput-object v1, p0, Lcom/asus/vibe2/Act_Detail;->mPlay:Landroid/widget/Button;

    .line 219
    iput-object v1, p0, Lcom/asus/vibe2/Act_Detail;->mBuy:Landroid/widget/Button;

    .line 220
    iput-object v1, p0, Lcom/asus/vibe2/Act_Detail;->mEmptyView:Landroid/view/View;

    .line 221
    iput-object v1, p0, Lcom/asus/vibe2/Act_Detail;->mEmptyText:Landroid/widget/TextView;

    .line 223
    iget-object v0, p0, Lcom/asus/vibe2/Act_Detail;->mParam:Lcom/asus/vibe/item/VibeParam;

    iput-object v1, v0, Lcom/asus/vibe/item/VibeParam;->vibeAction:Ljava/lang/String;

    .line 224
    iget-object v0, p0, Lcom/asus/vibe2/Act_Detail;->mParam:Lcom/asus/vibe/item/VibeParam;

    iput-object v1, v0, Lcom/asus/vibe/item/VibeParam;->main:Lcom/asus/vibe/item/VibeItem_Main;

    .line 225
    iget-object v0, p0, Lcom/asus/vibe2/Act_Detail;->mParam:Lcom/asus/vibe/item/VibeParam;

    iput-object v1, v0, Lcom/asus/vibe/item/VibeParam;->sub:Lcom/asus/vibe/item/VibeItem_Sub;

    .line 226
    iget-object v0, p0, Lcom/asus/vibe2/Act_Detail;->mParam:Lcom/asus/vibe/item/VibeParam;

    iput-object v1, v0, Lcom/asus/vibe/item/VibeParam;->cont:Lcom/asus/vibe/item/VibeItem_Cont;

    .line 227
    iget-object v0, p0, Lcom/asus/vibe2/Act_Detail;->mParam:Lcom/asus/vibe/item/VibeParam;

    iput-object v1, v0, Lcom/asus/vibe/item/VibeParam;->detail:Lcom/asus/vibe/item/VibeItem_Detail;

    .line 228
    iget-object v0, p0, Lcom/asus/vibe2/Act_Detail;->mParam:Lcom/asus/vibe/item/VibeParam;

    iput-object v1, v0, Lcom/asus/vibe/item/VibeParam;->pack:Lcom/asus/vibe/item/VibeItem_Package;

    .line 229
    iput-object v1, p0, Lcom/asus/vibe2/Act_Detail;->mParam:Lcom/asus/vibe/item/VibeParam;

    .line 230
    iput-object v1, p0, Lcom/asus/vibe2/Act_Detail;->mPackageList:Ljava/util/ArrayList;

    .line 231
    iget-object v0, p0, Lcom/asus/vibe2/Act_Detail;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/asus/vibe2/Act_Detail;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v1, p0, Lcom/asus/vibe2/Act_Detail;->mBitmap:Landroid/graphics/Bitmap;

    .line 233
    :cond_1
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 234
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    .line 176
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 177
    invoke-virtual {p0}, Lcom/asus/vibe2/Act_Detail;->finish()V

    .line 179
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 197
    invoke-static {p0}, Lcom/asus/vibe2/Utils_SrvPlayback;->doUnbindService(Landroid/app/Activity;)V

    .line 199
    :try_start_0
    iget-object v0, p0, Lcom/asus/vibe2/Act_Detail;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/asus/vibe2/Act_Detail;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 201
    :goto_0
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 202
    return-void

    .line 200
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 184
    invoke-static {p0}, Lcom/asus/vibe2/Utils_SrvPlayback;->doBindService(Landroid/app/Activity;)V

    .line 186
    :try_start_0
    iget-object v0, p0, Lcom/asus/vibe2/Act_Detail;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.DOWNLOAD_COMPLETE"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/asus/vibe2/Act_Detail;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 188
    :goto_0
    iget-boolean v0, p0, Lcom/asus/vibe2/Act_Detail;->mTriedBuy:Z

    if-eqz v0, :cond_0

    .line 189
    iget-object v0, p0, Lcom/asus/vibe2/Act_Detail;->mParam:Lcom/asus/vibe/item/VibeParam;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/asus/vibe/item/VibeParam;->detail:Lcom/asus/vibe/item/VibeItem_Detail;

    .line 190
    invoke-direct {p0}, Lcom/asus/vibe2/Act_Detail;->updateContent()V

    .line 192
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 193
    return-void

    .line 187
    :catch_0
    move-exception v0

    goto :goto_0
.end method
