.class public final Lorg/codehaus/jackson/impl/JsonReadContext;
.super Lorg/codehaus/jackson/JsonStreamContext;
.source "JsonReadContext.java"


# instance fields
.field _child:Lorg/codehaus/jackson/impl/JsonReadContext;

.field protected _columnNr:I

.field protected _currentName:Ljava/lang/String;

.field protected _lineNr:I

.field protected final _parent:Lorg/codehaus/jackson/impl/JsonReadContext;


# direct methods
.method public constructor <init>(Lorg/codehaus/jackson/impl/JsonReadContext;III)V
    .locals 1
    .parameter "parent"
    .parameter "type"
    .parameter "lineNr"
    .parameter "colNr"

    .prologue
    .line 47
    invoke-direct {p0, p2}, Lorg/codehaus/jackson/JsonStreamContext;-><init>(I)V

    .line 36
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/codehaus/jackson/impl/JsonReadContext;->_child:Lorg/codehaus/jackson/impl/JsonReadContext;

    .line 48
    iput-object p1, p0, Lorg/codehaus/jackson/impl/JsonReadContext;->_parent:Lorg/codehaus/jackson/impl/JsonReadContext;

    .line 49
    iput p3, p0, Lorg/codehaus/jackson/impl/JsonReadContext;->_lineNr:I

    .line 50
    iput p4, p0, Lorg/codehaus/jackson/impl/JsonReadContext;->_columnNr:I

    .line 51
    return-void
.end method

.method public static createRootContext(II)Lorg/codehaus/jackson/impl/JsonReadContext;
    .locals 3
    .parameter "lineNr"
    .parameter "colNr"

    .prologue
    .line 66
    new-instance v0, Lorg/codehaus/jackson/impl/JsonReadContext;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, p0, p1}, Lorg/codehaus/jackson/impl/JsonReadContext;-><init>(Lorg/codehaus/jackson/impl/JsonReadContext;III)V

    return-object v0
.end method


# virtual methods
.method public final createChildArrayContext(II)Lorg/codehaus/jackson/impl/JsonReadContext;
    .locals 3
    .parameter "lineNr"
    .parameter "colNr"

    .prologue
    const/4 v2, 0x1

    .line 71
    iget-object v0, p0, Lorg/codehaus/jackson/impl/JsonReadContext;->_child:Lorg/codehaus/jackson/impl/JsonReadContext;

    .line 72
    .local v0, ctxt:Lorg/codehaus/jackson/impl/JsonReadContext;
    if-nez v0, :cond_0

    .line 73
    new-instance v1, Lorg/codehaus/jackson/impl/JsonReadContext;

    invoke-direct {v1, p0, v2, p1, p2}, Lorg/codehaus/jackson/impl/JsonReadContext;-><init>(Lorg/codehaus/jackson/impl/JsonReadContext;III)V

    iput-object v1, p0, Lorg/codehaus/jackson/impl/JsonReadContext;->_child:Lorg/codehaus/jackson/impl/JsonReadContext;

    .line 76
    :goto_0
    return-object v1

    .line 75
    :cond_0
    invoke-virtual {v0, v2, p1, p2}, Lorg/codehaus/jackson/impl/JsonReadContext;->reset(III)V

    move-object v1, v0

    .line 76
    goto :goto_0
.end method

.method public final createChildObjectContext(II)Lorg/codehaus/jackson/impl/JsonReadContext;
    .locals 3
    .parameter "lineNr"
    .parameter "colNr"

    .prologue
    const/4 v2, 0x2

    .line 81
    iget-object v0, p0, Lorg/codehaus/jackson/impl/JsonReadContext;->_child:Lorg/codehaus/jackson/impl/JsonReadContext;

    .line 82
    .local v0, ctxt:Lorg/codehaus/jackson/impl/JsonReadContext;
    if-nez v0, :cond_0

    .line 83
    new-instance v1, Lorg/codehaus/jackson/impl/JsonReadContext;

    invoke-direct {v1, p0, v2, p1, p2}, Lorg/codehaus/jackson/impl/JsonReadContext;-><init>(Lorg/codehaus/jackson/impl/JsonReadContext;III)V

    iput-object v1, p0, Lorg/codehaus/jackson/impl/JsonReadContext;->_child:Lorg/codehaus/jackson/impl/JsonReadContext;

    .line 86
    :goto_0
    return-object v1

    .line 85
    :cond_0
    invoke-virtual {v0, v2, p1, p2}, Lorg/codehaus/jackson/impl/JsonReadContext;->reset(III)V

    move-object v1, v0

    .line 86
    goto :goto_0
