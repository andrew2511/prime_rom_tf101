.class public abstract Lorg/codehaus/jackson/impl/JsonGeneratorBase;
.super Lorg/codehaus/jackson/JsonGenerator;
.source "JsonGeneratorBase.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/codehaus/jackson/impl/JsonGeneratorBase$1;
    }
.end annotation


# instance fields
.field protected _cfgNumbersAsStrings:Z

.field protected _closed:Z

.field protected _features:I

.field protected _objectCodec:Lorg/codehaus/jackson/ObjectCodec;

.field protected _writeContext:Lorg/codehaus/jackson/impl/JsonWriteContext;


# direct methods
.method protected constructor <init>(ILorg/codehaus/jackson/ObjectCodec;)V
    .locals 1
    .parameter "features"
    .parameter "codec"

    .prologue
    .line 65
    invoke-direct {p0}, Lorg/codehaus/jackson/JsonGenerator;-><init>()V

    .line 66
    iput p1, p0, Lorg/codehaus/jackson/impl/JsonGeneratorBase;->_features:I

    .line 67
    invoke-static {}, Lorg/codehaus/jackson/impl/JsonWriteContext;->createRootContext()Lorg/codehaus/jackson/impl/JsonWriteContext;

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/impl/JsonGeneratorBase;->_writeContext:Lorg/codehaus/jackson/impl/JsonWriteContext;

    .line 68
    iput-object p2, p0, Lorg/codehaus/jackson/impl/JsonGeneratorBase;->_objectCodec:Lorg/codehaus/jackson/ObjectCodec;

    .line 69
    sget-object v0, Lorg/codehaus/jackson/JsonGenerator$Feature;->WRITE_NUMBERS_AS_STRINGS:Lorg/codehaus/jackson/JsonGenerator$Feature;

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/impl/JsonGeneratorBase;->isEnabled(Lorg/codehaus/jackson/JsonGenerator$Feature;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/codehaus/jackson/impl/JsonGeneratorBase;->_cfgNumbersAsStrings:Z

    .line 70
    return-void
.end method


# virtual methods
.method protected _cantHappen()V
    .locals 2

    .prologue
    .line 380
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Internal error: should never end up through this code path"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected abstract _releaseBuffers()V
.end method

.method protected _reportError(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 375
    new-instance v0, Lorg/codehaus/jackson/JsonGenerationException;

    invoke-direct {v0, p1}, Lorg/codehaus/jackson/JsonGenerationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected abstract _verifyValueWrite(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonGenerationException;
        }
    .end annotation
.end method

.method protected abstract _writeEndArray()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonGenerationException;
        }
    .end annotation
.end method

.method protected abstract _writeEndObject()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonGenerationException;
        }
    .end annotation
.end method

.method protected abstract _writeFieldName(Ljava/lang/String;Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonGenerationException;
        }
    .end annotation
.end method

.method protected abstract _writeStartArray()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonGenerationException;
        }
    .end annotation
.end method

.method protected abstract _writeStartObject()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonGenerationException;
        }
    .end annotation
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 276
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codehaus/jackson/impl/JsonGeneratorBase;->_closed:Z

    .line 277
    return-void
.end method

