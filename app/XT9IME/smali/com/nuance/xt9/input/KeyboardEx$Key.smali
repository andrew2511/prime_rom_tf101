.class public Lcom/nuance/xt9/input/KeyboardEx$Key;
.super Ljava/lang/Object;
.source "KeyboardEx.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/xt9/input/KeyboardEx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Key"
.end annotation


# static fields
.field private static final KEY_STATE_NORMAL:[I

.field private static final KEY_STATE_NORMAL_OFF:[I

.field private static final KEY_STATE_NORMAL_ON:[I

.field private static final KEY_STATE_PRESSED:[I

.field private static final KEY_STATE_PRESSED_OFF:[I

.field private static final KEY_STATE_PRESSED_ON:[I


# instance fields
.field public codes:[I

.field public edgeFlags:I

.field public gap:I

.field public height:I

.field public icon:Landroid/graphics/drawable/Drawable;

.field public iconPreview:Landroid/graphics/drawable/Drawable;

.field private final keyboard:Lcom/nuance/xt9/input/KeyboardEx;

.field public label:Ljava/lang/CharSequence;

.field public mKeyBackground:Landroid/graphics/drawable/Drawable;

.field public mKeyTextColor:I

.field public mKeyTextSize:I

.field public mLabelTextColor:I

.field public mLabelTextSize:I

.field public mShadowColor:I

.field public mShadowRadius:F

.field public mShadowX:I

.field public mShadowY:I

.field public modifier:Z

.field public on:Z

.field public popupCharacters:Ljava/lang/CharSequence;

.field public popupLabel:Ljava/lang/CharSequence;

.field public popupResId:I

.field public pressed:Z

.field public repeatable:Z

.field public sticky:Z

.field public text:Ljava/lang/CharSequence;

.field public width:I

.field public x:I

.field public y:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 398
    new-array v0, v4, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/nuance/xt9/input/KeyboardEx$Key;->KEY_STATE_NORMAL_ON:[I

    .line 403
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/nuance/xt9/input/KeyboardEx$Key;->KEY_STATE_PRESSED_ON:[I

    .line 409
    new-array v0, v3, [I

    const v1, 0x101009f

    aput v1, v0, v2

    sput-object v0, Lcom/nuance/xt9/input/KeyboardEx$Key;->KEY_STATE_NORMAL_OFF:[I

    .line 413
    new-array v0, v4, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/nuance/xt9/input/KeyboardEx$Key;->KEY_STATE_PRESSED_OFF:[I

    .line 418
    new-array v0, v2, [I

    sput-object v0, Lcom/nuance/xt9/input/KeyboardEx$Key;->KEY_STATE_NORMAL:[I

    .line 421
    new-array v0, v3, [I

    const v1, 0x10100a7

    aput v1, v0, v2

    sput-object v0, Lcom/nuance/xt9/input/KeyboardEx$Key;->KEY_STATE_PRESSED:[I

    return-void

    .line 398
    :array_0
    .array-data 0x4
        0x9ft 0x0t 0x1t 0x1t
        0xa0t 0x0t 0x1t 0x1t
    .end array-data

    .line 403
    :array_1
    .array-data 0x4
        0xa7t 0x0t 0x1t 0x1t
        0x9ft 0x0t 0x1t 0x1t
        0xa0t 0x0t 0x1t 0x1t
    .end array-data

    .line 413
    :array_2
    .array-data 0x4
        0xa7t 0x0t 0x1t 0x1t
        0x9ft 0x0t 0x1t 0x1t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/res/Resources;Lcom/nuance/xt9/input/KeyboardEx$Row;IILandroid/content/res/XmlResourceParser;)V
    .locals 10
    .parameter "res"
    .parameter "parent"
    .parameter "x"
    .parameter "y"
    .parameter "parser"

    .prologue
    const/4 v9, 0x5

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 440
    invoke-direct {p0, p2}, Lcom/nuance/xt9/input/KeyboardEx$Key;-><init>(Lcom/nuance/xt9/input/KeyboardEx$Row;)V

    .line 442
    iput p3, p0, Lcom/nuance/xt9/input/KeyboardEx$Key;->x:I

    .line 443
    iput p4, p0, Lcom/nuance/xt9/input/KeyboardEx$Key;->y:I

    .line 445
    invoke-static {p5}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v2

    sget-object v3, Lcom/nuance/xt9/input/R$styleable;->KeyboardEx:[I

    invoke-virtual {p1, v2, v3}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 448
    .local v0, a:Landroid/content/res/TypedArray;
    iget-object v2, p0, Lcom/nuance/xt9/input/KeyboardEx$Key;->keyboard:Lcom/nuance/xt9/input/KeyboardEx;

    invoke-static {v2}, Lcom/nuance/xt9/input/KeyboardEx;->access$000(Lcom/nuance/xt9/input/KeyboardEx;)I

    move-result v2

    iget v3, p2, Lcom/nuance/xt9/input/KeyboardEx$Row;->defaultWidth:I

    invoke-static {v0, v7, v2, v3}, Lcom/nuance/xt9/input/KeyboardEx;->getDimensionOrFraction(Landroid/content/res/TypedArray;III)I

    move-result v2

    iput v2, p0, Lcom/nuance/xt9/input/KeyboardEx$Key;->width:I

    .line 451
    iget-object v2, p0, Lcom/nuance/xt9/input/KeyboardEx$Key;->keyboard:Lcom/nuance/xt9/input/KeyboardEx;

    invoke-static {v2}, Lcom/nuance/xt9/input/KeyboardEx;->access$200(Lcom/nuance/xt9/input/KeyboardEx;)I

    move-result v2

    iget v3, p2, Lcom/nuance/xt9/input/KeyboardEx$Row;->defaultHeight:I

    invoke-static {v0, v8, v2, v3}, Lcom/nuance/xt9/input/KeyboardEx;->getDimensionOrFraction(Landroid/content/res/TypedArray;III)I

    move-result v2

    iput v2, p0, Lcom/nuance/xt9/input/KeyboardEx$Key;->height:I

    .line 454
    iget-object v2, p0, Lcom/nuance/xt9/input/KeyboardEx$Key;->keyboard:Lcom/nuance/xt9/input/KeyboardEx;

    invoke-static {v2}, Lcom/nuance/xt9/input/KeyboardEx;->access$000(Lcom/nuance/xt9/input/KeyboardEx;)I

    move-result v2

    iget v3, p2, Lcom/nuance/xt9/input/KeyboardEx$Row;->defaultHorizontalGap:I

    invoke-static {v0, v9, v2, v3}, Lcom/nuance/xt9/input/KeyboardEx;->getDimensionOrFraction(Landroid/content/res/TypedArray;III)I

    move-result v2

    iput v2, p0, Lcom/nuance/xt9/input/KeyboardEx$Key;->gap:I

    .line 457
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 459
    invoke-static {p5}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v2

    sget-object v3, Lcom/nuance/xt9/input/R$styleable;->KeyboardEx_Key:[I

    invoke-virtual {p1, v2, v3}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 461
    iget v2, p0, Lcom/nuance/xt9/input/KeyboardEx$Key;->x:I

    iget v3, p0, Lcom/nuance/xt9/input/KeyboardEx$Key;->gap:I

    add-int/2addr v2, v3

    iput v2, p0, Lcom/nuance/xt9/input/KeyboardEx$Key;->x:I

    .line 462
    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    .line 463
    .local v1, codesValue:Landroid/util/TypedValue;
    const/16 v2, 0xa

    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 465
    iget v2, v1, Landroid/util/TypedValue;->type:I

    const/16 v3, 0x10

    if-eq v2, v3, :cond_0

    iget v2, v1, Landroid/util/TypedValue;->type:I

    const/16 v3, 0x11

    if-ne v2, v3, :cond_6

    .line 467
    :cond_0
    new-array v2, v6, [I

    iget v3, v1, Landroid/util/TypedValue;->data:I

    aput v3, v2, v5

    iput-object v2, p0, Lcom/nuance/xt9/input/KeyboardEx$Key;->codes:[I

    .line 472
    :cond_1
    :goto_0
    const/16 v2, 0x11

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/nuance/xt9/input/KeyboardEx$Key;->iconPreview:Landroid/graphics/drawable/Drawable;

    .line 473
    iget-object v2, p0, Lcom/nuance/xt9/input/KeyboardEx$Key;->iconPreview:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_2

    .line 474
    iget-object v2, p0, Lcom/nuance/xt9/input/KeyboardEx$Key;->iconPreview:Landroid/graphics/drawable/Drawable;

    iget-object v3, p0, Lcom/nuance/xt9/input/KeyboardEx$Key;->iconPreview:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    iget-object v4, p0, Lcom/nuance/xt9/input/KeyboardEx$Key;->iconPreview:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    invoke-virtual {v2, v5, v5, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 477
    :cond_2
    const/16 v2, 0xc

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, p0, Lcom/nuance/xt9/input/KeyboardEx$Key;->popupCharacters:Ljava/lang/CharSequence;

    .line 479
    const/16 v2, 0xb

    invoke-virtual {v0, v2, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, p0, Lcom/nuance/xt9/input/KeyboardEx$Key;->popupResId:I

    .line 481
    const/16 v2, 0x10

    invoke-virtual {v0, v2, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p0, Lcom/nuance/xt9/input/KeyboardEx$Key;->repeatable:Z

    .line 483
    const/16 v2, 0xe

    invoke-virtual {v0, v2, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p0, Lcom/nuance/xt9/input/KeyboardEx$Key;->modifier:Z

    .line 485
    const/16 v2, 0xf

    invoke-virtual {v0, v2, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p0, Lcom/nuance/xt9/input/KeyboardEx$Key;->sticky:Z

    .line 487
    const/16 v2, 0xd

    invoke-virtual {v0, v2, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, p0, Lcom/nuance/xt9/input/KeyboardEx$Key;->edgeFlags:I

    .line 488
    iget v2, p0, Lcom/nuance/xt9/input/KeyboardEx$Key;->edgeFlags:I

    iget v3, p2, Lcom/nuance/xt9/input/KeyboardEx$Row;->rowEdgeFlags:I

    or-int/2addr v2, v3

    iput v2, p0, Lcom/nuance/xt9/input/KeyboardEx$Key;->edgeFlags:I

    .line 490
    const/16 v2, 0x14

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/nuance/xt9/input/KeyboardEx$Key;->icon:Landroid/graphics/drawable/Drawable;

    .line 492
    iget-object v2, p0, Lcom/nuance/xt9/input/KeyboardEx$Key;->icon:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_3

    .line 493
    iget-object v2, p0, Lcom/nuance/xt9/input/KeyboardEx$Key;->icon:Landroid/graphics/drawable/Drawable;

    iget-object v3, p0, Lcom/nuance/xt9/input/KeyboardEx$Key;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    iget-object v4, p0, Lcom/nuance/xt9/input/KeyboardEx$Key;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    invoke-virtual {v2, v5, v5, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 495
    :cond_3
    const/16 v2, 0x13

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, p0, Lcom/nuance/xt9/input/KeyboardEx$Key;->label:Ljava/lang/CharSequence;

    .line 496
    const/16 v2, 0x12

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, p0, Lcom/nuance/xt9/input/KeyboardEx$Key;->text:Ljava/lang/CharSequence;

    .line 498
    const/16 v2, 0x15

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, p0, Lcom/nuance/xt9/input/KeyboardEx$Key;->popupLabel:Ljava/lang/CharSequence;

    .line 500
    iget-object v2, p0, Lcom/nuance/xt9/input/KeyboardEx$Key;->codes:[I

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/nuance/xt9/input/KeyboardEx$Key;->label:Ljava/lang/CharSequence;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 501
    new-array v2, v6, [I

    iget-object v3, p0, Lcom/nuance/xt9/input/KeyboardEx$Key;->label:Ljava/lang/CharSequence;

    invoke-interface {v3, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    aput v3, v2, v5

    iput-object v2, p0, Lcom/nuance/xt9/input/KeyboardEx$Key;->codes:[I

    .line 504
    :cond_4
    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/nuance/xt9/input/KeyboardEx$Key;->mKeyBackground:Landroid/graphics/drawable/Drawable;

    .line 505
    iget-object v2, p0, Lcom/nuance/xt9/input/KeyboardEx$Key;->mKeyBackground:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_5

    .line 506
    iget-object v2, p2, Lcom/nuance/xt9/input/KeyboardEx$Row;->mKeyBackground:Landroid/graphics/drawable/Drawable;

    iput-object v2, p0, Lcom/nuance/xt9/input/KeyboardEx$Key;->mKeyBackground:Landroid/graphics/drawable/Drawable;

    .line 508
    :cond_5
    iget v2, p2, Lcom/nuance/xt9/input/KeyboardEx$Row;->mKeyTextSize:I

    invoke-virtual {v0, v6, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lcom/nuance/xt9/input/KeyboardEx$Key;->mKeyTextSize:I

    .line 509
    const/4 v2, 0x2

    iget v3, p2, Lcom/nuance/xt9/input/KeyboardEx$Row;->mKeyTextColor:I

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    iput v2, p0, Lcom/nuance/xt9/input/KeyboardEx$Key;->mKeyTextColor:I

    .line 512
    iget v2, p0, Lcom/nuance/xt9/input/KeyboardEx$Key;->mKeyTextSize:I

    invoke-virtual {v0, v7, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lcom/nuance/xt9/input/KeyboardEx$Key;->mLabelTextSize:I

    .line 513
    iget v2, p0, Lcom/nuance/xt9/input/KeyboardEx$Key;->mKeyTextColor:I

    invoke-virtual {v0, v8, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    iput v2, p0, Lcom/nuance/xt9/input/KeyboardEx$Key;->mLabelTextColor:I

    .line 514
    iget v2, p2, Lcom/nuance/xt9/input/KeyboardEx$Row;->mShadowColor:I

    invoke-virtual {v0, v9, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    iput v2, p0, Lcom/nuance/xt9/input/KeyboardEx$Key;->mShadowColor:I

    .line 515
    const/4 v2, 0x6

    iget v3, p2, Lcom/nuance/xt9/input/KeyboardEx$Row;->mShadowRadius:F

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    iput v2, p0, Lcom/nuance/xt9/input/KeyboardEx$Key;->mShadowRadius:F

    .line 516
    const/16 v2, 0x8

    iget v3, p2, Lcom/nuance/xt9/input/KeyboardEx$Row;->mShadowX:I

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v2

    iput v2, p0, Lcom/nuance/xt9/input/KeyboardEx$Key;->mShadowX:I

    .line 517
    const/16 v2, 0x9

    iget v3, p2, Lcom/nuance/xt9/input/KeyboardEx$Row;->mShadowY:I

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v2

    iput v2, p0, Lcom/nuance/xt9/input/KeyboardEx$Key;->mShadowY:I

    .line 520
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 521
    return-void

    .line 468
    :cond_6
    iget v2, v1, Landroid/util/TypedValue;->type:I

    if-ne v2, v7, :cond_1

    .line 469
    iget-object v2, v1, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/nuance/xt9/input/KeyboardEx$Key;->parseCSV(Ljava/lang/String;)[I

    move-result-object v2

    iput-object v2, p0, Lcom/nuance/xt9/input/KeyboardEx$Key;->codes:[I

    goto/16 :goto_0
.end method

.method public constructor <init>(Lcom/nuance/xt9/input/KeyboardEx$Row;)V
    .locals 1
    .parameter "parent"

    .prologue
    .line 426
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 427
    invoke-static {p1}, Lcom/nuance/xt9/input/KeyboardEx$Row;->access$800(Lcom/nuance/xt9/input/KeyboardEx$Row;)Lcom/nuance/xt9/input/KeyboardEx;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/xt9/input/KeyboardEx$Key;->keyboard:Lcom/nuance/xt9/input/KeyboardEx;

    .line 428
    return-void
.end method

.method private isNumber(Ljava/lang/String;)Z
    .locals 3
    .parameter "string"

    .prologue
    .line 546
    const/4 v0, 0x0

    .line 547
    .local v0, index:I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 548
    .local v1, len:I
    :cond_0
    if-ge v0, v1, :cond_1

    .line 549
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isDigit(C)Z

    move-result v2

    if-nez v2, :cond_0

    .line 550
    const/4 v2, 0x0

    .line 553
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x1

    goto :goto_0
.end method


# virtual methods
.method public getCurrentDrawableState()[I
    .locals 2

    .prologue
    .line 615
    sget-object v0, Lcom/nuance/xt9/input/KeyboardEx$Key;->KEY_STATE_NORMAL:[I

    .line 617
    .local v0, states:[I
    iget-boolean v1, p0, Lcom/nuance/xt9/input/KeyboardEx$Key;->on:Z

    if-eqz v1, :cond_2

    .line 618
    iget-boolean v1, p0, Lcom/nuance/xt9/input/KeyboardEx$Key;->pressed:Z

    if-eqz v1, :cond_1

    .line 619
    sget-object v0, Lcom/nuance/xt9/input/KeyboardEx$Key;->KEY_STATE_PRESSED_ON:[I

    .line 636
    :cond_0
    :goto_0
    return-object v0

    .line 621
    :cond_1
    sget-object v0, Lcom/nuance/xt9/input/KeyboardEx$Key;->KEY_STATE_NORMAL_ON:[I

    goto :goto_0

    .line 624
    :cond_2
    iget-boolean v1, p0, Lcom/nuance/xt9/input/KeyboardEx$Key;->sticky:Z

    if-eqz v1, :cond_4

    .line 625
    iget-boolean v1, p0, Lcom/nuance/xt9/input/KeyboardEx$Key;->pressed:Z

    if-eqz v1, :cond_3

    .line 626
    sget-object v0, Lcom/nuance/xt9/input/KeyboardEx$Key;->KEY_STATE_PRESSED_OFF:[I

    goto :goto_0

    .line 628
    :cond_3
    sget-object v0, Lcom/nuance/xt9/input/KeyboardEx$Key;->KEY_STATE_NORMAL_OFF:[I

    goto :goto_0

    .line 631
    :cond_4
    iget-boolean v1, p0, Lcom/nuance/xt9/input/KeyboardEx$Key;->pressed:Z

    if-eqz v1, :cond_0

    .line 632
    sget-object v0, Lcom/nuance/xt9/input/KeyboardEx$Key;->KEY_STATE_PRESSED:[I

    goto :goto_0
.end method

.method public isInside(II)Z
    .locals 2
    .parameter "x"
    .parameter "y"

    .prologue
    .line 589
    iget v0, p0, Lcom/nuance/xt9/input/KeyboardEx$Key;->x:I

    if-lt p1, v0, :cond_0

    iget v0, p0, Lcom/nuance/xt9/input/KeyboardEx$Key;->x:I

    iget v1, p0, Lcom/nuance/xt9/input/KeyboardEx$Key;->width:I

    add-int/2addr v0, v1

    if-ge p1, v0, :cond_0

    iget v0, p0, Lcom/nuance/xt9/input/KeyboardEx$Key;->y:I

    if-lt p2, v0, :cond_0

    iget v0, p0, Lcom/nuance/xt9/input/KeyboardEx$Key;->y:I

    iget v1, p0, Lcom/nuance/xt9/input/KeyboardEx$Key;->height:I

    add-int/2addr v0, v1

    if-ge p2, v0, :cond_0

    .line 590
    const/4 v0, 0x1

    .line 593
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onPressed()V
    .locals 1

    .prologue
    .line 529
    iget-boolean v0, p0, Lcom/nuance/xt9/input/KeyboardEx$Key;->pressed:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/nuance/xt9/input/KeyboardEx$Key;->pressed:Z

    .line 530
    return-void

    .line 529
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onReleased(Z)V
    .locals 3
    .parameter "inside"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 539
    iget-boolean v0, p0, Lcom/nuance/xt9/input/KeyboardEx$Key;->pressed:Z

    if-nez v0, :cond_1

    move v0, v2

    :goto_0
    iput-boolean v0, p0, Lcom/nuance/xt9/input/KeyboardEx$Key;->pressed:Z

    .line 540
    iget-boolean v0, p0, Lcom/nuance/xt9/input/KeyboardEx$Key;->sticky:Z

    if-eqz v0, :cond_0

    .line 541
    iget-boolean v0, p0, Lcom/nuance/xt9/input/KeyboardEx$Key;->on:Z

    if-nez v0, :cond_2

    move v0, v2

    :goto_1
    iput-boolean v0, p0, Lcom/nuance/xt9/input/KeyboardEx$Key;->on:Z

    .line 543
    :cond_0
    return-void

    :cond_1
    move v0, v1

    .line 539
    goto :goto_0

    :cond_2
    move v0, v1

    .line 541
    goto :goto_1
.end method

.method parseCSV(Ljava/lang/String;)[I
    .locals 10
    .parameter "value"

    .prologue
    .line 557
    const/4 v0, 0x0

    .line 558
    .local v0, count:I
    const/4 v2, 0x0

    .line 559
    .local v2, lastIndex:I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_0

    .line 560
    add-int/lit8 v0, v0, 0x1

    .line 561
    :goto_0
    const-string v7, ","

    add-int/lit8 v8, v2, 0x1

    invoke-virtual {p1, v7, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    if-lez v2, :cond_0

    .line 562
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 565
    :cond_0
    new-array v6, v0, [I

    .line 566
    .local v6, values:[I
    const/4 v0, 0x0

    .line 567
    new-instance v4, Ljava/util/StringTokenizer;

    const-string v7, ","

    invoke-direct {v4, p1, v7}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 568
    .local v4, st:Ljava/util/StringTokenizer;
    :goto_1
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 570
    :try_start_0
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 572
    .local v5, token:Ljava/lang/String;
    add-int/lit8 v1, v0, 0x1

    .end local v0           #count:I
    .local v1, count:I
    :try_start_1
    invoke-static {v5}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    aput v7, v6, v0
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move v0, v1

    .line 575
    .end local v1           #count:I
    .restart local v0       #count:I
    goto :goto_1

    .line 573
    .end local v5           #token:Ljava/lang/String;
    :catch_0
    move-exception v7

    move-object v3, v7

    .line 574
    .local v3, nfe:Ljava/lang/NumberFormatException;
    :goto_2
    const-string v7, "KeyboardEx"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Error parsing keycodes "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 577
    .end local v3           #nfe:Ljava/lang/NumberFormatException;
    :cond_1
    return-object v6

    .line 573
    .end local v0           #count:I
    .restart local v1       #count:I
    .restart local v5       #token:Ljava/lang/String;
    :catch_1
    move-exception v7

    move-object v3, v7

    move v0, v1

    .end local v1           #count:I
    .restart local v0       #count:I
    goto :goto_2
.end method

.method public squaredDistanceFrom(II)I
    .locals 4
    .parameter "x"
    .parameter "y"

    .prologue
    .line 604
    iget v2, p0, Lcom/nuance/xt9/input/KeyboardEx$Key;->x:I

    iget v3, p0, Lcom/nuance/xt9/input/KeyboardEx$Key;->width:I

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    sub-int v0, v2, p1

    .line 605
    .local v0, xDist:I
    iget v2, p0, Lcom/nuance/xt9/input/KeyboardEx$Key;->y:I

    iget v3, p0, Lcom/nuance/xt9/input/KeyboardEx$Key;->height:I

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    sub-int v1, v2, p2

    .line 606
    .local v1, yDist:I
    mul-int v2, v0, v0

    mul-int v3, v1, v1

    add-int/2addr v2, v3

    return v2
.end method
