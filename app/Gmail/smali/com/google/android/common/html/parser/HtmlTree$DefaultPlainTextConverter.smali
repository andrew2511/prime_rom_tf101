.class public Lcom/google/android/common/html/parser/HtmlTree$DefaultPlainTextConverter;
.super Ljava/lang/Object;
.source "HtmlTree.java"

# interfaces
.implements Lcom/google/android/common/html/parser/HtmlTree$PlainTextConverter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/common/html/parser/HtmlTree;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DefaultPlainTextConverter"
.end annotation


# static fields
.field private static final BLANK_LINE_ELEMENTS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/common/html/parser/HTML$Element;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private preDepth:I

.field private final printer:Lcom/google/android/common/html/parser/HtmlTree$PlainTextPrinter;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 794
    sget-object v0, Lcom/google/android/common/html/parser/HTML4;->P_ELEMENT:Lcom/google/android/common/html/parser/HTML$Element;

    sget-object v1, Lcom/google/android/common/html/parser/HTML4;->BLOCKQUOTE_ELEMENT:Lcom/google/android/common/html/parser/HTML$Element;

    sget-object v2, Lcom/google/android/common/html/parser/HTML4;->PRE_ELEMENT:Lcom/google/android/common/html/parser/HTML$Element;

    invoke-static {v0, v1, v2}, Lcom/google/common/collect/ImmutableSet;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    sput-object v0, Lcom/google/android/common/html/parser/HtmlTree$DefaultPlainTextConverter;->BLANK_LINE_ELEMENTS:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 792
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 800
    new-instance v0, Lcom/google/android/common/html/parser/HtmlTree$PlainTextPrinter;

    invoke-direct {v0}, Lcom/google/android/common/html/parser/HtmlTree$PlainTextPrinter;-><init>()V

    iput-object v0, p0, Lcom/google/android/common/html/parser/HtmlTree$DefaultPlainTextConverter;->printer:Lcom/google/android/common/html/parser/HtmlTree$PlainTextPrinter;

    .line 802
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/common/html/parser/HtmlTree$DefaultPlainTextConverter;->preDepth:I

    return-void
.end method


