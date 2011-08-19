.class public Lorg/apache/harmony/luni/lang/reflect/GenericSignatureParser;
.super Ljava/lang/Object;
.source "GenericSignatureParser.java"


# instance fields
.field buffer:[C

.field private eof:Z

.field public exceptionTypes:Lorg/apache/harmony/luni/lang/reflect/ListOfTypes;

.field public fieldType:Ljava/lang/reflect/Type;

.field public formalTypeParameters:[Ljava/lang/reflect/TypeVariable;

.field genericDecl:Ljava/lang/reflect/GenericDeclaration;

.field identifier:Ljava/lang/String;

.field public interfaceTypes:Lorg/apache/harmony/luni/lang/reflect/ListOfTypes;

.field public loader:Ljava/lang/ClassLoader;

.field public parameterTypes:Lorg/apache/harmony/luni/lang/reflect/ListOfTypes;

.field pos:I

.field public returnType:Ljava/lang/reflect/Type;

.field public superclassType:Ljava/lang/reflect/Type;

.field symbol:C


# direct methods
.method public constructor <init>(Ljava/lang/ClassLoader;)V
    .registers 2
    .parameter "loader"

    .prologue
    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    iput-object p1, p0, Lorg/apache/harmony/luni/lang/reflect/GenericSignatureParser;->loader:Ljava/lang/ClassLoader;

    .line 99
    return-void
.end method


# virtual methods
.method expect(C)V
    .registers 3
    .parameter "c"

    .prologue
    .line 456
    iget-char v0, p0, Lorg/apache/harmony/luni/lang/reflect/GenericSignatureParser;->symbol:C

    if-ne v0, p1, :cond_8

    .line 457
    invoke-virtual {p0}, Lorg/apache/harmony/luni/lang/reflect/GenericSignatureParser;->scanSymbol()V

    .line 461
    return-void

    .line 459
    :cond_8
    new-instance v0, Ljava/lang/reflect/GenericSignatureFormatError;

    invoke-direct {v0}, Ljava/lang/reflect/GenericSignatureFormatError;-><init>()V

    throw v0
.end method

.method isStopSymbol(C)Z
    .registers 3
    .parameter "ch"

    .prologue
    .line 464
    sparse-switch p1, :sswitch_data_8

    .line 472
    const/4 v0, 0x0

    :goto_4
    return v0

    .line 470
    :sswitch_5
    const/4 v0, 0x1

    goto :goto_4

    .line 464
    nop

    :sswitch_data_8
    .sparse-switch
        0x2e -> :sswitch_5
        0x2f -> :sswitch_5
        0x3a -> :sswitch_5
        0x3b -> :sswitch_5
        0x3c -> :sswitch_5
    .end sparse-switch
.end method

.method parseClassSignature()V
    .registers 3

    .prologue
    .line 217
    invoke-virtual {p0}, Lorg/apache/harmony/luni/lang/reflect/GenericSignatureParser;->parseOptFormalTypeParameters()V

    .line 220
    invoke-virtual {p0}, Lorg/apache/harmony/luni/lang/reflect/GenericSignatureParser;->parseClassTypeSignature()Ljava/lang/reflect/Type;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/luni/lang/reflect/GenericSignatureParser;->superclassType:Ljava/lang/reflect/Type;

    .line 222
    new-instance v0, Lorg/apache/harmony/luni/lang/reflect/ListOfTypes;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Lorg/apache/harmony/luni/lang/reflect/ListOfTypes;-><init>(I)V

    iput-object v0, p0, Lorg/apache/harmony/luni/lang/reflect/GenericSignatureParser;->interfaceTypes:Lorg/apache/harmony/luni/lang/reflect/ListOfTypes;

    .line 223
    :goto_12
    iget-char v0, p0, Lorg/apache/harmony/luni/lang/reflect/GenericSignatureParser;->symbol:C

    if-lez v0, :cond_20

    .line 225
    iget-object v0, p0, Lorg/apache/harmony/luni/lang/reflect/GenericSignatureParser;->interfaceTypes:Lorg/apache/harmony/luni/lang/reflect/ListOfTypes;

    invoke-virtual {p0}, Lorg/apache/harmony/luni/lang/reflect/GenericSignatureParser;->parseClassTypeSignature()Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/harmony/luni/lang/reflect/ListOfTypes;->add(Ljava/lang/reflect/Type;)V

    goto :goto_12

    .line 227
    :cond_20
    return-void
.end method

.method parseClassTypeSignature()Ljava/lang/reflect/Type;
    .registers 8

    .prologue
    .line 291
    const/16 v4, 0x4c

    invoke-virtual {p0, v4}, Lorg/apache/harmony/luni/lang/reflect/GenericSignatureParser;->expect(C)V

    .line 293
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 294
    .local v1, qualIdent:Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Lorg/apache/harmony/luni/lang/reflect/GenericSignatureParser;->scanIdentifier()V

    .line 295
    :goto_d
    iget-char v4, p0, Lorg/apache/harmony/luni/lang/reflect/GenericSignatureParser;->symbol:C

    const/16 v5, 0x2f

    if-ne v4, v5, :cond_25

    .line 296
    invoke-virtual {p0}, Lorg/apache/harmony/luni/lang/reflect/GenericSignatureParser;->scanSymbol()V

    .line 297
    iget-object v4, p0, Lorg/apache/harmony/luni/lang/reflect/GenericSignatureParser;->identifier:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 298
    invoke-virtual {p0}, Lorg/apache/harmony/luni/lang/reflect/GenericSignatureParser;->scanIdentifier()V

    goto :goto_d

    .line 301
    :cond_25
    iget-object v4, p0, Lorg/apache/harmony/luni/lang/reflect/GenericSignatureParser;->identifier:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 303
    invoke-virtual {p0}, Lorg/apache/harmony/luni/lang/reflect/GenericSignatureParser;->parseOptTypeArguments()Lorg/apache/harmony/luni/lang/reflect/ListOfTypes;

    move-result-object v3

    .line 304
    .local v3, typeArgs:Lorg/apache/harmony/luni/lang/reflect/ListOfTypes;
    new-instance v0, Lorg/apache/harmony/luni/lang/reflect/ImplForType;

    const/4 v4, 0x0

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lorg/apache/harmony/luni/lang/reflect/GenericSignatureParser;->loader:Ljava/lang/ClassLoader;

    invoke-direct {v0, v4, v5, v3, v6}, Lorg/apache/harmony/luni/lang/reflect/ImplForType;-><init>(Lorg/apache/harmony/luni/lang/reflect/ImplForType;Ljava/lang/String;Lorg/apache/harmony/luni/lang/reflect/ListOfTypes;Ljava/lang/ClassLoader;)V

    .line 306
    .local v0, parentType:Lorg/apache/harmony/luni/lang/reflect/ImplForType;
    move-object v2, v0

    .line 308
    .local v2, type:Lorg/apache/harmony/luni/lang/reflect/ImplForType;
    :goto_3b
    iget-char v4, p0, Lorg/apache/harmony/luni/lang/reflect/GenericSignatureParser;->symbol:C

    const/16 v5, 0x2e

    if-ne v4, v5, :cond_62

    .line 310
    invoke-virtual {p0}, Lorg/apache/harmony/luni/lang/reflect/GenericSignatureParser;->scanSymbol()V

    .line 311
    invoke-virtual {p0}, Lorg/apache/harmony/luni/lang/reflect/GenericSignatureParser;->scanIdentifier()V

    .line 312
    const-string v4, "$"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lorg/apache/harmony/luni/lang/reflect/GenericSignatureParser;->identifier:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 313
    invoke-virtual {p0}, Lorg/apache/harmony/luni/lang/reflect/GenericSignatureParser;->parseOptTypeArguments()Lorg/apache/harmony/luni/lang/reflect/ListOfTypes;

    move-result-object v3

    .line 314
    new-instance v2, Lorg/apache/harmony/luni/lang/reflect/ImplForType;

    .end local v2           #type:Lorg/apache/harmony/luni/lang/reflect/ImplForType;
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lorg/apache/harmony/luni/lang/reflect/GenericSignatureParser;->loader:Ljava/lang/ClassLoader;

    invoke-direct {v2, v0, v4, v3, v5}, Lorg/apache/harmony/luni/lang/reflect/ImplForType;-><init>(Lorg/apache/harmony/luni/lang/reflect/ImplForType;Ljava/lang/String;Lorg/apache/harmony/luni/lang/reflect/ListOfTypes;Ljava/lang/ClassLoader;)V

    .restart local v2       #type:Lorg/apache/harmony/luni/lang/reflect/ImplForType;
    goto :goto_3b

    .line 318
    :cond_62
    const/16 v4, 0x3b

    invoke-virtual {p0, v4}, Lorg/apache/harmony/luni/lang/reflect/GenericSignatureParser;->expect(C)V

    .line 320
    return-object v2
.end method

.method parseFieldTypeSignature()Ljava/lang/reflect/Type;
    .registers 3

    .prologue
    .line 273
    iget-char v0, p0, Lorg/apache/harmony/luni/lang/reflect/GenericSignatureParser;->symbol:C

    sparse-switch v0, :sswitch_data_22

    .line 283
    new-instance v0, Ljava/lang/reflect/GenericSignatureFormatError;

    invoke-direct {v0}, Ljava/lang/reflect/GenericSignatureFormatError;-><init>()V

    throw v0

    .line 275
    :sswitch_b
    invoke-virtual {p0}, Lorg/apache/harmony/luni/lang/reflect/GenericSignatureParser;->parseClassTypeSignature()Ljava/lang/reflect/Type;

    move-result-object v0

    .line 281
    :goto_f
    return-object v0

    .line 278
    :sswitch_10
    invoke-virtual {p0}, Lorg/apache/harmony/luni/lang/reflect/GenericSignatureParser;->scanSymbol()V

    .line 279
    new-instance v0, Lorg/apache/harmony/luni/lang/reflect/ImplForArray;

    invoke-virtual {p0}, Lorg/apache/harmony/luni/lang/reflect/GenericSignatureParser;->parseTypeSignature()Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/harmony/luni/lang/reflect/ImplForArray;-><init>(Ljava/lang/reflect/Type;)V

    goto :goto_f

    .line 281
    :sswitch_1d
    invoke-virtual {p0}, Lorg/apache/harmony/luni/lang/reflect/GenericSignatureParser;->parseTypeVariableSignature()Lorg/apache/harmony/luni/lang/reflect/ImplForVariable;

    move-result-object v0

    goto :goto_f

    .line 273
    :sswitch_data_22
    .sparse-switch
        0x4c -> :sswitch_b
        0x54 -> :sswitch_1d
        0x5b -> :sswitch_10
    .end sparse-switch
.end method

.method public parseForClass(Ljava/lang/reflect/GenericDeclaration;Ljava/lang/String;)V
    .registers 7
    .parameter "genericDecl"
    .parameter "signature"

    .prologue
    .line 122
    invoke-virtual {p0, p1, p2}, Lorg/apache/harmony/luni/lang/reflect/GenericSignatureParser;->setInput(Ljava/lang/reflect/GenericDeclaration;Ljava/lang/String;)V

    .line 123
    iget-boolean v2, p0, Lorg/apache/harmony/luni/lang/reflect/GenericSignatureParser;->eof:Z

    if-nez v2, :cond_b

    .line 124
    invoke-virtual {p0}, Lorg/apache/harmony/luni/lang/reflect/GenericSignatureParser;->parseClassSignature()V

    .line 137
    :goto_a
    return-void

    .line 126
    :cond_b
    instance-of v2, p1, Ljava/lang/Class;

    if-eqz v2, :cond_29

    .line 127
    move-object v0, p1

    check-cast v0, Ljava/lang/Class;

    move-object v1, v0

    .line 128
    .local v1, c:Ljava/lang/Class;
    sget-object v2, Lorg/apache/harmony/luni/lang/reflect/ListOfVariables;->empty:[Ljava/lang/reflect/TypeVariable;

    iput-object v2, p0, Lorg/apache/harmony/luni/lang/reflect/GenericSignatureParser;->formalTypeParameters:[Ljava/lang/reflect/TypeVariable;

    .line 129
    invoke-virtual {v1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/harmony/luni/lang/reflect/GenericSignatureParser;->superclassType:Ljava/lang/reflect/Type;

    .line 130
    new-instance v2, Lorg/apache/harmony/luni/lang/reflect/ListOfTypes;

    invoke-virtual {v1}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/apache/harmony/luni/lang/reflect/ListOfTypes;-><init>([Ljava/lang/reflect/Type;)V

    iput-object v2, p0, Lorg/apache/harmony/luni/lang/reflect/GenericSignatureParser;->interfaceTypes:Lorg/apache/harmony/luni/lang/reflect/ListOfTypes;

    goto :goto_a

    .line 132
    .end local v1           #c:Ljava/lang/Class;
    :cond_29
    sget-object v2, Lorg/apache/harmony/luni/lang/reflect/ListOfVariables;->empty:[Ljava/lang/reflect/TypeVariable;

    iput-object v2, p0, Lorg/apache/harmony/luni/lang/reflect/GenericSignatureParser;->formalTypeParameters:[Ljava/lang/reflect/TypeVariable;

    .line 133
    const-class v2, Ljava/lang/Object;

    iput-object v2, p0, Lorg/apache/harmony/luni/lang/reflect/GenericSignatureParser;->superclassType:Ljava/lang/reflect/Type;

    .line 134
    sget-object v2, Lorg/apache/harmony/luni/lang/reflect/ListOfTypes;->EMPTY:Lorg/apache/harmony/luni/lang/reflect/ListOfTypes;

    iput-object v2, p0, Lorg/apache/harmony/luni/lang/reflect/GenericSignatureParser;->interfaceTypes:Lorg/apache/harmony/luni/lang/reflect/ListOfTypes;

    goto :goto_a
.end method

.method public parseForConstructor(Ljava/lang/reflect/GenericDeclaration;Ljava/lang/String;[Ljava/lang/Class;)V
    .registers 8
    .parameter "genericDecl"
    .parameter "signature"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/GenericDeclaration;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 176
    .local p3, rawExceptionTypes:[Ljava/lang/Class;,"[Ljava/lang/Class<*>;"
    invoke-virtual {p0, p1, p2}, Lorg/apache/harmony/luni/lang/reflect/GenericSignatureParser;->setInput(Ljava/lang/reflect/GenericDeclaration;Ljava/lang/String;)V

    .line 177
    iget-boolean v2, p0, Lorg/apache/harmony/luni/lang/reflect/GenericSignatureParser;->eof:Z

    if-nez v2, :cond_b

    .line 178
    invoke-virtual {p0, p3}, Lorg/apache/harmony/luni/lang/reflect/GenericSignatureParser;->parseMethodTypeSignature([Ljava/lang/Class;)V

    .line 191
    :goto_a
    return-void

    .line 180
    :cond_b
    instance-of v2, p1, Ljava/lang/reflect/Constructor;

    if-eqz v2, :cond_2e

    .line 181
    move-object v0, p1

    check-cast v0, Ljava/lang/reflect/Constructor;

    move-object v1, v0

    .line 182
    .local v1, c:Ljava/lang/reflect/Constructor;
    sget-object v2, Lorg/apache/harmony/luni/lang/reflect/ListOfVariables;->empty:[Ljava/lang/reflect/TypeVariable;

    iput-object v2, p0, Lorg/apache/harmony/luni/lang/reflect/GenericSignatureParser;->formalTypeParameters:[Ljava/lang/reflect/TypeVariable;

    .line 183
    new-instance v2, Lorg/apache/harmony/luni/lang/reflect/ListOfTypes;

    invoke-virtual {v1}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/apache/harmony/luni/lang/reflect/ListOfTypes;-><init>([Ljava/lang/reflect/Type;)V

    iput-object v2, p0, Lorg/apache/harmony/luni/lang/reflect/GenericSignatureParser;->parameterTypes:Lorg/apache/harmony/luni/lang/reflect/ListOfTypes;

    .line 184
    new-instance v2, Lorg/apache/harmony/luni/lang/reflect/ListOfTypes;

    invoke-virtual {v1}, Ljava/lang/reflect/Constructor;->getExceptionTypes()[Ljava/lang/Class;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/apache/harmony/luni/lang/reflect/ListOfTypes;-><init>([Ljava/lang/reflect/Type;)V

    iput-object v2, p0, Lorg/apache/harmony/luni/lang/reflect/GenericSignatureParser;->exceptionTypes:Lorg/apache/harmony/luni/lang/reflect/ListOfTypes;

    goto :goto_a

    .line 186
    .end local v1           #c:Ljava/lang/reflect/Constructor;
    :cond_2e
    sget-object v2, Lorg/apache/harmony/luni/lang/reflect/ListOfVariables;->empty:[Ljava/lang/reflect/TypeVariable;

    iput-object v2, p0, Lorg/apache/harmony/luni/lang/reflect/GenericSignatureParser;->formalTypeParameters:[Ljava/lang/reflect/TypeVariable;

    .line 187
    sget-object v2, Lorg/apache/harmony/luni/lang/reflect/ListOfTypes;->EMPTY:Lorg/apache/harmony/luni/lang/reflect/ListOfTypes;

    iput-object v2, p0, Lorg/apache/harmony/luni/lang/reflect/GenericSignatureParser;->parameterTypes:Lorg/apache/harmony/luni/lang/reflect/ListOfTypes;

    .line 188
    sget-object v2, Lorg/apache/harmony/luni/lang/reflect/ListOfTypes;->EMPTY:Lorg/apache/harmony/luni/lang/reflect/ListOfTypes;

    iput-object v2, p0, Lorg/apache/harmony/luni/lang/reflect/GenericSignatureParser;->exceptionTypes:Lorg/apache/harmony/luni/lang/reflect/ListOfTypes;

    goto :goto_a
.end method

.method public parseForField(Ljava/lang/reflect/GenericDeclaration;Ljava/lang/String;)V
    .registers 4
    .parameter "genericDecl"
    .parameter "signature"

    .prologue
    .line 202
    invoke-virtual {p0, p1, p2}, Lorg/apache/harmony/luni/lang/reflect/GenericSignatureParser;->setInput(Ljava/lang/reflect/GenericDeclaration;Ljava/lang/String;)V

    .line 203
    iget-boolean v0, p0, Lorg/apache/harmony/luni/lang/reflect/GenericSignatureParser;->eof:Z

    if-nez v0, :cond_d

    .line 204
    invoke-virtual {p0}, Lorg/apache/harmony/luni/lang/reflect/GenericSignatureParser;->parseFieldTypeSignature()Ljava/lang/reflect/Type;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/luni/lang/reflect/GenericSignatureParser;->fieldType:Ljava/lang/reflect/Type;

    .line 206
    :cond_d
    return-void
.end method

.method public parseForMethod(Ljava/lang/reflect/GenericDeclaration;Ljava/lang/String;[Ljava/lang/Class;)V
    .registers 8
    .parameter "genericDecl"
    .parameter "signature"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/GenericDeclaration;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 148
    .local p3, rawExceptionTypes:[Ljava/lang/Class;,"[Ljava/lang/Class<*>;"
    invoke-virtual {p0, p1, p2}, Lorg/apache/harmony/luni/lang/reflect/GenericSignatureParser;->setInput(Ljava/lang/reflect/GenericDeclaration;Ljava/lang/String;)V

    .line 149
    iget-boolean v2, p0, Lorg/apache/harmony/luni/lang/reflect/GenericSignatureParser;->eof:Z

    if-nez v2, :cond_b

    .line 150
    invoke-virtual {p0, p3}, Lorg/apache/harmony/luni/lang/reflect/GenericSignatureParser;->parseMethodTypeSignature([Ljava/lang/Class;)V

    .line 165
    :goto_a
    return-void

    .line 152
    :cond_b
    instance-of v2, p1, Ljava/lang/reflect/Method;

    if-eqz v2, :cond_34

    .line 153
    move-object v0, p1

    check-cast v0, Ljava/lang/reflect/Method;

    move-object v1, v0

    .line 154
    .local v1, m:Ljava/lang/reflect/Method;
    sget-object v2, Lorg/apache/harmony/luni/lang/reflect/ListOfVariables;->empty:[Ljava/lang/reflect/TypeVariable;

    iput-object v2, p0, Lorg/apache/harmony/luni/lang/reflect/GenericSignatureParser;->formalTypeParameters:[Ljava/lang/reflect/TypeVariable;

    .line 155
    new-instance v2, Lorg/apache/harmony/luni/lang/reflect/ListOfTypes;

    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/apache/harmony/luni/lang/reflect/ListOfTypes;-><init>([Ljava/lang/reflect/Type;)V

    iput-object v2, p0, Lorg/apache/harmony/luni/lang/reflect/GenericSignatureParser;->parameterTypes:Lorg/apache/harmony/luni/lang/reflect/ListOfTypes;

    .line 156
    new-instance v2, Lorg/apache/harmony/luni/lang/reflect/ListOfTypes;

    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getExceptionTypes()[Ljava/lang/Class;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/apache/harmony/luni/lang/reflect/ListOfTypes;-><init>([Ljava/lang/reflect/Type;)V

    iput-object v2, p0, Lorg/apache/harmony/luni/lang/reflect/GenericSignatureParser;->exceptionTypes:Lorg/apache/harmony/luni/lang/reflect/ListOfTypes;

    .line 157
    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/harmony/luni/lang/reflect/GenericSignatureParser;->returnType:Ljava/lang/reflect/Type;

    goto :goto_a

    .line 159
    .end local v1           #m:Ljava/lang/reflect/Method;
    :cond_34
    sget-object v2, Lorg/apache/harmony/luni/lang/reflect/ListOfVariables;->empty:[Ljava/lang/reflect/TypeVariable;

    iput-object v2, p0, Lorg/apache/harmony/luni/lang/reflect/GenericSignatureParser;->formalTypeParameters:[Ljava/lang/reflect/TypeVariable;

    .line 160
    sget-object v2, Lorg/apache/harmony/luni/lang/reflect/ListOfTypes;->EMPTY:Lorg/apache/harmony/luni/lang/reflect/ListOfTypes;

    iput-object v2, p0, Lorg/apache/harmony/luni/lang/reflect/GenericSignatureParser;->parameterTypes:Lorg/apache/harmony/luni/lang/reflect/ListOfTypes;

    .line 161
    sget-object v2, Lorg/apache/harmony/luni/lang/reflect/ListOfTypes;->EMPTY:Lorg/apache/harmony/luni/lang/reflect/ListOfTypes;

    iput-object v2, p0, Lorg/apache/harmony/luni/lang/reflect/GenericSignatureParser;->exceptionTypes:Lorg/apache/harmony/luni/lang/reflect/ListOfTypes;

    .line 162
    sget-object v2, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    iput-object v2, p0, Lorg/apache/harmony/luni/lang/reflect/GenericSignatureParser;->returnType:Ljava/lang/reflect/Type;

    goto :goto_a
.end method

.method parseFormalTypeParameter()Lorg/apache/harmony/luni/lang/reflect/ImplForVariable;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/harmony/luni/lang/reflect/ImplForVariable",
            "<",
            "Ljava/lang/reflect/GenericDeclaration;",
            ">;"
        }
    .end annotation

    .prologue
    const/16 v4, 0x3a

    .line 249
    invoke-virtual {p0}, Lorg/apache/harmony/luni/lang/reflect/GenericSignatureParser;->scanIdentifier()V

    .line 250
    iget-object v2, p0, Lorg/apache/harmony/luni/lang/reflect/GenericSignatureParser;->identifier:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    .line 252
    .local v1, name:Ljava/lang/String;
    new-instance v0, Lorg/apache/harmony/luni/lang/reflect/ListOfTypes;

    const/16 v2, 0x8

    invoke-direct {v0, v2}, Lorg/apache/harmony/luni/lang/reflect/ListOfTypes;-><init>(I)V

    .line 255
    .local v0, bounds:Lorg/apache/harmony/luni/lang/reflect/ListOfTypes;
    invoke-virtual {p0, v4}, Lorg/apache/harmony/luni/lang/reflect/GenericSignatureParser;->expect(C)V

    .line 256
    iget-char v2, p0, Lorg/apache/harmony/luni/lang/reflect/GenericSignatureParser;->symbol:C

    const/16 v3, 0x4c

    if-eq v2, v3, :cond_27

    iget-char v2, p0, Lorg/apache/harmony/luni/lang/reflect/GenericSignatureParser;->symbol:C

    const/16 v3, 0x5b

    if-eq v2, v3, :cond_27

    iget-char v2, p0, Lorg/apache/harmony/luni/lang/reflect/GenericSignatureParser;->symbol:C

    const/16 v3, 0x54

    if-ne v2, v3, :cond_2e

    .line 257
    :cond_27
    invoke-virtual {p0}, Lorg/apache/harmony/luni/lang/reflect/GenericSignatureParser;->parseFieldTypeSignature()Ljava/lang/reflect/Type;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/apache/harmony/luni/lang/reflect/ListOfTypes;->add(Ljava/lang/reflect/Type;)V

    .line 260
    :cond_2e
    :goto_2e
    iget-char v2, p0, Lorg/apache/harmony/luni/lang/reflect/GenericSignatureParser;->symbol:C

    if-ne v2, v4, :cond_3d

    .line 262
    invoke-virtual {p0}, Lorg/apache/harmony/luni/lang/reflect/GenericSignatureParser;->scanSymbol()V

    .line 263
    invoke-virtual {p0}, Lorg/apache/harmony/luni/lang/reflect/GenericSignatureParser;->parseFieldTypeSignature()Ljava/lang/reflect/Type;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/apache/harmony/luni/lang/reflect/ListOfTypes;->add(Ljava/lang/reflect/Type;)V

    goto :goto_2e

    .line 266
    :cond_3d
    new-instance v2, Lorg/apache/harmony/luni/lang/reflect/ImplForVariable;

    iget-object v3, p0, Lorg/apache/harmony/luni/lang/reflect/GenericSignatureParser;->genericDecl:Ljava/lang/reflect/GenericDeclaration;

    invoke-direct {v2, v3, v1, v0}, Lorg/apache/harmony/luni/lang/reflect/ImplForVariable;-><init>(Ljava/lang/reflect/GenericDeclaration;Ljava/lang/String;Lorg/apache/harmony/luni/lang/reflect/ListOfTypes;)V

    return-object v2
.end method

.method parseMethodTypeSignature([Ljava/lang/Class;)V
    .registers 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .local p1, rawExceptionTypes:[Ljava/lang/Class;,"[Ljava/lang/Class<*>;"
    const/16 v3, 0x5e

    const/16 v2, 0x29

    .line 399
    invoke-virtual {p0}, Lorg/apache/harmony/luni/lang/reflect/GenericSignatureParser;->parseOptFormalTypeParameters()V

    .line 401
    new-instance v0, Lorg/apache/harmony/luni/lang/reflect/ListOfTypes;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Lorg/apache/harmony/luni/lang/reflect/ListOfTypes;-><init>(I)V

    iput-object v0, p0, Lorg/apache/harmony/luni/lang/reflect/GenericSignatureParser;->parameterTypes:Lorg/apache/harmony/luni/lang/reflect/ListOfTypes;

    .line 402
    const/16 v0, 0x28

    invoke-virtual {p0, v0}, Lorg/apache/harmony/luni/lang/reflect/GenericSignatureParser;->expect(C)V

    .line 403
    :goto_15
    iget-char v0, p0, Lorg/apache/harmony/luni/lang/reflect/GenericSignatureParser;->symbol:C

    if-eq v0, v2, :cond_27

    iget-char v0, p0, Lorg/apache/harmony/luni/lang/reflect/GenericSignatureParser;->symbol:C

    if-lez v0, :cond_27

    .line 404
    iget-object v0, p0, Lorg/apache/harmony/luni/lang/reflect/GenericSignatureParser;->parameterTypes:Lorg/apache/harmony/luni/lang/reflect/ListOfTypes;

    invoke-virtual {p0}, Lorg/apache/harmony/luni/lang/reflect/GenericSignatureParser;->parseTypeSignature()Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/harmony/luni/lang/reflect/ListOfTypes;->add(Ljava/lang/reflect/Type;)V

    goto :goto_15

    .line 406
    :cond_27
    invoke-virtual {p0, v2}, Lorg/apache/harmony/luni/lang/reflect/GenericSignatureParser;->expect(C)V

    .line 408
    invoke-virtual {p0}, Lorg/apache/harmony/luni/lang/reflect/GenericSignatureParser;->parseReturnType()Ljava/lang/reflect/Type;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/luni/lang/reflect/GenericSignatureParser;->returnType:Ljava/lang/reflect/Type;

    .line 410
    iget-char v0, p0, Lorg/apache/harmony/luni/lang/reflect/GenericSignatureParser;->symbol:C

    if-ne v0, v3, :cond_5e

    .line 411
    new-instance v0, Lorg/apache/harmony/luni/lang/reflect/ListOfTypes;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Lorg/apache/harmony/luni/lang/reflect/ListOfTypes;-><init>(I)V

    iput-object v0, p0, Lorg/apache/harmony/luni/lang/reflect/GenericSignatureParser;->exceptionTypes:Lorg/apache/harmony/luni/lang/reflect/ListOfTypes;

    .line 413
    :cond_3d
    invoke-virtual {p0}, Lorg/apache/harmony/luni/lang/reflect/GenericSignatureParser;->scanSymbol()V

    .line 417
    iget-char v0, p0, Lorg/apache/harmony/luni/lang/reflect/GenericSignatureParser;->symbol:C

    const/16 v1, 0x54

    if-ne v0, v1, :cond_54

    .line 418
    iget-object v0, p0, Lorg/apache/harmony/luni/lang/reflect/GenericSignatureParser;->exceptionTypes:Lorg/apache/harmony/luni/lang/reflect/ListOfTypes;

    invoke-virtual {p0}, Lorg/apache/harmony/luni/lang/reflect/GenericSignatureParser;->parseTypeVariableSignature()Lorg/apache/harmony/luni/lang/reflect/ImplForVariable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/harmony/luni/lang/reflect/ListOfTypes;->add(Ljava/lang/reflect/Type;)V

    .line 422
    :goto_4f
    iget-char v0, p0, Lorg/apache/harmony/luni/lang/reflect/GenericSignatureParser;->symbol:C

    if-eq v0, v3, :cond_3d

    .line 428
    :goto_53
    return-void

    .line 420
    :cond_54
    iget-object v0, p0, Lorg/apache/harmony/luni/lang/reflect/GenericSignatureParser;->exceptionTypes:Lorg/apache/harmony/luni/lang/reflect/ListOfTypes;

    invoke-virtual {p0}, Lorg/apache/harmony/luni/lang/reflect/GenericSignatureParser;->parseClassTypeSignature()Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/harmony/luni/lang/reflect/ListOfTypes;->add(Ljava/lang/reflect/Type;)V

    goto :goto_4f

    .line 423
    :cond_5e
    if-eqz p1, :cond_68

    .line 424
    new-instance v0, Lorg/apache/harmony/luni/lang/reflect/ListOfTypes;

    invoke-direct {v0, p1}, Lorg/apache/harmony/luni/lang/reflect/ListOfTypes;-><init>([Ljava/lang/reflect/Type;)V

    iput-object v0, p0, Lorg/apache/harmony/luni/lang/reflect/GenericSignatureParser;->exceptionTypes:Lorg/apache/harmony/luni/lang/reflect/ListOfTypes;

    goto :goto_53

    .line 426
    :cond_68
    new-instance v0, Lorg/apache/harmony/luni/lang/reflect/ListOfTypes;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/apache/harmony/luni/lang/reflect/ListOfTypes;-><init>(I)V

    iput-object v0, p0, Lorg/apache/harmony/luni/lang/reflect/GenericSignatureParser;->exceptionTypes:Lorg/apache/harmony/luni/lang/reflect/ListOfTypes;

    goto :goto_53
.end method

.method parseOptFormalTypeParameters()V
    .registers 5

    .prologue
    const/16 v3, 0x3e

    .line 233
    new-instance v0, Lorg/apache/harmony/luni/lang/reflect/ListOfVariables;

    invoke-direct {v0}, Lorg/apache/harmony/luni/lang/reflect/ListOfVariables;-><init>()V

    .line 235
    .local v0, typeParams:Lorg/apache/harmony/luni/lang/reflect/ListOfVariables;
    iget-char v1, p0, Lorg/apache/harmony/luni/lang/reflect/GenericSignatureParser;->symbol:C

    const/16 v2, 0x3c

    if-ne v1, v2, :cond_2a

    .line 236
    invoke-virtual {p0}, Lorg/apache/harmony/luni/lang/reflect/GenericSignatureParser;->scanSymbol()V

    .line 237
    invoke-virtual {p0}, Lorg/apache/harmony/luni/lang/reflect/GenericSignatureParser;->parseFormalTypeParameter()Lorg/apache/harmony/luni/lang/reflect/ImplForVariable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/harmony/luni/lang/reflect/ListOfVariables;->add(Ljava/lang/reflect/TypeVariable;)V

    .line 238
    :goto_17
    iget-char v1, p0, Lorg/apache/harmony/luni/lang/reflect/GenericSignatureParser;->symbol:C

    if-eq v1, v3, :cond_27

    iget-char v1, p0, Lorg/apache/harmony/luni/lang/reflect/GenericSignatureParser;->symbol:C

    if-lez v1, :cond_27

    .line 239
    invoke-virtual {p0}, Lorg/apache/harmony/luni/lang/reflect/GenericSignatureParser;->parseFormalTypeParameter()Lorg/apache/harmony/luni/lang/reflect/ImplForVariable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/harmony/luni/lang/reflect/ListOfVariables;->add(Ljava/lang/reflect/TypeVariable;)V

    goto :goto_17

    .line 241
    :cond_27
    invoke-virtual {p0, v3}, Lorg/apache/harmony/luni/lang/reflect/GenericSignatureParser;->expect(C)V

    .line 243
    :cond_2a
    invoke-virtual {v0}, Lorg/apache/harmony/luni/lang/reflect/ListOfVariables;->getArray()[Ljava/lang/reflect/TypeVariable;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/harmony/luni/lang/reflect/GenericSignatureParser;->formalTypeParameters:[Ljava/lang/reflect/TypeVariable;

    .line 244
    return-void
.end method

.method parseOptTypeArguments()Lorg/apache/harmony/luni/lang/reflect/ListOfTypes;
    .registers 5

    .prologue
    const/16 v3, 0x3e

    .line 326
    new-instance v0, Lorg/apache/harmony/luni/lang/reflect/ListOfTypes;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Lorg/apache/harmony/luni/lang/reflect/ListOfTypes;-><init>(I)V

    .line 327
    .local v0, typeArgs:Lorg/apache/harmony/luni/lang/reflect/ListOfTypes;
    iget-char v1, p0, Lorg/apache/harmony/luni/lang/reflect/GenericSignatureParser;->symbol:C

    const/16 v2, 0x3c

    if-ne v1, v2, :cond_2c

    .line 328
    invoke-virtual {p0}, Lorg/apache/harmony/luni/lang/reflect/GenericSignatureParser;->scanSymbol()V

    .line 330
    invoke-virtual {p0}, Lorg/apache/harmony/luni/lang/reflect/GenericSignatureParser;->parseTypeArgument()Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/harmony/luni/lang/reflect/ListOfTypes;->add(Ljava/lang/reflect/Type;)V

    .line 331
    :goto_19
    iget-char v1, p0, Lorg/apache/harmony/luni/lang/reflect/GenericSignatureParser;->symbol:C

    if-eq v1, v3, :cond_29

    iget-char v1, p0, Lorg/apache/harmony/luni/lang/reflect/GenericSignatureParser;->symbol:C

    if-lez v1, :cond_29

    .line 332
    invoke-virtual {p0}, Lorg/apache/harmony/luni/lang/reflect/GenericSignatureParser;->parseTypeArgument()Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/harmony/luni/lang/reflect/ListOfTypes;->add(Ljava/lang/reflect/Type;)V

    goto :goto_19

    .line 334
    :cond_29
    invoke-virtual {p0, v3}, Lorg/apache/harmony/luni/lang/reflect/GenericSignatureParser;->expect(C)V

    .line 336
    :cond_2c
    return-object v0
.end method

.method parseReturnType()Ljava/lang/reflect/Type;
    .registers 3

    .prologue
    .line 432
    iget-char v0, p0, Lorg/apache/harmony/luni/lang/reflect/GenericSignatureParser;->symbol:C

    const/16 v1, 0x56

    if-eq v0, v1, :cond_b

    invoke-virtual {p0}, Lorg/apache/harmony/luni/lang/reflect/GenericSignatureParser;->parseTypeSignature()Ljava/lang/reflect/Type;

    move-result-object v0

    .line 433
    :goto_a
    return-object v0

    :cond_b
    invoke-virtual {p0}, Lorg/apache/harmony/luni/lang/reflect/GenericSignatureParser;->scanSymbol()V

    sget-object v0, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    goto :goto_a
.end method

.method parseTypeArgument()Ljava/lang/reflect/Type;
    .registers 5

    .prologue
    const/4 v2, 0x1

    .line 341
    new-instance v0, Lorg/apache/harmony/luni/lang/reflect/ListOfTypes;

    invoke-direct {v0, v2}, Lorg/apache/harmony/luni/lang/reflect/ListOfTypes;-><init>(I)V

    .line 342
    .local v0, extendsBound:Lorg/apache/harmony/luni/lang/reflect/ListOfTypes;
    new-instance v1, Lorg/apache/harmony/luni/lang/reflect/ListOfTypes;

    invoke-direct {v1, v2}, Lorg/apache/harmony/luni/lang/reflect/ListOfTypes;-><init>(I)V

    .line 343
    .local v1, superBound:Lorg/apache/harmony/luni/lang/reflect/ListOfTypes;
    iget-char v2, p0, Lorg/apache/harmony/luni/lang/reflect/GenericSignatureParser;->symbol:C

    const/16 v3, 0x2a

    if-ne v2, v3, :cond_1f

    .line 344
    invoke-virtual {p0}, Lorg/apache/harmony/luni/lang/reflect/GenericSignatureParser;->scanSymbol()V

    .line 345
    const-class v2, Ljava/lang/Object;

    invoke-virtual {v0, v2}, Lorg/apache/harmony/luni/lang/reflect/ListOfTypes;->add(Ljava/lang/reflect/Type;)V

    .line 346
    new-instance v2, Lorg/apache/harmony/luni/lang/reflect/ImplForWildcard;

    invoke-direct {v2, v0, v1}, Lorg/apache/harmony/luni/lang/reflect/ImplForWildcard;-><init>(Lorg/apache/harmony/luni/lang/reflect/ListOfTypes;Lorg/apache/harmony/luni/lang/reflect/ListOfTypes;)V

    .line 360
    :goto_1e
    return-object v2

    .line 348
    :cond_1f
    iget-char v2, p0, Lorg/apache/harmony/luni/lang/reflect/GenericSignatureParser;->symbol:C

    const/16 v3, 0x2b

    if-ne v2, v3, :cond_35

    .line 349
    invoke-virtual {p0}, Lorg/apache/harmony/luni/lang/reflect/GenericSignatureParser;->scanSymbol()V

    .line 350
    invoke-virtual {p0}, Lorg/apache/harmony/luni/lang/reflect/GenericSignatureParser;->parseFieldTypeSignature()Ljava/lang/reflect/Type;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/apache/harmony/luni/lang/reflect/ListOfTypes;->add(Ljava/lang/reflect/Type;)V

    .line 351
    new-instance v2, Lorg/apache/harmony/luni/lang/reflect/ImplForWildcard;

    invoke-direct {v2, v0, v1}, Lorg/apache/harmony/luni/lang/reflect/ImplForWildcard;-><init>(Lorg/apache/harmony/luni/lang/reflect/ListOfTypes;Lorg/apache/harmony/luni/lang/reflect/ListOfTypes;)V

    goto :goto_1e

    .line 353
    :cond_35
    iget-char v2, p0, Lorg/apache/harmony/luni/lang/reflect/GenericSignatureParser;->symbol:C

    const/16 v3, 0x2d

    if-ne v2, v3, :cond_50

    .line 354
    invoke-virtual {p0}, Lorg/apache/harmony/luni/lang/reflect/GenericSignatureParser;->scanSymbol()V

    .line 355
    invoke-virtual {p0}, Lorg/apache/harmony/luni/lang/reflect/GenericSignatureParser;->parseFieldTypeSignature()Ljava/lang/reflect/Type;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/harmony/luni/lang/reflect/ListOfTypes;->add(Ljava/lang/reflect/Type;)V

    .line 356
    const-class v2, Ljava/lang/Object;

    invoke-virtual {v0, v2}, Lorg/apache/harmony/luni/lang/reflect/ListOfTypes;->add(Ljava/lang/reflect/Type;)V

    .line 357
    new-instance v2, Lorg/apache/harmony/luni/lang/reflect/ImplForWildcard;

    invoke-direct {v2, v0, v1}, Lorg/apache/harmony/luni/lang/reflect/ImplForWildcard;-><init>(Lorg/apache/harmony/luni/lang/reflect/ListOfTypes;Lorg/apache/harmony/luni/lang/reflect/ListOfTypes;)V

    goto :goto_1e

    .line 360
    :cond_50
    invoke-virtual {p0}, Lorg/apache/harmony/luni/lang/reflect/GenericSignatureParser;->parseFieldTypeSignature()Ljava/lang/reflect/Type;

    move-result-object v2

    goto :goto_1e
.end method

.method parseTypeSignature()Ljava/lang/reflect/Type;
    .registers 2

    .prologue
    .line 375
    iget-char v0, p0, Lorg/apache/harmony/luni/lang/reflect/GenericSignatureParser;->symbol:C

    sparse-switch v0, :sswitch_data_3a

    .line 386
    invoke-virtual {p0}, Lorg/apache/harmony/luni/lang/reflect/GenericSignatureParser;->parseFieldTypeSignature()Ljava/lang/reflect/Type;

    move-result-object v0

    :goto_9
    return-object v0

    .line 376
    :sswitch_a
    invoke-virtual {p0}, Lorg/apache/harmony/luni/lang/reflect/GenericSignatureParser;->scanSymbol()V

    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    goto :goto_9

    .line 377
    :sswitch_10
    invoke-virtual {p0}, Lorg/apache/harmony/luni/lang/reflect/GenericSignatureParser;->scanSymbol()V

    sget-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    goto :goto_9

    .line 378
    :sswitch_16
    invoke-virtual {p0}, Lorg/apache/harmony/luni/lang/reflect/GenericSignatureParser;->scanSymbol()V

    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    goto :goto_9

    .line 379
    :sswitch_1c
    invoke-virtual {p0}, Lorg/apache/harmony/luni/lang/reflect/GenericSignatureParser;->scanSymbol()V

    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    goto :goto_9

    .line 380
    :sswitch_22
    invoke-virtual {p0}, Lorg/apache/harmony/luni/lang/reflect/GenericSignatureParser;->scanSymbol()V

    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    goto :goto_9

    .line 381
    :sswitch_28
    invoke-virtual {p0}, Lorg/apache/harmony/luni/lang/reflect/GenericSignatureParser;->scanSymbol()V

    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    goto :goto_9

    .line 382
    :sswitch_2e
    invoke-virtual {p0}, Lorg/apache/harmony/luni/lang/reflect/GenericSignatureParser;->scanSymbol()V

    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    goto :goto_9

    .line 383
    :sswitch_34
    invoke-virtual {p0}, Lorg/apache/harmony/luni/lang/reflect/GenericSignatureParser;->scanSymbol()V

    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    goto :goto_9

    .line 375
    :sswitch_data_3a
    .sparse-switch
        0x42 -> :sswitch_a
        0x43 -> :sswitch_10
        0x44 -> :sswitch_16
        0x46 -> :sswitch_1c
        0x49 -> :sswitch_22
        0x4a -> :sswitch_28
        0x53 -> :sswitch_2e
        0x5a -> :sswitch_34
    .end sparse-switch
.end method

.method parseTypeVariableSignature()Lorg/apache/harmony/luni/lang/reflect/ImplForVariable;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/harmony/luni/lang/reflect/ImplForVariable",
            "<",
            "Ljava/lang/reflect/GenericDeclaration;",
            ">;"
        }
    .end annotation

    .prologue
    .line 366
    const/16 v0, 0x54

    invoke-virtual {p0, v0}, Lorg/apache/harmony/luni/lang/reflect/GenericSignatureParser;->expect(C)V

    .line 367
    invoke-virtual {p0}, Lorg/apache/harmony/luni/lang/reflect/GenericSignatureParser;->scanIdentifier()V

    .line 368
    const/16 v0, 0x3b

    invoke-virtual {p0, v0}, Lorg/apache/harmony/luni/lang/reflect/GenericSignatureParser;->expect(C)V

    .line 371
    new-instance v0, Lorg/apache/harmony/luni/lang/reflect/ImplForVariable;

    iget-object v1, p0, Lorg/apache/harmony/luni/lang/reflect/GenericSignatureParser;->genericDecl:Ljava/lang/reflect/GenericDeclaration;

    iget-object v2, p0, Lorg/apache/harmony/luni/lang/reflect/GenericSignatureParser;->identifier:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lorg/apache/harmony/luni/lang/reflect/ImplForVariable;-><init>(Ljava/lang/reflect/GenericDeclaration;Ljava/lang/String;)V

    return-object v0
.end method

.method scanIdentifier()V
    .registers 7

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 478
    iget-boolean v2, p0, Lorg/apache/harmony/luni/lang/reflect/GenericSignatureParser;->eof:Z

    if-nez v2, :cond_6b

    .line 479
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x20

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 480
    .local v1, identBuf:Ljava/lang/StringBuilder;
    iget-char v2, p0, Lorg/apache/harmony/luni/lang/reflect/GenericSignatureParser;->symbol:C

    invoke-virtual {p0, v2}, Lorg/apache/harmony/luni/lang/reflect/GenericSignatureParser;->isStopSymbol(C)Z

    move-result v2

    if-nez v2, :cond_61

    .line 481
    iget-char v2, p0, Lorg/apache/harmony/luni/lang/reflect/GenericSignatureParser;->symbol:C

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 483
    :cond_1a
    iget-object v2, p0, Lorg/apache/harmony/luni/lang/reflect/GenericSignatureParser;->buffer:[C

    iget v3, p0, Lorg/apache/harmony/luni/lang/reflect/GenericSignatureParser;->pos:I

    aget-char v0, v2, v3

    .line 484
    .local v0, ch:C
    const/16 v2, 0x61

    if-lt v0, v2, :cond_28

    const/16 v2, 0x7a

    if-le v0, v2, :cond_36

    :cond_28
    const/16 v2, 0x41

    if-lt v0, v2, :cond_30

    const/16 v2, 0x5a

    if-le v0, v2, :cond_36

    :cond_30
    invoke-virtual {p0, v0}, Lorg/apache/harmony/luni/lang/reflect/GenericSignatureParser;->isStopSymbol(C)Z

    move-result v2

    if-nez v2, :cond_57

    .line 486
    :cond_36
    iget-object v2, p0, Lorg/apache/harmony/luni/lang/reflect/GenericSignatureParser;->buffer:[C

    iget v3, p0, Lorg/apache/harmony/luni/lang/reflect/GenericSignatureParser;->pos:I

    aget-char v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 487
    iget v2, p0, Lorg/apache/harmony/luni/lang/reflect/GenericSignatureParser;->pos:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/apache/harmony/luni/lang/reflect/GenericSignatureParser;->pos:I

    .line 493
    iget v2, p0, Lorg/apache/harmony/luni/lang/reflect/GenericSignatureParser;->pos:I

    iget-object v3, p0, Lorg/apache/harmony/luni/lang/reflect/GenericSignatureParser;->buffer:[C

    array-length v3, v3

    if-ne v2, v3, :cond_1a

    .line 494
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/harmony/luni/lang/reflect/GenericSignatureParser;->identifier:Ljava/lang/String;

    .line 495
    iput-char v4, p0, Lorg/apache/harmony/luni/lang/reflect/GenericSignatureParser;->symbol:C

    .line 496
    iput-boolean v5, p0, Lorg/apache/harmony/luni/lang/reflect/GenericSignatureParser;->eof:Z

    .line 506
    :goto_56
    return-void

    .line 489
    :cond_57
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/harmony/luni/lang/reflect/GenericSignatureParser;->identifier:Ljava/lang/String;

    .line 490
    invoke-virtual {p0}, Lorg/apache/harmony/luni/lang/reflect/GenericSignatureParser;->scanSymbol()V

    goto :goto_56

    .line 499
    .end local v0           #ch:C
    :cond_61
    iput-char v4, p0, Lorg/apache/harmony/luni/lang/reflect/GenericSignatureParser;->symbol:C

    .line 500
    iput-boolean v5, p0, Lorg/apache/harmony/luni/lang/reflect/GenericSignatureParser;->eof:Z

    .line 501
    new-instance v2, Ljava/lang/reflect/GenericSignatureFormatError;

    invoke-direct {v2}, Ljava/lang/reflect/GenericSignatureFormatError;-><init>()V

    throw v2

    .line 504
    .end local v1           #identBuf:Ljava/lang/StringBuilder;
    :cond_6b
    new-instance v2, Ljava/lang/reflect/GenericSignatureFormatError;

    invoke-direct {v2}, Ljava/lang/reflect/GenericSignatureFormatError;-><init>()V

    throw v2
.end method

.method scanSymbol()V
    .registers 3

    .prologue
    .line 442
    iget-boolean v0, p0, Lorg/apache/harmony/luni/lang/reflect/GenericSignatureParser;->eof:Z

    if-nez v0, :cond_21

    .line 443
    iget v0, p0, Lorg/apache/harmony/luni/lang/reflect/GenericSignatureParser;->pos:I

    iget-object v1, p0, Lorg/apache/harmony/luni/lang/reflect/GenericSignatureParser;->buffer:[C

    array-length v1, v1

    if-ge v0, v1, :cond_1a

    .line 444
    iget-object v0, p0, Lorg/apache/harmony/luni/lang/reflect/GenericSignatureParser;->buffer:[C

    iget v1, p0, Lorg/apache/harmony/luni/lang/reflect/GenericSignatureParser;->pos:I

    aget-char v0, v0, v1

    iput-char v0, p0, Lorg/apache/harmony/luni/lang/reflect/GenericSignatureParser;->symbol:C

    .line 445
    iget v0, p0, Lorg/apache/harmony/luni/lang/reflect/GenericSignatureParser;->pos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/harmony/luni/lang/reflect/GenericSignatureParser;->pos:I

    .line 453
    :goto_19
    return-void

    .line 447
    :cond_1a
    const/4 v0, 0x0

    iput-char v0, p0, Lorg/apache/harmony/luni/lang/reflect/GenericSignatureParser;->symbol:C

    .line 448
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/harmony/luni/lang/reflect/GenericSignatureParser;->eof:Z

    goto :goto_19

    .line 451
    :cond_21
    new-instance v0, Ljava/lang/reflect/GenericSignatureFormatError;

    invoke-direct {v0}, Ljava/lang/reflect/GenericSignatureFormatError;-><init>()V

    throw v0
.end method

.method setInput(Ljava/lang/reflect/GenericDeclaration;Ljava/lang/String;)V
    .registers 4
    .parameter "genericDecl"
    .parameter "input"

    .prologue
    .line 102
    if-eqz p2, :cond_11

    .line 103
    iput-object p1, p0, Lorg/apache/harmony/luni/lang/reflect/GenericSignatureParser;->genericDecl:Ljava/lang/reflect/GenericDeclaration;

    .line 104
    invoke-virtual {p2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/luni/lang/reflect/GenericSignatureParser;->buffer:[C

    .line 105
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/harmony/luni/lang/reflect/GenericSignatureParser;->eof:Z

    .line 106
    invoke-virtual {p0}, Lorg/apache/harmony/luni/lang/reflect/GenericSignatureParser;->scanSymbol()V

    .line 111
    :goto_10
    return-void

    .line 109
    :cond_11
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/harmony/luni/lang/reflect/GenericSignatureParser;->eof:Z

    goto :goto_10
.end method
