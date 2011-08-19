.class Lorg/htmlparser/filters/CssSelectorNodeFilter$AttribMatchFilter;
.super Ljava/lang/Object;
.source "CssSelectorNodeFilter.java"

# interfaces
.implements Lorg/htmlparser/NodeFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/htmlparser/filters/CssSelectorNodeFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AttribMatchFilter"
.end annotation


# instance fields
.field private attrib:Ljava/lang/String;

.field private rel:Ljava/util/regex/Pattern;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "attrib"
    .parameter "regex"

    .prologue
    .line 378
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 379
    invoke-static {p2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    iput-object v0, p0, Lorg/htmlparser/filters/CssSelectorNodeFilter$AttribMatchFilter;->rel:Ljava/util/regex/Pattern;

    .line 380
    iput-object p1, p0, Lorg/htmlparser/filters/CssSelectorNodeFilter$AttribMatchFilter;->attrib:Ljava/lang/String;

    .line 381
    return-void
.end method


# virtual methods
.method public accept(Lorg/htmlparser/Node;)Z
    .locals 4
    .parameter "node"

    .prologue
    const/4 v3, 0x0

    .line 385
    instance-of v1, p1, Lorg/htmlparser/Tag;

    if-eqz v1, :cond_1

    move-object v0, p1

    check-cast v0, Lorg/htmlparser/Tag;

    move-object v1, v0

    iget-object v2, p0, Lorg/htmlparser/filters/CssSelectorNodeFilter$AttribMatchFilter;->attrib:Ljava/lang/String;

    invoke-interface {v1, v2}, Lorg/htmlparser/Tag;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 386
    iget-object v1, p0, Lorg/htmlparser/filters/CssSelectorNodeFilter$AttribMatchFilter;->rel:Ljava/util/regex/Pattern;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/htmlparser/filters/CssSelectorNodeFilter$AttribMatchFilter;->rel:Ljava/util/regex/Pattern;

    check-cast p1, Lorg/htmlparser/Tag;

    .end local p1
    iget-object v2, p0, Lorg/htmlparser/filters/CssSelectorNodeFilter$AttribMatchFilter;->attrib:Ljava/lang/String;

    invoke-interface {p1, v2}, Lorg/htmlparser/Tag;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-nez v1, :cond_0

    move v1, v3

    .line 392
    :goto_0
    return v1

    .line 390
    :cond_0
    const/4 v1, 0x1

    goto :goto_0

    .restart local p1
    :cond_1
    move v1, v3

    .line 392
    goto :goto_0
.end method
