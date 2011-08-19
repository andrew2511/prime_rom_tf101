.class public Lcom/nuance/xt9/input/KeyboardEx$Row;
.super Ljava/lang/Object;
.source "KeyboardEx.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/xt9/input/KeyboardEx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Row"
.end annotation


# instance fields
.field public defaultHeight:I

.field public defaultHorizontalGap:I

.field public defaultWidth:I

.field public mKeyBackground:Landroid/graphics/drawable/Drawable;

.field public mKeyTextColor:I

.field public mKeyTextSize:I

.field public mLabelTextColor:I

.field public mLabelTextSize:I

.field public mShadowColor:I

.field public mShadowRadius:F

.field public mShadowX:I

.field public mShadowY:I

.field public mode:I

.field private final parent:Lcom/nuance/xt9/input/KeyboardEx;

.field public rowEdgeFlags:I

.field public verticalGap:I


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;Lcom/nuance/xt9/input/KeyboardEx;Landroid/content/res/XmlResourceParser;)V
    .locals 8
    .parameter "res"
    .parameter "parent"
    .parameter "parser"

    .prologue
    const/4 v7, 0x6

    const/4 v6, 0x5

    const/4 v5, 0x4

    const/4 v4, 0x3

    const/4 v3, 0x0

    .line 262
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 263
    iput-object p2, p0, Lcom/nuance/xt9/input/KeyboardEx$Row;->parent:Lcom/nuance/xt9/input/KeyboardEx;

    .line 264
    invoke-static {p3}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v1

    sget-object v2, Lcom/nuance/xt9/input/R$styleable;->KeyboardEx:[I

    invoke-virtual {p1, v1, v2}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 267
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-static {p2}, Lcom/nuance/xt9/input/KeyboardEx;->access$000(Lcom/nuance/xt9/input/KeyboardEx;)I

    move-result v1

    invoke-static {p2}, Lcom/nuance/xt9/input/KeyboardEx;->access$100(Lcom/nuance/xt9/input/KeyboardEx;)I

    move-result v2

    invoke-static {v0, v4, v1, v2}, Lcom/nuance/xt9/input/KeyboardEx;->getDimensionOrFraction(Landroid/content/res/TypedArray;III)I

    move-result v1

    iput v1, p0, Lcom/nuance/xt9/input/KeyboardEx$Row;->defaultWidth:I

    .line 270
    invoke-static {p2}, Lcom/nuance/xt9/input/KeyboardEx;->access$200(Lcom/nuance/xt9/input/KeyboardEx;)I

    move-result v1

    invoke-static {p2}, Lcom/nuance/xt9/input/KeyboardEx;->access$300(Lcom/nuance/xt9/input/KeyboardEx;)I

    move-result v2

    invoke-static {v0, v5, v1, v2}, Lcom/nuance/xt9/input/KeyboardEx;->getDimensionOrFraction(Landroid/content/res/TypedArray;III)I

    move-result v1

    iput v1, p0, Lcom/nuance/xt9/input/KeyboardEx$Row;->defaultHeight:I

    .line 273
    invoke-static {p2}, Lcom/nuance/xt9/input/KeyboardEx;->access$000(Lcom/nuance/xt9/input/KeyboardEx;)I

    move-result v1

    invoke-static {p2}, Lcom/nuance/xt9/input/KeyboardEx;->access$400(Lcom/nuance/xt9/input/KeyboardEx;)I

    move-result v2

    invoke-static {v0, v6, v1, v2}, Lcom/nuance/xt9/input/KeyboardEx;->getDimensionOrFraction(Landroid/content/res/TypedArray;III)I

    move-result v1

    iput v1, p0, Lcom/nuance/xt9/input/KeyboardEx$Row;->defaultHorizontalGap:I

    .line 276
    invoke-static {p2}, Lcom/nuance/xt9/input/KeyboardEx;->access$200(Lcom/nuance/xt9/input/KeyboardEx;)I

    move-result v1

    invoke-static {p2}, Lcom/nuance/xt9/input/KeyboardEx;->access$500(Lcom/nuance/xt9/input/KeyboardEx;)I

    move-result v2

    invoke-static {v0, v7, v1, v2}, Lcom/nuance/xt9/input/KeyboardEx;->getDimensionOrFraction(Landroid/content/res/TypedArray;III)I

    move-result v1

    iput v1, p0, Lcom/nuance/xt9/input/KeyboardEx$Row;->verticalGap:I

    .line 279
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 281
    invoke-static {p3}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v1

    sget-object v2, Lcom/nuance/xt9/input/R$styleable;->KeyboardEx_Row:[I

    invoke-virtual {p1, v1, v2}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 283
    const/4 v1, 0x7

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/nuance/xt9/input/KeyboardEx$Row;->rowEdgeFlags:I

    .line 284
    const/16 v1, 0x8

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/nuance/xt9/input/KeyboardEx$Row;->mode:I

    .line 287
    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/nuance/xt9/input/KeyboardEx$Row;->mKeyBackground:Landroid/graphics/drawable/Drawable;

    .line 288
    iget-object v1, p0, Lcom/nuance/xt9/input/KeyboardEx$Row;->mKeyBackground:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_0

    .line 289
    iget-object v1, p2, Lcom/nuance/xt9/input/KeyboardEx;->mKeyBackground:Landroid/graphics/drawable/Drawable;

    iput-object v1, p0, Lcom/nuance/xt9/input/KeyboardEx$Row;->mKeyBackground:Landroid/graphics/drawable/Drawable;

    .line 291
    :cond_0
    const/4 v1, 0x1

    invoke-static {p2}, Lcom/nuance/xt9/input/KeyboardEx;->access$600(Lcom/nuance/xt9/input/KeyboardEx;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/nuance/xt9/input/KeyboardEx$Row;->mKeyTextSize:I

    .line 292
    const/4 v1, 0x2

    invoke-static {p2}, Lcom/nuance/xt9/input/KeyboardEx;->access$700(Lcom/nuance/xt9/input/KeyboardEx;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/nuance/xt9/input/KeyboardEx$Row;->mKeyTextColor:I

    .line 295
    iget v1, p0, Lcom/nuance/xt9/input/KeyboardEx$Row;->mKeyTextSize:I

    invoke-virtual {v0, v4, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/nuance/xt9/input/KeyboardEx$Row;->mLabelTextSize:I

    .line 296
    iget v1, p0, Lcom/nuance/xt9/input/KeyboardEx$Row;->mKeyTextColor:I

    invoke-virtual {v0, v5, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/nuance/xt9/input/KeyboardEx$Row;->mLabelTextColor:I

    .line 297
    invoke-virtual {v0, v6, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/nuance/xt9/input/KeyboardEx$Row;->mShadowColor:I

    .line 298
    const/4 v1, 0x0

    invoke-virtual {v0, v7, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p0, Lcom/nuance/xt9/input/KeyboardEx$Row;->mShadowRadius:F

    .line 299
    const/16 v1, 0x9

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    iput v1, p0, Lcom/nuance/xt9/input/KeyboardEx$Row;->mShadowX:I

    .line 300
    const/16 v1, 0xa

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    iput v1, p0, Lcom/nuance/xt9/input/KeyboardEx$Row;->mShadowY:I

    .line 303
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 305
    return-void
.end method

.method public constructor <init>(Lcom/nuance/xt9/input/KeyboardEx;)V
    .locals 0
    .parameter "parent"

    .prologue
    .line 258
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 259
    iput-object p1, p0, Lcom/nuance/xt9/input/KeyboardEx$Row;->parent:Lcom/nuance/xt9/input/KeyboardEx;

    .line 260
    return-void
.end method

.method static synthetic access$800(Lcom/nuance/xt9/input/KeyboardEx$Row;)Lcom/nuance/xt9/input/KeyboardEx;
    .locals 1
    .parameter "x0"

    .prologue
    .line 225
    iget-object v0, p0, Lcom/nuance/xt9/input/KeyboardEx$Row;->parent:Lcom/nuance/xt9/input/KeyboardEx;

    return-object v0
.end method
