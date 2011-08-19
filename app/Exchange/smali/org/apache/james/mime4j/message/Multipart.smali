.class public Lorg/apache/james/mime4j/message/Multipart;
.super Ljava/lang/Object;
.source "Multipart.java"

# interfaces
.implements Lorg/apache/james/mime4j/message/Body;


# instance fields
.field private bodyParts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/apache/james/mime4j/message/BodyPart;",
            ">;"
        }
    .end annotation
.end field

.field private epilogue:Ljava/lang/String;

.field private parent:Lorg/apache/james/mime4j/message/Entity;

.field private preamble:Ljava/lang/String;

.field private subType:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    const-string v0, ""

    iput-object v0, p0, Lorg/apache/james/mime4j/message/Multipart;->preamble:Ljava/lang/String;

    .line 47
    const-string v0, ""

    iput-object v0, p0, Lorg/apache/james/mime4j/message/Multipart;->epilogue:Ljava/lang/String;

    .line 48
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/apache/james/mime4j/message/Multipart;->bodyParts:Ljava/util/List;

    .line 49
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/james/mime4j/message/Multipart;->parent:Lorg/apache/james/mime4j/message/Entity;

    .line 50
    const-string v0, "alternative"

    iput-object v0, p0, Lorg/apache/james/mime4j/message/Multipart;->subType:Ljava/lang/String;

    .line 56
    return-void
.end method


# virtual methods
.method public addBodyPart(Lorg/apache/james/mime4j/message/BodyPart;)V
    .locals 1
    .parameter "bodyPart"

    .prologue
    .line 142
    iget-object v0, p0, Lorg/apache/james/mime4j/message/Multipart;->bodyParts:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 143
    iget-object v0, p0, Lorg/apache/james/mime4j/message/Multipart;->parent:Lorg/apache/james/mime4j/message/Entity;

    invoke-virtual {p1, v0}, Lorg/apache/james/mime4j/message/BodyPart;->setParent(Lorg/apache/james/mime4j/message/Entity;)V

    .line 144
    return-void
.end method

.method public setEpilogue(Ljava/lang/String;)V
    .locals 0
    .parameter "epilogue"

    .prologue
    .line 112
    iput-object p1, p0, Lorg/apache/james/mime4j/message/Multipart;->epilogue:Ljava/lang/String;

    .line 113
    return-void
.end method

.method public setParent(Lorg/apache/james/mime4j/message/Entity;)V
    .locals 2
    .parameter "parent"

    .prologue
    .line 91
    iput-object p1, p0, Lorg/apache/james/mime4j/message/Multipart;->parent:Lorg/apache/james/mime4j/message/Entity;

    .line 92
    iget-object v1, p0, Lorg/apache/james/mime4j/message/Multipart;->bodyParts:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .end local p0
    .local v0, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lorg/apache/james/mime4j/message/BodyPart;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 93
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/james/mime4j/message/BodyPart;

    invoke-virtual {p0, p1}, Lorg/apache/james/mime4j/message/BodyPart;->setParent(Lorg/apache/james/mime4j/message/Entity;)V

    goto :goto_0

    .line 95
    :cond_0
    return-void
.end method

.method public setPreamble(Ljava/lang/String;)V
    .locals 0
    .parameter "preamble"

    .prologue
    .line 161
    iput-object p1, p0, Lorg/apache/james/mime4j/message/Multipart;->preamble:Ljava/lang/String;

    .line 162
    return-void
.end method
