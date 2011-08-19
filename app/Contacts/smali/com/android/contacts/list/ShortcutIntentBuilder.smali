.class public Lcom/android/contacts/list/ShortcutIntentBuilder;
.super Ljava/lang/Object;
.source "ShortcutIntentBuilder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/list/ShortcutIntentBuilder$PhoneNumberLoadingAsyncTask;,
        Lcom/android/contacts/list/ShortcutIntentBuilder$ContactLoadingAsyncTask;,
        Lcom/android/contacts/list/ShortcutIntentBuilder$LoadingAsyncTask;,
        Lcom/android/contacts/list/ShortcutIntentBuilder$OnShortcutIntentCreatedListener;
    }
.end annotation


# static fields
.field private static final CONTACT_COLUMNS:[Ljava/lang/String;

.field private static final PHONE_COLUMNS:[Ljava/lang/String;

.field private static final PHOTO_COLUMNS:[Ljava/lang/String;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mIconDensity:I

.field private mIconSize:I

.field private final mListener:Lcom/android/contacts/list/ShortcutIntentBuilder$OnShortcutIntentCreatedListener;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v2, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 48
    new-array v0, v2, [Ljava/lang/String;

    const-string v1, "display_name"

    aput-object v1, v0, v3

    const-string v1, "photo_id"

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/contacts/list/ShortcutIntentBuilder;->CONTACT_COLUMNS:[Ljava/lang/String;

    .line 56
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "display_name"

    aput-object v1, v0, v3

    const-string v1, "photo_id"

    aput-object v1, v0, v4

    const-string v1, "data1"

    aput-object v1, v0, v2

    const/4 v1, 0x3

    const-string v2, "data2"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/contacts/list/ShortcutIntentBuilder;->PHONE_COLUMNS:[Ljava/lang/String;

    .line 68
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "data15"

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/contacts/list/ShortcutIntentBuilder;->PHOTO_COLUMNS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/contacts/list/ShortcutIntentBuilder$OnShortcutIntentCreatedListener;)V
    .locals 3
    .parameter "context"
    .parameter "listener"

    .prologue
    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    iput-object p1, p0, Lcom/android/contacts/list/ShortcutIntentBuilder;->mContext:Landroid/content/Context;

    .line 98
    iput-object p2, p0, Lcom/android/contacts/list/ShortcutIntentBuilder;->mListener:Lcom/android/contacts/list/ShortcutIntentBuilder$OnShortcutIntentCreatedListener;

    .line 100
    const-string v1, "activity"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 102
    .local v0, am:Landroid/app/ActivityManager;
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a001e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/contacts/list/ShortcutIntentBuilder;->mIconSize:I

    .line 103
    iget v1, p0, Lcom/android/contacts/list/ShortcutIntentBuilder;->mIconSize:I

    if-nez v1, :cond_0

    .line 104
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getLauncherLargeIconSize()I

    move-result v1

    iput v1, p0, Lcom/android/contacts/list/ShortcutIntentBuilder;->mIconSize:I

    .line 106
    :cond_0
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getLauncherLargeIconDensity()I

    move-result v1

    iput v1, p0, Lcom/android/contacts/list/ShortcutIntentBuilder;->mIconDensity:I

    .line 107
    return-void
.end method

.method static synthetic access$000(Lcom/android/contacts/list/ShortcutIntentBuilder;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/contacts/list/ShortcutIntentBuilder;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    sget-object v0, Lcom/android/contacts/list/ShortcutIntentBuilder;->PHOTO_COLUMNS:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    sget-object v0, Lcom/android/contacts/list/ShortcutIntentBuilder;->CONTACT_COLUMNS:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/contacts/list/ShortcutIntentBuilder;Landroid/net/Uri;Ljava/lang/String;[B)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 46
    invoke-direct {p0, p1, p2, p3}, Lcom/android/contacts/list/ShortcutIntentBuilder;->createContactShortcutIntent(Landroid/net/Uri;Ljava/lang/String;[B)V

    return-void
.end method

.method static synthetic access$400()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    sget-object v0, Lcom/android/contacts/list/ShortcutIntentBuilder;->PHONE_COLUMNS:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/contacts/list/ShortcutIntentBuilder;Landroid/net/Uri;Ljava/lang/String;[BLjava/lang/String;ILjava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"
    .parameter "x6"

    .prologue
    .line 46
    invoke-direct/range {p0 .. p6}, Lcom/android/contacts/list/ShortcutIntentBuilder;->createPhoneNumberShortcutIntent(Landroid/net/Uri;Ljava/lang/String;[BLjava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method private createContactShortcutIntent(Landroid/net/Uri;Ljava/lang/String;[B)V
    .locals 9
    .parameter "contactUri"
    .parameter "displayName"
    .parameter "bitmapData"

    .prologue
    const/4 v6, 0x0

    .line 223
    if-eqz p3, :cond_0

    .line 224
    const/4 v5, 0x0

    array-length v7, p3

    invoke-static {p3, v5, v7, v6}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 232
    .local v1, bitmap:Landroid/graphics/Bitmap;
    :goto_0
    new-instance v4, Landroid/content/Intent;

    const-string v5, "com.android.contacts.action.QUICK_CONTACT"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 233
    .local v4, shortcutIntent:Landroid/content/Intent;
    const/high16 v5, 0x1420

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 236
    invoke-virtual {v4, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 237
    const-string v5, "mode"

    const/4 v7, 0x3

    invoke-virtual {v4, v5, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 239
    const-string v7, "exclude_mimes"

    move-object v0, v6

    check-cast v0, [Ljava/lang/String;

    move-object v5, v0

    invoke-virtual {v4, v7, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 241
    const/high16 v5, 0x400

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 243
    invoke-direct {p0, v1}, Lcom/android/contacts/list/ShortcutIntentBuilder;->generateQuickContactIcon(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 245
    .local v2, icon:Landroid/graphics/Bitmap;
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 246
    .local v3, intent:Landroid/content/Intent;
    const-string v5, "android.intent.extra.shortcut.ICON"

    invoke-virtual {v3, v5, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 247
    const-string v5, "android.intent.extra.shortcut.INTENT"

    invoke-virtual {v3, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 248
    const-string v5, "android.intent.extra.shortcut.NAME"

    invoke-virtual {v3, v5, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 250
    iget-object v5, p0, Lcom/android/contacts/list/ShortcutIntentBuilder;->mListener:Lcom/android/contacts/list/ShortcutIntentBuilder$OnShortcutIntentCreatedListener;

    invoke-interface {v5, p1, v3}, Lcom/android/contacts/list/ShortcutIntentBuilder$OnShortcutIntentCreatedListener;->onShortcutIntentCreated(Landroid/net/Uri;Landroid/content/Intent;)V

    .line 251
    return-void

    .line 226
    .end local v1           #bitmap:Landroid/graphics/Bitmap;
    .end local v2           #icon:Landroid/graphics/Bitmap;
    .end local v3           #intent:Landroid/content/Intent;
    .end local v4           #shortcutIntent:Landroid/content/Intent;
    :cond_0
    iget-object v5, p0, Lcom/android/contacts/list/ShortcutIntentBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v7, 0x7f02005b

    iget v8, p0, Lcom/android/contacts/list/ShortcutIntentBuilder;->mIconDensity:I

    invoke-virtual {v5, v7, v8}, Landroid/content/res/Resources;->getDrawableForDensity(II)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    check-cast v5, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    .restart local v1       #bitmap:Landroid/graphics/Bitmap;
    goto :goto_0
.end method

.method private createPhoneNumberShortcutIntent(Landroid/net/Uri;Ljava/lang/String;[BLjava/lang/String;ILjava/lang/String;)V
    .locals 7
    .parameter "uri"
    .parameter "displayName"
    .parameter "bitmapData"
    .parameter "phoneNumber"
    .parameter "phoneType"
    .parameter "shortcutAction"

    .prologue
    const/4 v6, 0x0

    .line 255
    const/4 v0, 0x0

    .line 256
    .local v0, bitmap:Landroid/graphics/Bitmap;
    if-eqz p3, :cond_0

    .line 257
    const/4 v4, 0x0

    array-length v5, p3

    invoke-static {p3, v4, v5, v6}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 261
    :cond_0
    const-string v4, "android.intent.action.CALL"

    invoke-virtual {v4, p6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 263
    const-string v4, "tel"

    invoke-static {v4, p4, v6}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 264
    .local v2, phoneUri:Landroid/net/Uri;
    const v4, 0x7f020002

    invoke-direct {p0, v0, p5, v4}, Lcom/android/contacts/list/ShortcutIntentBuilder;->generatePhoneNumberIcon(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 270
    :goto_0
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3, p6, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 271
    .local v3, shortcutIntent:Landroid/content/Intent;
    const/high16 v4, 0x400

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 273
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 274
    .local v1, intent:Landroid/content/Intent;
    const-string v4, "android.intent.extra.shortcut.ICON"

    invoke-virtual {v1, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 275
    const-string v4, "android.intent.extra.shortcut.INTENT"

    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 276
    const-string v4, "android.intent.extra.shortcut.NAME"

    invoke-virtual {v1, v4, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 278
    iget-object v4, p0, Lcom/android/contacts/list/ShortcutIntentBuilder;->mListener:Lcom/android/contacts/list/ShortcutIntentBuilder$OnShortcutIntentCreatedListener;

    invoke-interface {v4, p1, v1}, Lcom/android/contacts/list/ShortcutIntentBuilder$OnShortcutIntentCreatedListener;->onShortcutIntentCreated(Landroid/net/Uri;Landroid/content/Intent;)V

    .line 279
    return-void

    .line 266
    .end local v1           #intent:Landroid/content/Intent;
    .end local v2           #phoneUri:Landroid/net/Uri;
    .end local v3           #shortcutIntent:Landroid/content/Intent;
    :cond_1
    const-string v4, "smsto"

    invoke-static {v4, p4, v6}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 267
    .restart local v2       #phoneUri:Landroid/net/Uri;
    const v4, 0x7f020003

    invoke-direct {p0, v0, p5, v4}, Lcom/android/contacts/list/ShortcutIntentBuilder;->generatePhoneNumberIcon(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method

.method private generatePhoneNumberIcon(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 21
    .parameter "photo"
    .parameter "phoneType"
    .parameter "actionResId"

    .prologue
    .line 309
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ShortcutIntentBuilder;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    .line 310
    .local v13, r:Landroid/content/res/Resources;
    const/4 v6, 0x1

    .line 311
    .local v6, drawPhoneOverlay:Z
    invoke-virtual {v13}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v17

    move-object/from16 v0, v17

    iget v0, v0, Landroid/util/DisplayMetrics;->scaledDensity:F

    move v14, v0

    .line 313
    .local v14, scaleDensity:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/list/ShortcutIntentBuilder;->mIconDensity:I

    move/from16 v17, v0

    move-object v0, v13

    move/from16 v1, p3

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getDrawableForDensity(II)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    .end local p3
    check-cast p3, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual/range {p3 .. p3}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v11

    .line 317
    .local v11, phoneIcon:Landroid/graphics/Bitmap;
    if-nez p1, :cond_0

    .line 318
    move-object/from16 p1, v11

    .line 319
    const/4 v6, 0x0

    .line 323
    :cond_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/list/ShortcutIntentBuilder;->mIconSize:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/list/ShortcutIntentBuilder;->mIconSize:I

    move/from16 v18, v0

    sget-object v19, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static/range {v17 .. v19}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 324
    .local v8, icon:Landroid/graphics/Bitmap;
    new-instance v5, Landroid/graphics/Canvas;

    invoke-direct {v5, v8}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 327
    .local v5, canvas:Landroid/graphics/Canvas;
    new-instance v12, Landroid/graphics/Paint;

    invoke-direct {v12}, Landroid/graphics/Paint;-><init>()V

    .line 328
    .local v12, photoPaint:Landroid/graphics/Paint;
    const/16 v17, 0x1

    move-object v0, v12

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setDither(Z)V

    .line 329
    const/16 v17, 0x1

    move-object v0, v12

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 330
    new-instance v15, Landroid/graphics/Rect;

    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v19

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v20

    move-object v0, v15

    move/from16 v1, v17

    move/from16 v2, v18

    move/from16 v3, v19

    move/from16 v4, v20

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 331
    .local v15, src:Landroid/graphics/Rect;
    new-instance v7, Landroid/graphics/Rect;

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/list/ShortcutIntentBuilder;->mIconSize:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/list/ShortcutIntentBuilder;->mIconSize:I

    move/from16 v20, v0

    move-object v0, v7

    move/from16 v1, v17

    move/from16 v2, v18

    move/from16 v3, v19

    move/from16 v4, v20

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 332
    .local v7, dst:Landroid/graphics/Rect;
    move-object v0, v5

    move-object/from16 v1, p1

    move-object v2, v15

    move-object v3, v7

    move-object v4, v12

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 335
    const/4 v10, 0x0

    .line 336
    .local v10, overlay:Ljava/lang/String;
    packed-switch p2, :pswitch_data_0

    .line 358
    :goto_0
    :pswitch_0
    if-eqz v10, :cond_1

    .line 359
    new-instance v16, Landroid/graphics/Paint;

    const/16 v17, 0x101

    invoke-direct/range {v16 .. v17}, Landroid/graphics/Paint;-><init>(I)V

    .line 360
    .local v16, textPaint:Landroid/graphics/Paint;
    const/high16 v17, 0x41a0

    mul-float v17, v17, v14

    invoke-virtual/range {v16 .. v17}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 361
    sget-object v17, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual/range {v16 .. v17}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 362
    const/high16 v17, 0x7f08

    move-object v0, v13

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v17

    invoke-virtual/range {v16 .. v17}, Landroid/graphics/Paint;->setColor(I)V

    .line 363
    const/high16 v17, 0x4040

    const/high16 v18, 0x3f80

    const/high16 v19, 0x3f80

    const v20, 0x7f080001

    move-object v0, v13

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v20

    invoke-virtual/range {v16 .. v20}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 364
    const/high16 v17, 0x4000

    mul-float v17, v17, v14

    const/high16 v18, 0x4180

    mul-float v18, v18, v14

    move-object v0, v5

    move-object v1, v10

    move/from16 v2, v17

    move/from16 v3, v18

    move-object/from16 v4, v16

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 368
    .end local v16           #textPaint:Landroid/graphics/Paint;
    :cond_1
    if-eqz v6, :cond_2

    .line 369
    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v19

    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v20

    move-object v0, v15

    move/from16 v1, v17

    move/from16 v2, v18

    move/from16 v3, v19

    move/from16 v4, v20

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 370
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    .line 371
    .local v9, iconWidth:I
    const/high16 v17, 0x41a0

    mul-float v17, v17, v14

    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v17, v0

    sub-int v17, v9, v17

    const/16 v18, -0x1

    const/high16 v19, 0x4198

    mul-float v19, v19, v14

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v19, v0

    move-object v0, v7

    move/from16 v1, v17

    move/from16 v2, v18

    move v3, v9

    move/from16 v4, v19

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 373
    invoke-virtual {v5, v11, v15, v7, v12}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 376
    .end local v9           #iconWidth:I
    :cond_2
    return-object v8

    .line 338
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ShortcutIntentBuilder;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    const v18, 0x7f0c00ff

    invoke-virtual/range {v17 .. v18}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 339
    goto/16 :goto_0

    .line 342
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ShortcutIntentBuilder;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    const v18, 0x7f0c0100

    invoke-virtual/range {v17 .. v18}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 343
    goto/16 :goto_0

    .line 346
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ShortcutIntentBuilder;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    const v18, 0x7f0c0101

    invoke-virtual/range {v17 .. v18}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 347
    goto/16 :goto_0

    .line 350
    :pswitch_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ShortcutIntentBuilder;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    const v18, 0x7f0c0102

    invoke-virtual/range {v17 .. v18}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 351
    goto/16 :goto_0

    .line 354
    :pswitch_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ShortcutIntentBuilder;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    const v18, 0x7f0c0103

    invoke-virtual/range {v17 .. v18}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_0

    .line 336
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private generateQuickContactIcon(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 11
    .parameter "photo"

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 284
    iget v6, p0, Lcom/android/contacts/list/ShortcutIntentBuilder;->mIconSize:I

    iget v7, p0, Lcom/android/contacts/list/ShortcutIntentBuilder;->mIconSize:I

    sget-object v8, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v6, v7, v8}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 285
    .local v2, icon:Landroid/graphics/Bitmap;
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 288
    .local v0, canvas:Landroid/graphics/Canvas;
    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    .line 289
    .local v4, photoPaint:Landroid/graphics/Paint;
    invoke-virtual {v4, v10}, Landroid/graphics/Paint;->setDither(Z)V

    .line 290
    invoke-virtual {v4, v10}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 291
    new-instance v5, Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    invoke-direct {v5, v9, v9, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 292
    .local v5, src:Landroid/graphics/Rect;
    new-instance v1, Landroid/graphics/Rect;

    iget v6, p0, Lcom/android/contacts/list/ShortcutIntentBuilder;->mIconSize:I

    iget v7, p0, Lcom/android/contacts/list/ShortcutIntentBuilder;->mIconSize:I

    invoke-direct {v1, v9, v9, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 293
    .local v1, dst:Landroid/graphics/Rect;
    invoke-virtual {v0, p1, v5, v1, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 295
    iget-object v6, p0, Lcom/android/contacts/list/ShortcutIntentBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x1080436

    iget v8, p0, Lcom/android/contacts/list/ShortcutIntentBuilder;->mIconDensity:I

    invoke-virtual {v6, v7, v8}, Landroid/content/res/Resources;->getDrawableForDensity(II)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 298
    .local v3, overlay:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v3, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 299
    invoke-virtual {v3, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 301
    return-object v2
.end method


# virtual methods
.method public createContactShortcutIntent(Landroid/net/Uri;)V
    .locals 2
    .parameter "contactUri"

    .prologue
    .line 110
    new-instance v0, Lcom/android/contacts/list/ShortcutIntentBuilder$ContactLoadingAsyncTask;

    invoke-direct {v0, p0, p1}, Lcom/android/contacts/list/ShortcutIntentBuilder$ContactLoadingAsyncTask;-><init>(Lcom/android/contacts/list/ShortcutIntentBuilder;Landroid/net/Uri;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ShortcutIntentBuilder$ContactLoadingAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 111
    return-void
.end method

.method public createPhoneNumberShortcutIntent(Landroid/net/Uri;Ljava/lang/String;)V
    .locals 2
    .parameter "dataUri"
    .parameter "shortcutAction"

    .prologue
    .line 114
    new-instance v0, Lcom/android/contacts/list/ShortcutIntentBuilder$PhoneNumberLoadingAsyncTask;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/contacts/list/ShortcutIntentBuilder$PhoneNumberLoadingAsyncTask;-><init>(Lcom/android/contacts/list/ShortcutIntentBuilder;Landroid/net/Uri;Ljava/lang/String;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ShortcutIntentBuilder$PhoneNumberLoadingAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 115
    return-void
.end method
