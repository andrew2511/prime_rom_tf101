.class public final Lcom/amazon/topaz/styles/StyleSheet$Builder;
.super Lcom/amazon/topaz/styles/AbstractStyleSheet;
.source "StyleSheet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/topaz/styles/StyleSheet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private childBuilders:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap",
            "<",
            "Lcom/amazon/topaz/styles/AddSpec;",
            "Lcom/amazon/topaz/styles/AbstractStyleSheet;",
            ">;"
        }
    .end annotation
.end field

.field private ruleBuilder:Lcom/amazon/topaz/styles/MatchRule$Builder;

.field private styleBuilder:Lcom/amazon/topaz/styles/Style$Builder;

.field private valid:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 135
    invoke-direct {p0}, Lcom/amazon/topaz/styles/AbstractStyleSheet;-><init>()V

    .line 136
    new-instance v0, Lcom/amazon/topaz/styles/MatchRule$Builder;

    invoke-direct {v0}, Lcom/amazon/topaz/styles/MatchRule$Builder;-><init>()V

    iput-object v0, p0, Lcom/amazon/topaz/styles/StyleSheet$Builder;->ruleBuilder:Lcom/amazon/topaz/styles/MatchRule$Builder;

    .line 137
    new-instance v0, Lcom/amazon/topaz/styles/Style$Builder;

    invoke-direct {v0}, Lcom/amazon/topaz/styles/Style$Builder;-><init>()V

    iput-object v0, p0, Lcom/amazon/topaz/styles/StyleSheet$Builder;->styleBuilder:Lcom/amazon/topaz/styles/Style$Builder;

    .line 138
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/amazon/topaz/styles/StyleSheet$Builder;->childBuilders:Ljava/util/TreeMap;

    .line 139
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amazon/topaz/styles/StyleSheet$Builder;->valid:Z

    .line 140
    return-void
.end method

.method public constructor <init>(Lcom/amazon/topaz/styles/AbstractMatchRule;)V
    .locals 1
    .parameter "rule"

    .prologue
    .line 161
    invoke-direct {p0}, Lcom/amazon/topaz/styles/AbstractStyleSheet;-><init>()V

    .line 162
    new-instance v0, Lcom/amazon/topaz/styles/MatchRule$Builder;

    invoke-direct {v0, p1}, Lcom/amazon/topaz/styles/MatchRule$Builder;-><init>(Lcom/amazon/topaz/styles/AbstractMatchRule;)V

    iput-object v0, p0, Lcom/amazon/topaz/styles/StyleSheet$Builder;->ruleBuilder:Lcom/amazon/topaz/styles/MatchRule$Builder;

    .line 163
    new-instance v0, Lcom/amazon/topaz/styles/Style$Builder;

    invoke-direct {v0}, Lcom/amazon/topaz/styles/Style$Builder;-><init>()V

    iput-object v0, p0, Lcom/amazon/topaz/styles/StyleSheet$Builder;->styleBuilder:Lcom/amazon/topaz/styles/Style$Builder;

    .line 164
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/amazon/topaz/styles/StyleSheet$Builder;->childBuilders:Ljava/util/TreeMap;

    .line 165
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amazon/topaz/styles/StyleSheet$Builder;->valid:Z

    .line 166
    return-void
.end method