.method public final copyCurrentEvent(Lorg/codehaus/jackson/JsonParser;)V
    .locals 3
    .parameter "jp"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .prologue
    .line 290
    sget-object v0, Lorg/codehaus/jackson/impl/JsonGeneratorBase$1;->$SwitchMap$org$codehaus$jackson$JsonToken:[I

    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->getCurrentToken()Lorg/codehaus/jackson/JsonToken;

    move-result-object v1

    invoke-virtual {v1}, Lorg/codehaus/jackson/JsonToken;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 325
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/JsonGeneratorBase;->_cantHappen()V

    .line 327
    :goto_0
    return-void

    .line 292
    :pswitch_0
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/JsonGeneratorBase;->writeStartObject()V

    goto :goto_0

    .line 295
    :pswitch_1
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/JsonGeneratorBase;->writeEndObject()V

    goto :goto_0

    .line 298
    :pswitch_2
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/JsonGeneratorBase;->writeStartArray()V

    goto :goto_0

    .line 301
    :pswitch_3
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/JsonGeneratorBase;->writeEndArray()V

    goto :goto_0

    .line 304
    :pswitch_4
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->getCurrentName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/impl/JsonGeneratorBase;->writeFieldName(Ljava/lang/String;)V

    goto :goto_0

    .line 307
    :pswitch_5
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->getTextCharacters()[C

    move-result-object v0

    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->getTextOffset()I

    move-result v1

    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->getTextLength()I

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Lorg/codehaus/jackson/impl/JsonGeneratorBase;->writeString([CII)V

    goto :goto_0

    .line 310
    :pswitch_6
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->getIntValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/impl/JsonGeneratorBase;->writeNumber(I)V

    goto :goto_0

    .line 313
    :pswitch_7
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->getDoubleValue()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/codehaus/jackson/impl/JsonGeneratorBase;->writeNumber(D)V

    goto :goto_0

    .line 316
    :pswitch_8
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/impl/JsonGeneratorBase;->writeBoolean(Z)V

    goto :goto_0

    .line 319
    :pswitch_9
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/impl/JsonGeneratorBase;->writeBoolean(Z)V

    goto :goto_0

    .line 322
    :pswitch_a
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/JsonGeneratorBase;->writeNull()V

    goto :goto_0

    .line 290
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
    .end packed-switch
.end method

.method public final copyCurrentStructure(Lorg/codehaus/jackson/JsonParser;)V
    .locals 3
    .parameter "jp"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .prologue
    .line 332
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->getCurrentToken()Lorg/codehaus/jackson/JsonToken;

    move-result-object v0

    .line 335
    .local v0, t:Lorg/codehaus/jackson/JsonToken;
    sget-object v1, Lorg/codehaus/jackson/JsonToken;->FIELD_NAME:Lorg/codehaus/jackson/JsonToken;

    if-ne v0, v1, :cond_0

    .line 336
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->getCurrentName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/codehaus/jackson/impl/JsonGeneratorBase;->writeFieldName(Ljava/lang/String;)V

    .line 337
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->nextToken()Lorg/codehaus/jackson/JsonToken;

    move-result-object v0

    .line 341
    :cond_0
    sget-object v1, Lorg/codehaus/jackson/impl/JsonGeneratorBase$1;->$SwitchMap$org$codehaus$jackson$JsonToken:[I

    invoke-virtual {v0}, Lorg/codehaus/jackson/JsonToken;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 357
    :pswitch_0
    invoke-virtual {p0, p1}, Lorg/codehaus/jackson/impl/JsonGeneratorBase;->copyCurrentEvent(Lorg/codehaus/jackson/JsonParser;)V

    .line 359
    :goto_0
    return-void

    .line 343
    :pswitch_1
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/JsonGeneratorBase;->writeStartArray()V

    .line 344
    :goto_1
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->nextToken()Lorg/codehaus/jackson/JsonToken;

    move-result-object v1

    sget-object v2, Lorg/codehaus/jackson/JsonToken;->END_ARRAY:Lorg/codehaus/jackson/JsonToken;

    if-eq v1, v2, :cond_1

    .line 345
    invoke-virtual {p0, p1}, Lorg/codehaus/jackson/impl/JsonGeneratorBase;->copyCurrentStructure(Lorg/codehaus/jackson/JsonParser;)V

    goto :goto_1

    .line 347
    :cond_1
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/JsonGeneratorBase;->writeEndArray()V

    goto :goto_0

    .line 350
    :pswitch_2
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/JsonGeneratorBase;->writeStartObject()V

    .line 351
    :goto_2
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->nextToken()Lorg/codehaus/jackson/JsonToken;

    move-result-object v1

    sget-object v2, Lorg/codehaus/jackson/JsonToken;->END_OBJECT:Lorg/codehaus/jackson/JsonToken;

    if-eq v1, v2, :cond_2

    .line 352
    invoke-virtual {p0, p1}, Lorg/codehaus/jackson/impl/JsonGeneratorBase;->copyCurrentStructure(Lorg/codehaus/jackson/JsonParser;)V

    goto :goto_2

    .line 354
    :cond_2
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/JsonGeneratorBase;->writeEndObject()V

    goto :goto_0

    .line 341
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public disable(Lorg/codehaus/jackson/JsonGenerator$Feature;)Lorg/codehaus/jackson/JsonGenerator;
    .locals 2
    .parameter "f"

    .prologue
    .line 89
    iget v0, p0, Lorg/codehaus/jackson/impl/JsonGeneratorBase;->_features:I

    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonGenerator$Feature;->getMask()I

    move-result v1

    xor-int/lit8 v1, v1, -0x1

    and-int/2addr v0, v1

    iput v0, p0, Lorg/codehaus/jackson/impl/JsonGeneratorBase;->_features:I

    .line 90
    sget-object v0, Lorg/codehaus/jackson/JsonGenerator$Feature;->WRITE_NUMBERS_AS_STRINGS:Lorg/codehaus/jackson/JsonGenerator$Feature;

    if-ne p1, v0, :cond_0

    .line 91
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/codehaus/jackson/impl/JsonGeneratorBase;->_cfgNumbersAsStrings:Z

    .line 93
    :cond_0
    return-object p0
.end method

.method public enable(Lorg/codehaus/jackson/JsonGenerator$Feature;)Lorg/codehaus/jackson/JsonGenerator;
    .locals 2
    .parameter "f"

    .prologue
    .line 80
    iget v0, p0, Lorg/codehaus/jackson/impl/JsonGeneratorBase;->_features:I

    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonGenerator$Feature;->getMask()I

    move-result v1

    or-int/2addr v0, v1

    iput v0, p0, Lorg/codehaus/jackson/impl/JsonGeneratorBase;->_features:I

    .line 81
    sget-object v0, Lorg/codehaus/jackson/JsonGenerator$Feature;->WRITE_NUMBERS_AS_STRINGS:Lorg/codehaus/jackson/JsonGenerator$Feature;

    if-ne p1, v0, :cond_0

    .line 82
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codehaus/jackson/impl/JsonGeneratorBase;->_cfgNumbersAsStrings:Z

    .line 84
    :cond_0
    return-object p0
.end method

.method public abstract flush()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public final getCodec()Lorg/codehaus/jackson/ObjectCodec;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lorg/codehaus/jackson/impl/JsonGeneratorBase;->_objectCodec:Lorg/codehaus/jackson/ObjectCodec;

    return-object v0
.end method

.method public bridge synthetic getOutputContext()Lorg/codehaus/jackson/JsonStreamContext;
    .locals 1

    .prologue
    .line 13
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/JsonGeneratorBase;->getOutputContext()Lorg/codehaus/jackson/impl/JsonWriteContext;

    move-result-object v0

    return-object v0
.end method

.method public final getOutputContext()Lorg/codehaus/jackson/impl/JsonWriteContext;
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lorg/codehaus/jackson/impl/JsonGeneratorBase;->_writeContext:Lorg/codehaus/jackson/impl/JsonWriteContext;

    return-object v0
.end method

.method public isClosed()Z
    .locals 1

    .prologue
    .line 279
    iget-boolean v0, p0, Lorg/codehaus/jackson/impl/JsonGeneratorBase;->_closed:Z

    return v0
.end method

.method public final isEnabled(Lorg/codehaus/jackson/JsonGenerator$Feature;)Z
    .locals 2
    .parameter "f"

    .prologue
    .line 100
    iget v0, p0, Lorg/codehaus/jackson/impl/JsonGeneratorBase;->_features:I

    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonGenerator$Feature;->getMask()I

    move-result v1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final setCodec(Lorg/codehaus/jackson/ObjectCodec;)Lorg/codehaus/jackson/JsonGenerator;
    .locals 0
    .parameter "oc"

    .prologue
    .line 109
    iput-object p1, p0, Lorg/codehaus/jackson/impl/JsonGeneratorBase;->_objectCodec:Lorg/codehaus/jackson/ObjectCodec;

    .line 110
    return-object p0
.end method

.method public final useDefaultPrettyPrinter()Lorg/codehaus/jackson/JsonGenerator;
    .locals 1

    .prologue
    .line 105
    new-instance v0, Lorg/codehaus/jackson/impl/DefaultPrettyPrinter;

    invoke-direct {v0}, Lorg/codehaus/jackson/impl/DefaultPrettyPrinter;-><init>()V

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/impl/JsonGeneratorBase;->setPrettyPrinter(Lorg/codehaus/jackson/PrettyPrinter;)Lorg/codehaus/jackson/JsonGenerator;

    move-result-object v0

    return-object v0
.end method

.method public abstract writeBoolean(Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonGenerationException;
        }
    .end annotation
.end method

.method public final writeEndArray()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 151
    iget-object v0, p0, Lorg/codehaus/jackson/impl/JsonGeneratorBase;->_writeContext:Lorg/codehaus/jackson/impl/JsonWriteContext;

    invoke-virtual {v0}, Lorg/codehaus/jackson/impl/JsonWriteContext;->inArray()Z

    move-result v0

    if-nez v0, :cond_0

    .line 152
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Current context not an ARRAY but "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/codehaus/jackson/impl/JsonGeneratorBase;->_writeContext:Lorg/codehaus/jackson/impl/JsonWriteContext;

    invoke-virtual {v1}, Lorg/codehaus/jackson/impl/JsonWriteContext;->getTypeDesc()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/impl/JsonGeneratorBase;->_reportError(Ljava/lang/String;)V

    .line 154
    :cond_0
    iget-object v0, p0, Lorg/codehaus/jackson/impl/JsonGeneratorBase;->_cfgPrettyPrinter:Lorg/codehaus/jackson/PrettyPrinter;

    if-eqz v0, :cond_1

    .line 155
    iget-object v0, p0, Lorg/codehaus/jackson/impl/JsonGeneratorBase;->_cfgPrettyPrinter:Lorg/codehaus/jackson/PrettyPrinter;

    iget-object v1, p0, Lorg/codehaus/jackson/impl/JsonGeneratorBase;->_writeContext:Lorg/codehaus/jackson/impl/JsonWriteContext;

    invoke-virtual {v1}, Lorg/codehaus/jackson/impl/JsonWriteContext;->getEntryCount()I

    move-result v1

    invoke-interface {v0, p0, v1}, Lorg/codehaus/jackson/PrettyPrinter;->writeEndArray(Lorg/codehaus/jackson/JsonGenerator;I)V

    .line 159
    :goto_0
    iget-object v0, p0, Lorg/codehaus/jackson/impl/JsonGeneratorBase;->_writeContext:Lorg/codehaus/jackson/impl/JsonWriteContext;

    invoke-virtual {v0}, Lorg/codehaus/jackson/impl/JsonWriteContext;->getParent()Lorg/codehaus/jackson/impl/JsonWriteContext;

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/impl/JsonGeneratorBase;->_writeContext:Lorg/codehaus/jackson/impl/JsonWriteContext;

    .line 160
    return-void

    .line 157
    :cond_1
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/JsonGeneratorBase;->_writeEndArray()V

    goto :goto_0
.end method

.method public final writeEndObject()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 183
    iget-object v0, p0, Lorg/codehaus/jackson/impl/JsonGeneratorBase;->_writeContext:Lorg/codehaus/jackson/impl/JsonWriteContext;

    invoke-virtual {v0}, Lorg/codehaus/jackson/impl/JsonWriteContext;->inObject()Z

    move-result v0

    if-nez v0, :cond_0

    .line 184
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Current context not an object but "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/codehaus/jackson/impl/JsonGeneratorBase;->_writeContext:Lorg/codehaus/jackson/impl/JsonWriteContext;

    invoke-virtual {v1}, Lorg/codehaus/jackson/impl/JsonWriteContext;->getTypeDesc()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/impl/JsonGeneratorBase;->_reportError(Ljava/lang/String;)V

    .line 186
    :cond_0
    iget-object v0, p0, Lorg/codehaus/jackson/impl/JsonGeneratorBase;->_writeContext:Lorg/codehaus/jackson/impl/JsonWriteContext;

    invoke-virtual {v0}, Lorg/codehaus/jackson/impl/JsonWriteContext;->getParent()Lorg/codehaus/jackson/impl/JsonWriteContext;

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/impl/JsonGeneratorBase;->_writeContext:Lorg/codehaus/jackson/impl/JsonWriteContext;

    .line 187
    iget-object v0, p0, Lorg/codehaus/jackson/impl/JsonGeneratorBase;->_cfgPrettyPrinter:Lorg/codehaus/jackson/PrettyPrinter;

    if-eqz v0, :cond_1

    .line 188
    iget-object v0, p0, Lorg/codehaus/jackson/impl/JsonGeneratorBase;->_cfgPrettyPrinter:Lorg/codehaus/jackson/PrettyPrinter;

    iget-object v1, p0, Lorg/codehaus/jackson/impl/JsonGeneratorBase;->_writeContext:Lorg/codehaus/jackson/impl/JsonWriteContext;

    invoke-virtual {v1}, Lorg/codehaus/jackson/impl/JsonWriteContext;->getEntryCount()I

    move-result v1

    invoke-interface {v0, p0, v1}, Lorg/codehaus/jackson/PrettyPrinter;->writeEndObject(Lorg/codehaus/jackson/JsonGenerator;I)V

    .line 192
    :goto_0
    return-void

    .line 190
    :cond_1
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/JsonGeneratorBase;->_writeEndObject()V

    goto :goto_0
.end method

.method public final writeFieldName(Ljava/lang/String;)V
    .locals 3
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 201
    iget-object v1, p0, Lorg/codehaus/jackson/impl/JsonGeneratorBase;->_writeContext:Lorg/codehaus/jackson/impl/JsonWriteContext;

    invoke-virtual {v1, p1}, Lorg/codehaus/jackson/impl/JsonWriteContext;->writeFieldName(Ljava/lang/String;)I

    move-result v0

    .line 202
    .local v0, status:I
    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 203
    const-string v1, "Can not write a field name, expecting a value"

    invoke-virtual {p0, v1}, Lorg/codehaus/jackson/impl/JsonGeneratorBase;->_reportError(Ljava/lang/String;)V

    .line 205
    :cond_0
    if-ne v0, v2, :cond_1

    move v1, v2

    :goto_0
    invoke-virtual {p0, p1, v1}, Lorg/codehaus/jackson/impl/JsonGeneratorBase;->_writeFieldName(Ljava/lang/String;Z)V

    .line 206
    return-void

    .line 205
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public abstract writeNull()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonGenerationException;
        }
    .end annotation
.end method

.method public abstract writeNumber(D)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonGenerationException;
        }
    .end annotation
.end method

.method public abstract writeNumber(F)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonGenerationException;
        }
    .end annotation
.end method

.method public abstract writeNumber(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonGenerationException;
        }
    .end annotation
.end method

.method public abstract writeNumber(J)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonGenerationException;
        }
    .end annotation
