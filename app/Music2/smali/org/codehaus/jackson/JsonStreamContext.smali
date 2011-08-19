.class public abstract Lorg/codehaus/jackson/JsonStreamContext;
.super Ljava/lang/Object;
.source "JsonStreamContext.java"


# static fields
.field protected static final TYPE_ARRAY:I = 0x1

.field protected static final TYPE_OBJECT:I = 0x2

.field protected static final TYPE_ROOT:I


# instance fields
.field protected _index:I

.field protected _type:I


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .parameter "type"

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput p1, p0, Lorg/codehaus/jackson/JsonStreamContext;->_type:I

    .line 56
    const/4 v0, -0x1

    iput v0, p0, Lorg/codehaus/jackson/JsonStreamContext;->_index:I

    .line 57
    return-void
.end method


# virtual methods
.method public final getCurrentIndex()I
    .locals 1

    .prologue
    .line 108
    iget v0, p0, Lorg/codehaus/jackson/JsonStreamContext;->_index:I

    if-gez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lorg/codehaus/jackson/JsonStreamContext;->_index:I

    goto :goto_0
.end method

.method public abstract getCurrentName()Ljava/lang/String;
.end method

.method public final getEntryCount()I
    .locals 1

    .prologue
    .line 100
    iget v0, p0, Lorg/codehaus/jackson/JsonStreamContext;->_index:I

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public abstract getParent()Lorg/codehaus/jackson/JsonStreamContext;
.end method

.method public final getTypeDesc()Ljava/lang/String;
    .locals 1

    .prologue
    .line 87
    iget v0, p0, Lorg/codehaus/jackson/JsonStreamContext;->_type:I

    packed-switch v0, :pswitch_data_0

    .line 92
    const-string v0, "?"

    :goto_0
    return-object v0

    .line 88
    :pswitch_0
    const-string v0, "ROOT"

    goto :goto_0

    .line 89
    :pswitch_1
    const-string v0, "ARRAY"

    goto :goto_0

    .line 90
    :pswitch_2
    const-string v0, "OBJECT"

    goto :goto_0

    .line 87
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public final inArray()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 71
    iget v0, p0, Lorg/codehaus/jackson/JsonStreamContext;->_type:I

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final inObject()Z
    .locals 2

    .prologue
    .line 84
    iget v0, p0, Lorg/codehaus/jackson/JsonStreamContext;->_type:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final inRoot()Z
    .locals 1

    .prologue
    .line 78
    iget v0, p0, Lorg/codehaus/jackson/JsonStreamContext;->_type:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
