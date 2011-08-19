.class Lcom/amazon/topaz/styles/StyleSheetHandler;
.super Ljava/lang/Object;
.source "StyleSheetHandler.java"

# interfaces
.implements Lcom/amazon/system/xml/DefaultHandler;


# instance fields
.field private rootStylesheet_:Lcom/amazon/topaz/styles/StyleSheet$Builder;

.field private stylesheet_:Lcom/amazon/topaz/styles/StyleSheet$Builder;


# direct methods
.method public constructor <init>(Lcom/amazon/topaz/styles/StyleSheet$Builder;)V
    .locals 1
    .parameter "builder"

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/amazon/topaz/styles/StyleSheetHandler;->rootStylesheet_:Lcom/amazon/topaz/styles/StyleSheet$Builder;

    .line 12
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amazon/topaz/styles/StyleSheetHandler;->stylesheet_:Lcom/amazon/topaz/styles/StyleSheet$Builder;

    .line 13
    return-void
.end method


# virtual methods
.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "uri"
    .parameter "local"
    .parameter "name"

    .prologue
    .line 36
    sget-object v0, Lcom/amazon/topaz/internal/TopazStrings;->NODETYPE_STYLE:Ljava/lang/String;

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 37
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amazon/topaz/styles/StyleSheetHandler;->stylesheet_:Lcom/amazon/topaz/styles/StyleSheet$Builder;

    .line 39
    :cond_0
    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/system/xml/Attributes;)V
    .locals 7
    .parameter "uri"
    .parameter "local"
    .parameter "name"
    .parameter "attributes"

    .prologue
    .line 18
    sget-object v4, Lcom/amazon/topaz/internal/TopazStrings;->NODETYPE_STYLE:Ljava/lang/String;

    invoke-virtual {v4, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 19
    new-instance v3, Lcom/amazon/topaz/styles/MatchRule$Builder;

    invoke-direct {v3}, Lcom/amazon/topaz/styles/MatchRule$Builder;-><init>()V

    .line 20
    .local v3, ruleBuilder:Lcom/amazon/topaz/styles/MatchRule$Builder;
    invoke-interface {p4}, Lcom/amazon/system/xml/Attributes;->getLength()I

    move-result v1

    .line 21
    .local v1, num_attrs:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 22
    invoke-interface {p4, v0}, Lcom/amazon/system/xml/Attributes;->getQName(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p4, v0}, Lcom/amazon/system/xml/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/amazon/topaz/styles/MatchRule$Builder;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 25
    :cond_0
    invoke-virtual {v3}, Lcom/amazon/topaz/styles/MatchRule$Builder;->build()Lcom/amazon/topaz/styles/MatchRule;

    move-result-object v2

    .line 26
    .local v2, rule:Lcom/amazon/topaz/styles/MatchRule;
    iget-object v4, p0, Lcom/amazon/topaz/styles/StyleSheetHandler;->rootStylesheet_:Lcom/amazon/topaz/styles/StyleSheet$Builder;

    invoke-virtual {v4, v2}, Lcom/amazon/topaz/styles/StyleSheet$Builder;->find(Lcom/amazon/topaz/styles/AbstractMatchRule;)Lcom/amazon/topaz/styles/StyleSheet$Builder;

    move-result-object v4

    iput-object v4, p0, Lcom/amazon/topaz/styles/StyleSheetHandler;->stylesheet_:Lcom/amazon/topaz/styles/StyleSheet$Builder;

    .line 32
    .end local v0           #i:I
    .end local v1           #num_attrs:I
    .end local v2           #rule:Lcom/amazon/topaz/styles/MatchRule;
    .end local v3           #ruleBuilder:Lcom/amazon/topaz/styles/MatchRule$Builder;
    :cond_1
    :goto_1
    return-void

    .line 28
    :cond_2
    sget-object v4, Lcom/amazon/topaz/internal/TopazStrings;->NODETYPE_RULE:Ljava/lang/String;

    invoke-virtual {v4, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/amazon/topaz/styles/StyleSheetHandler;->stylesheet_:Lcom/amazon/topaz/styles/StyleSheet$Builder;

    if-eqz v4, :cond_1

    .line 29
    iget-object v4, p0, Lcom/amazon/topaz/styles/StyleSheetHandler;->stylesheet_:Lcom/amazon/topaz/styles/StyleSheet$Builder;

    sget-object v5, Lcom/amazon/topaz/internal/TopazStrings;->NODEATTRIB_ATTR:Ljava/lang/String;

    invoke-interface {p4, v5}, Lcom/amazon/system/xml/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/amazon/topaz/internal/TopazStrings;->NODEATTRIB_VALUE:Ljava/lang/String;

    invoke-interface {p4, v6}, Lcom/amazon/system/xml/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/amazon/topaz/styles/StyleSheet$Builder;->setRule(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method
