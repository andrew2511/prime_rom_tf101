.class public Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;
.super Ljava/lang/Object;
.source "SAXDescriberNode.java"


# static fields
.field public static final TNC_AfterOpen:I = 0x1

.field public static final TNC_BeforeOpen:I = 0x0

.field public static final TNC_Close:I = 0x2


# instance fields
.field private afterOpenTagCallback:Lcom/amazon/foundation/ICallback;

.field private attributeMappings:Ljava/util/Hashtable;

.field private beforeOpenTagCallback:Lcom/amazon/foundation/ICallback;

.field private children:Ljava/util/Vector;

.field private closeTagCallback:Lcom/amazon/foundation/ICallback;

.field private contentMapping:Lcom/amazon/foundation/internal/IStringValueMapping;

.field private contentValue:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private parent:Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;

.field private tagNameMapping:Lcom/amazon/foundation/internal/IStringValueMapping;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->name:Ljava/lang/String;

    .line 20
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->contentValue:Ljava/lang/String;

    .line 27
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->attributeMappings:Ljava/util/Hashtable;

    .line 37
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->children:Ljava/util/Vector;

    .line 46
    return-void
.end method

.method public constructor <init>(Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;)V
    .locals 1
    .parameter "parent"

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->name:Ljava/lang/String;

    .line 20
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->contentValue:Ljava/lang/String;

    .line 27
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->attributeMappings:Ljava/util/Hashtable;

    .line 37
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->children:Ljava/util/Vector;

    .line 50
    iput-object p1, p0, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->parent:Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;

    .line 51
    return-void
.end method


