.class public Ljava/io/ObjectStreamField;
.super Ljava/lang/Object;
.source "ObjectStreamField.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field private isDeserialized:Z

.field private name:Ljava/lang/String;

.field offset:I

.field private type:Ljava/lang/Object;

.field private typeString:Ljava/lang/String;

.field private unshared:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Class;)V
    .registers 4
    .parameter "name"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 60
    .local p2, cl:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    if-eqz p1, :cond_7

    if-nez p2, :cond_d

    .line 62
    :cond_7
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 64
    :cond_d
    iput-object p1, p0, Ljava/io/ObjectStreamField;->name:Ljava/lang/String;

    .line 65
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Ljava/io/ObjectStreamField;->type:Ljava/lang/Object;

    .line 66
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Class;Z)V
    .registers 5
    .parameter "name"
    .parameter
    .parameter "unshared"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;Z)V"
        }
    .end annotation

    .prologue
    .line 83
    .local p2, cl:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    if-eqz p1, :cond_7

    if-nez p2, :cond_d

    .line 85
    :cond_7
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 87
    :cond_d
    iput-object p1, p0, Ljava/io/ObjectStreamField;->name:Ljava/lang/String;

    .line 88
    invoke-virtual {p2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    if-nez v0, :cond_1b

    move-object v0, p2

    :goto_16
    iput-object v0, p0, Ljava/io/ObjectStreamField;->type:Ljava/lang/Object;

    .line 89
    iput-boolean p3, p0, Ljava/io/ObjectStreamField;->unshared:Z

    .line 90
    return-void

    .line 88
    :cond_1b
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    goto :goto_16
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .parameter "signature"
    .parameter "name"

    .prologue
    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    if-nez p2, :cond_b

    .line 103
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 105
    :cond_b
    iput-object p2, p0, Ljava/io/ObjectStreamField;->name:Ljava/lang/String;

    .line 106
    const/16 v0, 0x2e

    const/16 v1, 0x2f

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljava/io/ObjectStreamField;->typeString:Ljava/lang/String;

    .line 107
    invoke-direct {p0}, Ljava/io/ObjectStreamField;->defaultResolve()Z

    .line 108
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/io/ObjectStreamField;->isDeserialized:Z

    .line 109
    return-void
.end method

.method private defaultResolve()Z
    .registers 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 334
    iget-object v0, p0, Ljava/io/ObjectStreamField;->typeString:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    sparse-switch v0, :sswitch_data_42

    .line 360
    const-class v0, Ljava/lang/Object;

    iput-object v0, p0, Ljava/io/ObjectStreamField;->type:Ljava/lang/Object;

    move v0, v2

    .line 361
    :goto_10
    return v0

    .line 336
    :sswitch_11
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    iput-object v0, p0, Ljava/io/ObjectStreamField;->type:Ljava/lang/Object;

    move v0, v1

    .line 337
    goto :goto_10

    .line 339
    :sswitch_17
    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    iput-object v0, p0, Ljava/io/ObjectStreamField;->type:Ljava/lang/Object;

    move v0, v1

    .line 340
    goto :goto_10

    .line 342
    :sswitch_1d
    sget-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    iput-object v0, p0, Ljava/io/ObjectStreamField;->type:Ljava/lang/Object;

    move v0, v1

    .line 343
    goto :goto_10

    .line 345
    :sswitch_23
    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    iput-object v0, p0, Ljava/io/ObjectStreamField;->type:Ljava/lang/Object;

    move v0, v1

    .line 346
    goto :goto_10

    .line 348
    :sswitch_29
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    iput-object v0, p0, Ljava/io/ObjectStreamField;->type:Ljava/lang/Object;

    move v0, v1

    .line 349
    goto :goto_10

    .line 351
    :sswitch_2f
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    iput-object v0, p0, Ljava/io/ObjectStreamField;->type:Ljava/lang/Object;

    move v0, v1

    .line 352
    goto :goto_10

    .line 354
    :sswitch_35
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    iput-object v0, p0, Ljava/io/ObjectStreamField;->type:Ljava/lang/Object;

    move v0, v1

    .line 355
    goto :goto_10

    .line 357
    :sswitch_3b
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    iput-object v0, p0, Ljava/io/ObjectStreamField;->type:Ljava/lang/Object;

    move v0, v1

    .line 358
    goto :goto_10

    .line 334
    nop

    :sswitch_data_42
    .sparse-switch
        0x42 -> :sswitch_17
        0x43 -> :sswitch_1d
        0x44 -> :sswitch_3b
        0x46 -> :sswitch_35
        0x49 -> :sswitch_11
        0x4a -> :sswitch_2f
        0x53 -> :sswitch_23
        0x5a -> :sswitch_29
    .end sparse-switch
.end method

.method private typeCodeOf(Ljava/lang/Class;)C
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)C"
        }
    .end annotation

    .prologue
    .line 209
    .local p1, type:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_7

    .line 210
    const/16 v0, 0x49

    .line 228
    :goto_6
    return v0

    .line 211
    :cond_7
    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_e

    .line 212
    const/16 v0, 0x42

    goto :goto_6

    .line 213
    :cond_e
    sget-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_15

    .line 214
    const/16 v0, 0x43

    goto :goto_6

    .line 215
    :cond_15
    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_1c

    .line 216
    const/16 v0, 0x53

    goto :goto_6

    .line 217
    :cond_1c
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_23

    .line 218
    const/16 v0, 0x5a

    goto :goto_6

    .line 219
    :cond_23
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_2a

    .line 220
    const/16 v0, 0x4a

    goto :goto_6

    .line 221
    :cond_2a
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_31

    .line 222
    const/16 v0, 0x46

    goto :goto_6

    .line 223
    :cond_31
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_38

    .line 224
    const/16 v0, 0x44

    goto :goto_6

    .line 225
    :cond_38
    invoke-virtual {p1}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_41

    .line 226
    const/16 v0, 0x5b

    goto :goto_6

    .line 228
    :cond_41
    const/16 v0, 0x4c

    goto :goto_6
