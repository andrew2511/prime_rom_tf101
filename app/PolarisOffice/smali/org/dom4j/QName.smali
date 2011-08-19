.class public Lorg/dom4j/QName;
.super Ljava/lang/Object;
.source "QName.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field static class$0:Ljava/lang/Class;

.field private static singleton:Lorg/dom4j/util/SingletonStrategy;


# instance fields
.field private documentFactory:Lorg/dom4j/DocumentFactory;

.field private hashCode:I

.field private name:Ljava/lang/String;

.field private transient namespace:Lorg/dom4j/Namespace;

.field private qualifiedName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    .line 29
    const/4 v4, 0x0

    sput-object v4, Lorg/dom4j/QName;->singleton:Lorg/dom4j/util/SingletonStrategy;

    .line 33
    :try_start_0
    const-string v1, "org.dom4j.util.SimpleSingleton"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 34
    .local v1, defaultSingletonClass:Ljava/lang/String;
    const/4 v0, 0x0

    .line 36
    .local v0, clazz:Ljava/lang/Class;
    move-object v3, v1

    .line 38
    .local v3, singletonClass:Ljava/lang/String;
    :try_start_1
    const-string v4, "org.dom4j.QName.singleton.strategy"

    .line 37
    invoke-static {v4, v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 39
    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    .line 47
    :goto_0
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    .end local v0           #clazz:Ljava/lang/Class;
    check-cast v0, Lorg/dom4j/util/SingletonStrategy;

    sput-object v0, Lorg/dom4j/QName;->singleton:Lorg/dom4j/util/SingletonStrategy;

    .line 48
    sget-object v4, Lorg/dom4j/QName;->singleton:Lorg/dom4j/util/SingletonStrategy;

    sget-object v5, Lorg/dom4j/QName;->class$0:Ljava/lang/Class;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    if-nez v5, :cond_0

    :try_start_3
    const-string v5, "org.dom4j.tree.QNameCache"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    move-result-object v5

    :try_start_4
    sput-object v5, Lorg/dom4j/QName;->class$0:Ljava/lang/Class;

    :cond_0
    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/dom4j/util/SingletonStrategy;->setSingletonClassName(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 27
    .end local v1           #defaultSingletonClass:Ljava/lang/String;
    .end local v3           #singletonClass:Ljava/lang/String;
    :goto_1
    return-void

    .line 40
    .restart local v0       #clazz:Ljava/lang/Class;
    .restart local v1       #defaultSingletonClass:Ljava/lang/String;
    .restart local v3       #singletonClass:Ljava/lang/String;
    :catch_0
    move-exception v4

    move-object v2, v4

    .line 42
    .local v2, exc1:Ljava/lang/Exception;
    move-object v3, v1

    .line 43
    :try_start_5
    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    move-result-object v0

    goto :goto_0

    .line 48
    .end local v0           #clazz:Ljava/lang/Class;
    .end local v2           #exc1:Ljava/lang/Exception;
    :catch_1
    move-exception v4

    :try_start_6
    new-instance v5, Ljava/lang/NoClassDefFoundError;

    invoke-virtual {v4}, Ljava/lang/ClassNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v4}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    .line 49
    .end local v1           #defaultSingletonClass:Ljava/lang/String;
    .end local v3           #singletonClass:Ljava/lang/String;
    :catch_2
    move-exception v4

    goto :goto_1

    .line 44
    .restart local v0       #clazz:Ljava/lang/Class;
    .restart local v1       #defaultSingletonClass:Ljava/lang/String;
    .restart local v2       #exc1:Ljava/lang/Exception;
    .restart local v3       #singletonClass:Ljava/lang/String;
    :catch_3
    move-exception v4

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "name"

    .prologue
    .line 69
    sget-object v0, Lorg/dom4j/Namespace;->NO_NAMESPACE:Lorg/dom4j/Namespace;

    invoke-direct {p0, p1, v0}, Lorg/dom4j/QName;-><init>(Ljava/lang/String;Lorg/dom4j/Namespace;)V

    .line 70
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/dom4j/Namespace;)V
    .locals 1
    .parameter "name"
    .parameter "namespace"

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    if-nez p1, :cond_0

    const-string v0, ""

    :goto_0
    iput-object v0, p0, Lorg/dom4j/QName;->name:Ljava/lang/String;

    .line 74
    if-nez p2, :cond_1

    sget-object v0, Lorg/dom4j/Namespace;->NO_NAMESPACE:Lorg/dom4j/Namespace;

    :goto_1
    iput-object v0, p0, Lorg/dom4j/QName;->namespace:Lorg/dom4j/Namespace;

    .line 76
    return-void

    :cond_0
    move-object v0, p1

    .line 73
    goto :goto_0

    :cond_1
    move-object v0, p2

    .line 75
    goto :goto_1
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/dom4j/Namespace;Ljava/lang/String;)V
    .locals 1
    .parameter "name"
    .parameter "namespace"
    .parameter "qualifiedName"

    .prologue
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    if-nez p1, :cond_0

    const-string v0, ""

    :goto_0
    iput-object v0, p0, Lorg/dom4j/QName;->name:Ljava/lang/String;

    .line 80
    iput-object p3, p0, Lorg/dom4j/QName;->qualifiedName:Ljava/lang/String;

    .line 81
    if-nez p2, :cond_1

    sget-object v0, Lorg/dom4j/Namespace;->NO_NAMESPACE:Lorg/dom4j/Namespace;

    :goto_1
    iput-object v0, p0, Lorg/dom4j/QName;->namespace:Lorg/dom4j/Namespace;

    .line 83
    return-void

    :cond_0
    move-object v0, p1

    .line 79
    goto :goto_0

    :cond_1
    move-object v0, p2

    .line 82
    goto :goto_1