# virtual methods
.method public addAttributeMapping(Ljava/lang/String;Lcom/amazon/foundation/internal/IStringValueMapping;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 218
    if-eqz p2, :cond_0

    .line 219
    iget-object v0, p0, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->attributeMappings:Ljava/util/Hashtable;

    invoke-virtual {v0, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 221
    :cond_0
    if-eqz p2, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public addChild(Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;)Z
    .locals 1
    .parameter "node"

    .prologue
    .line 167
    if-nez p1, :cond_0

    .line 168
    const/4 v0, 0x0

    .line 172
    :goto_0
    return v0

    .line 170
    :cond_0
    invoke-virtual {p1, p0}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->setParent(Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;)V

    .line 171
    iget-object v0, p0, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->children:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 172
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public addContentValue(Ljava/lang/String;)V
    .locals 1
    .parameter "value"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->contentValue:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->contentValue:Ljava/lang/String;

    .line 65
    return-void
.end method

.method public callTagCallback(I)V
    .locals 1
    .parameter

    .prologue
    .line 110
    packed-switch p1, :pswitch_data_0

    .line 134
    :cond_0
    :goto_0
    return-void

    .line 114
    :pswitch_0
    iget-object v0, p0, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->beforeOpenTagCallback:Lcom/amazon/foundation/ICallback;

    if-eqz v0, :cond_0

    .line 115
    iget-object v0, p0, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->beforeOpenTagCallback:Lcom/amazon/foundation/ICallback;

    invoke-interface {v0}, Lcom/amazon/foundation/ICallback;->execute()V

    goto :goto_0

    .line 121
    :pswitch_1
    iget-object v0, p0, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->afterOpenTagCallback:Lcom/amazon/foundation/ICallback;

    if-eqz v0, :cond_0

    .line 122
    iget-object v0, p0, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->afterOpenTagCallback:Lcom/amazon/foundation/ICallback;

    invoke-interface {v0}, Lcom/amazon/foundation/ICallback;->execute()V

    goto :goto_0

    .line 128
    :pswitch_2
    iget-object v0, p0, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->closeTagCallback:Lcom/amazon/foundation/ICallback;

    if-eqz v0, :cond_0

    .line 129
    iget-object v0, p0, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->closeTagCallback:Lcom/amazon/foundation/ICallback;

    invoke-interface {v0}, Lcom/amazon/foundation/ICallback;->execute()V

    goto :goto_0

    .line 110
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public callTagNameMapping()V
    .locals 2

    .prologue
    .line 140
    iget-object v0, p0, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->tagNameMapping:Lcom/amazon/foundation/internal/IStringValueMapping;

    if-eqz v0, :cond_0

    .line 142
    iget-object v0, p0, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->tagNameMapping:Lcom/amazon/foundation/internal/IStringValueMapping;

    iget-object v1, p0, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->name:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/amazon/foundation/internal/IStringValueMapping;->setValue(Ljava/lang/String;)V

    .line 144
    :cond_0
    return-void
.end method

.method public getChild(Ljava/lang/String;)Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;
    .locals 3
    .parameter "childName"

    .prologue
    .line 179
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v2, p0, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->children:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 181
    iget-object v2, p0, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->children:Ljava/util/Vector;

    invoke-virtual {v2, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;

    .line 182
    .local v0, child:Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v2, v0

    .line 186
    .end local v0           #child:Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;
    :goto_1
    return-object v2

    .line 179
    .restart local v0       #child:Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 186
    .end local v0           #child:Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 191
    iget-object v0, p0, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getNewChild()Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;
    .locals 2

    .prologue
    .line 158
    new-instance v0, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;

    invoke-direct {v0, p0}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;-><init>(Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;)V

    .line 160
    .local v0, child:Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;
    iget-object v1, p0, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->children:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 162
    return-object v0
.end method

.method public getParent()Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->parent:Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;

    return-object v0
.end method

.method public releaseContentValue()V
    .locals 2

    .prologue
    .line 69
    iget-object v0, p0, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->contentMapping:Lcom/amazon/foundation/internal/IStringValueMapping;

    if-eqz v0, :cond_0

    .line 71
    iget-object v0, p0, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->contentMapping:Lcom/amazon/foundation/internal/IStringValueMapping;

    iget-object v1, p0, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->contentValue:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/amazon/foundation/internal/IStringValueMapping;->setValue(Ljava/lang/String;)V

    .line 73
    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->contentValue:Ljava/lang/String;

    .line 74
    return-void
.end method

.method public setAttributeValue(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "attr"
    .parameter "value"

    .prologue
    .line 55
    iget-object v1, p0, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->attributeMappings:Ljava/util/Hashtable;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/foundation/internal/IStringValueMapping;

    .line 56
    .local v0, mappingInter:Lcom/amazon/foundation/internal/IStringValueMapping;
    if-eqz v0, :cond_0

    .line 58
    invoke-interface {v0, p2}, Lcom/amazon/foundation/internal/IStringValueMapping;->setValue(Ljava/lang/String;)V

    .line 60
    :cond_0
    return-void
.end method

.method public setContentMapping(Lcom/amazon/foundation/internal/IStringValueMapping;)Z
    .locals 1
    .parameter "contentMapping"

    .prologue
    .line 202
    if-eqz p1, :cond_0

    .line 203
    iput-object p1, p0, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->contentMapping:Lcom/amazon/foundation/internal/IStringValueMapping;

    .line 205
    :cond_0
    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setName(Ljava/lang/String;)Z
    .locals 1
    .parameter "tagName"

    .prologue
    .line 196
    iput-object p1, p0, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->name:Ljava/lang/String;

    .line 197
    const/4 v0, 0x1

    return v0
.end method

.method public setParent(Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;)V
    .locals 0
    .parameter "parentNode"

    .prologue
    .line 153
    iput-object p1, p0, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->parent:Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;

    .line 154
    return-void
.end method

.method public setTagCallback(ILcom/amazon/foundation/ICallback;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 78
    if-eqz p2, :cond_0

    .line 80
    packed-switch p1, :pswitch_data_0

    .line 98
    :cond_0
    :goto_0
    if-eqz p2, :cond_1

    const/4 v0, 0x1

    :goto_1
    return v0

    .line 84
    :pswitch_0
    iput-object p2, p0, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->beforeOpenTagCallback:Lcom/amazon/foundation/ICallback;

    goto :goto_0

    .line 90
    :pswitch_1
    iput-object p2, p0, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->afterOpenTagCallback:Lcom/amazon/foundation/ICallback;

    goto :goto_0

    .line 96
    :pswitch_2
    iput-object p2, p0, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->closeTagCallback:Lcom/amazon/foundation/ICallback;

    goto :goto_0

    .line 98
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 80
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setTagNameMapping(Lcom/amazon/foundation/internal/IStringValueMapping;)Z
    .locals 1
    .parameter "tagNameMapping"

    .prologue
    .line 210
    if-eqz p1, :cond_0

    .line 211
    iput-object p1, p0, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->tagNameMapping:Lcom/amazon/foundation/internal/IStringValueMapping;

    .line 213
    :cond_0
    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