.end method


# virtual methods
.method public compareTo(Ljava/lang/Object;)I
    .registers 8
    .parameter "o"

    .prologue
    .line 124
    move-object v0, p1

    check-cast v0, Ljava/io/ObjectStreamField;

    move-object v1, v0

    .line 125
    .local v1, f:Ljava/io/ObjectStreamField;
    invoke-virtual {p0}, Ljava/io/ObjectStreamField;->isPrimitive()Z

    move-result v3

    .line 126
    .local v3, thisPrimitive:Z
    invoke-virtual {v1}, Ljava/io/ObjectStreamField;->isPrimitive()Z

    move-result v2

    .line 130
    .local v2, fPrimitive:Z
    if-eq v3, v2, :cond_14

    .line 131
    if-eqz v3, :cond_12

    const/4 v4, -0x1

    .line 135
    :goto_11
    return v4

    .line 131
    :cond_12
    const/4 v4, 0x1

    goto :goto_11

    .line 135
    :cond_14
    invoke-virtual {p0}, Ljava/io/ObjectStreamField;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Ljava/io/ObjectStreamField;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v4

    goto :goto_11
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 144
    iget-object v0, p0, Ljava/io/ObjectStreamField;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getOffset()I
    .registers 2

    .prologue
    .line 153
    iget v0, p0, Ljava/io/ObjectStreamField;->offset:I

    return v0
.end method

