.class public Lcom/nuance/xt9/input/KeyboardEx$WritingPad;
.super Ljava/lang/Object;
.source "KeyboardEx.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/xt9/input/KeyboardEx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WritingPad"
.end annotation


# instance fields
.field public background:Landroid/graphics/drawable/Drawable;

.field public edgeFlags:I

.field public gap:I

.field public guideLineColor:I

.field public height:I

.field public keyboard:Lcom/nuance/xt9/input/KeyboardEx;

.field public penColor:I

.field public width:I

.field public x:I

.field public y:I


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;Lcom/nuance/xt9/input/KeyboardEx$Row;IILandroid/content/res/XmlResourceParser;)V
    .locals 6
    .parameter "res"
    .parameter "parent"
    .parameter "x"
    .parameter "y"
    .parameter "parser"

    .prologue
    const/4 v5, 0x0

    const v4, -0xffff01

    .line 657
    invoke-direct {p0, p2}, Lcom/nuance/xt9/input/KeyboardEx$WritingPad;-><init>(Lcom/nuance/xt9/input/KeyboardEx$Row;)V

    .line 659
    iput p3, p0, Lcom/nuance/xt9/input/KeyboardEx$WritingPad;->x:I

    .line 660
    iput p4, p0, Lcom/nuance/xt9/input/KeyboardEx$WritingPad;->y:I

    .line 662
    invoke-static {p5}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v1

    sget-object v2, Lcom/nuance/xt9/input/R$styleable;->KeyboardEx_WritingPad:[I

    invoke-virtual {p1, v1, v2}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 665
    .local v0, a:Landroid/content/res/TypedArray;
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/nuance/xt9/input/KeyboardEx$WritingPad;->keyboard:Lcom/nuance/xt9/input/KeyboardEx;

    invoke-static {v2}, Lcom/nuance/xt9/input/KeyboardEx;->access$000(Lcom/nuance/xt9/input/KeyboardEx;)I

    move-result v2

    iget v3, p2, Lcom/nuance/xt9/input/KeyboardEx$Row;->defaultWidth:I

    invoke-static {v0, v1, v2, v3}, Lcom/nuance/xt9/input/KeyboardEx;->getDimensionOrFraction(Landroid/content/res/TypedArray;III)I

    move-result v1

    iput v1, p0, Lcom/nuance/xt9/input/KeyboardEx$WritingPad;->width:I

    .line 669
    const/4 v1, 0x3

    const/16 v2, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/nuance/xt9/input/KeyboardEx$WritingPad;->height:I

    .line 671
    const/4 v1, 0x5

    iget-object v2, p0, Lcom/nuance/xt9/input/KeyboardEx$WritingPad;->keyboard:Lcom/nuance/xt9/input/KeyboardEx;

    invoke-static {v2}, Lcom/nuance/xt9/input/KeyboardEx;->access$000(Lcom/nuance/xt9/input/KeyboardEx;)I

    move-result v2

    iget v3, p2, Lcom/nuance/xt9/input/KeyboardEx$Row;->defaultHorizontalGap:I

    invoke-static {v0, v1, v2, v3}, Lcom/nuance/xt9/input/KeyboardEx;->getDimensionOrFraction(Landroid/content/res/TypedArray;III)I

    move-result v1

    iput v1, p0, Lcom/nuance/xt9/input/KeyboardEx$WritingPad;->gap:I

    .line 675
    iget v1, p0, Lcom/nuance/xt9/input/KeyboardEx$WritingPad;->x:I

    iget v2, p0, Lcom/nuance/xt9/input/KeyboardEx$WritingPad;->gap:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/nuance/xt9/input/KeyboardEx$WritingPad;->x:I

    .line 677
    const/16 v1, 0xd

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/nuance/xt9/input/KeyboardEx$WritingPad;->edgeFlags:I

    .line 678
    iget v1, p0, Lcom/nuance/xt9/input/KeyboardEx$WritingPad;->edgeFlags:I

    iget v2, p2, Lcom/nuance/xt9/input/KeyboardEx$Row;->rowEdgeFlags:I

    or-int/2addr v1, v2

    iput v1, p0, Lcom/nuance/xt9/input/KeyboardEx$WritingPad;->edgeFlags:I

    .line 680
    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/nuance/xt9/input/KeyboardEx$WritingPad;->background:Landroid/graphics/drawable/Drawable;

    .line 681
    const/4 v1, 0x1

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/nuance/xt9/input/KeyboardEx$WritingPad;->penColor:I

    .line 682
    const/4 v1, 0x7

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/nuance/xt9/input/KeyboardEx$WritingPad;->guideLineColor:I

    .line 683
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 685
    return-void
.end method

.method public constructor <init>(Lcom/nuance/xt9/input/KeyboardEx$Row;)V
    .locals 1
    .parameter "parent"

    .prologue
    .line 652
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 654
    invoke-static {p1}, Lcom/nuance/xt9/input/KeyboardEx$Row;->access$800(Lcom/nuance/xt9/input/KeyboardEx$Row;)Lcom/nuance/xt9/input/KeyboardEx;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/xt9/input/KeyboardEx$WritingPad;->keyboard:Lcom/nuance/xt9/input/KeyboardEx;

    .line 655
    return-void
.end method