.end method

.method public final expectComma()Z
    .locals 2

    .prologue
    .line 131
    iget v1, p0, Lorg/codehaus/jackson/impl/JsonReadContext;->_index:I

    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Lorg/codehaus/jackson/impl/JsonReadContext;->_index:I

    .line 132
    .local v0, ix:I
    iget v1, p0, Lorg/codehaus/jackson/impl/JsonReadContext;->_type:I

    if-eqz v1, :cond_0

    if-lez v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public final getCurrentName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lorg/codehaus/jackson/impl/JsonReadContext;->_currentName:Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic getParent()Lorg/codehaus/jackson/JsonStreamContext;
    .locals 1

    .prologue
    .line 11
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/JsonReadContext;->getParent()Lorg/codehaus/jackson/impl/JsonReadContext;

    move-result-object v0

    return-object v0
.end method

.method public final getParent()Lorg/codehaus/jackson/impl/JsonReadContext;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lorg/codehaus/jackson/impl/JsonReadContext;->_parent:Lorg/codehaus/jackson/impl/JsonReadContext;

    return-object v0
.end method

.method public final getStartLocation(Ljava/lang/Object;)Lorg/codehaus/jackson/JsonLocation;
    .locals 6
    .parameter "srcRef"

    .prologue
    .line 114
    const-wide/16 v2, -0x1

    .line 116
    .local v2, totalChars:J
    new-instance v0, Lorg/codehaus/jackson/JsonLocation;

    iget v4, p0, Lorg/codehaus/jackson/impl/JsonReadContext;->_lineNr:I

    iget v5, p0, Lorg/codehaus/jackson/impl/JsonReadContext;->_columnNr:I

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lorg/codehaus/jackson/JsonLocation;-><init>(Ljava/lang/Object;JII)V

    return-object v0
.end method

.method protected final reset(III)V
    .locals 1
    .parameter "type"
    .parameter "lineNr"
    .parameter "colNr"

    .prologue
    .line 55
    iput p1, p0, Lorg/codehaus/jackson/impl/JsonReadContext;->_type:I

    .line 56
    const/4 v0, -0x1

    iput v0, p0, Lorg/codehaus/jackson/impl/JsonReadContext;->_index:I

    .line 57
    iput p2, p0, Lorg/codehaus/jackson/impl/JsonReadContext;->_lineNr:I

    .line 58
    iput p3, p0, Lorg/codehaus/jackson/impl/JsonReadContext;->_columnNr:I

    .line 59
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/codehaus/jackson/impl/JsonReadContext;->_currentName:Ljava/lang/String;

    .line 60
    return-void
.end method

.method public setCurrentName(Ljava/lang/String;)V
    .locals 0
    .parameter "name"

    .prologue
    .line 137
    iput-object p1, p0, Lorg/codehaus/jackson/impl/JsonReadContext;->_currentName:Ljava/lang/String;

    .line 138
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .prologue
    const/16 v3, 0x5d

    const/16 v2, 0x22

    .line 152
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 153
    .local v0, sb:Ljava/lang/StringBuilder;
    iget v1, p0, Lorg/codehaus/jackson/impl/JsonReadContext;->_type:I

    packed-switch v1, :pswitch_data_0

    .line 174
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 155
    :pswitch_0
    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 158
    :pswitch_1
    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 159
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/JsonReadContext;->getCurrentIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 160
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 163
    :pswitch_2
    const/16 v1, 0x7b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 164
    iget-object v1, p0, Lorg/codehaus/jackson/impl/JsonReadContext;->_currentName:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 165
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 166
    iget-object v1, p0, Lorg/codehaus/jackson/impl/JsonReadContext;->_currentName:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/codehaus/jackson/util/CharTypes;->appendQuoted(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 167
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 171
    :goto_1
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 169
    :cond_0
    const/16 v1, 0x3f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 153
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
