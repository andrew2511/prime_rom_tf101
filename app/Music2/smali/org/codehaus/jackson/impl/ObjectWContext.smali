.class final Lorg/codehaus/jackson/impl/ObjectWContext;
.super Lorg/codehaus/jackson/impl/JsonWriteContext;
.source "JsonWriteContext.java"


# instance fields
.field protected _currentName:Ljava/lang/String;

.field protected _expectValue:Z


# direct methods
.method public constructor <init>(Lorg/codehaus/jackson/impl/JsonWriteContext;)V
    .locals 1
    .parameter "parent"

    .prologue
    .line 188
    const/4 v0, 0x2

    invoke-direct {p0, v0, p1}, Lorg/codehaus/jackson/impl/JsonWriteContext;-><init>(ILorg/codehaus/jackson/impl/JsonWriteContext;)V

    .line 189
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/codehaus/jackson/impl/ObjectWContext;->_currentName:Ljava/lang/String;

    .line 190
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/codehaus/jackson/impl/ObjectWContext;->_expectValue:Z

    .line 191
    return-void
.end method


# virtual methods
.method protected appendDesc(Ljava/lang/StringBuilder;)V
    .locals 2
    .parameter "sb"

    .prologue
    const/16 v1, 0x22

    .line 216
    const/16 v0, 0x7b

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 217
    iget-object v0, p0, Lorg/codehaus/jackson/impl/ObjectWContext;->_currentName:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 218
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 220
    iget-object v0, p0, Lorg/codehaus/jackson/impl/ObjectWContext;->_currentName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 221
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 225
    :goto_0
    const/16 v0, 0x5d

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 226
    return-void

    .line 223
    :cond_0
    const/16 v0, 0x3f

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public getCurrentName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Lorg/codehaus/jackson/impl/ObjectWContext;->_currentName:Ljava/lang/String;

    return-object v0
.end method

.method public writeFieldName(Ljava/lang/String;)I
    .locals 1
    .parameter "name"

    .prologue
    .line 197
    iget-object v0, p0, Lorg/codehaus/jackson/impl/ObjectWContext;->_currentName:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 198
    const/4 v0, 0x4

    .line 201
    :goto_0
    return v0

    .line 200
    :cond_0
    iput-object p1, p0, Lorg/codehaus/jackson/impl/ObjectWContext;->_currentName:Ljava/lang/String;

    .line 201
    iget v0, p0, Lorg/codehaus/jackson/impl/ObjectWContext;->_index:I

    if-gez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public writeValue()I
    .locals 1

    .prologue
    .line 206
    iget-object v0, p0, Lorg/codehaus/jackson/impl/ObjectWContext;->_currentName:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 207
    const/4 v0, 0x5

    .line 211
    :goto_0
    return v0

    .line 209
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/codehaus/jackson/impl/ObjectWContext;->_currentName:Ljava/lang/String;

    .line 210
    iget v0, p0, Lorg/codehaus/jackson/impl/ObjectWContext;->_index:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/codehaus/jackson/impl/ObjectWContext;->_index:I

    .line 211
    const/4 v0, 0x2

    goto :goto_0
.end method
