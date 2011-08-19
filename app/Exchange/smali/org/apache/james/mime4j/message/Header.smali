.class public Lorg/apache/james/mime4j/message/Header;
.super Ljava/lang/Object;
.source "Header.java"


# instance fields
.field private fieldMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lorg/apache/james/mime4j/field/Field;",
            ">;>;"
        }
    .end annotation
.end field

.field private fields:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/apache/james/mime4j/field/Field;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/apache/james/mime4j/message/Header;->fields:Ljava/util/List;

    .line 48
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/james/mime4j/message/Header;->fieldMap:Ljava/util/HashMap;

    .line 54
    return-void
.end method


# virtual methods
.method public addField(Lorg/apache/james/mime4j/field/Field;)V
    .locals 3
    .parameter "field"

    .prologue
    .line 82
    iget-object v1, p0, Lorg/apache/james/mime4j/message/Header;->fieldMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Lorg/apache/james/mime4j/field/Field;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 83
    .local v0, values:Ljava/util/List;,"Ljava/util/List<Lorg/apache/james/mime4j/field/Field;>;"
    if-nez v0, :cond_0

    .line 84
    new-instance v0, Ljava/util/LinkedList;

    .end local v0           #values:Ljava/util/List;,"Ljava/util/List<Lorg/apache/james/mime4j/field/Field;>;"
    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 85
    .restart local v0       #values:Ljava/util/List;,"Ljava/util/List<Lorg/apache/james/mime4j/field/Field;>;"
    iget-object v1, p0, Lorg/apache/james/mime4j/message/Header;->fieldMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Lorg/apache/james/mime4j/field/Field;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    :cond_0
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 88
    iget-object v1, p0, Lorg/apache/james/mime4j/message/Header;->fields:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 89
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 135
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 136
    .local v1, str:Ljava/lang/StringBuffer;
    iget-object v2, p0, Lorg/apache/james/mime4j/message/Header;->fields:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .end local p0
    .local v0, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lorg/apache/james/mime4j/field/Field;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 137
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/james/mime4j/field/Field;

    invoke-virtual {p0}, Lorg/apache/james/mime4j/field/Field;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 138
    const-string v2, "\r\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 140
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