.method public constructor <init>(Lcom/amazon/topaz/styles/AbstractStyleSheet;)V
    .locals 5
    .parameter

    .prologue
    .line 175
    invoke-direct {p0}, Lcom/amazon/topaz/styles/AbstractStyleSheet;-><init>()V

    .line 176
    new-instance v0, Lcom/amazon/topaz/styles/MatchRule$Builder;

    invoke-virtual {p1}, Lcom/amazon/topaz/styles/AbstractStyleSheet;->getRule()Lcom/amazon/topaz/styles/AbstractMatchRule;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/amazon/topaz/styles/MatchRule$Builder;-><init>(Lcom/amazon/topaz/styles/AbstractMatchRule;)V

    iput-object v0, p0, Lcom/amazon/topaz/styles/StyleSheet$Builder;->ruleBuilder:Lcom/amazon/topaz/styles/MatchRule$Builder;

    .line 177
    new-instance v0, Lcom/amazon/topaz/styles/Style$Builder;

    invoke-virtual {p1}, Lcom/amazon/topaz/styles/AbstractStyleSheet;->getStyle()Lcom/amazon/topaz/styles/AbstractStyle;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/amazon/topaz/styles/Style$Builder;-><init>(Lcom/amazon/topaz/styles/AbstractStyle;)V

    iput-object v0, p0, Lcom/amazon/topaz/styles/StyleSheet$Builder;->styleBuilder:Lcom/amazon/topaz/styles/Style$Builder;

    .line 178
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/amazon/topaz/styles/StyleSheet$Builder;->childBuilders:Ljava/util/TreeMap;

    .line 180
    invoke-virtual {p1}, Lcom/amazon/topaz/styles/AbstractStyleSheet;->getChildren()Ljava/util/Map;

    move-result-object v2

    .line 181
    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 182
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 184
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/topaz/styles/AddSpec;

    .line 185
    new-instance v4, Lcom/amazon/topaz/styles/StyleSheet$Builder;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/topaz/styles/AbstractStyleSheet;

    invoke-direct {v4, v1}, Lcom/amazon/topaz/styles/StyleSheet$Builder;-><init>(Lcom/amazon/topaz/styles/AbstractStyleSheet;)V

    .line 186
    iget-object v1, p0, Lcom/amazon/topaz/styles/StyleSheet$Builder;->childBuilders:Ljava/util/TreeMap;

    invoke-virtual {v1, v0, v4}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 189
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amazon/topaz/styles/StyleSheet$Builder;->valid:Z

    .line 190
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Lcom/amazon/system/xml/SAXParserFactory;)V
    .locals 0
    .parameter "input"
    .parameter "factory"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/topaz/exception/StyleSheetParseException;
        }
    .end annotation

    .prologue
    .line 151
    invoke-direct {p0}, Lcom/amazon/topaz/styles/StyleSheet$Builder;-><init>()V

    .line 152
    invoke-direct {p0, p1, p2}, Lcom/amazon/topaz/styles/StyleSheet$Builder;->addRules(Ljava/io/InputStream;Lcom/amazon/system/xml/SAXParserFactory;)V

    .line 153
    return-void
.end method

.method static synthetic access$000(Lcom/amazon/topaz/styles/StyleSheet$Builder;)Lcom/amazon/topaz/styles/MatchRule$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 124
    iget-object v0, p0, Lcom/amazon/topaz/styles/StyleSheet$Builder;->ruleBuilder:Lcom/amazon/topaz/styles/MatchRule$Builder;

    return-object v0
.end method

.method static synthetic access$100(Lcom/amazon/topaz/styles/StyleSheet$Builder;)Lcom/amazon/topaz/styles/Style$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 124
    iget-object v0, p0, Lcom/amazon/topaz/styles/StyleSheet$Builder;->styleBuilder:Lcom/amazon/topaz/styles/Style$Builder;

    return-object v0
.end method

.method static synthetic access$200(Lcom/amazon/topaz/styles/StyleSheet$Builder;)Ljava/util/TreeMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 124
    iget-object v0, p0, Lcom/amazon/topaz/styles/StyleSheet$Builder;->childBuilders:Ljava/util/TreeMap;

    return-object v0
.end method

