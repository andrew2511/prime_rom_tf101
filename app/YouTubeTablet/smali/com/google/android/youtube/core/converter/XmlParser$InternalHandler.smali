.class final Lcom/google/android/youtube/core/converter/XmlParser$InternalHandler;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "XmlParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/youtube/core/converter/XmlParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "InternalHandler"
.end annotation


# instance fields
.field private final attrsStack:Lcom/google/android/youtube/core/utils/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/youtube/core/utils/Stack",
            "<",
            "Lorg/xml/sax/Attributes;",
            ">;"
        }
    .end annotation
.end field

.field private final charsStack:Lcom/google/android/youtube/core/utils/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/youtube/core/utils/Stack",
            "<",
            "Ljava/lang/StringBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private final path:Lcom/google/android/youtube/core/utils/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/youtube/core/utils/Stack",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public result:Ljava/lang/Object;

.field private final rules:Lcom/google/android/youtube/core/converter/Rules;

.field private final stack:Lcom/google/android/youtube/core/utils/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/youtube/core/utils/Stack",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/youtube/core/converter/Rules;)V
    .locals 2
    .parameter "rules"

    .prologue
    .line 195
    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    .line 196
    iput-object p1, p0, Lcom/google/android/youtube/core/converter/XmlParser$InternalHandler;->rules:Lcom/google/android/youtube/core/converter/Rules;

    .line 197
    new-instance v0, Lcom/google/android/youtube/core/utils/Stack;

    invoke-direct {v0}, Lcom/google/android/youtube/core/utils/Stack;-><init>()V

    iput-object v0, p0, Lcom/google/android/youtube/core/converter/XmlParser$InternalHandler;->path:Lcom/google/android/youtube/core/utils/Stack;

    .line 199
    iget-object v0, p0, Lcom/google/android/youtube/core/converter/XmlParser$InternalHandler;->path:Lcom/google/android/youtube/core/utils/Stack;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/utils/Stack;->offer(Ljava/lang/Object;)Z

    .line 200
    new-instance v0, Lcom/google/android/youtube/core/utils/Stack;

    invoke-direct {v0}, Lcom/google/android/youtube/core/utils/Stack;-><init>()V

    iput-object v0, p0, Lcom/google/android/youtube/core/converter/XmlParser$InternalHandler;->attrsStack:Lcom/google/android/youtube/core/utils/Stack;

    .line 201
    new-instance v0, Lcom/google/android/youtube/core/utils/Stack;

    invoke-direct {v0}, Lcom/google/android/youtube/core/utils/Stack;-><init>()V

    iput-object v0, p0, Lcom/google/android/youtube/core/converter/XmlParser$InternalHandler;->charsStack:Lcom/google/android/youtube/core/utils/Stack;

    .line 202
    new-instance v0, Lcom/google/android/youtube/core/utils/Stack;

    invoke-direct {v0}, Lcom/google/android/youtube/core/utils/Stack;-><init>()V

    iput-object v0, p0, Lcom/google/android/youtube/core/converter/XmlParser$InternalHandler;->stack:Lcom/google/android/youtube/core/utils/Stack;

    .line 203
    return-void
.end method


# virtual methods
.method public final characters([CII)V
    .locals 2
    .parameter "data"
    .parameter "start"
    .parameter "length"

    .prologue
    .line 232
    iget-object v1, p0, Lcom/google/android/youtube/core/converter/XmlParser$InternalHandler;->path:Lcom/google/android/youtube/core/utils/Stack;

    invoke-virtual {v1}, Lcom/google/android/youtube/core/utils/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 233
    .local v0, currentPath:Ljava/lang/String;
    iget-object v1, p0, Lcom/google/android/youtube/core/converter/XmlParser$InternalHandler;->rules:Lcom/google/android/youtube/core/converter/Rules;

    invoke-virtual {v1, v0}, Lcom/google/android/youtube/core/converter/Rules;->get(Ljava/lang/String;)Lcom/google/android/youtube/core/converter/XmlParser$Rule;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 234
    iget-object v1, p0, Lcom/google/android/youtube/core/converter/XmlParser$InternalHandler;->charsStack:Lcom/google/android/youtube/core/utils/Stack;

    invoke-virtual {v1}, Lcom/google/android/youtube/core/utils/Stack;->peek()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1, p2, p3}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 236
    :cond_0
    return-void
.end method

