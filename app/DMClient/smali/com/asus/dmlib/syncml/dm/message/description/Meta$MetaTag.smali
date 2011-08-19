.class Lcom/asus/dmlib/syncml/dm/message/description/Meta$MetaTag;
.super Ljava/lang/Object;
.source "Meta.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/asus/dmlib/syncml/dm/message/description/Meta;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MetaTag"
.end annotation


# instance fields
.field private attributes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private tagName:Ljava/lang/String;

.field private tagValue:Ljava/lang/String;

.field final synthetic this$0:Lcom/asus/dmlib/syncml/dm/message/description/Meta;


# direct methods
.method public constructor <init>(Lcom/asus/dmlib/syncml/dm/message/description/Meta;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter "tag"
    .parameter "value"

    .prologue
    .line 242
    iput-object p1, p0, Lcom/asus/dmlib/syncml/dm/message/description/Meta$MetaTag;->this$0:Lcom/asus/dmlib/syncml/dm/message/description/Meta;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 243
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/asus/dmlib/syncml/dm/message/description/Meta$MetaTag;->attributes:Ljava/util/Map;

    .line 244
    iput-object p2, p0, Lcom/asus/dmlib/syncml/dm/message/description/Meta$MetaTag;->tagName:Ljava/lang/String;

    .line 245
    iput-object p3, p0, Lcom/asus/dmlib/syncml/dm/message/description/Meta$MetaTag;->tagValue:Ljava/lang/String;

    .line 246
    iget-object v0, p0, Lcom/asus/dmlib/syncml/dm/message/description/Meta$MetaTag;->attributes:Ljava/util/Map;

    const-string v1, "xmlns"

    const-string v2, "syncml:metinf"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 247
    return-void
.end method

.method public constructor <init>(Lcom/asus/dmlib/syncml/dm/message/description/Meta;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter "tagName"
    .parameter "tagValue"
    .parameter "attributeName"
    .parameter "attributeValue"

    .prologue
    .line 250
    iput-object p1, p0, Lcom/asus/dmlib/syncml/dm/message/description/Meta$MetaTag;->this$0:Lcom/asus/dmlib/syncml/dm/message/description/Meta;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 251
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/asus/dmlib/syncml/dm/message/description/Meta$MetaTag;->attributes:Ljava/util/Map;

    .line 252
    iput-object p2, p0, Lcom/asus/dmlib/syncml/dm/message/description/Meta$MetaTag;->tagName:Ljava/lang/String;

    .line 253
    iput-object p3, p0, Lcom/asus/dmlib/syncml/dm/message/description/Meta$MetaTag;->tagValue:Ljava/lang/String;

    .line 254
    iget-object v0, p0, Lcom/asus/dmlib/syncml/dm/message/description/Meta$MetaTag;->attributes:Ljava/util/Map;

    const-string v1, "xmlns"

    const-string v2, "syncml:metinf"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 255
    if-eqz p4, :cond_0

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_1

    .line 258
    :cond_0
    :goto_0
    return-void

    .line 257
    :cond_1
    iget-object v0, p0, Lcom/asus/dmlib/syncml/dm/message/description/Meta$MetaTag;->attributes:Ljava/util/Map;

    invoke-interface {v0, p4, p5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/asus/dmlib/syncml/dm/message/description/Meta$MetaTag;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 237
    iget-object v0, p0, Lcom/asus/dmlib/syncml/dm/message/description/Meta$MetaTag;->tagName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/asus/dmlib/syncml/dm/message/description/Meta$MetaTag;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 237
    iget-object v0, p0, Lcom/asus/dmlib/syncml/dm/message/description/Meta$MetaTag;->tagValue:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public addAttribute(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "attributeName"
    .parameter "attributeValue"

    .prologue
    .line 261
    iget-object v0, p0, Lcom/asus/dmlib/syncml/dm/message/description/Meta$MetaTag;->attributes:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 262
    return-void
.end method

.method public getAttributeNames()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 277
    iget-object v0, p0, Lcom/asus/dmlib/syncml/dm/message/description/Meta$MetaTag;->attributes:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getAttributeValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "attributeName"

    .prologue
    .line 281
    iget-object v0, p0, Lcom/asus/dmlib/syncml/dm/message/description/Meta$MetaTag;->attributes:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public getAttributes()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 273
    iget-object v0, p0, Lcom/asus/dmlib/syncml/dm/message/description/Meta$MetaTag;->attributes:Ljava/util/Map;

    return-object v0
.end method

.method public getTagName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 265
    iget-object v0, p0, Lcom/asus/dmlib/syncml/dm/message/description/Meta$MetaTag;->tagName:Ljava/lang/String;

    return-object v0
.end method

.method public getTagValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 269
    iget-object v0, p0, Lcom/asus/dmlib/syncml/dm/message/description/Meta$MetaTag;->tagValue:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 285
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 286
    .local v2, buf:Ljava/lang/StringBuffer;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "<"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/asus/dmlib/syncml/dm/message/description/Meta$MetaTag;->tagName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 288
    iget-object v4, p0, Lcom/asus/dmlib/syncml/dm/message/description/Meta$MetaTag;->attributes:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 289
    .local v0, attr:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 291
    .local v3, i:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 292
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 293
    .local v1, attrName:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 294
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "=\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v4, p0, Lcom/asus/dmlib/syncml/dm/message/description/Meta$MetaTag;->attributes:Ljava/util/Map;

    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 297
    .end local v1           #attrName:Ljava/lang/String;
    :cond_0
    const-string v4, ">"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 298
    iget-object v4, p0, Lcom/asus/dmlib/syncml/dm/message/description/Meta$MetaTag;->tagValue:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 299
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "</"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/asus/dmlib/syncml/dm/message/description/Meta$MetaTag;->tagName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ">"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 301
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method