.end method

.method public abstract writeNumber(Ljava/math/BigDecimal;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonGenerationException;
        }
    .end annotation
.end method

.method public abstract writeObject(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonProcessingException;
        }
    .end annotation
.end method

.method public final writeStartArray()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 136
    const-string v0, "start an array"

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/impl/JsonGeneratorBase;->_verifyValueWrite(Ljava/lang/String;)V

    .line 137
    iget-object v0, p0, Lorg/codehaus/jackson/impl/JsonGeneratorBase;->_writeContext:Lorg/codehaus/jackson/impl/JsonWriteContext;

    invoke-virtual {v0}, Lorg/codehaus/jackson/impl/JsonWriteContext;->createChildArrayContext()Lorg/codehaus/jackson/impl/JsonWriteContext;

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/impl/JsonGeneratorBase;->_writeContext:Lorg/codehaus/jackson/impl/JsonWriteContext;

    .line 138
    iget-object v0, p0, Lorg/codehaus/jackson/impl/JsonGeneratorBase;->_cfgPrettyPrinter:Lorg/codehaus/jackson/PrettyPrinter;

    if-eqz v0, :cond_0

    .line 139
    iget-object v0, p0, Lorg/codehaus/jackson/impl/JsonGeneratorBase;->_cfgPrettyPrinter:Lorg/codehaus/jackson/PrettyPrinter;

    invoke-interface {v0, p0}, Lorg/codehaus/jackson/PrettyPrinter;->writeStartArray(Lorg/codehaus/jackson/JsonGenerator;)V

    .line 143
    :goto_0
    return-void

    .line 141
    :cond_0
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/JsonGeneratorBase;->_writeStartArray()V

    goto :goto_0
