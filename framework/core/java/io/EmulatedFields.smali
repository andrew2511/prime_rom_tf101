.class Ljava/io/EmulatedFields;
.super Ljava/lang/Object;
.source "EmulatedFields.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/io/EmulatedFields$ObjectSlot;
    }
.end annotation


# instance fields
.field private declaredFields:[Ljava/io/ObjectStreamField;

.field private slotsToSerialize:[Ljava/io/EmulatedFields$ObjectSlot;


# direct methods
.method public constructor <init>([Ljava/io/ObjectStreamField;[Ljava/io/ObjectStreamField;)V
    .registers 3
    .parameter "fields"
    .parameter "declared"

    .prologue
    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    invoke-direct {p0, p1}, Ljava/io/EmulatedFields;->buildSlots([Ljava/io/ObjectStreamField;)V

    .line 84
    iput-object p2, p0, Ljava/io/EmulatedFields;->declaredFields:[Ljava/io/ObjectStreamField;

    .line 85
    return-void
.end method

.method private buildSlots([Ljava/io/ObjectStreamField;)V
    .registers 5
    .parameter "fields"

    .prologue
    .line 96
    array-length v2, p1

    new-array v2, v2, [Ljava/io/EmulatedFields$ObjectSlot;

    iput-object v2, p0, Ljava/io/EmulatedFields;->slotsToSerialize:[Ljava/io/EmulatedFields$ObjectSlot;

    .line 97
    const/4 v0, 0x0

    .local v0, i:I
    :goto_6
    array-length v2, p1

    if-ge v0, v2, :cond_19

    .line 98
    new-instance v1, Ljava/io/EmulatedFields$ObjectSlot;

    invoke-direct {v1}, Ljava/io/EmulatedFields$ObjectSlot;-><init>()V

    .line 99
    .local v1, s:Ljava/io/EmulatedFields$ObjectSlot;
    iget-object v2, p0, Ljava/io/EmulatedFields;->slotsToSerialize:[Ljava/io/EmulatedFields$ObjectSlot;

    aput-object v1, v2, v0

    .line 100
    aget-object v2, p1, v0

    iput-object v2, v1, Ljava/io/EmulatedFields$ObjectSlot;->field:Ljava/io/ObjectStreamField;

    .line 97
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 103
    .end local v1           #s:Ljava/io/EmulatedFields$ObjectSlot;
    :cond_19
    return-void
.end method

.method private findSlot(Ljava/lang/String;Ljava/lang/Class;)Ljava/io/EmulatedFields$ObjectSlot;
    .registers 9
    .parameter "fieldName"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/io/EmulatedFields$ObjectSlot;"
        }
    .end annotation

    .prologue
    .local p2, fieldType:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const/4 v5, 0x1

    .line 147
    if-eqz p2, :cond_2c

    invoke-virtual {p2}, Ljava/lang/Class;->isPrimitive()Z

    move-result v4

    if-eqz v4, :cond_2c

    move v2, v5

    .line 149
    .local v2, isPrimitive:Z
    :goto_a
    const/4 v1, 0x0

    .local v1, i:I
    :goto_b
    iget-object v4, p0, Ljava/io/EmulatedFields;->slotsToSerialize:[Ljava/io/EmulatedFields$ObjectSlot;

    array-length v4, v4

    if-ge v1, v4, :cond_44

    .line 150
    iget-object v4, p0, Ljava/io/EmulatedFields;->slotsToSerialize:[Ljava/io/EmulatedFields$ObjectSlot;

    aget-object v3, v4, v1

    .line 151
    .local v3, slot:Ljava/io/EmulatedFields$ObjectSlot;
    iget-object v4, v3, Ljava/io/EmulatedFields$ObjectSlot;->field:Ljava/io/ObjectStreamField;

    invoke-virtual {v4}, Ljava/io/ObjectStreamField;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_41

    .line 152
    if-eqz v2, :cond_2f

    .line 155
    iget-object v4, v3, Ljava/io/EmulatedFields$ObjectSlot;->field:Ljava/io/ObjectStreamField;

    invoke-virtual {v4}, Ljava/io/ObjectStreamField;->getType()Ljava/lang/Class;

    move-result-object v4

    if-ne v4, p2, :cond_41

    move-object v4, v3

    .line 187
    .end local v3           #slot:Ljava/io/EmulatedFields$ObjectSlot;
    :goto_2b
    return-object v4

    .line 147
    .end local v1           #i:I
    .end local v2           #isPrimitive:Z
    :cond_2c
    const/4 v4, 0x0

    move v2, v4

    goto :goto_a

    .line 160
    .restart local v1       #i:I
    .restart local v2       #isPrimitive:Z
    .restart local v3       #slot:Ljava/io/EmulatedFields$ObjectSlot;
    :cond_2f
    if-nez p2, :cond_33

    move-object v4, v3

    .line 161
    goto :goto_2b

    .line 164
    :cond_33
    iget-object v4, v3, Ljava/io/EmulatedFields$ObjectSlot;->field:Ljava/io/ObjectStreamField;

    invoke-virtual {v4}, Ljava/io/ObjectStreamField;->getType()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_41

    move-object v4, v3

    .line 165
    goto :goto_2b

    .line 149
    :cond_41
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 171
    .end local v3           #slot:Ljava/io/EmulatedFields$ObjectSlot;
    :cond_44
    iget-object v4, p0, Ljava/io/EmulatedFields;->declaredFields:[Ljava/io/ObjectStreamField;

    if-eqz v4, :cond_7e

    .line 172
    const/4 v1, 0x0

    :goto_49
    iget-object v4, p0, Ljava/io/EmulatedFields;->declaredFields:[Ljava/io/ObjectStreamField;

    array-length v4, v4

    if-ge v1, v4, :cond_7e

    .line 173
    iget-object v4, p0, Ljava/io/EmulatedFields;->declaredFields:[Ljava/io/ObjectStreamField;

    aget-object v0, v4, v1

    .line 174
    .local v0, field:Ljava/io/ObjectStreamField;
    invoke-virtual {v0}, Ljava/io/ObjectStreamField;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7b

    .line 175
    if-eqz v2, :cond_6f

    invoke-virtual {v0}, Ljava/io/ObjectStreamField;->getType()Ljava/lang/Class;

    move-result-object v4

    if-ne v4, p2, :cond_7b

    .line 179
    :cond_64
    new-instance v3, Ljava/io/EmulatedFields$ObjectSlot;

    invoke-direct {v3}, Ljava/io/EmulatedFields$ObjectSlot;-><init>()V

    .line 180
    .restart local v3       #slot:Ljava/io/EmulatedFields$ObjectSlot;
    iput-object v0, v3, Ljava/io/EmulatedFields$ObjectSlot;->field:Ljava/io/ObjectStreamField;

    .line 181
    iput-boolean v5, v3, Ljava/io/EmulatedFields$ObjectSlot;->defaulted:Z

    move-object v4, v3

    .line 182
    goto :goto_2b

    .line 175
    .end local v3           #slot:Ljava/io/EmulatedFields$ObjectSlot;
    :cond_6f
    if-eqz p2, :cond_64

    invoke-virtual {v0}, Ljava/io/ObjectStreamField;->getType()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-nez v4, :cond_64

    .line 172
    :cond_7b
    add-int/lit8 v1, v1, 0x1

    goto :goto_49

    .line 187
    .end local v0           #field:Ljava/io/ObjectStreamField;
    :cond_7e
    const/4 v4, 0x0

    goto :goto_2b
.end method


# virtual methods
.method public defaulted(Ljava/lang/String;)Z
    .registers 6
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 120
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Ljava/io/EmulatedFields;->findSlot(Ljava/lang/String;Ljava/lang/Class;)Ljava/io/EmulatedFields$ObjectSlot;

    move-result-object v0

    .line 121
    .local v0, slot:Ljava/io/EmulatedFields$ObjectSlot;
    if-nez v0, :cond_26

    .line 122
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "no field \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 124
    :cond_26
    iget-boolean v1, v0, Ljava/io/EmulatedFields$ObjectSlot;->defaulted:Z

    return v1
.end method

.method public get(Ljava/lang/String;B)B
    .registers 7
    .parameter "name"
    .parameter "defaultValue"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 207
    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-direct {p0, p1, v1}, Ljava/io/EmulatedFields;->findSlot(Ljava/lang/String;Ljava/lang/Class;)Ljava/io/EmulatedFields$ObjectSlot;

    move-result-object v0

    .line 209
    .local v0, slot:Ljava/io/EmulatedFields$ObjectSlot;
    if-nez v0, :cond_27

    .line 210
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "no byte field \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 212
    :cond_27
    iget-boolean v1, v0, Ljava/io/EmulatedFields$ObjectSlot;->defaulted:Z

    if-eqz v1, :cond_2d

    move v1, p2

    .end local p0
    :goto_2c
    return v1

    .restart local p0
    :cond_2d
    iget-object p0, v0, Ljava/io/EmulatedFields$ObjectSlot;->fieldValue:Ljava/lang/Object;

    .end local p0
    check-cast p0, Ljava/lang/Byte;

    invoke-virtual {p0}, Ljava/lang/Byte;->byteValue()B

    move-result v1

    goto :goto_2c
.end method

.method public get(Ljava/lang/String;C)C
    .registers 7
    .parameter "name"
    .parameter "defaultValue"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 233
    sget-object v1, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    invoke-direct {p0, p1, v1}, Ljava/io/EmulatedFields;->findSlot(Ljava/lang/String;Ljava/lang/Class;)Ljava/io/EmulatedFields$ObjectSlot;

    move-result-object v0

    .line 235
    .local v0, slot:Ljava/io/EmulatedFields$ObjectSlot;
    if-nez v0, :cond_27

    .line 236
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "no char field \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 238
    :cond_27
    iget-boolean v1, v0, Ljava/io/EmulatedFields$ObjectSlot;->defaulted:Z

    if-eqz v1, :cond_2d

    move v1, p2

    .end local p0
    :goto_2c
    return v1

    .restart local p0
    :cond_2d
    iget-object p0, v0, Ljava/io/EmulatedFields$ObjectSlot;->fieldValue:Ljava/lang/Object;

    .end local p0
    check-cast p0, Ljava/lang/Character;

    invoke-virtual {p0}, Ljava/lang/Character;->charValue()C

    move-result v1

    goto :goto_2c
.end method

.method public get(Ljava/lang/String;D)D
    .registers 8
    .parameter "name"
    .parameter "defaultValue"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 259
    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-direct {p0, p1, v1}, Ljava/io/EmulatedFields;->findSlot(Ljava/lang/String;Ljava/lang/Class;)Ljava/io/EmulatedFields$ObjectSlot;

    move-result-object v0

    .line 261
    .local v0, slot:Ljava/io/EmulatedFields$ObjectSlot;
    if-nez v0, :cond_27

    .line 262
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "no double field \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 264
    :cond_27
    iget-boolean v1, v0, Ljava/io/EmulatedFields$ObjectSlot;->defaulted:Z

    if-eqz v1, :cond_2d

    move-wide v1, p2

    .end local p0
    :goto_2c
    return-wide v1

    .restart local p0
    :cond_2d
    iget-object p0, v0, Ljava/io/EmulatedFields$ObjectSlot;->fieldValue:Ljava/lang/Object;

    .end local p0
    check-cast p0, Ljava/lang/Double;

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    goto :goto_2c
.end method

.method public get(Ljava/lang/String;F)F
    .registers 7
    .parameter "name"
    .parameter "defaultValue"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 285
    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-direct {p0, p1, v1}, Ljava/io/EmulatedFields;->findSlot(Ljava/lang/String;Ljava/lang/Class;)Ljava/io/EmulatedFields$ObjectSlot;

    move-result-object v0

    .line 287
    .local v0, slot:Ljava/io/EmulatedFields$ObjectSlot;
    if-nez v0, :cond_27

    .line 288
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "no float field \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 290
    :cond_27
    iget-boolean v1, v0, Ljava/io/EmulatedFields$ObjectSlot;->defaulted:Z

    if-eqz v1, :cond_2d

    move v1, p2

    .end local p0
    :goto_2c
    return v1

    .restart local p0
    :cond_2d
    iget-object p0, v0, Ljava/io/EmulatedFields$ObjectSlot;->fieldValue:Ljava/lang/Object;

    .end local p0
    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result v1

    goto :goto_2c
.end method

.method public get(Ljava/lang/String;I)I
    .registers 7
    .parameter "name"
    .parameter "defaultValue"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 311
    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-direct {p0, p1, v1}, Ljava/io/EmulatedFields;->findSlot(Ljava/lang/String;Ljava/lang/Class;)Ljava/io/EmulatedFields$ObjectSlot;

    move-result-object v0

    .line 313
    .local v0, slot:Ljava/io/EmulatedFields$ObjectSlot;
    if-nez v0, :cond_27

    .line 314
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "no int field \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 316
    :cond_27
    iget-boolean v1, v0, Ljava/io/EmulatedFields$ObjectSlot;->defaulted:Z

    if-eqz v1, :cond_2d

    move v1, p2

    .end local p0
    :goto_2c
    return v1

    .restart local p0
    :cond_2d
    iget-object p0, v0, Ljava/io/EmulatedFields$ObjectSlot;->fieldValue:Ljava/lang/Object;

    .end local p0
    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_2c
.end method

.method public get(Ljava/lang/String;J)J
    .registers 8
    .parameter "name"
    .parameter "defaultValue"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 337
    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-direct {p0, p1, v1}, Ljava/io/EmulatedFields;->findSlot(Ljava/lang/String;Ljava/lang/Class;)Ljava/io/EmulatedFields$ObjectSlot;

    move-result-object v0

    .line 339
    .local v0, slot:Ljava/io/EmulatedFields$ObjectSlot;
    if-nez v0, :cond_27

    .line 340
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "no long field \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 342
    :cond_27
    iget-boolean v1, v0, Ljava/io/EmulatedFields$ObjectSlot;->defaulted:Z

    if-eqz v1, :cond_2d

    move-wide v1, p2

    .end local p0
    :goto_2c
    return-wide v1

    .restart local p0
    :cond_2d
    iget-object p0, v0, Ljava/io/EmulatedFields$ObjectSlot;->fieldValue:Ljava/lang/Object;

    .end local p0
    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    goto :goto_2c
.end method

.method public get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 7
    .parameter "name"
    .parameter "defaultValue"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 363
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Ljava/io/EmulatedFields;->findSlot(Ljava/lang/String;Ljava/lang/Class;)Ljava/io/EmulatedFields$ObjectSlot;

    move-result-object v0

    .line 365
    .local v0, slot:Ljava/io/EmulatedFields$ObjectSlot;
    if-eqz v0, :cond_13

    iget-object v1, v0, Ljava/io/EmulatedFields$ObjectSlot;->field:Ljava/io/ObjectStreamField;

    invoke-virtual {v1}, Ljava/io/ObjectStreamField;->getType()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->isPrimitive()Z

    move-result v1

    if-eqz v1, :cond_32

    .line 366
    :cond_13
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "no Object field \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 368
    :cond_32
    iget-boolean v1, v0, Ljava/io/EmulatedFields$ObjectSlot;->defaulted:Z

    if-eqz v1, :cond_38

    move-object v1, p2

    :goto_37
    return-object v1

    :cond_38
    iget-object v1, v0, Ljava/io/EmulatedFields$ObjectSlot;->fieldValue:Ljava/lang/Object;

    goto :goto_37
.end method

.method public get(Ljava/lang/String;S)S
    .registers 7
    .parameter "name"
    .parameter "defaultValue"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 388
    sget-object v1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-direct {p0, p1, v1}, Ljava/io/EmulatedFields;->findSlot(Ljava/lang/String;Ljava/lang/Class;)Ljava/io/EmulatedFields$ObjectSlot;

    move-result-object v0

    .line 390
    .local v0, slot:Ljava/io/EmulatedFields$ObjectSlot;
    if-nez v0, :cond_27

    .line 391
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "no short field \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 393
    :cond_27
    iget-boolean v1, v0, Ljava/io/EmulatedFields$ObjectSlot;->defaulted:Z

    if-eqz v1, :cond_2d

    move v1, p2

    .end local p0
    :goto_2c
    return v1

    .restart local p0
    :cond_2d
    iget-object p0, v0, Ljava/io/EmulatedFields$ObjectSlot;->fieldValue:Ljava/lang/Object;

    .end local p0
    check-cast p0, Ljava/lang/Short;

    invoke-virtual {p0}, Ljava/lang/Short;->shortValue()S

    move-result v1

    goto :goto_2c
.end method

.method public get(Ljava/lang/String;Z)Z
    .registers 7
    .parameter "name"
    .parameter "defaultValue"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 414
    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-direct {p0, p1, v1}, Ljava/io/EmulatedFields;->findSlot(Ljava/lang/String;Ljava/lang/Class;)Ljava/io/EmulatedFields$ObjectSlot;

    move-result-object v0

    .line 416
    .local v0, slot:Ljava/io/EmulatedFields$ObjectSlot;
    if-nez v0, :cond_27

    .line 417
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "no boolean field \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 419
    :cond_27
    iget-boolean v1, v0, Ljava/io/EmulatedFields$ObjectSlot;->defaulted:Z

    if-eqz v1, :cond_2d

    move v1, p2

    .end local p0
    :goto_2c
    return v1

    .restart local p0
    :cond_2d
    iget-object p0, v0, Ljava/io/EmulatedFields$ObjectSlot;->fieldValue:Ljava/lang/Object;

    .end local p0
    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    goto :goto_2c
.end method

.method public put(Ljava/lang/String;B)V
    .registers 7
    .parameter "name"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 436
    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-direct {p0, p1, v1}, Ljava/io/EmulatedFields;->findSlot(Ljava/lang/String;Ljava/lang/Class;)Ljava/io/EmulatedFields$ObjectSlot;

    move-result-object v0

    .line 437
    .local v0, slot:Ljava/io/EmulatedFields$ObjectSlot;
    if-nez v0, :cond_27

    .line 438
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "no byte field \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 440
    :cond_27
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    iput-object v1, v0, Ljava/io/EmulatedFields$ObjectSlot;->fieldValue:Ljava/lang/Object;

    .line 441
    const/4 v1, 0x0

    iput-boolean v1, v0, Ljava/io/EmulatedFields$ObjectSlot;->defaulted:Z

    .line 442
    return-void
.end method

.method public put(Ljava/lang/String;C)V
    .registers 7
    .parameter "name"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 457
    sget-object v1, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    invoke-direct {p0, p1, v1}, Ljava/io/EmulatedFields;->findSlot(Ljava/lang/String;Ljava/lang/Class;)Ljava/io/EmulatedFields$ObjectSlot;

    move-result-object v0

    .line 458
    .local v0, slot:Ljava/io/EmulatedFields$ObjectSlot;
    if-nez v0, :cond_27

    .line 459
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "no char field \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 461
    :cond_27
    invoke-static {p2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    iput-object v1, v0, Ljava/io/EmulatedFields$ObjectSlot;->fieldValue:Ljava/lang/Object;

    .line 462
    const/4 v1, 0x0

    iput-boolean v1, v0, Ljava/io/EmulatedFields$ObjectSlot;->defaulted:Z

    .line 463
    return-void
.end method

.method public put(Ljava/lang/String;D)V
    .registers 8
    .parameter "name"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 478
    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-direct {p0, p1, v1}, Ljava/io/EmulatedFields;->findSlot(Ljava/lang/String;Ljava/lang/Class;)Ljava/io/EmulatedFields$ObjectSlot;

    move-result-object v0

    .line 479
    .local v0, slot:Ljava/io/EmulatedFields$ObjectSlot;
    if-nez v0, :cond_27

    .line 480
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "no double field \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 482
    :cond_27
    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    iput-object v1, v0, Ljava/io/EmulatedFields$ObjectSlot;->fieldValue:Ljava/lang/Object;

    .line 483
    const/4 v1, 0x0

    iput-boolean v1, v0, Ljava/io/EmulatedFields$ObjectSlot;->defaulted:Z

    .line 484
    return-void
.end method

.method public put(Ljava/lang/String;F)V
    .registers 7
    .parameter "name"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 499
    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-direct {p0, p1, v1}, Ljava/io/EmulatedFields;->findSlot(Ljava/lang/String;Ljava/lang/Class;)Ljava/io/EmulatedFields$ObjectSlot;

    move-result-object v0

    .line 500
    .local v0, slot:Ljava/io/EmulatedFields$ObjectSlot;
    if-nez v0, :cond_27

    .line 501
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "no float field \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 503
    :cond_27
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iput-object v1, v0, Ljava/io/EmulatedFields$ObjectSlot;->fieldValue:Ljava/lang/Object;

    .line 504
    const/4 v1, 0x0

    iput-boolean v1, v0, Ljava/io/EmulatedFields$ObjectSlot;->defaulted:Z

    .line 505
    return-void
.end method

.method public put(Ljava/lang/String;I)V
    .registers 7
    .parameter "name"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 520
    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-direct {p0, p1, v1}, Ljava/io/EmulatedFields;->findSlot(Ljava/lang/String;Ljava/lang/Class;)Ljava/io/EmulatedFields$ObjectSlot;

    move-result-object v0

    .line 521
    .local v0, slot:Ljava/io/EmulatedFields$ObjectSlot;
    if-nez v0, :cond_27

    .line 522
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "no integer field \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 524
    :cond_27
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Ljava/io/EmulatedFields$ObjectSlot;->fieldValue:Ljava/lang/Object;

    .line 525
    const/4 v1, 0x0

    iput-boolean v1, v0, Ljava/io/EmulatedFields$ObjectSlot;->defaulted:Z

    .line 526
    return-void
.end method

.method public put(Ljava/lang/String;J)V
    .registers 8
    .parameter "name"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 541
    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-direct {p0, p1, v1}, Ljava/io/EmulatedFields;->findSlot(Ljava/lang/String;Ljava/lang/Class;)Ljava/io/EmulatedFields$ObjectSlot;

    move-result-object v0

    .line 542
    .local v0, slot:Ljava/io/EmulatedFields$ObjectSlot;
    if-nez v0, :cond_27

    .line 543
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "no long field \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 545
    :cond_27
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Ljava/io/EmulatedFields$ObjectSlot;->fieldValue:Ljava/lang/Object;

    .line 546
    const/4 v1, 0x0

    iput-boolean v1, v0, Ljava/io/EmulatedFields$ObjectSlot;->defaulted:Z

    .line 547
    return-void
.end method

.method public put(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 8
    .parameter "name"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 562
    const/4 v1, 0x0

    .line 563
    .local v1, valueClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    if-eqz p2, :cond_7

    .line 564
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 566
    :cond_7
    invoke-direct {p0, p1, v1}, Ljava/io/EmulatedFields;->findSlot(Ljava/lang/String;Ljava/lang/Class;)Ljava/io/EmulatedFields$ObjectSlot;

    move-result-object v0

    .line 567
    .local v0, slot:Ljava/io/EmulatedFields$ObjectSlot;
    if-nez v0, :cond_2c

    .line 568
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "no Object field \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 570
    :cond_2c
    iput-object p2, v0, Ljava/io/EmulatedFields$ObjectSlot;->fieldValue:Ljava/lang/Object;

    .line 571
    const/4 v2, 0x0

    iput-boolean v2, v0, Ljava/io/EmulatedFields$ObjectSlot;->defaulted:Z

    .line 572
    return-void
.end method

.method public put(Ljava/lang/String;S)V
    .registers 7
    .parameter "name"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 587
    sget-object v1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-direct {p0, p1, v1}, Ljava/io/EmulatedFields;->findSlot(Ljava/lang/String;Ljava/lang/Class;)Ljava/io/EmulatedFields$ObjectSlot;

    move-result-object v0

    .line 588
    .local v0, slot:Ljava/io/EmulatedFields$ObjectSlot;
    if-nez v0, :cond_27

    .line 589
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "no short field \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 591
    :cond_27
    invoke-static {p2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    iput-object v1, v0, Ljava/io/EmulatedFields$ObjectSlot;->fieldValue:Ljava/lang/Object;

    .line 592
    const/4 v1, 0x0

    iput-boolean v1, v0, Ljava/io/EmulatedFields$ObjectSlot;->defaulted:Z

    .line 593
    return-void
.end method

.method public put(Ljava/lang/String;Z)V
    .registers 7
    .parameter "name"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 608
    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-direct {p0, p1, v1}, Ljava/io/EmulatedFields;->findSlot(Ljava/lang/String;Ljava/lang/Class;)Ljava/io/EmulatedFields$ObjectSlot;

    move-result-object v0

    .line 609
    .local v0, slot:Ljava/io/EmulatedFields$ObjectSlot;
    if-nez v0, :cond_27

    .line 610
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "no boolean field \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 612
    :cond_27
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Ljava/io/EmulatedFields$ObjectSlot;->fieldValue:Ljava/lang/Object;

    .line 613
    const/4 v1, 0x0

    iput-boolean v1, v0, Ljava/io/EmulatedFields$ObjectSlot;->defaulted:Z

    .line 614
    return-void
.end method

.method public slots()[Ljava/io/EmulatedFields$ObjectSlot;
    .registers 2

    .prologue
    .line 622
    iget-object v0, p0, Ljava/io/EmulatedFields;->slotsToSerialize:[Ljava/io/EmulatedFields$ObjectSlot;

    return-object v0
.end method