.method private addRules(Ljava/io/InputStream;Lcom/amazon/system/xml/SAXParserFactory;)V
    .locals 5
    .parameter "input"
    .parameter "parserFactory"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/topaz/exception/StyleSheetParseException;
        }
    .end annotation

    .prologue
    .line 298
    iget-boolean v3, p0, Lcom/amazon/topaz/styles/StyleSheet$Builder;->valid:Z

    if-nez v3, :cond_0

    .line 300
    new-instance v3, Ljava/lang/IllegalStateException;

    invoke-direct {v3}, Ljava/lang/IllegalStateException;-><init>()V

    throw v3

    .line 304
    :cond_0
    :try_start_0
    invoke-interface {p2}, Lcom/amazon/system/xml/SAXParserFactory;->newSAXParser()Lcom/amazon/system/xml/SAXParser;

    move-result-object v2

    .line 305
    .local v2, parser:Lcom/amazon/system/xml/SAXParser;
    new-instance v1, Lcom/amazon/topaz/styles/StyleSheetHandler;

    invoke-direct {v1, p0}, Lcom/amazon/topaz/styles/StyleSheetHandler;-><init>(Lcom/amazon/topaz/styles/StyleSheet$Builder;)V

    .line 306
    .local v1, handler:Lcom/amazon/topaz/styles/StyleSheetHandler;
    invoke-interface {v2, p1, v1}, Lcom/amazon/system/xml/SAXParser;->parse(Ljava/io/InputStream;Lcom/amazon/system/xml/DefaultHandler;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 311
    return-void

    .line 308
    .end local v1           #handler:Lcom/amazon/topaz/styles/StyleSheetHandler;
    .end local v2           #parser:Lcom/amazon/system/xml/SAXParser;
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 309
    .local v0, e:Ljava/lang/Exception;
    new-instance v3, Lcom/amazon/topaz/exception/StyleSheetParseException;

    const-string v4, "Parse Fail"

    invoke-direct {v3, v4, v0}, Lcom/amazon/topaz/exception/StyleSheetParseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method private parse(Lcom/amazon/topaz/internal/binxml/Node;)V
    .locals 10
    .parameter "node"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/topaz/exception/InvalidNodeTypeException;
        }
    .end annotation

    .prologue
    .line 319
    iget-boolean v8, p0, Lcom/amazon/topaz/styles/StyleSheet$Builder;->valid:Z

    if-nez v8, :cond_0

    .line 321
    new-instance v8, Ljava/lang/IllegalStateException;

    invoke-direct {v8}, Ljava/lang/IllegalStateException;-><init>()V

    throw v8

    .line 324
    :cond_0
    invoke-virtual {p1}, Lcom/amazon/topaz/internal/binxml/Node;->getDictionary()Lcom/amazon/topaz/internal/binxml/Dictionary;

    move-result-object v4

    .line 326
    .local v4, dict:Lcom/amazon/topaz/internal/binxml/Dictionary;
    iget-object v8, v4, Lcom/amazon/topaz/internal/binxml/Dictionary;->NODETYPE_STYLE:Lcom/amazon/topaz/internal/binxml/Dictionary$StringID;

    invoke-virtual {v8}, Lcom/amazon/topaz/internal/binxml/Dictionary$StringID;->intValue()I

    move-result v8

    invoke-virtual {p1}, Lcom/amazon/topaz/internal/binxml/Node;->getType()I

    move-result v9

    if-eq v8, v9, :cond_1

    .line 327
    new-instance v8, Lcom/amazon/topaz/exception/InvalidNodeTypeException;

    invoke-virtual {p1}, Lcom/amazon/topaz/internal/binxml/Node;->getType()I

    move-result v9

    invoke-virtual {v4, v9}, Lcom/amazon/topaz/internal/binxml/Dictionary;->get(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lcom/amazon/topaz/exception/InvalidNodeTypeException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 329
    :cond_1
    new-instance v6, Lcom/amazon/topaz/styles/MatchRule$Builder;

    invoke-direct {v6}, Lcom/amazon/topaz/styles/MatchRule$Builder;-><init>()V

    .line 330
    .local v6, ruleBuilder:Lcom/amazon/topaz/styles/MatchRule$Builder;
    invoke-virtual {p1}, Lcom/amazon/topaz/internal/binxml/Node;->getAttribs()Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 331
    .local v1, attribsIt:Ljava/util/Iterator;,"Ljava/util/Iterator<*>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 332
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/topaz/internal/binxml/Attrib;

    .line 333
    .local v0, attrib:Lcom/amazon/topaz/internal/binxml/Attrib;
    invoke-virtual {v0}, Lcom/amazon/topaz/internal/binxml/Attrib;->key()Lcom/amazon/topaz/internal/binxml/Dictionary$StringID;

    move-result-object v8

    invoke-virtual {v4, v8}, Lcom/amazon/topaz/internal/binxml/Dictionary;->get(Lcom/amazon/topaz/internal/binxml/Dictionary$StringID;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0}, Lcom/amazon/topaz/internal/binxml/Attrib;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v8, v9}, Lcom/amazon/topaz/styles/MatchRule$Builder;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 335
    .end local v0           #attrib:Lcom/amazon/topaz/internal/binxml/Attrib;
    :cond_2
    invoke-virtual {v6}, Lcom/amazon/topaz/styles/MatchRule$Builder;->build()Lcom/amazon/topaz/styles/MatchRule;

    move-result-object v5

    .line 337
    .local v5, rule:Lcom/amazon/topaz/styles/MatchRule;
    invoke-virtual {p0, v5}, Lcom/amazon/topaz/styles/StyleSheet$Builder;->find(Lcom/amazon/topaz/styles/AbstractMatchRule;)Lcom/amazon/topaz/styles/StyleSheet$Builder;

    move-result-object v7

    .line 338
    .local v7, stylesheet:Lcom/amazon/topaz/styles/StyleSheet$Builder;
    invoke-virtual {p1}, Lcom/amazon/topaz/internal/binxml/Node;->getChildren()Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 339
    .local v3, childrenIt:Ljava/util/Iterator;,"Ljava/util/Iterator<*>;"
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 340
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/topaz/internal/binxml/Node;

    .line 341
    .local v2, child:Lcom/amazon/topaz/internal/binxml/Node;
    iget-object v8, v4, Lcom/amazon/topaz/internal/binxml/Dictionary;->NODETYPE_RULE:Lcom/amazon/topaz/internal/binxml/Dictionary$StringID;

    invoke-virtual {v8}, Lcom/amazon/topaz/internal/binxml/Dictionary$StringID;->intValue()I

    move-result v8

    invoke-virtual {v2}, Lcom/amazon/topaz/internal/binxml/Node;->getType()I

    move-result v9

    if-ne v8, v9, :cond_3

    .line 342
    iget-object v8, v4, Lcom/amazon/topaz/internal/binxml/Dictionary;->NODEATTRIB_ATTR:Lcom/amazon/topaz/internal/binxml/Dictionary$StringID;

    invoke-virtual {v2, v8}, Lcom/amazon/topaz/internal/binxml/Node;->get(Lcom/amazon/topaz/internal/binxml/Dictionary$StringID;)Lcom/amazon/topaz/internal/binxml/Attrib;

    move-result-object v8

    invoke-virtual {v8}, Lcom/amazon/topaz/internal/binxml/Attrib;->toString()Ljava/lang/String;

    move-result-object v8

    iget-object v9, v4, Lcom/amazon/topaz/internal/binxml/Dictionary;->NODEATTRIB_VALUE:Lcom/amazon/topaz/internal/binxml/Dictionary$StringID;

    invoke-virtual {v2, v9}, Lcom/amazon/topaz/internal/binxml/Node;->get(Lcom/amazon/topaz/internal/binxml/Dictionary$StringID;)Lcom/amazon/topaz/internal/binxml/Attrib;

    move-result-object v9

    invoke-virtual {v9}, Lcom/amazon/topaz/internal/binxml/Attrib;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lcom/amazon/topaz/styles/StyleSheet$Builder;->setRule(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 346
    :cond_3
    new-instance v8, Lcom/amazon/topaz/exception/InvalidNodeTypeException;

    invoke-virtual {v2}, Lcom/amazon/topaz/internal/binxml/Node;->getType()I

    move-result v9

    invoke-virtual {v4, v9}, Lcom/amazon/topaz/internal/binxml/Dictionary;->get(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lcom/amazon/topaz/exception/InvalidNodeTypeException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 349
    .end local v2           #child:Lcom/amazon/topaz/internal/binxml/Node;
    :cond_4
    return-void
.end method


# virtual methods
.method public addRules(Lcom/amazon/topaz/internal/binxml/Node;)V
    .locals 6
    .parameter "node"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/topaz/exception/InvalidNodeTypeException;
        }
    .end annotation

    .prologue
    .line 252
    iget-boolean v4, p0, Lcom/amazon/topaz/styles/StyleSheet$Builder;->valid:Z

    if-nez v4, :cond_0

    .line 254
    new-instance v4, Ljava/lang/IllegalStateException;

    invoke-direct {v4}, Ljava/lang/IllegalStateException;-><init>()V

    throw v4

    .line 256
    :cond_0
    invoke-virtual {p1}, Lcom/amazon/topaz/internal/binxml/Node;->getDictionary()Lcom/amazon/topaz/internal/binxml/Dictionary;

    move-result-object v2

    .line 257
    .local v2, dict:Lcom/amazon/topaz/internal/binxml/Dictionary;
    invoke-virtual {p1}, Lcom/amazon/topaz/internal/binxml/Node;->getType()I

    move-result v3

    .line 258
    .local v3, nodeType:I
    iget-object v4, v2, Lcom/amazon/topaz/internal/binxml/Dictionary;->NODETYPE_STYLESHEET:Lcom/amazon/topaz/internal/binxml/Dictionary$StringID;

    invoke-virtual {v4}, Lcom/amazon/topaz/internal/binxml/Dictionary$StringID;->intValue()I

    move-result v4

    if-ne v4, v3, :cond_1

    .line 259
    invoke-virtual {p1}, Lcom/amazon/topaz/internal/binxml/Node;->getChildren()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 260
    .local v1, childrenIt:Ljava/util/Iterator;,"Ljava/util/Iterator<*>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 261
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/topaz/internal/binxml/Node;

    .line 262
    .local v0, child:Lcom/amazon/topaz/internal/binxml/Node;
    invoke-virtual {p0, v0}, Lcom/amazon/topaz/styles/StyleSheet$Builder;->addRules(Lcom/amazon/topaz/internal/binxml/Node;)V

    goto :goto_0

    .line 265
    .end local v0           #child:Lcom/amazon/topaz/internal/binxml/Node;
    .end local v1           #childrenIt:Ljava/util/Iterator;,"Ljava/util/Iterator<*>;"
    :cond_1
    iget-object v4, v2, Lcom/amazon/topaz/internal/binxml/Dictionary;->NODETYPE_STYLE:Lcom/amazon/topaz/internal/binxml/Dictionary$StringID;

    invoke-virtual {v4}, Lcom/amazon/topaz/internal/binxml/Dictionary$StringID;->intValue()I

    move-result v4

    if-ne v4, v3, :cond_3

    .line 266
    invoke-direct {p0, p1}, Lcom/amazon/topaz/styles/StyleSheet$Builder;->parse(Lcom/amazon/topaz/internal/binxml/Node;)V

    .line 269
    :cond_2
    return-void

    .line 268
    :cond_3
    new-instance v4, Lcom/amazon/topaz/exception/InvalidNodeTypeException;

    invoke-virtual {v2, v3}, Lcom/amazon/topaz/internal/binxml/Dictionary;->get(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/amazon/topaz/exception/InvalidNodeTypeException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public addRules(Lcom/amazon/topaz/styles/AbstractStyleSheet;)V
    .locals 5
    .parameter "other"

    .prologue
    .line 276
    iget-boolean v3, p0, Lcom/amazon/topaz/styles/StyleSheet$Builder;->valid:Z

    if-nez v3, :cond_0

    .line 278
    new-instance v3, Ljava/lang/IllegalStateException;

    invoke-direct {v3}, Ljava/lang/IllegalStateException;-><init>()V

    throw v3

    .line 281
    :cond_0
    invoke-virtual {p1}, Lcom/amazon/topaz/styles/AbstractStyleSheet;->getRule()Lcom/amazon/topaz/styles/AbstractMatchRule;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/amazon/topaz/styles/StyleSheet$Builder;->findInternal(Lcom/amazon/topaz/styles/AbstractMatchRule;)Lcom/amazon/topaz/styles/AbstractStyleSheet;

    move-result-object v2

    check-cast v2, Lcom/amazon/topaz/styles/StyleSheet$Builder;

    .line 282
    .local v2, stylesheetBuilder:Lcom/amazon/topaz/styles/StyleSheet$Builder;
    iget-object v3, v2, Lcom/amazon/topaz/styles/StyleSheet$Builder;->styleBuilder:Lcom/amazon/topaz/styles/Style$Builder;

    invoke-virtual {p1}, Lcom/amazon/topaz/styles/AbstractStyleSheet;->getStyle()Lcom/amazon/topaz/styles/AbstractStyle;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/amazon/topaz/styles/Style$Builder;->apply(Lcom/amazon/topaz/styles/AbstractStyle;)V

    .line 283
    invoke-virtual {p1}, Lcom/amazon/topaz/styles/AbstractStyleSheet;->getChildren()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 284
    .local v1, childrenValuesIt:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/amazon/topaz/styles/AbstractStyleSheet;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 285
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/topaz/styles/StyleSheet;

    .line 286
    .local v0, child:Lcom/amazon/topaz/styles/StyleSheet;
    invoke-virtual {p0, v0}, Lcom/amazon/topaz/styles/StyleSheet$Builder;->addRules(Lcom/amazon/topaz/styles/AbstractStyleSheet;)V

    goto :goto_0

    .line 288
    .end local v0           #child:Lcom/amazon/topaz/styles/StyleSheet;
    :cond_1
    return-void
.end method

.method public build()Lcom/amazon/topaz/styles/StyleSheet;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 358
    iget-boolean v1, p0, Lcom/amazon/topaz/styles/StyleSheet$Builder;->valid:Z

    if-nez v1, :cond_0

    .line 360
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    .line 363
    :cond_0
    new-instance v0, Lcom/amazon/topaz/styles/StyleSheet;

    invoke-direct {v0, p0, v2}, Lcom/amazon/topaz/styles/StyleSheet;-><init>(Lcom/amazon/topaz/styles/StyleSheet$Builder;Lcom/amazon/topaz/styles/StyleSheet$1;)V

    .line 364
    .local v0, retval:Lcom/amazon/topaz/styles/StyleSheet;
    iput-object v2, p0, Lcom/amazon/topaz/styles/StyleSheet$Builder;->ruleBuilder:Lcom/amazon/topaz/styles/MatchRule$Builder;

    .line 365
    iput-object v2, p0, Lcom/amazon/topaz/styles/StyleSheet$Builder;->styleBuilder:Lcom/amazon/topaz/styles/Style$Builder;

    .line 366
    iput-object v2, p0, Lcom/amazon/topaz/styles/StyleSheet$Builder;->childBuilders:Ljava/util/TreeMap;

    .line 367
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/amazon/topaz/styles/StyleSheet$Builder;->valid:Z

    .line 369
    return-object v0
.end method

.method public find(Lcom/amazon/topaz/styles/AbstractMatchRule;)Lcom/amazon/topaz/styles/StyleSheet$Builder;
    .locals 1
    .parameter "test"

    .prologue
    .line 223
    iget-boolean v0, p0, Lcom/amazon/topaz/styles/StyleSheet$Builder;->valid:Z

    if-nez v0, :cond_0

    .line 225
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 228
    :cond_0
    invoke-virtual {p0, p1}, Lcom/amazon/topaz/styles/StyleSheet$Builder;->findInternal(Lcom/amazon/topaz/styles/AbstractMatchRule;)Lcom/amazon/topaz/styles/AbstractStyleSheet;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/amazon/topaz/styles/StyleSheet$Builder;

    return-object p0
.end method

.method protected findChild(Lcom/amazon/topaz/styles/AddSpec;)Lcom/amazon/topaz/styles/AbstractStyleSheet;
    .locals 3
    .parameter

    .prologue
    .line 197
    iget-boolean v0, p0, Lcom/amazon/topaz/styles/StyleSheet$Builder;->valid:Z

    if-nez v0, :cond_0

    .line 199
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 202
    :cond_0
    invoke-super {p0, p1}, Lcom/amazon/topaz/styles/AbstractStyleSheet;->findChild(Lcom/amazon/topaz/styles/AddSpec;)Lcom/amazon/topaz/styles/AbstractStyleSheet;

    move-result-object v0

    .line 204
    if-nez v0, :cond_1

    .line 206
    new-instance v0, Lcom/amazon/topaz/styles/MatchRule$Builder;

    invoke-virtual {p0}, Lcom/amazon/topaz/styles/StyleSheet$Builder;->getRule()Lcom/amazon/topaz/styles/AbstractMatchRule;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/amazon/topaz/styles/MatchRule$Builder;-><init>(Lcom/amazon/topaz/styles/AbstractMatchRule;)V

    .line 207
    invoke-virtual {p1}, Lcom/amazon/topaz/styles/AddSpec;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/amazon/topaz/styles/AddSpec;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/amazon/topaz/styles/MatchRule$Builder;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    new-instance v1, Lcom/amazon/topaz/styles/StyleSheet$Builder;

    invoke-direct {v1, v0}, Lcom/amazon/topaz/styles/StyleSheet$Builder;-><init>(Lcom/amazon/topaz/styles/AbstractMatchRule;)V

    .line 209
    iget-object v0, p0, Lcom/amazon/topaz/styles/StyleSheet$Builder;->childBuilders:Ljava/util/TreeMap;

    invoke-virtual {v0, p1, v1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, v1

    .line 212
    :cond_1
    return-object v0
.end method

.method protected getChildren()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Lcom/amazon/topaz/styles/AddSpec;",
            "Lcom/amazon/topaz/styles/AbstractStyleSheet;",
            ">;"
        }
    .end annotation

    .prologue
    .line 377
    iget-object v0, p0, Lcom/amazon/topaz/styles/StyleSheet$Builder;->childBuilders:Ljava/util/TreeMap;

    return-object v0
.end method

.method protected getRule()Lcom/amazon/topaz/styles/AbstractMatchRule;
    .locals 1

    .prologue
    .line 385
    iget-object v0, p0, Lcom/amazon/topaz/styles/StyleSheet$Builder;->ruleBuilder:Lcom/amazon/topaz/styles/MatchRule$Builder;

    return-object v0
.end method

.method public bridge synthetic getRuleKeys()Ljava/util/Set;
    .locals 1

    .prologue
    .line 124
    invoke-super {p0}, Lcom/amazon/topaz/styles/AbstractStyleSheet;->getRuleKeys()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method protected getStyle()Lcom/amazon/topaz/styles/AbstractStyle;
    .locals 1

    .prologue
    .line 393
    iget-object v0, p0, Lcom/amazon/topaz/styles/StyleSheet$Builder;->styleBuilder:Lcom/amazon/topaz/styles/Style$Builder;

    return-object v0
.end method

.method public bridge synthetic getStyle(Lcom/amazon/topaz/styles/AbstractMatchRule;)Lcom/amazon/topaz/styles/Style;
    .locals 1
    .parameter "x0"

    .prologue
    .line 124
    invoke-super {p0, p1}, Lcom/amazon/topaz/styles/AbstractStyleSheet;->getStyle(Lcom/amazon/topaz/styles/AbstractMatchRule;)Lcom/amazon/topaz/styles/Style;

    move-result-object v0

    return-object v0
.end method

.method public setRule(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "attribute"
    .parameter "value"

    .prologue
    .line 238
    iget-boolean v0, p0, Lcom/amazon/topaz/styles/StyleSheet$Builder;->valid:Z

    if-nez v0, :cond_0

    .line 240
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 243
    :cond_0
    iget-object v0, p0, Lcom/amazon/topaz/styles/StyleSheet$Builder;->styleBuilder:Lcom/amazon/topaz/styles/Style$Builder;

    invoke-virtual {v0, p1, p2}, Lcom/amazon/topaz/styles/Style$Builder;->setAttr(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    return-void
.end method

.method public bridge synthetic toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 124
    invoke-super {p0}, Lcom/amazon/topaz/styles/AbstractStyleSheet;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