.method public getType()Ljava/lang/Class;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 178
    invoke-virtual {p0}, Ljava/io/ObjectStreamField;->getTypeInternal()Ljava/lang/Class;

    move-result-object v0

    .line 179
    .local v0, cl:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    iget-boolean v1, p0, Ljava/io/ObjectStreamField;->isDeserialized:Z

    if-eqz v1, :cond_11

    invoke-virtual {v0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v1

    if-nez v1, :cond_11

    .line 180
    const-class v1, Ljava/lang/Object;

    .line 182
    :goto_10
    return-object v1

    :cond_11
    move-object v1, v0

    goto :goto_10
.end method

.method public getTypeCode()C
    .registers 2

    .prologue
    .line 205
    invoke-virtual {p0}, Ljava/io/ObjectStreamField;->getTypeInternal()Ljava/lang/Class;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/io/ObjectStreamField;->typeCodeOf(Ljava/lang/Class;)C

    move-result v0

    return v0
.end method

.method getTypeInternal()Ljava/lang/Class;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 166
    iget-object v0, p0, Ljava/io/ObjectStreamField;->type:Ljava/lang/Object;

    instance-of v0, v0, Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_12

    .line 167
    iget-object p0, p0, Ljava/io/ObjectStreamField;->type:Ljava/lang/Object;

    .end local p0
    check-cast p0, Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Class;

    move-object v0, p0

    .line 169
    :goto_11
    return-object v0

    .restart local p0
    :cond_12
    iget-object p0, p0, Ljava/io/ObjectStreamField;->type:Ljava/lang/Object;

    .end local p0
    check-cast p0, Ljava/lang/Class;

    move-object v0, p0

    goto :goto_11
.end method

.method public getTypeString()Ljava/lang/String;
    .registers 7

    .prologue
    .line 240
    invoke-virtual {p0}, Ljava/io/ObjectStreamField;->isPrimitive()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 241
    const/4 v3, 0x0

    .line 249
    :goto_7
    return-object v3

    .line 243
    :cond_8
    iget-object v3, p0, Ljava/io/ObjectStreamField;->typeString:Ljava/lang/String;

    if-nez v3, :cond_29

    .line 244
    invoke-virtual {p0}, Ljava/io/ObjectStreamField;->getTypeInternal()Ljava/lang/Class;

    move-result-object v1

    .line 245
    .local v1, t:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x2e

    const/16 v5, 0x2f

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v2

    .line 246
    .local v2, typeName:Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/Class;->isArray()Z

    move-result v3

    if-eqz v3, :cond_2c

    move-object v0, v2

    .line 247
    .local v0, str:Ljava/lang/String;
    :goto_23
    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Ljava/io/ObjectStreamField;->typeString:Ljava/lang/String;

    .line 249
    .end local v0           #str:Ljava/lang/String;
    .end local v1           #t:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v2           #typeName:Ljava/lang/String;
    :cond_29
    iget-object v3, p0, Ljava/io/ObjectStreamField;->typeString:Ljava/lang/String;

    goto :goto_7

    .line 246
    .restart local v1       #t:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .restart local v2       #typeName:Ljava/lang/String;
    :cond_2c
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "L"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x3b

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    goto :goto_23
.end method

.method public isPrimitive()Z
    .registers 3

    .prologue
    .line 259
    invoke-virtual {p0}, Ljava/io/ObjectStreamField;->getTypeInternal()Ljava/lang/Class;

    move-result-object v0

    .line 260
    .local v0, t:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    if-eqz v0, :cond_e

    invoke-virtual {v0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v1

    if-eqz v1, :cond_e

    const/4 v1, 0x1

    :goto_d
    return v1

    :cond_e
    const/4 v1, 0x0

    goto :goto_d
.end method

.method public isUnshared()Z
    .registers 2

    .prologue
    .line 322
    iget-boolean v0, p0, Ljava/io/ObjectStreamField;->unshared:Z

    return v0
.end method

.method resolve(Ljava/lang/ClassLoader;)V
    .registers 9
    .parameter "loader"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 292
    iget-object v2, p0, Ljava/io/ObjectStreamField;->typeString:Ljava/lang/String;

    if-nez v2, :cond_16

    invoke-virtual {p0}, Ljava/io/ObjectStreamField;->isPrimitive()Z

    move-result v2

    if-eqz v2, :cond_16

    .line 294
    invoke-virtual {p0}, Ljava/io/ObjectStreamField;->getTypeCode()C

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Ljava/io/ObjectStreamField;->typeString:Ljava/lang/String;

    .line 297
    :cond_16
    iget-object v2, p0, Ljava/io/ObjectStreamField;->typeString:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ne v2, v5, :cond_25

    .line 298
    invoke-direct {p0}, Ljava/io/ObjectStreamField;->defaultResolve()Z

    move-result v2

    if-eqz v2, :cond_25

    .line 314
    :goto_24
    return-void

    .line 303
    :cond_25
    iget-object v2, p0, Ljava/io/ObjectStreamField;->typeString:Ljava/lang/String;

    const/16 v3, 0x2f

    const/16 v4, 0x2e

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    .line 304
    .local v1, className:Ljava/lang/String;
    invoke-virtual {v1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x4c

    if-ne v2, v3, :cond_40

    .line 306
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v2, v5

    invoke-virtual {v1, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 309
    :cond_40
    const/4 v2, 0x0

    :try_start_41
    invoke-static {v1, v2, p1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    .line 310
    .local v0, cl:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    if-nez v2, :cond_51

    move-object v2, v0

    :goto_4c
    iput-object v2, p0, Ljava/io/ObjectStreamField;->type:Ljava/lang/Object;

    goto :goto_24

    .line 311
    .end local v0           #cl:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :catch_4f
    move-exception v2

    goto :goto_24

    .line 310
    .restart local v0       #cl:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :cond_51
    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V
    :try_end_56
    .catch Ljava/lang/ClassNotFoundException; {:try_start_41 .. :try_end_56} :catch_4f

    goto :goto_4c
.end method

.method protected setOffset(I)V
    .registers 2
    .parameter "newValue"

    .prologue
    .line 277
    iput p1, p0, Ljava/io/ObjectStreamField;->offset:I

    .line 278
    return-void
.end method

.method setUnshared(Z)V
    .registers 2
    .parameter "unshared"

    .prologue
    .line 326
    iput-boolean p1, p0, Ljava/io/ObjectStreamField;->unshared:Z

    .line 327
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 288
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/io/ObjectStreamField;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/io/ObjectStreamField;->getTypeInternal()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method writeField(Ljava/io/DataOutputStream;)Z
    .registers 4
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 264
    invoke-virtual {p0}, Ljava/io/ObjectStreamField;->getTypeInternal()Ljava/lang/Class;

    move-result-object v0

    .line 265
    .local v0, t:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-direct {p0, v0}, Ljava/io/ObjectStreamField;->typeCodeOf(Ljava/lang/Class;)C

    move-result v1

    invoke-virtual {p1, v1}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 266
    iget-object v1, p0, Ljava/io/ObjectStreamField;->name:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 267
    if-eqz v0, :cond_1a

    invoke-virtual {v0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v1

    if-eqz v1, :cond_1a

    const/4 v1, 0x1

    :goto_19
    return v1

    :cond_1a
    const/4 v1, 0x0

    goto :goto_19
.end method