.end method

.method public static get(Ljava/lang/String;)Lorg/dom4j/QName;
    .locals 1
    .parameter "name"

    .prologue
    .line 86
    invoke-static {}, Lorg/dom4j/QName;->getCache()Lorg/dom4j/tree/QNameCache;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/dom4j/tree/QNameCache;->get(Ljava/lang/String;)Lorg/dom4j/QName;

    move-result-object v0

    return-object v0
.end method

.method public static get(Ljava/lang/String;Ljava/lang/String;)Lorg/dom4j/QName;
    .locals 1
    .parameter "qualifiedName"
    .parameter "uri"

    .prologue
    .line 106
    if-nez p1, :cond_0

    .line 107
    invoke-static {}, Lorg/dom4j/QName;->getCache()Lorg/dom4j/tree/QNameCache;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/dom4j/tree/QNameCache;->get(Ljava/lang/String;)Lorg/dom4j/QName;

    move-result-object v0

    .line 109
    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lorg/dom4j/QName;->getCache()Lorg/dom4j/tree/QNameCache;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lorg/dom4j/tree/QNameCache;->get(Ljava/lang/String;Ljava/lang/String;)Lorg/dom4j/QName;

    move-result-object v0

    goto :goto_0
.end method

.method public static get(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/dom4j/QName;
    .locals 2
    .parameter "name"
    .parameter "prefix"
    .parameter "uri"

    .prologue
    .line 94
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    if-nez p2, :cond_1

    .line 95
    invoke-static {p0}, Lorg/dom4j/QName;->get(Ljava/lang/String;)Lorg/dom4j/QName;

    move-result-object v0

    .line 101
    :goto_0
    return-object v0

    .line 96
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_3

    .line 97
    :cond_2
    invoke-static {}, Lorg/dom4j/QName;->getCache()Lorg/dom4j/tree/QNameCache;

    move-result-object v0

    invoke-static {p2}, Lorg/dom4j/Namespace;->get(Ljava/lang/String;)Lorg/dom4j/Namespace;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lorg/dom4j/tree/QNameCache;->get(Ljava/lang/String;Lorg/dom4j/Namespace;)Lorg/dom4j/QName;

    move-result-object v0

    goto :goto_0

    .line 98
    :cond_3
    if-nez p2, :cond_4

    .line 99
    invoke-static {p0}, Lorg/dom4j/QName;->get(Ljava/lang/String;)Lorg/dom4j/QName;

    move-result-object v0

    goto :goto_0

    .line 101
    :cond_4
    invoke-static {}, Lorg/dom4j/QName;->getCache()Lorg/dom4j/tree/QNameCache;

    move-result-object v0

    invoke-static {p1, p2}, Lorg/dom4j/Namespace;->get(Ljava/lang/String;Ljava/lang/String;)Lorg/dom4j/Namespace;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lorg/dom4j/tree/QNameCache;->get(Ljava/lang/String;Lorg/dom4j/Namespace;)Lorg/dom4j/QName;

    move-result-object v0

    goto :goto_0
.end method

.method public static get(Ljava/lang/String;Lorg/dom4j/Namespace;)Lorg/dom4j/QName;
    .locals 1
    .parameter "name"
    .parameter "namespace"

    .prologue
    .line 90
    invoke-static {}, Lorg/dom4j/QName;->getCache()Lorg/dom4j/tree/QNameCache;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lorg/dom4j/tree/QNameCache;->get(Ljava/lang/String;Lorg/dom4j/Namespace;)Lorg/dom4j/QName;

    move-result-object v0

    return-object v0
.end method

.method public static get(Ljava/lang/String;Lorg/dom4j/Namespace;Ljava/lang/String;)Lorg/dom4j/QName;
    .locals 1
    .parameter "localName"
    .parameter "namespace"
    .parameter "qualifiedName"

    .prologue
    .line 115
    invoke-static {}, Lorg/dom4j/QName;->getCache()Lorg/dom4j/tree/QNameCache;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lorg/dom4j/tree/QNameCache;->get(Ljava/lang/String;Lorg/dom4j/Namespace;Ljava/lang/String;)Lorg/dom4j/QName;

    move-result-object v0

    return-object v0
.end method

.method private static getCache()Lorg/dom4j/tree/QNameCache;
    .locals 2

    .prologue
    .line 253
    sget-object v1, Lorg/dom4j/QName;->singleton:Lorg/dom4j/util/SingletonStrategy;

    invoke-interface {v1}, Lorg/dom4j/util/SingletonStrategy;->instance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/dom4j/tree/QNameCache;

    .line 254
    .local v0, cache:Lorg/dom4j/tree/QNameCache;
    return-object v0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 3
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 244
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 245
    .local v0, prefix:Ljava/lang/String;
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 247
    .local v1, uri:Ljava/lang/String;
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 249
    invoke-static {v0, v1}, Lorg/dom4j/Namespace;->get(Ljava/lang/String;Ljava/lang/String;)Lorg/dom4j/Namespace;

    move-result-object v2

    iput-object v2, p0, Lorg/dom4j/QName;->namespace:Lorg/dom4j/Namespace;

    .line 250
    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 1
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 236
    iget-object v0, p0, Lorg/dom4j/QName;->namespace:Lorg/dom4j/Namespace;

    invoke-virtual {v0}, Lorg/dom4j/Namespace;->getPrefix()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 237
    iget-object v0, p0, Lorg/dom4j/QName;->namespace:Lorg/dom4j/Namespace;

    invoke-virtual {v0}, Lorg/dom4j/Namespace;->getURI()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 239
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 240
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .parameter "object"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 200
    if-ne p0, p1, :cond_0

    move v2, v5

    .line 212
    :goto_0
    return v2

    .line 202
    :cond_0
    instance-of v2, p1, Lorg/dom4j/QName;

    if-eqz v2, :cond_2

    .line 203
    move-object v0, p1

    check-cast v0, Lorg/dom4j/QName;

    move-object v1, v0

    .line 206
    .local v1, that:Lorg/dom4j/QName;
    invoke-virtual {p0}, Lorg/dom4j/QName;->hashCode()I

    move-result v2

    invoke-virtual {v1}, Lorg/dom4j/QName;->hashCode()I

    move-result v3

    if-ne v2, v3, :cond_2

    .line 207
    invoke-virtual {p0}, Lorg/dom4j/QName;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lorg/dom4j/QName;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 208
    invoke-virtual {p0}, Lorg/dom4j/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lorg/dom4j/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v2, v5

    goto :goto_0

    :cond_1
    move v2, v4

    .line 207
    goto :goto_0

    .end local v1           #that:Lorg/dom4j/QName;
    :cond_2
    move v2, v4

    .line 212
    goto :goto_0
.end method

.method public getDocumentFactory()Lorg/dom4j/DocumentFactory;
    .locals 1

    .prologue
    .line 226
    iget-object v0, p0, Lorg/dom4j/QName;->documentFactory:Lorg/dom4j/DocumentFactory;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lorg/dom4j/QName;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getNamespace()Lorg/dom4j/Namespace;
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lorg/dom4j/QName;->namespace:Lorg/dom4j/Namespace;

    return-object v0
.end method

.method public getNamespacePrefix()Ljava/lang/String;
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lorg/dom4j/QName;->namespace:Lorg/dom4j/Namespace;

    if-nez v0, :cond_0

    .line 162
    const-string v0, ""

    .line 165
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/dom4j/QName;->namespace:Lorg/dom4j/Namespace;

    invoke-virtual {v0}, Lorg/dom4j/Namespace;->getPrefix()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getNamespaceURI()Ljava/lang/String;
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lorg/dom4j/QName;->namespace:Lorg/dom4j/Namespace;

    if-nez v0, :cond_0

    .line 175
    const-string v0, ""

    .line 178
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/dom4j/QName;->namespace:Lorg/dom4j/Namespace;

    invoke-virtual {v0}, Lorg/dom4j/Namespace;->getURI()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getQualifiedName()Ljava/lang/String;
    .locals 3

    .prologue
    .line 133
    iget-object v1, p0, Lorg/dom4j/QName;->qualifiedName:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 134
    invoke-virtual {p0}, Lorg/dom4j/QName;->getNamespacePrefix()Ljava/lang/String;

    move-result-object v0

    .line 136
    .local v0, prefix:Ljava/lang/String;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    .line 137
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lorg/dom4j/QName;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/dom4j/QName;->qualifiedName:Ljava/lang/String;

    .line 143
    .end local v0           #prefix:Ljava/lang/String;
    :cond_0
    :goto_0
    iget-object v1, p0, Lorg/dom4j/QName;->qualifiedName:Ljava/lang/String;

    return-object v1

    .line 139
    .restart local v0       #prefix:Ljava/lang/String;
    :cond_1
    iget-object v1, p0, Lorg/dom4j/QName;->name:Ljava/lang/String;

    iput-object v1, p0, Lorg/dom4j/QName;->qualifiedName:Ljava/lang/String;

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 188
    iget v0, p0, Lorg/dom4j/QName;->hashCode:I

    if-nez v0, :cond_0

    .line 189
    invoke-virtual {p0}, Lorg/dom4j/QName;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    invoke-virtual {p0}, Lorg/dom4j/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/dom4j/QName;->hashCode:I

    .line 191
    iget v0, p0, Lorg/dom4j/QName;->hashCode:I

    if-nez v0, :cond_0

    .line 192
    const v0, 0xbabe

    iput v0, p0, Lorg/dom4j/QName;->hashCode:I

    .line 196
    :cond_0
    iget v0, p0, Lorg/dom4j/QName;->hashCode:I

    return v0
.end method

.method public setDocumentFactory(Lorg/dom4j/DocumentFactory;)V
    .locals 0
    .parameter "documentFactory"

    .prologue
    .line 230
    iput-object p1, p0, Lorg/dom4j/QName;->documentFactory:Lorg/dom4j/DocumentFactory;

    .line 231
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 216
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string v1, " [name: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {p0}, Lorg/dom4j/QName;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, " namespace: \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    .line 217
    invoke-virtual {p0}, Lorg/dom4j/QName;->getNamespace()Lorg/dom4j/Namespace;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "\"]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    .line 216
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
