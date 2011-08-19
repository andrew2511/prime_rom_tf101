.class public abstract Lgov/nist/javax/sip/header/SIPObject;
.super Lgov/nist/core/GenericObject;
.source "SIPObject.java"


# direct methods
.method protected constructor <init>()V
    .registers 1

    .prologue
    .line 55
    invoke-direct {p0}, Lgov/nist/core/GenericObject;-><init>()V

    .line 56
    return-void
.end method


# virtual methods
.method public dbgPrint()V
    .registers 1

    .prologue
    .line 63
    invoke-super {p0}, Lgov/nist/core/GenericObject;->dbgPrint()V

    .line 64
    return-void
.end method

.method public debugDump()Ljava/lang/String;
    .registers 24

    .prologue
    .line 291
    const-string v21, ""

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lgov/nist/javax/sip/header/SIPObject;->stringRepresentation:Ljava/lang/String;

    .line 292
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v19

    .line 293
    .local v19, myclass:Ljava/lang/Class;
    invoke-virtual/range {v19 .. v19}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/header/SIPObject;->sprint(Ljava/lang/String;)V

    .line 294
    const-string v21, "{"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/header/SIPObject;->sprint(Ljava/lang/String;)V

    .line 295
    invoke-virtual/range {v19 .. v19}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v11

    .line 296
    .local v11, fields:[Ljava/lang/reflect/Field;
    const/4 v14, 0x0

    .local v14, i:I
    :goto_25
    move-object v0, v11

    array-length v0, v0

    move/from16 v21, v0

    move v0, v14

    move/from16 v1, v21

    if-ge v0, v1, :cond_269

    .line 297
    aget-object v8, v11, v14

    .line 299
    .local v8, f:Ljava/lang/reflect/Field;
    invoke-virtual {v8}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v18

    .line 300
    .local v18, modifier:I
    and-int/lit8 v21, v18, 0x2

    const/16 v22, 0x2

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_41

    .line 296
    :cond_3e
    :goto_3e
    add-int/lit8 v14, v14, 0x1

    goto :goto_25

    .line 302
    :cond_41
    invoke-virtual {v8}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v10

    .line 303
    .local v10, fieldType:Ljava/lang/Class;
    invoke-virtual {v8}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v9

    .line 304
    .local v9, fieldName:Ljava/lang/String;
    const-string v21, "stringRepresentation"

    move-object v0, v9

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v21

    if-eqz v21, :cond_3e

    .line 308
    const-string v21, "indentation"

    move-object v0, v9

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v21

    if-eqz v21, :cond_3e

    .line 312
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v21

    move-object v1, v9

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ":"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/header/SIPObject;->sprint(Ljava/lang/String;)V

    .line 315
    :try_start_7c
    invoke-virtual {v10}, Ljava/lang/Class;->isPrimitive()Z

    move-result v21

    if-eqz v21, :cond_15f

    .line 316
    invoke-virtual {v10}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v13

    .line 317
    .local v13, fname:Ljava/lang/String;
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v21

    move-object v1, v13

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ":"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/header/SIPObject;->sprint(Ljava/lang/String;)V

    .line 318
    const-string v21, "int"

    move-object v0, v13

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v21

    if-nez v21, :cond_c1

    .line 319
    move-object v0, v8

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v15

    .line 320
    .local v15, intfield:I
    move-object/from16 v0, p0

    move v1, v15

    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/header/SIPObject;->sprint(I)V

    goto :goto_3e

    .line 376
    .end local v13           #fname:Ljava/lang/String;
    .end local v15           #intfield:I
    :catch_bc
    move-exception v21

    move-object/from16 v7, v21

    .line 377
    .local v7, ex1:Ljava/lang/IllegalAccessException;
    goto/16 :goto_3e

    .line 321
    .end local v7           #ex1:Ljava/lang/IllegalAccessException;
    .restart local v13       #fname:Ljava/lang/String;
    :cond_c1
    const-string v21, "short"

    move-object v0, v13

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v21

    if-nez v21, :cond_dc

    .line 322
    move-object v0, v8

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->getShort(Ljava/lang/Object;)S

    move-result v20

    .line 323
    .local v20, shortField:S
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/header/SIPObject;->sprint(S)V

    goto/16 :goto_3e

    .line 324
    .end local v20           #shortField:S
    :cond_dc
    const-string v21, "char"

    move-object v0, v13

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v21

    if-nez v21, :cond_f6

    .line 325
    move-object v0, v8

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->getChar(Ljava/lang/Object;)C

    move-result v4

    .line 326
    .local v4, charField:C
    move-object/from16 v0, p0

    move v1, v4

    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/header/SIPObject;->sprint(C)V

    goto/16 :goto_3e

    .line 327
    .end local v4           #charField:C
    :cond_f6
    const-string v21, "long"

    move-object v0, v13

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v21

    if-nez v21, :cond_111

    .line 328
    move-object v0, v8

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->getLong(Ljava/lang/Object;)J

    move-result-wide v16

    .line 329
    .local v16, longField:J
    move-object/from16 v0, p0

    move-wide/from16 v1, v16

    invoke-virtual {v0, v1, v2}, Lgov/nist/javax/sip/header/SIPObject;->sprint(J)V

    goto/16 :goto_3e

    .line 330
    .end local v16           #longField:J
    :cond_111
    const-string v21, "boolean"

    move-object v0, v13

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v21

    if-nez v21, :cond_12b

    .line 331
    move-object v0, v8

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z

    move-result v3

    .line 332
    .local v3, booleanField:Z
    move-object/from16 v0, p0

    move v1, v3

    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/header/SIPObject;->sprint(Z)V

    goto/16 :goto_3e

    .line 333
    .end local v3           #booleanField:Z
    :cond_12b
    const-string v21, "double"

    move-object v0, v13

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v21

    if-nez v21, :cond_145

    .line 334
    move-object v0, v8

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->getDouble(Ljava/lang/Object;)D

    move-result-wide v5

    .line 335
    .local v5, doubleField:D
    move-object/from16 v0, p0

    move-wide v1, v5

    invoke-virtual {v0, v1, v2}, Lgov/nist/javax/sip/header/SIPObject;->sprint(D)V

    goto/16 :goto_3e

    .line 336
    .end local v5           #doubleField:D
    :cond_145
    const-string v21, "float"

    move-object v0, v13

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v21

    if-nez v21, :cond_3e

    .line 337
    move-object v0, v8

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->getFloat(Ljava/lang/Object;)F

    move-result v12

    .line 338
    .local v12, floatField:F
    move-object/from16 v0, p0

    move v1, v12

    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/header/SIPObject;->sprint(F)V

    goto/16 :goto_3e

    .line 340
    .end local v12           #floatField:F
    .end local v13           #fname:Ljava/lang/String;
    :cond_15f
    const-class v21, Lgov/nist/core/GenericObject;

    move-object/from16 v0, v21

    move-object v1, v10

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v21

    if-eqz v21, :cond_19f

    .line 341
    move-object v0, v8

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    if-eqz v21, :cond_194

    .line 342
    move-object v0, v8

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lgov/nist/core/GenericObject;

    move-object/from16 v0, p0

    iget v0, v0, Lgov/nist/javax/sip/header/SIPObject;->indentation:I

    move/from16 v21, v0

    add-int/lit8 v21, v21, 0x1

    move-object v0, v3

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lgov/nist/core/GenericObject;->debugDump(I)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/header/SIPObject;->sprint(Ljava/lang/String;)V

    goto/16 :goto_3e

    .line 346
    :cond_194
    const-string v21, "<null>"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/header/SIPObject;->sprint(Ljava/lang/String;)V

    goto/16 :goto_3e

    .line 349
    :cond_19f
    const-class v21, Lgov/nist/core/GenericObjectList;

    move-object/from16 v0, v21

    move-object v1, v10

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v21

    if-eqz v21, :cond_1df

    .line 351
    move-object v0, v8

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    if-eqz v21, :cond_1d4

    .line 352
    move-object v0, v8

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lgov/nist/core/GenericObjectList;

    move-object/from16 v0, p0

    iget v0, v0, Lgov/nist/javax/sip/header/SIPObject;->indentation:I

    move/from16 v21, v0

    add-int/lit8 v21, v21, 0x1

    move-object v0, v3

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lgov/nist/core/GenericObjectList;->debugDump(I)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/header/SIPObject;->sprint(Ljava/lang/String;)V

    goto/16 :goto_3e

    .line 356
    :cond_1d4
    const-string v21, "<null>"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/header/SIPObject;->sprint(Ljava/lang/String;)V

    goto/16 :goto_3e

    .line 362
    :cond_1df
    move-object v0, v8

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    if-eqz v21, :cond_240

    .line 363
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    move-object v0, v8

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ":"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/header/SIPObject;->sprint(Ljava/lang/String;)V

    .line 368
    :goto_211
    const-string v21, "{"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/header/SIPObject;->sprint(Ljava/lang/String;)V

    .line 369
    move-object v0, v8

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    if-eqz v21, :cond_25f

    .line 370
    move-object v0, v8

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/header/SIPObject;->sprint(Ljava/lang/String;)V

    .line 374
    :goto_235
    const-string v21, "}"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/header/SIPObject;->sprint(Ljava/lang/String;)V

    goto/16 :goto_3e

    .line 365
    :cond_240
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ":"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/header/SIPObject;->sprint(Ljava/lang/String;)V

    goto :goto_211

    .line 372
    :cond_25f
    const-string v21, "<null>"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/header/SIPObject;->sprint(Ljava/lang/String;)V
    :try_end_268
    .catch Ljava/lang/IllegalAccessException; {:try_start_7c .. :try_end_268} :catch_bc

    goto :goto_235

    .line 380
    .end local v8           #f:Ljava/lang/reflect/Field;
    .end local v9           #fieldName:Ljava/lang/String;
    .end local v10           #fieldType:Ljava/lang/Class;
    .end local v18           #modifier:I
    :cond_269
    const-string v21, "}"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/header/SIPObject;->sprint(Ljava/lang/String;)V

    .line 381
    move-object/from16 v0, p0

    iget-object v0, v0, Lgov/nist/javax/sip/header/SIPObject;->stringRepresentation:Ljava/lang/String;

    move-object/from16 v21, v0

    return-object v21
.end method

.method public debugDump(I)Ljava/lang/String;
    .registers 4
    .parameter "indent"

    .prologue
    .line 390
    iget v1, p0, Lgov/nist/javax/sip/header/SIPObject;->indentation:I

    .line 391
    .local v1, save:I
    iput p1, p0, Lgov/nist/javax/sip/header/SIPObject;->indentation:I

    .line 392
    invoke-virtual {p0}, Lgov/nist/javax/sip/header/SIPObject;->debugDump()Ljava/lang/String;

    move-result-object v0

    .line 393
    .local v0, retval:Ljava/lang/String;
    iput v1, p0, Lgov/nist/javax/sip/header/SIPObject;->indentation:I

    .line 394
    return-object v0
.end method

.method public abstract encode()Ljava/lang/String;
.end method

.method public encode(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;
    .registers 3
    .parameter "buffer"

    .prologue
    .line 75
    invoke-virtual {p0}, Lgov/nist/javax/sip/header/SIPObject;->encode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 21
    .parameter "other"

    .prologue
    .line 83
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v15

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_10

    .line 84
    const/4 v15, 0x0

    .line 156
    :goto_f
    return v15

    .line 85
    :cond_10
    move-object/from16 v0, p1

    check-cast v0, Lgov/nist/javax/sip/header/SIPObject;

    move-object v14, v0

    .line 86
    .local v14, that:Lgov/nist/javax/sip/header/SIPObject;
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v13

    .line 87
    .local v13, myclass:Ljava/lang/Class;
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    .line 89
    .local v9, hisclass:Ljava/lang/Class;
    :goto_1d
    invoke-virtual {v13}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v6

    .line 90
    .local v6, fields:[Ljava/lang/reflect/Field;
    invoke-virtual {v9, v13}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_29

    .line 91
    const/4 v15, 0x0

    goto :goto_f

    .line 92
    :cond_29
    invoke-virtual {v9}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v10

    .line 93
    .local v10, hisfields:[Ljava/lang/reflect/Field;
    const/4 v11, 0x0

    .local v11, i:I
    :goto_2e
    array-length v15, v6

    if-ge v11, v15, :cond_1ac

    .line 94
    aget-object v3, v6, v11

    .line 95
    .local v3, f:Ljava/lang/reflect/Field;
    aget-object v8, v10, v11

    .line 97
    .local v8, g:Ljava/lang/reflect/Field;
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v12

    .line 98
    .local v12, modifier:I
    and-int/lit8 v15, v12, 0x2

    const/16 v16, 0x2

    move v0, v15

    move/from16 v1, v16

    if-ne v0, v1, :cond_45

    .line 93
    :cond_42
    :goto_42
    add-int/lit8 v11, v11, 0x1

    goto :goto_2e

    .line 100
    :cond_45
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v5

    .line 101
    .local v5, fieldType:Ljava/lang/Class;
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v4

    .line 102
    .local v4, fieldName:Ljava/lang/String;
    const-string v15, "stringRepresentation"

    invoke-virtual {v4, v15}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v15

    if-eqz v15, :cond_42

    .line 105
    const-string v15, "indentation"

    invoke-virtual {v4, v15}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v15

    if-eqz v15, :cond_42

    .line 110
    :try_start_5d
    invoke-virtual {v5}, Ljava/lang/Class;->isPrimitive()Z

    move-result v15

    if-eqz v15, :cond_120

    .line 111
    invoke-virtual {v5}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v7

    .line 112
    .local v7, fname:Ljava/lang/String;
    const-string v15, "int"

    invoke-virtual {v7, v15}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v15

    if-nez v15, :cond_81

    .line 113
    move-object v0, v3

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v15

    invoke-virtual {v8, v14}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v16

    move v0, v15

    move/from16 v1, v16

    if-eq v0, v1, :cond_42

    .line 114
    const/4 v15, 0x0

    goto :goto_f

    .line 115
    :cond_81
    const-string v15, "short"

    invoke-virtual {v7, v15}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v15

    if-nez v15, :cond_9c

    .line 116
    move-object v0, v3

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->getShort(Ljava/lang/Object;)S

    move-result v15

    invoke-virtual {v8, v14}, Ljava/lang/reflect/Field;->getShort(Ljava/lang/Object;)S

    move-result v16

    move v0, v15

    move/from16 v1, v16

    if-eq v0, v1, :cond_42

    .line 117
    const/4 v15, 0x0

    goto/16 :goto_f

    .line 118
    :cond_9c
    const-string v15, "char"

    invoke-virtual {v7, v15}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v15

    if-nez v15, :cond_b7

    .line 119
    move-object v0, v3

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->getChar(Ljava/lang/Object;)C

    move-result v15

    invoke-virtual {v8, v14}, Ljava/lang/reflect/Field;->getChar(Ljava/lang/Object;)C

    move-result v16

    move v0, v15

    move/from16 v1, v16

    if-eq v0, v1, :cond_42

    .line 120
    const/4 v15, 0x0

    goto/16 :goto_f

    .line 121
    :cond_b7
    const-string v15, "long"

    invoke-virtual {v7, v15}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v15

    if-nez v15, :cond_d1

    .line 122
    move-object v0, v3

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->getLong(Ljava/lang/Object;)J

    move-result-wide v15

    invoke-virtual {v8, v14}, Ljava/lang/reflect/Field;->getLong(Ljava/lang/Object;)J

    move-result-wide v17

    cmp-long v15, v15, v17

    if-eqz v15, :cond_42

    .line 123
    const/4 v15, 0x0

    goto/16 :goto_f

    .line 124
    :cond_d1
    const-string v15, "boolean"

    invoke-virtual {v7, v15}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v15

    if-nez v15, :cond_ec

    .line 125
    move-object v0, v3

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z

    move-result v15

    invoke-virtual {v8, v14}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z

    move-result v16

    move v0, v15

    move/from16 v1, v16

    if-eq v0, v1, :cond_42

    .line 126
    const/4 v15, 0x0

    goto/16 :goto_f

    .line 127
    :cond_ec
    const-string v15, "double"

    invoke-virtual {v7, v15}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v15

    if-nez v15, :cond_106

    .line 128
    move-object v0, v3

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->getDouble(Ljava/lang/Object;)D

    move-result-wide v15

    invoke-virtual {v8, v14}, Ljava/lang/reflect/Field;->getDouble(Ljava/lang/Object;)D

    move-result-wide v17

    cmpl-double v15, v15, v17

    if-eqz v15, :cond_42

    .line 129
    const/4 v15, 0x0

    goto/16 :goto_f

    .line 130
    :cond_106
    const-string v15, "float"

    invoke-virtual {v7, v15}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v15

    if-nez v15, :cond_42

    .line 131
    move-object v0, v3

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->getFloat(Ljava/lang/Object;)F

    move-result v15

    invoke-virtual {v8, v14}, Ljava/lang/reflect/Field;->getFloat(Ljava/lang/Object;)F

    move-result v16

    cmpl-float v15, v15, v16

    if-eqz v15, :cond_42

    .line 132
    const/4 v15, 0x0

    goto/16 :goto_f

    .line 134
    .end local v7           #fname:Ljava/lang/String;
    :cond_120
    invoke-virtual {v8, v14}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    move-object v0, v3

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    move-object v0, v15

    move-object/from16 v1, v16

    if-eq v0, v1, :cond_42

    .line 136
    move-object v0, v3

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    if-nez v15, :cond_142

    invoke-virtual {v8, v14}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    if-eqz v15, :cond_142

    .line 137
    const/4 v15, 0x0

    goto/16 :goto_f

    .line 138
    :cond_142
    invoke-virtual {v8, v14}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    if-nez v15, :cond_154

    move-object v0, v3

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    if-eqz v15, :cond_154

    .line 139
    const/4 v15, 0x0

    goto/16 :goto_f

    .line 140
    :cond_154
    move-object v0, v3

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    invoke-virtual {v8, v14}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
    :try_end_162
    .catch Ljava/lang/IllegalAccessException; {:try_start_5d .. :try_end_162} :catch_168

    move-result v15

    if-nez v15, :cond_42

    .line 141
    const/4 v15, 0x0

    goto/16 :goto_f

    .line 142
    :catch_168
    move-exception v15

    move-object v2, v15

    .line 143
    .local v2, ex1:Ljava/lang/IllegalAccessException;
    sget-object v15, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "accessed field "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 144
    sget-object v15, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "modifier  "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move v1, v12

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 145
    sget-object v15, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v16, "modifier.private  2"

    invoke-virtual/range {v15 .. v16}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 146
    invoke-static {v2}, Lgov/nist/core/InternalErrorHandler;->handleException(Ljava/lang/Exception;)V

    goto/16 :goto_42

    .line 149
    .end local v2           #ex1:Ljava/lang/IllegalAccessException;
    .end local v3           #f:Ljava/lang/reflect/Field;
    .end local v4           #fieldName:Ljava/lang/String;
    .end local v5           #fieldType:Ljava/lang/Class;
    .end local v8           #g:Ljava/lang/reflect/Field;
    .end local v12           #modifier:I
    :cond_1ac
    const-class v15, Lgov/nist/javax/sip/header/SIPObject;

    invoke-virtual {v13, v15}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_1b7

    .line 156
    const/4 v15, 0x1

    goto/16 :goto_f

    .line 152
    :cond_1b7
    invoke-virtual {v13}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v13

    .line 153
    invoke-virtual {v9}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v9

    .line 155
    goto/16 :goto_1d
.end method

.method public match(Ljava/lang/Object;)Z
    .registers 25
    .parameter "other"

    .prologue
    .line 172
    if-nez p1, :cond_5

    .line 173
    const/16 v19, 0x1

    .line 280
    :goto_4
    return v19

    .line 176
    :cond_5
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v19

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_16

    .line 177
    const/16 v19, 0x0

    goto :goto_4

    .line 178
    :cond_16
    move-object/from16 v0, p1

    check-cast v0, Lgov/nist/core/GenericObject;

    move-object/from16 v18, v0

    .line 179
    .local v18, that:Lgov/nist/core/GenericObject;
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v16

    .line 180
    .local v16, myclass:Ljava/lang/Class;
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    .line 182
    .local v10, hisclass:Ljava/lang/Class;
    :goto_24
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v6

    .line 183
    .local v6, fields:[Ljava/lang/reflect/Field;
    invoke-virtual {v10}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v11

    .line 184
    .local v11, hisfields:[Ljava/lang/reflect/Field;
    const/4 v12, 0x0

    .local v12, i:I
    :goto_2d
    move-object v0, v6

    array-length v0, v0

    move/from16 v19, v0

    move v0, v12

    move/from16 v1, v19

    if-ge v0, v1, :cond_230

    .line 185
    aget-object v3, v6, v12

    .line 186
    .local v3, f:Ljava/lang/reflect/Field;
    aget-object v8, v11, v12

    .line 188
    .local v8, g:Ljava/lang/reflect/Field;
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v13

    .line 189
    .local v13, modifier:I
    and-int/lit8 v19, v13, 0x2

    const/16 v20, 0x2

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_4b

    .line 184
    .end local v13           #modifier:I
    :cond_48
    :goto_48
    add-int/lit8 v12, v12, 0x1

    goto :goto_2d

    .line 191
    .restart local v13       #modifier:I
    :cond_4b
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v5

    .line 192
    .local v5, fieldType:Ljava/lang/Class;
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v4

    .line 193
    .local v4, fieldName:Ljava/lang/String;
    const-string v19, "stringRepresentation"

    move-object v0, v4

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v19

    if-eqz v19, :cond_48

    .line 196
    const-string v19, "indentation"

    move-object v0, v4

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v19

    if-eqz v19, :cond_48

    .line 200
    :try_start_69
    invoke-virtual {v5}, Ljava/lang/Class;->isPrimitive()Z

    move-result v19

    if-eqz v19, :cond_171

    .line 201
    invoke-virtual {v5}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v7

    .line 202
    .local v7, fname:Ljava/lang/String;
    const-string v19, "int"

    move-object v0, v7

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v19

    if-nez v19, :cond_96

    .line 203
    move-object v0, v3

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v19

    move-object v0, v8

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v20

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_48

    .line 204
    const/16 v19, 0x0

    goto/16 :goto_4

    .line 205
    :cond_96
    const-string v19, "short"

    move-object v0, v7

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v19

    if-nez v19, :cond_b9

    .line 206
    move-object v0, v3

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->getShort(Ljava/lang/Object;)S

    move-result v19

    move-object v0, v8

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->getShort(Ljava/lang/Object;)S

    move-result v20

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_48

    .line 207
    const/16 v19, 0x0

    goto/16 :goto_4

    .line 208
    :cond_b9
    const-string v19, "char"

    move-object v0, v7

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v19

    if-nez v19, :cond_dc

    .line 209
    move-object v0, v3

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->getChar(Ljava/lang/Object;)C

    move-result v19

    move-object v0, v8

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->getChar(Ljava/lang/Object;)C

    move-result v20

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_48

    .line 210
    const/16 v19, 0x0

    goto/16 :goto_4

    .line 211
    :cond_dc
    const-string v19, "long"

    move-object v0, v7

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v19

    if-nez v19, :cond_fd

    .line 212
    move-object v0, v3

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->getLong(Ljava/lang/Object;)J

    move-result-wide v19

    move-object v0, v8

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->getLong(Ljava/lang/Object;)J

    move-result-wide v21

    cmp-long v19, v19, v21

    if-eqz v19, :cond_48

    .line 213
    const/16 v19, 0x0

    goto/16 :goto_4

    .line 214
    :cond_fd
    const-string v19, "boolean"

    move-object v0, v7

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v19

    if-nez v19, :cond_120

    .line 215
    move-object v0, v3

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z

    move-result v19

    move-object v0, v8

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z

    move-result v20

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_48

    .line 216
    const/16 v19, 0x0

    goto/16 :goto_4

    .line 217
    :cond_120
    const-string v19, "double"

    move-object v0, v7

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v19

    if-nez v19, :cond_141

    .line 218
    move-object v0, v3

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->getDouble(Ljava/lang/Object;)D

    move-result-wide v19

    move-object v0, v8

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->getDouble(Ljava/lang/Object;)D

    move-result-wide v21

    cmpl-double v19, v19, v21

    if-eqz v19, :cond_48

    .line 219
    const/16 v19, 0x0

    goto/16 :goto_4

    .line 220
    :cond_141
    const-string v19, "float"

    move-object v0, v7

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v19

    if-nez v19, :cond_162

    .line 221
    move-object v0, v3

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->getFloat(Ljava/lang/Object;)F

    move-result v19

    move-object v0, v8

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->getFloat(Ljava/lang/Object;)F

    move-result v20

    cmpl-float v19, v19, v20

    if-eqz v19, :cond_48

    .line 222
    const/16 v19, 0x0

    goto/16 :goto_4

    .line 224
    :cond_162
    const-string v19, "unknown type"

    invoke-static/range {v19 .. v19}, Lgov/nist/core/InternalErrorHandler;->handleException(Ljava/lang/String;)V
    :try_end_167
    .catch Ljava/lang/IllegalAccessException; {:try_start_69 .. :try_end_167} :catch_169

    goto/16 :goto_48

    .line 269
    .end local v7           #fname:Ljava/lang/String;
    .end local v13           #modifier:I
    :catch_169
    move-exception v19

    move-object/from16 v2, v19

    .line 270
    .local v2, ex1:Ljava/lang/IllegalAccessException;
    invoke-static {v2}, Lgov/nist/core/InternalErrorHandler;->handleException(Ljava/lang/Exception;)V

    goto/16 :goto_48

    .line 228
    .end local v2           #ex1:Ljava/lang/IllegalAccessException;
    .restart local v13       #modifier:I
    :cond_171
    :try_start_171
    move-object v0, v3

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    .line 229
    .local v14, myObj:Ljava/lang/Object;
    move-object v0, v8

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    .line 230
    .local v9, hisObj:Ljava/lang/Object;
    if-eqz v9, :cond_187

    if-nez v14, :cond_187

    .line 231
    const/16 v19, 0x0

    goto/16 :goto_4

    .line 232
    :cond_187
    if-nez v9, :cond_18b

    if-nez v14, :cond_48

    .line 234
    :cond_18b
    if-nez v9, :cond_18f

    if-eqz v14, :cond_48

    .line 236
    :cond_18f
    move-object v0, v9

    instance-of v0, v0, Ljava/lang/String;

    move/from16 v19, v0

    if-eqz v19, :cond_1bb

    move-object v0, v14

    instance-of v0, v0, Ljava/lang/String;

    move/from16 v19, v0

    if-eqz v19, :cond_1bb

    .line 239
    move-object v0, v9

    check-cast v0, Ljava/lang/String;

    move-object v13, v0

    .end local v13           #modifier:I
    invoke-virtual {v13}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v19

    const-string v20, ""

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_48

    .line 241
    check-cast v14, Ljava/lang/String;

    .end local v14           #myObj:Ljava/lang/Object;
    check-cast v9, Ljava/lang/String;

    .end local v9           #hisObj:Ljava/lang/Object;
    invoke-virtual {v14, v9}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v19

    if-eqz v19, :cond_48

    .line 244
    const/16 v19, 0x0

    goto/16 :goto_4

    .line 245
    .restart local v9       #hisObj:Ljava/lang/Object;
    .restart local v13       #modifier:I
    .restart local v14       #myObj:Ljava/lang/Object;
    :cond_1bb
    if-eqz v9, :cond_202

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lgov/nist/core/GenericObject;->isMySubclass(Ljava/lang/Class;)Z

    move-result v19

    if-eqz v19, :cond_202

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lgov/nist/core/GenericObject;->isMySubclass(Ljava/lang/Class;)Z

    move-result v19

    if-eqz v19, :cond_202

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v19

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_202

    move-object v0, v9

    check-cast v0, Lgov/nist/core/GenericObject;

    move-object v13, v0

    .end local v13           #modifier:I
    invoke-virtual {v13}, Lgov/nist/core/GenericObject;->getMatcher()Lgov/nist/core/Match;

    move-result-object v19

    if-eqz v19, :cond_202

    .line 252
    check-cast v14, Lgov/nist/core/GenericObject;

    .end local v14           #myObj:Ljava/lang/Object;
    invoke-virtual {v14}, Lgov/nist/core/GenericObject;->encode()Ljava/lang/String;

    move-result-object v15

    .line 254
    .local v15, myObjEncoded:Ljava/lang/String;
    check-cast v9, Lgov/nist/core/GenericObject;

    .end local v9           #hisObj:Ljava/lang/Object;
    invoke-virtual {v9}, Lgov/nist/core/GenericObject;->getMatcher()Lgov/nist/core/Match;

    move-result-object v19

    move-object/from16 v0, v19

    move-object v1, v15

    invoke-interface {v0, v1}, Lgov/nist/core/Match;->match(Ljava/lang/String;)Z

    move-result v17

    .line 257
    .local v17, retval:Z
    if-nez v17, :cond_48

    .line 258
    const/16 v19, 0x0

    goto/16 :goto_4

    .line 259
    .end local v15           #myObjEncoded:Ljava/lang/String;
    .end local v17           #retval:Z
    .restart local v9       #hisObj:Ljava/lang/Object;
    .restart local v14       #myObj:Ljava/lang/Object;
    :cond_202
    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lgov/nist/core/GenericObject;->isMySubclass(Ljava/lang/Class;)Z

    move-result v19

    if-eqz v19, :cond_21a

    move-object v0, v14

    check-cast v0, Lgov/nist/core/GenericObject;

    move-object v15, v0

    invoke-virtual {v15, v9}, Lgov/nist/core/GenericObject;->match(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_21a

    .line 262
    const/16 v19, 0x0

    goto/16 :goto_4

    .line 263
    :cond_21a
    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lgov/nist/core/GenericObjectList;->isMySubclass(Ljava/lang/Class;)Z

    move-result v19

    if-eqz v19, :cond_48

    check-cast v14, Lgov/nist/core/GenericObjectList;

    .end local v14           #myObj:Ljava/lang/Object;
    invoke-virtual {v14, v9}, Lgov/nist/core/GenericObjectList;->match(Ljava/lang/Object;)Z
    :try_end_229
    .catch Ljava/lang/IllegalAccessException; {:try_start_171 .. :try_end_229} :catch_169

    move-result v19

    if-nez v19, :cond_48

    .line 266
    const/16 v19, 0x0

    goto/16 :goto_4

    .line 273
    .end local v3           #f:Ljava/lang/reflect/Field;
    .end local v4           #fieldName:Ljava/lang/String;
    .end local v5           #fieldType:Ljava/lang/Class;
    .end local v8           #g:Ljava/lang/reflect/Field;
    .end local v9           #hisObj:Ljava/lang/Object;
    :cond_230
    const-class v19, Lgov/nist/javax/sip/header/SIPObject;

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_240

    .line 280
    const/16 v19, 0x1

    goto/16 :goto_4

    .line 276
    :cond_240
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v16

    .line 277
    invoke-virtual {v10}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v10

    .line 279
    goto/16 :goto_24
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 399
    invoke-virtual {p0}, Lgov/nist/javax/sip/header/SIPObject;->encode()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
