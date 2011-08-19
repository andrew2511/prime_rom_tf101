.class public Lcom/google/android/common/html/parser/HtmlDocument$Tag;
.super Lcom/google/android/common/html/parser/HtmlDocument$Node;
.source "HtmlDocument.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/common/html/parser/HtmlDocument;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Tag"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/common/html/parser/HtmlDocument$Tag$SerializeType;
    }
.end annotation


# instance fields
.field private attributes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/common/html/parser/HtmlDocument$TagAttribute;",
            ">;"
        }
    .end annotation
.end field

.field private final element:Lcom/google/android/common/html/parser/HTML$Element;

.field private final isSelfTerminating:Z

.field private final originalHtmlAfterAttributes:Ljava/lang/String;

.field private final originalHtmlBeforeAttributes:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/google/android/common/html/parser/HTML$Element;Ljava/util/List;ZLjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "element"
    .parameter
    .parameter "isSelfTerminating"
    .parameter "originalHtmlBeforeAttributes"
    .parameter "originalHtmlAfterAttributes"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/common/html/parser/HTML$Element;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/common/html/parser/HtmlDocument$TagAttribute;",
            ">;Z",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 523
    .local p2, attributes:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/common/html/parser/HtmlDocument$TagAttribute;>;"
    invoke-direct {p0}, Lcom/google/android/common/html/parser/HtmlDocument$Node;-><init>()V

    .line 524
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/android/common/base/X;->assertTrue(Z)V

    .line 525
    iput-object p1, p0, Lcom/google/android/common/html/parser/HtmlDocument$Tag;->element:Lcom/google/android/common/html/parser/HTML$Element;

    .line 526
    iput-object p2, p0, Lcom/google/android/common/html/parser/HtmlDocument$Tag;->attributes:Ljava/util/List;

    .line 527
    iput-boolean p3, p0, Lcom/google/android/common/html/parser/HtmlDocument$Tag;->isSelfTerminating:Z

    .line 528
    iput-object p4, p0, Lcom/google/android/common/html/parser/HtmlDocument$Tag;->originalHtmlBeforeAttributes:Ljava/lang/String;

    .line 529
    iput-object p5, p0, Lcom/google/android/common/html/parser/HtmlDocument$Tag;->originalHtmlAfterAttributes:Ljava/lang/String;

    .line 530
    return-void

    .line 524
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method synthetic constructor <init>(Lcom/google/android/common/html/parser/HTML$Element;Ljava/util/List;ZLjava/lang/String;Ljava/lang/String;Lcom/google/android/common/html/parser/HtmlDocument$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"

    .prologue
    .line 489
    invoke-direct/range {p0 .. p5}, Lcom/google/android/common/html/parser/HtmlDocument$Tag;-><init>(Lcom/google/android/common/html/parser/HTML$Element;Ljava/util/List;ZLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private serialize(Ljava/lang/StringBuilder;Lcom/google/android/common/html/parser/HtmlDocument$Tag$SerializeType;)V
    .locals 3
    .parameter "sb"
    .parameter "type"

    .prologue
    .line 636
    sget-object v2, Lcom/google/android/common/html/parser/HtmlDocument$Tag$SerializeType;->ORIGINAL_HTML:Lcom/google/android/common/html/parser/HtmlDocument$Tag$SerializeType;

    if-ne p2, v2, :cond_0

    iget-object v2, p0, Lcom/google/android/common/html/parser/HtmlDocument$Tag;->originalHtmlBeforeAttributes:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 637
    iget-object v2, p0, Lcom/google/android/common/html/parser/HtmlDocument$Tag;->originalHtmlBeforeAttributes:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 644
    :goto_0
    iget-object v2, p0, Lcom/google/android/common/html/parser/HtmlDocument$Tag;->attributes:Ljava/util/List;

    if-eqz v2, :cond_3

    .line 645
    iget-object v2, p0, Lcom/google/android/common/html/parser/HtmlDocument$Tag;->attributes:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/common/html/parser/HtmlDocument$TagAttribute;

    .line 647
    .local v0, attr:Lcom/google/android/common/html/parser/HtmlDocument$TagAttribute;
    sget-object v2, Lcom/google/android/common/html/parser/HtmlDocument$Tag$SerializeType;->ORIGINAL_HTML:Lcom/google/android/common/html/parser/HtmlDocument$Tag$SerializeType;

    if-ne p2, v2, :cond_1

    .line 648
    invoke-virtual {v0, p1}, Lcom/google/android/common/html/parser/HtmlDocument$TagAttribute;->toOriginalHTML(Ljava/lang/StringBuilder;)V

    goto :goto_1

    .line 639
    .end local v0           #attr:Lcom/google/android/common/html/parser/HtmlDocument$TagAttribute;
    .end local v1           #i$:Ljava/util/Iterator;
    :cond_0
    const/16 v2, 0x3c

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 640
    iget-object v2, p0, Lcom/google/android/common/html/parser/HtmlDocument$Tag;->element:Lcom/google/android/common/html/parser/HTML$Element;

    invoke-virtual {v2}, Lcom/google/android/common/html/parser/HTML$Element;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 649
    .restart local v0       #attr:Lcom/google/android/common/html/parser/HtmlDocument$TagAttribute;
    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_1
    sget-object v2, Lcom/google/android/common/html/parser/HtmlDocument$Tag$SerializeType;->HTML:Lcom/google/android/common/html/parser/HtmlDocument$Tag$SerializeType;

    if-ne p2, v2, :cond_2

    .line 650
    invoke-virtual {v0, p1}, Lcom/google/android/common/html/parser/HtmlDocument$TagAttribute;->toHTML(Ljava/lang/StringBuilder;)V

    goto :goto_1

    .line 652
    :cond_2
    invoke-virtual {v0, p1}, Lcom/google/android/common/html/parser/HtmlDocument$TagAttribute;->toXHTML(Ljava/lang/StringBuilder;)V

    goto :goto_1

    .line 658
    .end local v0           #attr:Lcom/google/android/common/html/parser/HtmlDocument$TagAttribute;
    .end local v1           #i$:Ljava/util/Iterator;
    :cond_3
    sget-object v2, Lcom/google/android/common/html/parser/HtmlDocument$Tag$SerializeType;->ORIGINAL_HTML:Lcom/google/android/common/html/parser/HtmlDocument$Tag$SerializeType;

    if-ne p2, v2, :cond_4

    iget-object v2, p0, Lcom/google/android/common/html/parser/HtmlDocument$Tag;->originalHtmlAfterAttributes:Ljava/lang/String;

    if-eqz v2, :cond_4

    .line 659
    iget-object v2, p0, Lcom/google/android/common/html/parser/HtmlDocument$Tag;->originalHtmlAfterAttributes:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 665
    :goto_2
    return-void

    .line 660
    :cond_4
    sget-object v2, Lcom/google/android/common/html/parser/HtmlDocument$Tag$SerializeType;->XHTML:Lcom/google/android/common/html/parser/HtmlDocument$Tag$SerializeType;

    if-ne p2, v2, :cond_6

    iget-boolean v2, p0, Lcom/google/android/common/html/parser/HtmlDocument$Tag;->isSelfTerminating:Z

    if-nez v2, :cond_5

    invoke-virtual {p0}, Lcom/google/android/common/html/parser/HtmlDocument$Tag;->getElement()Lcom/google/android/common/html/parser/HTML$Element;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/common/html/parser/HTML$Element;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 661
    :cond_5
    const-string v2, " />"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 663
    :cond_6
    const/16 v2, 0x3e

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2
.end method


# virtual methods
.method public accept(Lcom/google/android/common/html/parser/HtmlDocument$Visitor;)V
    .locals 0
    .parameter "visitor"

    .prologue
    .line 608
    invoke-interface {p1, p0}, Lcom/google/android/common/html/parser/HtmlDocument$Visitor;->visitTag(Lcom/google/android/common/html/parser/HtmlDocument$Tag;)V

    .line 609
    return-void
.end method

.method public addAttribute(Lcom/google/android/common/html/parser/HTML$Attribute;Ljava/lang/String;)V
    .locals 2
    .parameter "attr"
    .parameter "value"

    .prologue
    const/4 v1, 0x0

    .line 544
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/android/common/base/X;->assertTrue(Z)V

    .line 545
    new-instance v0, Lcom/google/android/common/html/parser/HtmlDocument$TagAttribute;

    invoke-direct {v0, p1, p2, v1, v1}, Lcom/google/android/common/html/parser/HtmlDocument$TagAttribute;-><init>(Lcom/google/android/common/html/parser/HTML$Attribute;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/common/html/parser/HtmlDocument$1;)V

    invoke-virtual {p0, v0}, Lcom/google/android/common/html/parser/HtmlDocument$Tag;->addAttribute(Lcom/google/android/common/html/parser/HtmlDocument$TagAttribute;)V

    .line 546
    return-void

    .line 544
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public addAttribute(Lcom/google/android/common/html/parser/HtmlDocument$TagAttribute;)V
    .locals 1
    .parameter "attr"

    .prologue
    .line 550
    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/android/common/base/X;->assertTrue(Z)V

    .line 551
    iget-object v0, p0, Lcom/google/android/common/html/parser/HtmlDocument$Tag;->attributes:Ljava/util/List;

    if-nez v0, :cond_0

    .line 552
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/common/html/parser/HtmlDocument$Tag;->attributes:Ljava/util/List;

    .line 554
    :cond_0
    iget-object v0, p0, Lcom/google/android/common/html/parser/HtmlDocument$Tag;->attributes:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 555
    return-void

    .line 550
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAttribute(Lcom/google/android/common/html/parser/HTML$Attribute;)Lcom/google/android/common/html/parser/HtmlDocument$TagAttribute;
    .locals 3
    .parameter "attr"

    .prologue
    .line 564
    iget-object v2, p0, Lcom/google/android/common/html/parser/HtmlDocument$Tag;->attributes:Ljava/util/List;

    if-eqz v2, :cond_1

    .line 565
    iget-object v2, p0, Lcom/google/android/common/html/parser/HtmlDocument$Tag;->attributes:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/common/html/parser/HtmlDocument$TagAttribute;

    .line 566
    .local v0, attribute:Lcom/google/android/common/html/parser/HtmlDocument$TagAttribute;
    invoke-virtual {v0}, Lcom/google/android/common/html/parser/HtmlDocument$TagAttribute;->getAttribute()Lcom/google/android/common/html/parser/HTML$Attribute;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/google/android/common/html/parser/HTML$Attribute;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v2, v0

    .line 571
    .end local v0           #attribute:Lcom/google/android/common/html/parser/HtmlDocument$TagAttribute;
    .end local v1           #i$:Ljava/util/Iterator;
    :goto_0
    return-object v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getAttributes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/common/html/parser/HtmlDocument$TagAttribute;",
            ">;"
        }
    .end annotation

    .prologue
    .line 559
    iget-object v0, p0, Lcom/google/android/common/html/parser/HtmlDocument$Tag;->attributes:Ljava/util/List;

    return-object v0
.end method

.method public getAttributes(Lcom/google/android/common/html/parser/HTML$Attribute;)Ljava/util/List;
    .locals 4
    .parameter "attr"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/common/html/parser/HTML$Attribute;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/common/html/parser/HtmlDocument$TagAttribute;",
            ">;"
        }
    .end annotation

    .prologue
    .line 579
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v2

    .line 580
    .local v2, result:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/common/html/parser/HtmlDocument$TagAttribute;>;"
    iget-object v3, p0, Lcom/google/android/common/html/parser/HtmlDocument$Tag;->attributes:Ljava/util/List;

    if-eqz v3, :cond_1

    .line 581
    iget-object v3, p0, Lcom/google/android/common/html/parser/HtmlDocument$Tag;->attributes:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/common/html/parser/HtmlDocument$TagAttribute;

    .line 582
    .local v0, attribute:Lcom/google/android/common/html/parser/HtmlDocument$TagAttribute;
    invoke-virtual {v0}, Lcom/google/android/common/html/parser/HtmlDocument$TagAttribute;->getAttribute()Lcom/google/android/common/html/parser/HTML$Attribute;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/google/android/common/html/parser/HTML$Attribute;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 583
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 587
    .end local v0           #attribute:Lcom/google/android/common/html/parser/HtmlDocument$TagAttribute;
    .end local v1           #i$:Ljava/util/Iterator;
    :cond_1
    return-object v2