.end method

.method public final writeStartObject()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 168
    const-string v0, "start an object"

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/impl/JsonGeneratorBase;->_verifyValueWrite(Ljava/lang/String;)V

    .line 169
    iget-object v0, p0, Lorg/codehaus/jackson/impl/JsonGeneratorBase;->_writeContext:Lorg/codehaus/jackson/impl/JsonWriteContext;

    invoke-virtual {v0}, Lorg/codehaus/jackson/impl/JsonWriteContext;->createChildObjectContext()Lorg/codehaus/jackson/impl/JsonWriteContext;

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/impl/JsonGeneratorBase;->_writeContext:Lorg/codehaus/jackson/impl/JsonWriteContext;

    .line 170
    iget-object v0, p0, Lorg/codehaus/jackson/impl/JsonGeneratorBase;->_cfgPrettyPrinter:Lorg/codehaus/jackson/PrettyPrinter;

    if-eqz v0, :cond_0

    .line 171
    iget-object v0, p0, Lorg/codehaus/jackson/impl/JsonGeneratorBase;->_cfgPrettyPrinter:Lorg/codehaus/jackson/PrettyPrinter;

    invoke-interface {v0, p0}, Lorg/codehaus/jackson/PrettyPrinter;->writeStartObject(Lorg/codehaus/jackson/JsonGenerator;)V

    .line 175
    :goto_0
    return-void

    .line 173
    :cond_0
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/JsonGeneratorBase;->_writeStartObject()V

    goto :goto_0
.end method

.method public abstract writeTree(Lorg/codehaus/jackson/JsonNode;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonProcessingException;
        }
    .end annotation
.end method