.method public final endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter "uri"
    .parameter "localName"
    .parameter "tag"

    .prologue
    .line 219
    iget-object v5, p0, Lcom/google/android/youtube/core/converter/XmlParser$InternalHandler;->path:Lcom/google/android/youtube/core/utils/Stack;

    invoke-virtual {v5}, Lcom/google/android/youtube/core/utils/Stack;->poll()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 220
    .local v2, currentPath:Ljava/lang/String;
    iget-object v5, p0, Lcom/google/android/youtube/core/converter/XmlParser$InternalHandler;->rules:Lcom/google/android/youtube/core/converter/Rules;

    invoke-virtual {v5, v2}, Lcom/google/android/youtube/core/converter/Rules;->get(Ljava/lang/String;)Lcom/google/android/youtube/core/converter/XmlParser$Rule;

    move-result-object v4

    .line 221
    .local v4, rule:Lcom/google/android/youtube/core/converter/XmlParser$Rule;
    if-eqz v4, :cond_0

    .line 222
    iget-object v5, p0, Lcom/google/android/youtube/core/converter/XmlParser$InternalHandler;->attrsStack:Lcom/google/android/youtube/core/utils/Stack;

    invoke-virtual {v5}, Lcom/google/android/youtube/core/utils/Stack;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/xml/sax/Attributes;

    .line 223
    .local v0, attrs:Lorg/xml/sax/Attributes;
    iget-object v5, p0, Lcom/google/android/youtube/core/converter/XmlParser$InternalHandler;->charsStack:Lcom/google/android/youtube/core/utils/Stack;

    invoke-virtual {v5}, Lcom/google/android/youtube/core/utils/Stack;->poll()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 224
    .local v1, chars:Ljava/lang/String;
    iget-object v5, p0, Lcom/google/android/youtube/core/converter/XmlParser$InternalHandler;->stack:Lcom/google/android/youtube/core/utils/Stack;

    invoke-virtual {v5}, Lcom/google/android/youtube/core/utils/Stack;->peek()Ljava/lang/Object;

    move-result-object v3

    .line 225
    .local v3, resultCandidate:Ljava/lang/Object;
    if-eqz v3, :cond_1

    move-object v5, v3

    :goto_0
    iput-object v5, p0, Lcom/google/android/youtube/core/converter/XmlParser$InternalHandler;->result:Ljava/lang/Object;

    .line 226
    iget-object v5, p0, Lcom/google/android/youtube/core/converter/XmlParser$InternalHandler;->stack:Lcom/google/android/youtube/core/utils/Stack;

    invoke-interface {v4, v5, v0, v1}, Lcom/google/android/youtube/core/converter/XmlParser$Rule;->end(Lcom/google/android/youtube/core/utils/Stack;Lorg/xml/sax/Attributes;Ljava/lang/String;)V

    .line 228
    .end local v0           #attrs:Lorg/xml/sax/Attributes;
    .end local v1           #chars:Ljava/lang/String;
    .end local v3           #resultCandidate:Ljava/lang/Object;
    :cond_0
    return-void

    .line 225
    .restart local v0       #attrs:Lorg/xml/sax/Attributes;
    .restart local v1       #chars:Ljava/lang/String;
    .restart local v3       #resultCandidate:Ljava/lang/Object;
    :cond_1
    iget-object v5, p0, Lcom/google/android/youtube/core/converter/XmlParser$InternalHandler;->result:Ljava/lang/Object;

    goto :goto_0
.end method

.method public final startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 4
    .parameter "uri"
    .parameter "localName"
    .parameter "tag"
    .parameter "attrs"

    .prologue
    .line 207
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/google/android/youtube/core/converter/XmlParser$InternalHandler;->path:Lcom/google/android/youtube/core/utils/Stack;

    invoke-virtual {v2}, Lcom/google/android/youtube/core/utils/Stack;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 208
    .local v0, currentPath:Ljava/lang/String;
    iget-object v2, p0, Lcom/google/android/youtube/core/converter/XmlParser$InternalHandler;->path:Lcom/google/android/youtube/core/utils/Stack;

    invoke-virtual {v2, v0}, Lcom/google/android/youtube/core/utils/Stack;->offer(Ljava/lang/Object;)Z

    .line 209
    iget-object v2, p0, Lcom/google/android/youtube/core/converter/XmlParser$InternalHandler;->rules:Lcom/google/android/youtube/core/converter/Rules;

    invoke-virtual {v2, v0}, Lcom/google/android/youtube/core/converter/Rules;->get(Ljava/lang/String;)Lcom/google/android/youtube/core/converter/XmlParser$Rule;

    move-result-object v1

    .line 210
    .local v1, rule:Lcom/google/android/youtube/core/converter/XmlParser$Rule;
    if-eqz v1, :cond_0

    .line 211
    iget-object v2, p0, Lcom/google/android/youtube/core/converter/XmlParser$InternalHandler;->attrsStack:Lcom/google/android/youtube/core/utils/Stack;

    if-eqz p4, :cond_1

    new-instance v3, Lorg/xml/sax/helpers/AttributesImpl;

    invoke-direct {v3, p4}, Lorg/xml/sax/helpers/AttributesImpl;-><init>(Lorg/xml/sax/Attributes;)V

    :goto_0
    invoke-virtual {v2, v3}, Lcom/google/android/youtube/core/utils/Stack;->offer(Ljava/lang/Object;)Z

    .line 212
    iget-object v2, p0, Lcom/google/android/youtube/core/converter/XmlParser$InternalHandler;->charsStack:Lcom/google/android/youtube/core/utils/Stack;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Lcom/google/android/youtube/core/utils/Stack;->offer(Ljava/lang/Object;)Z

    .line 213
    iget-object v2, p0, Lcom/google/android/youtube/core/converter/XmlParser$InternalHandler;->stack:Lcom/google/android/youtube/core/utils/Stack;

    invoke-interface {v1, v2, p4}, Lcom/google/android/youtube/core/converter/XmlParser$Rule;->start(Lcom/google/android/youtube/core/utils/Stack;Lorg/xml/sax/Attributes;)V

    .line 215
    :cond_0
    return-void

    .line 211
    :cond_1
    invoke-static {}, Lcom/google/android/youtube/core/converter/XmlParser;->access$100()Lorg/xml/sax/Attributes;

    move-result-object v3

    goto :goto_0
.end method
