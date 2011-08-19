.class final Lorg/apache/xml/serializer/dom3/DOMStringListImpl;
.super Ljava/lang/Object;
.source "DOMStringListImpl.java"

# interfaces
.implements Lorg/w3c/dom/DOMStringList;


# instance fields
.field private fStrings:Ljava/util/Vector;


# direct methods
.method constructor <init>()V
    .registers 2

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/apache/xml/serializer/dom3/DOMStringListImpl;->fStrings:Ljava/util/Vector;

    .line 43
    return-void
.end method

.method constructor <init>(Ljava/util/Vector;)V
    .registers 2
    .parameter "params"

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lorg/apache/xml/serializer/dom3/DOMStringListImpl;->fStrings:Ljava/util/Vector;

    .line 50
    return-void
.end method

.method constructor <init>([Ljava/lang/String;)V
    .registers 5
    .parameter "params"

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    iput-object v1, p0, Lorg/apache/xml/serializer/dom3/DOMStringListImpl;->fStrings:Ljava/util/Vector;

    .line 57
    if-eqz p1, :cond_1a

    .line 58
    const/4 v0, 0x0

    .local v0, i:I
    :goto_d
    array-length v1, p1

    if-ge v0, v1, :cond_1a

    .line 59
    iget-object v1, p0, Lorg/apache/xml/serializer/dom3/DOMStringListImpl;->fStrings:Ljava/util/Vector;

    aget-object v2, p1, v0

    invoke-virtual {v1, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 58
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    .line 62
    .end local v0           #i:I
    :cond_1a
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/String;)V
    .registers 3
    .parameter "param"

    .prologue
    .line 96
    iget-object v0, p0, Lorg/apache/xml/serializer/dom3/DOMStringListImpl;->fStrings:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 97
    return-void
.end method

.method public contains(Ljava/lang/String;)Z
    .registers 3
    .parameter "param"

    .prologue
    .line 86
    iget-object v0, p0, Lorg/apache/xml/serializer/dom3/DOMStringListImpl;->fStrings:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public getLength()I
    .registers 2

    .prologue
    .line 79
    iget-object v0, p0, Lorg/apache/xml/serializer/dom3/DOMStringListImpl;->fStrings:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    return v0
.end method

.method public item(I)Ljava/lang/String;
    .registers 4
    .parameter "index"

    .prologue
    .line 69
    :try_start_0
    iget-object v1, p0, Lorg/apache/xml/serializer/dom3/DOMStringListImpl;->fStrings:Ljava/util/Vector;

    invoke-virtual {v1, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/String;
    :try_end_8
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_8} :catch_a

    move-object v1, p0

    .line 71
    :goto_9
    return-object v1

    .line 70
    :catch_a
    move-exception v1

    move-object v0, v1

    .line 71
    .local v0, e:Ljava/lang/ArrayIndexOutOfBoundsException;
    const/4 v1, 0x0

    goto :goto_9
.end method