.end method

.method public getElement()Lcom/google/android/common/html/parser/HTML$Element;
    .locals 1

    .prologue
    .line 539
    iget-object v0, p0, Lcom/google/android/common/html/parser/HtmlDocument$Tag;->element:Lcom/google/android/common/html/parser/HTML$Element;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 534
    iget-object v0, p0, Lcom/google/android/common/html/parser/HtmlDocument$Tag;->element:Lcom/google/android/common/html/parser/HTML$Element;

    invoke-virtual {v0}, Lcom/google/android/common/html/parser/HTML$Element;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOriginalHtmlAfterAttributes()Ljava/lang/String;
    .locals 1

    .prologue
    .line 676
    iget-object v0, p0, Lcom/google/android/common/html/parser/HtmlDocument$Tag;->originalHtmlAfterAttributes:Ljava/lang/String;

    return-object v0
.end method

.method public getOriginalHtmlBeforeAttributes()Ljava/lang/String;
    .locals 1

    .prologue
    .line 672
    iget-object v0, p0, Lcom/google/android/common/html/parser/HtmlDocument$Tag;->originalHtmlBeforeAttributes:Ljava/lang/String;

    return-object v0
.end method

.method public isSelfTerminating()Z
    .locals 1

    .prologue
    .line 668
    iget-boolean v0, p0, Lcom/google/android/common/html/parser/HtmlDocument$Tag;->isSelfTerminating:Z

    return v0
