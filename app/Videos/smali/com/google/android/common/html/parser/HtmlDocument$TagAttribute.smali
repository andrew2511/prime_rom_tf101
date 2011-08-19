.class public Lcom/google/android/common/html/parser/HtmlDocument$TagAttribute;
.super Ljava/lang/Object;
.source "HtmlDocument.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/common/html/parser/HtmlDocument;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TagAttribute"
.end annotation


# instance fields
.field private final attribute:Lcom/google/android/common/html/parser/HTML$Attribute;

.field private originalHtml:Ljava/lang/String;

.field private value:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/google/android/common/html/parser/HTML$Attribute;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "attribute"
    .parameter "value"
    .parameter "originalHtml"

    .prologue
    .line 764
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 765
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/android/common/base/X;->assertTrue(Z)V

    .line 766
    iput-object p1, p0, Lcom/google/android/common/html/parser/HtmlDocument$TagAttribute;->attribute:Lcom/google/android/common/html/parser/HTML$Attribute;

    .line 767
    iput-object p2, p0, Lcom/google/android/common/html/parser/HtmlDocument$TagAttribute;->value:Ljava/lang/String;

    .line 768
    iput-object p3, p0, Lcom/google/android/common/html/parser/HtmlDocument$TagAttribute;->originalHtml:Ljava/lang/String;

    .line 769
    return-void

    .line 765
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method synthetic constructor <init>(Lcom/google/android/common/html/parser/HTML$Attribute;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/common/html/parser/HtmlDocument$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 751
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/common/html/parser/HtmlDocument$TagAttribute;-><init>(Lcom/google/android/common/html/parser/HTML$Attribute;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getAttribute()Lcom/google/android/common/html/parser/HTML$Attribute;
    .locals 1

    .prologue
    .line 778
    iget-object v0, p0, Lcom/google/android/common/html/parser/HtmlDocument$TagAttribute;->attribute:Lcom/google/android/common/html/parser/HTML$Attribute;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 773
    iget-object v0, p0, Lcom/google/android/common/html/parser/HtmlDocument$TagAttribute;->attribute:Lcom/google/android/common/html/parser/HTML$Attribute;

    invoke-virtual {v0}, Lcom/google/android/common/html/parser/HTML$Attribute;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 795
    iget-object v0, p0, Lcom/google/android/common/html/parser/HtmlDocument$TagAttribute;->value:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/common/html/parser/HtmlDocument$TagAttribute;->value:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public hasValue()Z
    .locals 1

    .prologue
    .line 800
    iget-object v0, p0, Lcom/google/android/common/html/parser/HtmlDocument$TagAttribute;->value:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 1
    .parameter "value"

    .prologue
    .line 789
    iput-object p1, p0, Lcom/google/android/common/html/parser/HtmlDocument$TagAttribute;->value:Ljava/lang/String;

    .line 790
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/common/html/parser/HtmlDocument$TagAttribute;->originalHtml:Ljava/lang/String;

    .line 791
    return-void
.end method

.method public toHTML()Ljava/lang/String;
    .locals 2

    .prologue
    .line 820
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 821
    .local v0, sb:Ljava/lang/StringBuilder;
    invoke-virtual {p0, v0}, Lcom/google/android/common/html/parser/HtmlDocument$TagAttribute;->toHTML(Ljava/lang/StringBuilder;)V

    .line 822
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public toHTML(Ljava/lang/StringBuilder;)V
    .locals 2
    .parameter "sb"

    .prologue
    .line 809
    const/16 v0, 0x20

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 810
    iget-object v0, p0, Lcom/google/android/common/html/parser/HtmlDocument$TagAttribute;->attribute:Lcom/google/android/common/html/parser/HTML$Attribute;

    invoke-virtual {v0}, Lcom/google/android/common/html/parser/HTML$Attribute;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 811
    iget-object v0, p0, Lcom/google/android/common/html/parser/HtmlDocument$TagAttribute;->value:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/common/html/parser/HtmlDocument$TagAttribute;->attribute:Lcom/google/android/common/html/parser/HTML$Attribute;

    invoke-virtual {v0}, Lcom/google/android/common/html/parser/HTML$Attribute;->getType()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 812
    const-string v0, "=\""

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 813
    invoke-static {}, Lcom/google/android/common/base/CharEscapers;->asciiHtmlEscaper()Lcom/google/android/common/base/CharEscaper;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/common/html/parser/HtmlDocument$TagAttribute;->value:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/common/base/CharEscaper;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 814
    const-string v0, "\""

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 816
    :cond_0
    return-void
.end method

.method public toOriginalHTML()Ljava/lang/String;
    .locals 2

    .prologue
    .line 866
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 867
    .local v0, sb:Ljava/lang/StringBuilder;
    invoke-virtual {p0, v0}, Lcom/google/android/common/html/parser/HtmlDocument$TagAttribute;->toOriginalHTML(Ljava/lang/StringBuilder;)V

    .line 868
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public toOriginalHTML(Ljava/lang/StringBuilder;)V
    .locals 1
    .parameter "sb"

    .prologue
    .line 855
    iget-object v0, p0, Lcom/google/android/common/html/parser/HtmlDocument$TagAttribute;->originalHtml:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 856
    iget-object v0, p0, Lcom/google/android/common/html/parser/HtmlDocument$TagAttribute;->originalHtml:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 860
    :goto_0
    return-void

    .line 858
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/android/common/html/parser/HtmlDocument$TagAttribute;->toHTML(Ljava/lang/StringBuilder;)V

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 873
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/common/html/parser/HtmlDocument$TagAttribute;->attribute:Lcom/google/android/common/html/parser/HTML$Attribute;

    invoke-virtual {v1}, Lcom/google/android/common/html/parser/HTML$Attribute;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/common/html/parser/HtmlDocument$TagAttribute;->value:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toXHTML()Ljava/lang/String;
    .locals 2

    .prologue
    .line 845
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 846
    .local v0, sb:Ljava/lang/StringBuilder;
    invoke-virtual {p0, v0}, Lcom/google/android/common/html/parser/HtmlDocument$TagAttribute;->toXHTML(Ljava/lang/StringBuilder;)V

    .line 847
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public toXHTML(Ljava/lang/StringBuilder;)V
    .locals 2
    .parameter "sb"

    .prologue
    .line 830
    const/16 v0, 0x20

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 831
    iget-object v0, p0, Lcom/google/android/common/html/parser/HtmlDocument$TagAttribute;->attribute:Lcom/google/android/common/html/parser/HTML$Attribute;

    invoke-virtual {v0}, Lcom/google/android/common/html/parser/HTML$Attribute;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 834
    invoke-virtual {p0}, Lcom/google/android/common/html/parser/HtmlDocument$TagAttribute;->hasValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 835
    invoke-static {}, Lcom/google/android/common/base/CharEscapers;->asciiHtmlEscaper()Lcom/google/android/common/base/CharEscaper;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/common/html/parser/HtmlDocument$TagAttribute;->value:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/common/base/CharEscaper;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 840
    :goto_0
    const-string v0, "\""

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 841
    return-void

    .line 837
    :cond_0
    iget-object v0, p0, Lcom/google/android/common/html/parser/HtmlDocument$TagAttribute;->attribute:Lcom/google/android/common/html/parser/HTML$Attribute;

    invoke-virtual {v0}, Lcom/google/android/common/html/parser/HTML$Attribute;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method
