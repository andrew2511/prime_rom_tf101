.class public Lorg/xml/sax/helpers/AttributeListImpl;
.super Ljava/lang/Object;
.source "AttributeListImpl.java"

# interfaces
.implements Lorg/xml/sax/AttributeList;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field names:Ljava/util/Vector;

.field types:Ljava/util/Vector;

.field values:Ljava/util/Vector;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 308
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/xml/sax/helpers/AttributeListImpl;->names:Ljava/util/Vector;

    .line 309
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/xml/sax/helpers/AttributeListImpl;->types:Ljava/util/Vector;

    .line 310
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/xml/sax/helpers/AttributeListImpl;->values:Ljava/util/Vector;

    .line 81
    return-void
.end method

.method public constructor <init>(Lorg/xml/sax/AttributeList;)V
    .registers 3
    .parameter "atts"

    .prologue
    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 308
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/xml/sax/helpers/AttributeListImpl;->names:Ljava/util/Vector;

    .line 309
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/xml/sax/helpers/AttributeListImpl;->types:Ljava/util/Vector;

    .line 310
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/xml/sax/helpers/AttributeListImpl;->values:Ljava/util/Vector;

    .line 96
    invoke-virtual {p0, p1}, Lorg/xml/sax/helpers/AttributeListImpl;->setAttributeList(Lorg/xml/sax/AttributeList;)V

    .line 97
    return-void
.end method


# virtual methods
.method public addAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .parameter "name"
    .parameter "type"
    .parameter "value"

    .prologue
    .line 141
    iget-object v0, p0, Lorg/xml/sax/helpers/AttributeListImpl;->names:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 142
    iget-object v0, p0, Lorg/xml/sax/helpers/AttributeListImpl;->types:Ljava/util/Vector;

    invoke-virtual {v0, p2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 143
    iget-object v0, p0, Lorg/xml/sax/helpers/AttributeListImpl;->values:Ljava/util/Vector;

    invoke-virtual {v0, p3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 144
    return-void
.end method

.method public clear()V
    .registers 2

    .prologue
    .line 185
    iget-object v0, p0, Lorg/xml/sax/helpers/AttributeListImpl;->names:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->removeAllElements()V

    .line 186
    iget-object v0, p0, Lorg/xml/sax/helpers/AttributeListImpl;->types:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->removeAllElements()V

    .line 187
    iget-object v0, p0, Lorg/xml/sax/helpers/AttributeListImpl;->values:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->removeAllElements()V

    .line 188
    return-void
.end method

.method public getLength()I
    .registers 2

    .prologue
    .line 205
    iget-object v0, p0, Lorg/xml/sax/helpers/AttributeListImpl;->names:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    return v0
.end method

.method public getName(I)Ljava/lang/String;
    .registers 5
    .parameter "i"

    .prologue
    const/4 v2, 0x0

    .line 219
    if-gez p1, :cond_5

    move-object v1, v2

    .line 225
    .end local p0
    :goto_4
    return-object v1

    .line 223
    .restart local p0
    :cond_5
    :try_start_5
    iget-object v1, p0, Lorg/xml/sax/helpers/AttributeListImpl;->names:Ljava/util/Vector;

    invoke-virtual {v1, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/String;
    :try_end_d
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_5 .. :try_end_d} :catch_f

    move-object v1, p0

    goto :goto_4

    .line 224
    :catch_f
    move-exception v1

    move-object v0, v1

    .local v0, e:Ljava/lang/ArrayIndexOutOfBoundsException;
    move-object v1, v2

    .line 225
    goto :goto_4
.end method

.method public getType(I)Ljava/lang/String;
    .registers 5
    .parameter "i"

    .prologue
    const/4 v2, 0x0

    .line 242
    if-gez p1, :cond_5

    move-object v1, v2

    .line 248
    .end local p0
    :goto_4
    return-object v1

    .line 246
    .restart local p0
    :cond_5
    :try_start_5
    iget-object v1, p0, Lorg/xml/sax/helpers/AttributeListImpl;->types:Ljava/util/Vector;

    invoke-virtual {v1, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/String;
    :try_end_d
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_5 .. :try_end_d} :catch_f

    move-object v1, p0

    goto :goto_4

    .line 247
    :catch_f
    move-exception v1

    move-object v0, v1

    .local v0, e:Ljava/lang/ArrayIndexOutOfBoundsException;
    move-object v1, v2

    .line 248
    goto :goto_4
.end method

.method public getType(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter "name"

    .prologue
    .line 285
    iget-object v0, p0, Lorg/xml/sax/helpers/AttributeListImpl;->names:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->indexOf(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/xml/sax/helpers/AttributeListImpl;->getType(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getValue(I)Ljava/lang/String;
    .registers 5
    .parameter "i"

    .prologue
    const/4 v2, 0x0

    .line 263
    if-gez p1, :cond_5

    move-object v1, v2

    .line 269
    .end local p0
    :goto_4
    return-object v1

    .line 267
    .restart local p0
    :cond_5
    :try_start_5
    iget-object v1, p0, Lorg/xml/sax/helpers/AttributeListImpl;->values:Ljava/util/Vector;

    invoke-virtual {v1, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/String;
    :try_end_d
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_5 .. :try_end_d} :catch_f

    move-object v1, p0

    goto :goto_4

    .line 268
    :catch_f
    move-exception v1

    move-object v0, v1

    .local v0, e:Ljava/lang/ArrayIndexOutOfBoundsException;
    move-object v1, v2

    .line 269
    goto :goto_4
.end method

.method public getValue(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter "name"

    .prologue
    .line 299
    iget-object v0, p0, Lorg/xml/sax/helpers/AttributeListImpl;->names:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->indexOf(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/xml/sax/helpers/AttributeListImpl;->getValue(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public removeAttribute(Ljava/lang/String;)V
    .registers 4
    .parameter "name"

    .prologue
    .line 163
    iget-object v1, p0, Lorg/xml/sax/helpers/AttributeListImpl;->names:Ljava/util/Vector;

    invoke-virtual {v1, p1}, Ljava/util/Vector;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 165
    .local v0, i:I
    if-ltz v0, :cond_17

    .line 166
    iget-object v1, p0, Lorg/xml/sax/helpers/AttributeListImpl;->names:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->removeElementAt(I)V

    .line 167
    iget-object v1, p0, Lorg/xml/sax/helpers/AttributeListImpl;->types:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->removeElementAt(I)V

    .line 168
    iget-object v1, p0, Lorg/xml/sax/helpers/AttributeListImpl;->values:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->removeElementAt(I)V

    .line 170
    :cond_17
    return-void
.end method

.method public setAttributeList(Lorg/xml/sax/AttributeList;)V
    .registers 7
    .parameter "atts"

    .prologue
    .line 116
    invoke-interface {p1}, Lorg/xml/sax/AttributeList;->getLength()I

    move-result v0

    .line 118
    .local v0, count:I
    invoke-virtual {p0}, Lorg/xml/sax/helpers/AttributeListImpl;->clear()V

    .line 120
    const/4 v1, 0x0

    .local v1, i:I
    :goto_8
    if-ge v1, v0, :cond_1c

    .line 121
    invoke-interface {p1, v1}, Lorg/xml/sax/AttributeList;->getName(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v1}, Lorg/xml/sax/AttributeList;->getType(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v1}, Lorg/xml/sax/AttributeList;->getValue(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v2, v3, v4}, Lorg/xml/sax/helpers/AttributeListImpl;->addAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 123
    :cond_1c
    return-void
.end method