# virtual methods
.method public addNode(Lcom/google/android/common/html/parser/HtmlDocument$Node;II)V
    .locals 8
    .parameter "n"
    .parameter "nodeNum"
    .parameter "endNum"

    .prologue
    .line 805
    instance-of v6, p1, Lcom/google/android/common/html/parser/HtmlDocument$Text;

    if-eqz v6, :cond_2

    .line 807
    move-object v0, p1

    check-cast v0, Lcom/google/android/common/html/parser/HtmlDocument$Text;

    move-object v5, v0

    .line 808
    .local v5, textNode:Lcom/google/android/common/html/parser/HtmlDocument$Text;
    invoke-virtual {v5}, Lcom/google/android/common/html/parser/HtmlDocument$Text;->getText()Ljava/lang/String;

    move-result-object v3

    .line 810
    .local v3, str:Ljava/lang/String;
    iget v6, p0, Lcom/google/android/common/html/parser/HtmlTree$DefaultPlainTextConverter;->preDepth:I

    if-lez v6, :cond_1

    .line 811
    iget-object v6, p0, Lcom/google/android/common/html/parser/HtmlTree$DefaultPlainTextConverter;->printer:Lcom/google/android/common/html/parser/HtmlTree$PlainTextPrinter;

    invoke-virtual {v6, v3}, Lcom/google/android/common/html/parser/HtmlTree$PlainTextPrinter;->appendPreText(Ljava/lang/String;)V

    .line 868
    .end local v3           #str:Ljava/lang/String;
    .end local v5           #textNode:Lcom/google/android/common/html/parser/HtmlDocument$Text;
    :cond_0
    :goto_0
    return-void

    .line 814
    .restart local v3       #str:Ljava/lang/String;
    .restart local v5       #textNode:Lcom/google/android/common/html/parser/HtmlDocument$Text;
    :cond_1
    iget-object v6, p0, Lcom/google/android/common/html/parser/HtmlTree$DefaultPlainTextConverter;->printer:Lcom/google/android/common/html/parser/HtmlTree$PlainTextPrinter;

    invoke-virtual {v6, v3}, Lcom/google/android/common/html/parser/HtmlTree$PlainTextPrinter;->appendNormalText(Ljava/lang/String;)V

    goto :goto_0

    .line 817
    .end local v3           #str:Ljava/lang/String;
    .end local v5           #textNode:Lcom/google/android/common/html/parser/HtmlDocument$Text;
    :cond_2
    instance-of v6, p1, Lcom/google/android/common/html/parser/HtmlDocument$Tag;

    if-eqz v6, :cond_7

    .line 820
    move-object v0, p1

    check-cast v0, Lcom/google/android/common/html/parser/HtmlDocument$Tag;

    move-object v4, v0

    .line 821
    .local v4, tag:Lcom/google/android/common/html/parser/HtmlDocument$Tag;
    invoke-virtual {v4}, Lcom/google/android/common/html/parser/HtmlDocument$Tag;->getElement()Lcom/google/android/common/html/parser/HTML$Element;

    move-result-object v1

    .line 823
    .local v1, element:Lcom/google/android/common/html/parser/HTML$Element;
    sget-object v6, Lcom/google/android/common/html/parser/HtmlTree$DefaultPlainTextConverter;->BLANK_LINE_ELEMENTS:Ljava/util/Set;

    invoke-interface {v6, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 824
    iget-object v6, p0, Lcom/google/android/common/html/parser/HtmlTree$DefaultPlainTextConverter;->printer:Lcom/google/android/common/html/parser/HtmlTree$PlainTextPrinter;

    sget-object v7, Lcom/google/android/common/html/parser/HtmlTree$PlainTextPrinter$Separator;->BlankLine:Lcom/google/android/common/html/parser/HtmlTree$PlainTextPrinter$Separator;

    invoke-virtual {v6, v7}, Lcom/google/android/common/html/parser/HtmlTree$PlainTextPrinter;->setSeparator(Lcom/google/android/common/html/parser/HtmlTree$PlainTextPrinter$Separator;)V

    .line 840
    :cond_3
    :goto_1
    sget-object v6, Lcom/google/android/common/html/parser/HTML4;->BLOCKQUOTE_ELEMENT:Lcom/google/android/common/html/parser/HTML$Element;

    invoke-virtual {v6, v1}, Lcom/google/android/common/html/parser/HTML$Element;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 841
    iget-object v6, p0, Lcom/google/android/common/html/parser/HtmlTree$DefaultPlainTextConverter;->printer:Lcom/google/android/common/html/parser/HtmlTree$PlainTextPrinter;

    invoke-virtual {v6}, Lcom/google/android/common/html/parser/HtmlTree$PlainTextPrinter;->incQuoteDepth()V

    goto :goto_0

    .line 826
    :cond_4
    sget-object v6, Lcom/google/android/common/html/parser/HTML4;->BR_ELEMENT:Lcom/google/android/common/html/parser/HTML$Element;

    invoke-virtual {v6, v1}, Lcom/google/android/common/html/parser/HTML$Element;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 828
    iget-object v6, p0, Lcom/google/android/common/html/parser/HtmlTree$DefaultPlainTextConverter;->printer:Lcom/google/android/common/html/parser/HtmlTree$PlainTextPrinter;

    invoke-virtual {v6}, Lcom/google/android/common/html/parser/HtmlTree$PlainTextPrinter;->appendForcedLineBreak()V

    goto :goto_1

    .line 830
    :cond_5
    invoke-virtual {v1}, Lcom/google/android/common/html/parser/HTML$Element;->breaksFlow()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 832
    iget-object v6, p0, Lcom/google/android/common/html/parser/HtmlTree$DefaultPlainTextConverter;->printer:Lcom/google/android/common/html/parser/HtmlTree$PlainTextPrinter;

    sget-object v7, Lcom/google/android/common/html/parser/HtmlTree$PlainTextPrinter$Separator;->LineBreak:Lcom/google/android/common/html/parser/HtmlTree$PlainTextPrinter$Separator;

    invoke-virtual {v6, v7}, Lcom/google/android/common/html/parser/HtmlTree$PlainTextPrinter;->setSeparator(Lcom/google/android/common/html/parser/HtmlTree$PlainTextPrinter$Separator;)V

    .line 834
    sget-object v6, Lcom/google/android/common/html/parser/HTML4;->HR_ELEMENT:Lcom/google/android/common/html/parser/HTML$Element;

    invoke-virtual {v6, v1}, Lcom/google/android/common/html/parser/HTML$Element;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 835
    iget-object v6, p0, Lcom/google/android/common/html/parser/HtmlTree$DefaultPlainTextConverter;->printer:Lcom/google/android/common/html/parser/HtmlTree$PlainTextPrinter;

    const-string v7, "________________________________"

    invoke-virtual {v6, v7}, Lcom/google/android/common/html/parser/HtmlTree$PlainTextPrinter;->appendNormalText(Ljava/lang/String;)V

    .line 836
    iget-object v6, p0, Lcom/google/android/common/html/parser/HtmlTree$DefaultPlainTextConverter;->printer:Lcom/google/android/common/html/parser/HtmlTree$PlainTextPrinter;

    sget-object v7, Lcom/google/android/common/html/parser/HtmlTree$PlainTextPrinter$Separator;->LineBreak:Lcom/google/android/common/html/parser/HtmlTree$PlainTextPrinter$Separator;

    invoke-virtual {v6, v7}, Lcom/google/android/common/html/parser/HtmlTree$PlainTextPrinter;->setSeparator(Lcom/google/android/common/html/parser/HtmlTree$PlainTextPrinter$Separator;)V

    goto :goto_1

    .line 843
    :cond_6
    sget-object v6, Lcom/google/android/common/html/parser/HTML4;->PRE_ELEMENT:Lcom/google/android/common/html/parser/HTML$Element;

    invoke-virtual {v6, v1}, Lcom/google/android/common/html/parser/HTML$Element;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 844
    iget v6, p0, Lcom/google/android/common/html/parser/HtmlTree$DefaultPlainTextConverter;->preDepth:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/google/android/common/html/parser/HtmlTree$DefaultPlainTextConverter;->preDepth:I

    goto :goto_0

    .line 847
    .end local v1           #element:Lcom/google/android/common/html/parser/HTML$Element;
    .end local v4           #tag:Lcom/google/android/common/html/parser/HtmlDocument$Tag;
    :cond_7
    instance-of v6, p1, Lcom/google/android/common/html/parser/HtmlDocument$EndTag;

    if-eqz v6, :cond_0

    .line 850
    move-object v0, p1

    check-cast v0, Lcom/google/android/common/html/parser/HtmlDocument$EndTag;

    move-object v2, v0

    .line 851
    .local v2, endTag:Lcom/google/android/common/html/parser/HtmlDocument$EndTag;
    invoke-virtual {v2}, Lcom/google/android/common/html/parser/HtmlDocument$EndTag;->getElement()Lcom/google/android/common/html/parser/HTML$Element;

    move-result-object v1

    .line 853
    .restart local v1       #element:Lcom/google/android/common/html/parser/HTML$Element;
    sget-object v6, Lcom/google/android/common/html/parser/HtmlTree$DefaultPlainTextConverter;->BLANK_LINE_ELEMENTS:Ljava/util/Set;

    invoke-interface {v6, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 854
    iget-object v6, p0, Lcom/google/android/common/html/parser/HtmlTree$DefaultPlainTextConverter;->printer:Lcom/google/android/common/html/parser/HtmlTree$PlainTextPrinter;

    sget-object v7, Lcom/google/android/common/html/parser/HtmlTree$PlainTextPrinter$Separator;->BlankLine:Lcom/google/android/common/html/parser/HtmlTree$PlainTextPrinter$Separator;

    invoke-virtual {v6, v7}, Lcom/google/android/common/html/parser/HtmlTree$PlainTextPrinter;->setSeparator(Lcom/google/android/common/html/parser/HtmlTree$PlainTextPrinter$Separator;)V

    .line 861
    :cond_8
    :goto_2
    sget-object v6, Lcom/google/android/common/html/parser/HTML4;->BLOCKQUOTE_ELEMENT:Lcom/google/android/common/html/parser/HTML$Element;

    invoke-virtual {v6, v1}, Lcom/google/android/common/html/parser/HTML$Element;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 862
    iget-object v6, p0, Lcom/google/android/common/html/parser/HtmlTree$DefaultPlainTextConverter;->printer:Lcom/google/android/common/html/parser/HtmlTree$PlainTextPrinter;

    invoke-virtual {v6}, Lcom/google/android/common/html/parser/HtmlTree$PlainTextPrinter;->decQuoteDepth()V

    goto/16 :goto_0

    .line 856
    :cond_9
    invoke-virtual {v1}, Lcom/google/android/common/html/parser/HTML$Element;->breaksFlow()Z

    move-result v6

    if-eqz v6, :cond_8

    .line 858
    iget-object v6, p0, Lcom/google/android/common/html/parser/HtmlTree$DefaultPlainTextConverter;->printer:Lcom/google/android/common/html/parser/HtmlTree$PlainTextPrinter;

    sget-object v7, Lcom/google/android/common/html/parser/HtmlTree$PlainTextPrinter$Separator;->LineBreak:Lcom/google/android/common/html/parser/HtmlTree$PlainTextPrinter$Separator;

    invoke-virtual {v6, v7}, Lcom/google/android/common/html/parser/HtmlTree$PlainTextPrinter;->setSeparator(Lcom/google/android/common/html/parser/HtmlTree$PlainTextPrinter$Separator;)V

    goto :goto_2

    .line 864
    :cond_a
    sget-object v6, Lcom/google/android/common/html/parser/HTML4;->PRE_ELEMENT:Lcom/google/android/common/html/parser/HTML$Element;

    invoke-virtual {v6, v1}, Lcom/google/android/common/html/parser/HTML$Element;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 865
    iget v6, p0, Lcom/google/android/common/html/parser/HtmlTree$DefaultPlainTextConverter;->preDepth:I

    const/4 v7, 0x1

    sub-int/2addr v6, v7

    iput v6, p0, Lcom/google/android/common/html/parser/HtmlTree$DefaultPlainTextConverter;->preDepth:I

    goto/16 :goto_0
.end method

.method public final getPlainText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 875
    iget-object v0, p0, Lcom/google/android/common/html/parser/HtmlTree$DefaultPlainTextConverter;->printer:Lcom/google/android/common/html/parser/HtmlTree$PlainTextPrinter;

    invoke-virtual {v0}, Lcom/google/android/common/html/parser/HtmlTree$PlainTextPrinter;->getText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getPlainTextLength()I
    .locals 1

    .prologue
    .line 871
    iget-object v0, p0, Lcom/google/android/common/html/parser/HtmlTree$DefaultPlainTextConverter;->printer:Lcom/google/android/common/html/parser/HtmlTree$PlainTextPrinter;

    invoke-virtual {v0}, Lcom/google/android/common/html/parser/HtmlTree$PlainTextPrinter;->getTextLength()I

    move-result v0

    return v0
.end method
