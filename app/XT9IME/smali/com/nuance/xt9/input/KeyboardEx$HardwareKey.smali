.class public Lcom/nuance/xt9/input/KeyboardEx$HardwareKey;
.super Ljava/lang/Object;
.source "KeyboardEx.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/xt9/input/KeyboardEx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HardwareKey"
.end annotation


# instance fields
.field public codes:[I

.field public keyCode:I

.field public label:Ljava/lang/CharSequence;

.field public text:Ljava/lang/CharSequence;

.field public textCaps:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 697
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 698
    return-void
.end method

.method public constructor <init>(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)V
    .locals 7
    .parameter "res"
    .parameter "parser"

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 701
    invoke-direct {p0}, Lcom/nuance/xt9/input/KeyboardEx$HardwareKey;-><init>()V

    .line 703
    invoke-static {p2}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v2

    sget-object v3, Lcom/nuance/xt9/input/R$styleable;->KeyboardEx_HardwareKey:[I

    invoke-virtual {p1, v2, v3}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 706
    .local v0, a:Landroid/content/res/TypedArray;
    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    .line 707
    .local v1, codesValue:Landroid/util/TypedValue;
    invoke-virtual {v0, v4, v1}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 709
    iget v2, v1, Landroid/util/TypedValue;->type:I

    const/16 v3, 0x10

    if-eq v2, v3, :cond_0

    iget v2, v1, Landroid/util/TypedValue;->type:I

    const/16 v3, 0x11

    if-ne v2, v3, :cond_3

    .line 711
    :cond_0
    new-array v2, v5, [I

    iget v3, v1, Landroid/util/TypedValue;->data:I

    aput v3, v2, v4

    iput-object v2, p0, Lcom/nuance/xt9/input/KeyboardEx$HardwareKey;->codes:[I

    .line 716
    :cond_1
    :goto_0
    invoke-virtual {v0, v6, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, p0, Lcom/nuance/xt9/input/KeyboardEx$HardwareKey;->keyCode:I

    .line 717
    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, p0, Lcom/nuance/xt9/input/KeyboardEx$HardwareKey;->label:Ljava/lang/CharSequence;

    .line 718
    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, p0, Lcom/nuance/xt9/input/KeyboardEx$HardwareKey;->text:Ljava/lang/CharSequence;

    .line 719
    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, p0, Lcom/nuance/xt9/input/KeyboardEx$HardwareKey;->textCaps:Ljava/lang/CharSequence;

    .line 721
    iget-object v2, p0, Lcom/nuance/xt9/input/KeyboardEx$HardwareKey;->codes:[I

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/nuance/xt9/input/KeyboardEx$HardwareKey;->label:Ljava/lang/CharSequence;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 722
    new-array v2, v5, [I

    iget-object v3, p0, Lcom/nuance/xt9/input/KeyboardEx$HardwareKey;->label:Ljava/lang/CharSequence;

    invoke-interface {v3, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    aput v3, v2, v4

    iput-object v2, p0, Lcom/nuance/xt9/input/KeyboardEx$HardwareKey;->codes:[I

    .line 725
    :cond_2
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 726
    return-void

    .line 712
    :cond_3
    iget v2, v1, Landroid/util/TypedValue;->type:I

    if-ne v2, v6, :cond_1

    .line 713
    iget-object v2, v1, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/nuance/xt9/input/KeyboardEx$HardwareKey;->parseCSV(Ljava/lang/String;)[I

    move-result-object v2

    iput-object v2, p0, Lcom/nuance/xt9/input/KeyboardEx$HardwareKey;->codes:[I

    goto :goto_0
.end method

.method private parseCSV(Ljava/lang/String;)[I
    .locals 10
    .parameter "value"

    .prologue
    .line 738
    const/4 v0, 0x0

    .line 739
    .local v0, count:I
    const/4 v2, 0x0

    .line 740
    .local v2, lastIndex:I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_0

    .line 741
    add-int/lit8 v0, v0, 0x1

    .line 742
    :goto_0
    const-string v7, ","

    add-int/lit8 v8, v2, 0x1

    invoke-virtual {p1, v7, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    if-lez v2, :cond_0

    .line 743
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 746
    :cond_0
    new-array v6, v0, [I

    .line 747
    .local v6, values:[I
    const/4 v0, 0x0

    .line 748
    new-instance v4, Ljava/util/StringTokenizer;

    const-string v7, ","

    invoke-direct {v4, p1, v7}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 749
    .local v4, st:Ljava/util/StringTokenizer;
    :goto_1
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 751
    :try_start_0
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 753
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

    .line 756
    .end local v1           #count:I
    .restart local v0       #count:I
    goto :goto_1

    .line 754
    .end local v5           #token:Ljava/lang/String;
    :catch_0
    move-exception v7

    move-object v3, v7

    .line 755
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

    .line 758
    .end local v3           #nfe:Ljava/lang/NumberFormatException;
    :cond_1
    return-object v6

    .line 754
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


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter "o"

    .prologue
    const/4 v4, 0x0

    .line 729
    instance-of v2, p1, Lcom/nuance/xt9/input/KeyboardEx$HardwareKey;

    if-eqz v2, :cond_1

    .line 730
    move-object v0, p1

    check-cast v0, Lcom/nuance/xt9/input/KeyboardEx$HardwareKey;

    move-object v1, v0

    .line 731
    .local v1, target:Lcom/nuance/xt9/input/KeyboardEx$HardwareKey;
    iget v2, p0, Lcom/nuance/xt9/input/KeyboardEx$HardwareKey;->keyCode:I

    iget v3, v1, Lcom/nuance/xt9/input/KeyboardEx$HardwareKey;->keyCode:I

    if-ne v2, v3, :cond_0

    const/4 v2, 0x1

    .line 734
    .end local v1           #target:Lcom/nuance/xt9/input/KeyboardEx$HardwareKey;
    :goto_0
    return v2

    .restart local v1       #target:Lcom/nuance/xt9/input/KeyboardEx$HardwareKey;
    :cond_0
    move v2, v4

    .line 731
    goto :goto_0

    .end local v1           #target:Lcom/nuance/xt9/input/KeyboardEx$HardwareKey;
    :cond_1
    move v2, v4

    .line 734
    goto :goto_0
.end method