.end method

.method public toHTML(Ljava/lang/StringBuilder;)V
    .locals 1
    .parameter "sb"

    .prologue
    .line 614
    sget-object v0, Lcom/google/android/common/html/parser/HtmlDocument$Tag$SerializeType;->HTML:Lcom/google/android/common/html/parser/HtmlDocument$Tag$SerializeType;

    invoke-direct {p0, p1, v0}, Lcom/google/android/common/html/parser/HtmlDocument$Tag;->serialize(Ljava/lang/StringBuilder;Lcom/google/android/common/html/parser/HtmlDocument$Tag$SerializeType;)V

    .line 615
    return-void
.end method

.method public toOriginalHTML(Ljava/lang/StringBuilder;)V
    .locals 1
    .parameter "sb"

    .prologue
    .line 624
    sget-object v0, Lcom/google/android/common/html/parser/HtmlDocument$Tag$SerializeType;->ORIGINAL_HTML:Lcom/google/android/common/html/parser/HtmlDocument$Tag$SerializeType;

    invoke-direct {p0, p1, v0}, Lcom/google/android/common/html/parser/HtmlDocument$Tag;->serialize(Ljava/lang/StringBuilder;Lcom/google/android/common/html/parser/HtmlDocument$Tag$SerializeType;)V

    .line 625
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 593
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 594
    .local v2, sb:Ljava/lang/StringBuilder;
    const-string v3, "Start Tag: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 595
    iget-object v3, p0, Lcom/google/android/common/html/parser/HtmlDocument$Tag;->element:Lcom/google/android/common/html/parser/HTML$Element;

    invoke-virtual {v3}, Lcom/google/android/common/html/parser/HTML$Element;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 596
    iget-object v3, p0, Lcom/google/android/common/html/parser/HtmlDocument$Tag;->attributes:Ljava/util/List;

    if-eqz v3, :cond_0

    .line 597
    iget-object v3, p0, Lcom/google/android/common/html/parser/HtmlDocument$Tag;->attributes:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/common/html/parser/HtmlDocument$TagAttribute;

    .line 598
    .local v0, attr:Lcom/google/android/common/html/parser/HtmlDocument$TagAttribute;
    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 599
    invoke-virtual {v0}, Lcom/google/android/common/html/parser/HtmlDocument$TagAttribute;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 602
    .end local v0           #attr:Lcom/google/android/common/html/parser/HtmlDocument$TagAttribute;
    .end local v1           #i$:Ljava/util/Iterator;
    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public toXHTML(Ljava/lang/StringBuilder;)V
    .locals 1
    .parameter "sb"

    .prologue
    .line 619
    sget-object v0, Lcom/google/android/common/html/parser/HtmlDocument$Tag$SerializeType;->XHTML:Lcom/google/android/common/html/parser/HtmlDocument$Tag$SerializeType;

    invoke-direct {p0, p1, v0}, Lcom/google/android/common/html/parser/HtmlDocument$Tag;->serialize(Ljava/lang/StringBuilder;Lcom/google/android/common/html/parser/HtmlDocument$Tag$SerializeType;)V

    .line 620
    return-void
.end method
