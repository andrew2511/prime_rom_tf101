.class public abstract Lgov/nist/javax/sip/address/NetObject;
.super Lgov/nist/core/GenericObject;
.source "NetObject.java"


# static fields
.field protected static final CORE_PACKAGE:Ljava/lang/String; = "gov.nist.core"

.field protected static final GRUU:Ljava/lang/String; = "gr"

.field protected static final LR:Ljava/lang/String; = "lr"

.field protected static final MADDR:Ljava/lang/String; = "maddr"

.field protected static final METHOD:Ljava/lang/String; = "method"

.field protected static final NET_PACKAGE:Ljava/lang/String; = "gov.nist.javax.sip.address"

.field protected static final PARSER_PACKAGE:Ljava/lang/String; = "gov.nist.javax.sip.parser"

.field protected static final PHONE:Ljava/lang/String; = "phone"

.field protected static final SIP:Ljava/lang/String; = "sip"

.field protected static final SIPS:Ljava/lang/String; = "sips"

.field protected static final TCP:Ljava/lang/String; = "tcp"

.field protected static final TLS:Ljava/lang/String; = "tls"

.field protected static final TRANSPORT:Ljava/lang/String; = "transport"

.field protected static final TTL:Ljava/lang/String; = "ttl"

.field protected static final UDP:Ljava/lang/String; = "udp"

.field protected static final USER:Ljava/lang/String; = "user"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 72
    invoke-direct {p0}, Lgov/nist/core/GenericObject;-><init>()V

    .line 73
    return-void
.end method


# virtual methods
.method public debugDump()Ljava/lang/String;
    .registers 24

    .prologue
    .line 280
    const-string v21, ""

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lgov/nist/javax/sip/address/NetObject;->stringRepresentation:Ljava/lang/String;

    .line 281
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v19

    .line 282
    .local v19, myclass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-virtual/range {v19 .. v19}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/address/NetObject;->sprint(Ljava/lang/String;)V

    .line 283
    const-string v21, "{"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/address/NetObject;->sprint(Ljava/lang/String;)V

    .line 284
    invoke-virtual/range {v19 .. v19}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v11

    .line 285
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

    .line 286
    aget-object v8, v11, v14

    .line 288
    .local v8, f:Ljava/lang/reflect/Field;
    invoke-virtual {v8}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v18

    .line 289
    .local v18, modifier:I
    and-int/lit8 v21, v18, 0x2

    const/16 v22, 0x2

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_41

    .line 285
    :cond_3e
    :goto_3e
    add-int/lit8 v14, v14, 0x1

    goto :goto_25

    .line 291
    :cond_41
    invoke-virtual {v8}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v10

    .line 292
    .local v10, fieldType:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-virtual {v8}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v9

    .line 293
    .local v9, fieldName:Ljava/lang/String;
    const-string v21, "stringRepresentation"

    move-object v0, v9

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v21

    if-eqz v21, :cond_3e

    .line 297
    const-string v21, "indentation"

    move-object v0, v9

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v21

    if-eqz v21, :cond_3e

    .line 301
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

    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/address/NetObject;->sprint(Ljava/lang/String;)V

    .line 304
    :try_start_7c
    invoke-virtual {v10}, Ljava/lang/Class;->isPrimitive()Z

    move-result v21

    if-eqz v21, :cond_15f

    .line 305
    invoke-virtual {v10}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v13

    .line 306
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

    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/address/NetObject;->sprint(Ljava/lang/String;)V

    .line 307
    const-string v21, "int"

    move-object v0, v13

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v21

    if-nez v21, :cond_c1

    .line 308
    move-object v0, v8

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v15

    .line 309
    .local v15, intfield:I
    move-object/from16 v0, p0

    move v1, v15

    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/address/NetObject;->sprint(I)V

    goto :goto_3e

    .line 365
    .end local v13           #fname:Ljava/lang/String;
    .end local v15           #intfield:I
    :catch_bc
    move-exception v21

    move-object/from16 v7, v21

    .line 366
    .local v7, ex1:Ljava/lang/IllegalAccessException;
    goto/16 :goto_3e

    .line 310
    .end local v7           #ex1:Ljava/lang/IllegalAccessException;
    .restart local v13       #fname:Ljava/lang/String;
    :cond_c1
    const-string v21, "short"

    move-object v0, v13

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v21

    if-nez v21, :cond_dc

    .line 311
    move-object v0, v8

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->getShort(Ljava/lang/Object;)S

    move-result v20

    .line 312
    .local v20, shortField:S
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/address/NetObject;->sprint(S)V

    goto/16 :goto_3e

    .line 313
    .end local v20           #shortField:S
    :cond_dc
    const-string v21, "char"

    move-object v0, v13

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v21

    if-nez v21, :cond_f6

    .line 314
    move-object v0, v8

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->getChar(Ljava/lang/Object;)C

    move-result v4

    .line 315
    .local v4, charField:C
    move-object/from16 v0, p0

    move v1, v4

    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/address/NetObject;->sprint(C)V

    goto/16 :goto_3e

    .line 316
    .end local v4           #charField:C
    :cond_f6
    const-string v21, "long"

    move-object v0, v13

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v21

    if-nez v21, :cond_111

    .line 317
    move-object v0, v8

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->getLong(Ljava/lang/Object;)J

    move-result-wide v16

    .line 318
    .local v16, longField:J
    move-object/from16 v0, p0

    move-wide/from16 v1, v16

    invoke-virtual {v0, v1, v2}, Lgov/nist/javax/sip/address/NetObject;->sprint(J)V

    goto/16 :goto_3e

    .line 319
    .end local v16           #longField:J
    :cond_111
    const-string v21, "boolean"

    move-object v0, v13

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v21

    if-nez v21, :cond_12b

    .line 320
    move-object v0, v8

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z

    move-result v3

    .line 321
    .local v3, booleanField:Z
    move-object/from16 v0, p0

    move v1, v3

    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/address/NetObject;->sprint(Z)V

    goto/16 :goto_3e

    .line 322
    .end local v3           #booleanField:Z
    :cond_12b
    const-string v21, "double"

    move-object v0, v13

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v21

    if-nez v21, :cond_145

    .line 323
    move-object v0, v8

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->getDouble(Ljava/lang/Object;)D

    move-result-wide v5

    .line 324
    .local v5, doubleField:D
    move-object/from16 v0, p0

    move-wide v1, v5

    invoke-virtual {v0, v1, v2}, Lgov/nist/javax/sip/address/NetObject;->sprint(D)V

    goto/16 :goto_3e

    .line 325
    .end local v5           #doubleField:D
    :cond_145
    const-string v21, "float"

    move-object v0, v13

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v21

    if-nez v21, :cond_3e

    .line 326
    move-object v0, v8

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->getFloat(Ljava/lang/Object;)F

    move-result v12

    .line 327
    .local v12, floatField:F
    move-object/from16 v0, p0

    move v1, v12

    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/address/NetObject;->sprint(F)V

    goto/16 :goto_3e

    .line 329
    .end local v12           #floatField:F
    .end local v13           #fname:Ljava/lang/String;
    :cond_15f
    const-class v21, Lgov/nist/core/GenericObject;

    move-object/from16 v0, v21

    move-object v1, v10

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v21

    if-eqz v21, :cond_19f

    .line 330
    move-object v0, v8

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    if-eqz v21, :cond_194

    .line 331
    move-object v0, v8

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lgov/nist/core/GenericObject;

    move-object/from16 v0, p0

    iget v0, v0, Lgov/nist/javax/sip/address/NetObject;->indentation:I

    move/from16 v21, v0

    add-int/lit8 v21, v21, 0x1

    move-object v0, v3

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lgov/nist/core/GenericObject;->debugDump(I)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/address/NetObject;->sprint(Ljava/lang/String;)V

    goto/16 :goto_3e

    .line 335
    :cond_194
    const-string v21, "<null>"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/address/NetObject;->sprint(Ljava/lang/String;)V

    goto/16 :goto_3e

    .line 338
    :cond_19f
    const-class v21, Lgov/nist/core/GenericObjectList;

    move-object/from16 v0, v21

    move-object v1, v10

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v21

    if-eqz v21, :cond_1df

    .line 340
    move-object v0, v8

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    if-eqz v21, :cond_1d4

    .line 341
    move-object v0, v8

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lgov/nist/core/GenericObjectList;

    move-object/from16 v0, p0

    iget v0, v0, Lgov/nist/javax/sip/address/NetObject;->indentation:I

    move/from16 v21, v0

    add-int/lit8 v21, v21, 0x1

    move-object v0, v3

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lgov/nist/core/GenericObjectList;->debugDump(I)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/address/NetObject;->sprint(Ljava/lang/String;)V

    goto/16 :goto_3e

    .line 345
    :cond_1d4
    const-string v21, "<null>"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/address/NetObject;->sprint(Ljava/lang/String;)V

    goto/16 :goto_3e

    .line 351
    :cond_1df
    move-object v0, v8

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    if-eqz v21, :cond_240

    .line 352
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

    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/address/NetObject;->sprint(Ljava/lang/String;)V

    .line 357
    :goto_211
    const-string v21, "{"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/address/NetObject;->sprint(Ljava/lang/String;)V

    .line 358
    move-object v0, v8

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    if-eqz v21, :cond_25f

    .line 359
    move-object v0, v8

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/address/NetObject;->sprint(Ljava/lang/String;)V

    .line 363
    :goto_235
    const-string v21, "}"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/address/NetObject;->sprint(Ljava/lang/String;)V

    goto/16 :goto_3e

    .line 354
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

    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/address/NetObject;->sprint(Ljava/lang/String;)V

    goto :goto_211

    .line 361
    :cond_25f
    const-string v21, "<null>"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/address/NetObject;->sprint(Ljava/lang/String;)V
    :try_end_268
    .catch Ljava/lang/IllegalAccessException; {:try_start_7c .. :try_end_268} :catch_bc

    goto :goto_235

    .line 369
    .end local v8           #f:Ljava/lang/reflect/Field;
    .end local v9           #fieldName:Ljava/lang/String;
    .end local v10           #fieldType:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v18           #modifier:I
    :cond_269
    const-string v21, "}"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/address/NetObject;->sprint(Ljava/lang/String;)V

    .line 370
    move-object/from16 v0, p0

    iget-object v0, v0, Lgov/nist/javax/sip/address/NetObject;->stringRepresentation:Ljava/lang/String;

    move-object/from16 v21, v0

    return-object v21
.end method

.method public debugDump(I)Ljava/lang/String;
    .registers 4
    .parameter "indent"

    .prologue
    .line 382
    iget v1, p0, Lgov/nist/javax/sip/address/NetObject;->indentation:I

    .line 383
    .local v1, save:I
    iput p1, p0, Lgov/nist/javax/sip/address/NetObject;->indentation:I

    .line 384
    invoke-virtual {p0}, Lgov/nist/javax/sip/address/NetObject;->debugDump()Ljava/lang/String;

    move-result-object v0

    .line 385
    .local v0, retval:Ljava/lang/String;
    iput v1, p0, Lgov/nist/javax/sip/address/NetObject;->indentation:I

    .line 386
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 20
    .parameter "that"

    .prologue
    .line 80
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v14

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_10

    .line 81
    const/4 v14, 0x0

    .line 147
    :goto_f
    return v14

    .line 82
    :cond_10
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v13

    .line 83
    .local v13, myclass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    .line 85
    .local v9, hisclass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :goto_18
    invoke-virtual {v13}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v6

    .line 86
    .local v6, fields:[Ljava/lang/reflect/Field;
    invoke-virtual {v9}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v10

    .line 87
    .local v10, hisfields:[Ljava/lang/reflect/Field;
    const/4 v11, 0x0

    .local v11, i:I
    :goto_21
    array-length v14, v6

    if-ge v11, v14, :cond_16f

    .line 88
    aget-object v3, v6, v11

    .line 89
    .local v3, f:Ljava/lang/reflect/Field;
    aget-object v8, v10, v11

    .line 91
    .local v8, g:Ljava/lang/reflect/Field;
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v12

    .line 92
    .local v12, modifier:I
    and-int/lit8 v14, v12, 0x2

    const/4 v15, 0x2

    if-ne v14, v15, :cond_34

    .line 87
    :cond_31
    :goto_31
    add-int/lit8 v11, v11, 0x1

    goto :goto_21

    .line 94
    :cond_34
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v5

    .line 95
    .local v5, fieldType:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v4

    .line 96
    .local v4, fieldName:Ljava/lang/String;
    const-string v14, "stringRepresentation"

    invoke-virtual {v4, v14}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v14

    if-eqz v14, :cond_31

    .line 99
    const-string v14, "indentation"

    invoke-virtual {v4, v14}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v14

    if-eqz v14, :cond_31

    .line 104
    :try_start_4c
    invoke-virtual {v5}, Ljava/lang/Class;->isPrimitive()Z

    move-result v14

    if-eqz v14, :cond_117

    .line 105
    invoke-virtual {v5}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v7

    .line 106
    .local v7, fname:Ljava/lang/String;
    const-string v14, "int"

    invoke-virtual {v7, v14}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v14

    if-nez v14, :cond_70

    .line 107
    move-object v0, v3

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v14

    move-object v0, v8

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v15

    if-eq v14, v15, :cond_31

    .line 108
    const/4 v14, 0x0

    goto :goto_f

    .line 109
    :cond_70
    const-string v14, "short"

    invoke-virtual {v7, v14}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v14

    if-nez v14, :cond_8a

    .line 110
    move-object v0, v3

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->getShort(Ljava/lang/Object;)S

    move-result v14

    move-object v0, v8

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->getShort(Ljava/lang/Object;)S

    move-result v15

    if-eq v14, v15, :cond_31

    .line 111
    const/4 v14, 0x0

    goto :goto_f

    .line 112
    :cond_8a
    const-string v14, "char"

    invoke-virtual {v7, v14}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v14

    if-nez v14, :cond_a5

    .line 113
    move-object v0, v3

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->getChar(Ljava/lang/Object;)C

    move-result v14

    move-object v0, v8

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->getChar(Ljava/lang/Object;)C

    move-result v15

    if-eq v14, v15, :cond_31

    .line 114
    const/4 v14, 0x0

    goto/16 :goto_f

    .line 115
    :cond_a5
    const-string v14, "long"

    invoke-virtual {v7, v14}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v14

    if-nez v14, :cond_c2

    .line 116
    move-object v0, v3

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->getLong(Ljava/lang/Object;)J

    move-result-wide v14

    move-object v0, v8

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->getLong(Ljava/lang/Object;)J

    move-result-wide v16

    cmp-long v14, v14, v16

    if-eqz v14, :cond_31

    .line 117
    const/4 v14, 0x0

    goto/16 :goto_f

    .line 118
    :cond_c2
    const-string v14, "boolean"

    invoke-virtual {v7, v14}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v14

    if-nez v14, :cond_dd

    .line 119
    move-object v0, v3

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z

    move-result v14

    move-object v0, v8

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z

    move-result v15

    if-eq v14, v15, :cond_31

    .line 120
    const/4 v14, 0x0

    goto/16 :goto_f

    .line 121
    :cond_dd
    const-string v14, "double"

    invoke-virtual {v7, v14}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v14

    if-nez v14, :cond_fa

    .line 122
    move-object v0, v3

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->getDouble(Ljava/lang/Object;)D

    move-result-wide v14

    move-object v0, v8

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->getDouble(Ljava/lang/Object;)D

    move-result-wide v16

    cmpl-double v14, v14, v16

    if-eqz v14, :cond_31

    .line 123
    const/4 v14, 0x0

    goto/16 :goto_f

    .line 124
    :cond_fa
    const-string v14, "float"

    invoke-virtual {v7, v14}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v14

    if-nez v14, :cond_31

    .line 125
    move-object v0, v3

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->getFloat(Ljava/lang/Object;)F

    move-result v14

    move-object v0, v8

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->getFloat(Ljava/lang/Object;)F

    move-result v15

    cmpl-float v14, v14, v15

    if-eqz v14, :cond_31

    .line 126
    const/4 v14, 0x0

    goto/16 :goto_f

    .line 128
    .end local v7           #fname:Ljava/lang/String;
    :cond_117
    move-object v0, v8

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    move-object v0, v3

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    if-eq v14, v15, :cond_31

    .line 130
    move-object v0, v3

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    if-nez v14, :cond_13c

    move-object v0, v8

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    if-eqz v14, :cond_13c

    .line 131
    const/4 v14, 0x0

    goto/16 :goto_f

    .line 132
    :cond_13c
    move-object v0, v8

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    if-nez v14, :cond_151

    move-object v0, v3

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    if-eqz v14, :cond_151

    .line 133
    const/4 v14, 0x0

    goto/16 :goto_f

    .line 134
    :cond_151
    move-object v0, v3

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    move-object v0, v8

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
    :try_end_162
    .catch Ljava/lang/IllegalAccessException; {:try_start_4c .. :try_end_162} :catch_168

    move-result v14

    if-nez v14, :cond_31

    .line 135
    const/4 v14, 0x0

    goto/16 :goto_f

    .line 136
    :catch_168
    move-exception v14

    move-object v2, v14

    .line 137
    .local v2, ex1:Ljava/lang/IllegalAccessException;
    invoke-static {v2}, Lgov/nist/core/InternalErrorHandler;->handleException(Ljava/lang/Exception;)V

    goto/16 :goto_31

    .line 140
    .end local v2           #ex1:Ljava/lang/IllegalAccessException;
    .end local v3           #f:Ljava/lang/reflect/Field;
    .end local v4           #fieldName:Ljava/lang/String;
    .end local v5           #fieldType:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v8           #g:Ljava/lang/reflect/Field;
    .end local v12           #modifier:I
    :cond_16f
    const-class v14, Lgov/nist/javax/sip/address/NetObject;

    invoke-virtual {v13, v14}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_17a

    .line 147
    const/4 v14, 0x1

    goto/16 :goto_f

    .line 143
    :cond_17a
    invoke-virtual {v13}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v13

    .line 144
    invoke-virtual {v9}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v9

    .line 146
    goto/16 :goto_18
.end method

.method public match(Ljava/lang/Object;)Z
    .registers 25
    .parameter "other"

    .prologue
    .line 164
    if-nez p1, :cond_5

    .line 165
    const/16 v19, 0x1

    .line 269
    :goto_4
    return v19

    .line 166
    :cond_5
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v19

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_16

    .line 167
    const/16 v19, 0x0

    goto :goto_4

    .line 168
    :cond_16
    move-object/from16 v0, p1

    check-cast v0, Lgov/nist/core/GenericObject;

    move-object/from16 v18, v0

    .line 172
    .local v18, that:Lgov/nist/core/GenericObject;
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    .line 173
    .local v10, hisclass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v16

    .line 175
    .local v16, myclass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :goto_24
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v6

    .line 176
    .local v6, fields:[Ljava/lang/reflect/Field;
    invoke-virtual {v10}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v11

    .line 177
    .local v11, hisfields:[Ljava/lang/reflect/Field;
    const/4 v12, 0x0

    .local v12, i:I
    :goto_2d
    move-object v0, v6

    array-length v0, v0

    move/from16 v19, v0

    move v0, v12

    move/from16 v1, v19

    if-ge v0, v1, :cond_226

    .line 178
    aget-object v3, v6, v12

    .line 179
    .local v3, f:Ljava/lang/reflect/Field;
    aget-object v8, v11, v12

    .line 181
    .local v8, g:Ljava/lang/reflect/Field;
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v13

    .line 182
    .local v13, modifier:I
    and-int/lit8 v19, v13, 0x2

    const/16 v20, 0x2

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_4b

    .line 177
    .end local v13           #modifier:I
    :cond_48
    :goto_48
    add-int/lit8 v12, v12, 0x1

    goto :goto_2d

    .line 184
    .restart local v13       #modifier:I
    :cond_4b
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v5

    .line 185
    .local v5, fieldType:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v4

    .line 186
    .local v4, fieldName:Ljava/lang/String;
    const-string v19, "stringRepresentation"

    move-object v0, v4

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v19

    if-eqz v19, :cond_48

    .line 189
    const-string v19, "indentation"

    move-object v0, v4

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v19

    if-eqz v19, :cond_48

    .line 194
    :try_start_69
    invoke-virtual {v5}, Ljava/lang/Class;->isPrimitive()Z

    move-result v19

    if-eqz v19, :cond_162

    .line 195
    invoke-virtual {v5}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v7

    .line 196
    .local v7, fname:Ljava/lang/String;
    const-string v19, "int"

    move-object v0, v7

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v19

    if-nez v19, :cond_96

    .line 197
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

    .line 198
    const/16 v19, 0x0

    goto/16 :goto_4

    .line 199
    :cond_96
    const-string v19, "short"

    move-object v0, v7

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v19

    if-nez v19, :cond_b9

    .line 200
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

    .line 201
    const/16 v19, 0x0

    goto/16 :goto_4

    .line 202
    :cond_b9
    const-string v19, "char"

    move-object v0, v7

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v19

    if-nez v19, :cond_dc

    .line 203
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

    .line 204
    const/16 v19, 0x0

    goto/16 :goto_4

    .line 205
    :cond_dc
    const-string v19, "long"

    move-object v0, v7

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v19

    if-nez v19, :cond_fd

    .line 206
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

    .line 207
    const/16 v19, 0x0

    goto/16 :goto_4

    .line 208
    :cond_fd
    const-string v19, "boolean"

    move-object v0, v7

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v19

    if-nez v19, :cond_120

    .line 209
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

    .line 210
    const/16 v19, 0x0

    goto/16 :goto_4

    .line 211
    :cond_120
    const-string v19, "double"

    move-object v0, v7

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v19

    if-nez v19, :cond_141

    .line 212
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

    .line 213
    const/16 v19, 0x0

    goto/16 :goto_4

    .line 214
    :cond_141
    const-string v19, "float"

    move-object v0, v7

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v19

    if-nez v19, :cond_48

    .line 215
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

    .line 216
    const/16 v19, 0x0

    goto/16 :goto_4

    .line 219
    .end local v7           #fname:Ljava/lang/String;
    :cond_162
    move-object v0, v3

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    .line 220
    .local v14, myObj:Ljava/lang/Object;
    move-object v0, v8

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    .line 221
    .local v9, hisObj:Ljava/lang/Object;
    if-eqz v9, :cond_178

    if-nez v14, :cond_178

    .line 222
    const/16 v19, 0x0

    goto/16 :goto_4

    .line 223
    :cond_178
    if-nez v9, :cond_17c

    if-nez v14, :cond_48

    .line 225
    :cond_17c
    if-nez v9, :cond_180

    if-eqz v14, :cond_48

    .line 227
    :cond_180
    move-object v0, v9

    instance-of v0, v0, Ljava/lang/String;

    move/from16 v19, v0

    if-eqz v19, :cond_1ab

    move-object v0, v14

    instance-of v0, v0, Ljava/lang/String;

    move/from16 v19, v0

    if-eqz v19, :cond_1ab

    .line 230
    move-object v0, v9

    check-cast v0, Ljava/lang/String;

    move-object v13, v0

    .end local v13           #modifier:I
    const-string v19, ""

    move-object v0, v13

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_48

    .line 232
    check-cast v14, Ljava/lang/String;

    .end local v14           #myObj:Ljava/lang/Object;
    check-cast v9, Ljava/lang/String;

    .end local v9           #hisObj:Ljava/lang/Object;
    invoke-virtual {v14, v9}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v19

    if-eqz v19, :cond_48

    .line 235
    const/16 v19, 0x0

    goto/16 :goto_4

    .line 236
    .restart local v9       #hisObj:Ljava/lang/Object;
    .restart local v13       #modifier:I
    .restart local v14       #myObj:Ljava/lang/Object;
    :cond_1ab
    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lgov/nist/core/GenericObject;->isMySubclass(Ljava/lang/Class;)Z

    move-result v19

    if-eqz v19, :cond_1f0

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lgov/nist/core/GenericObject;->isMySubclass(Ljava/lang/Class;)Z

    move-result v19

    if-eqz v19, :cond_1f0

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v19

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_1f0

    move-object v0, v9

    check-cast v0, Lgov/nist/core/GenericObject;

    move-object v13, v0

    .end local v13           #modifier:I
    invoke-virtual {v13}, Lgov/nist/core/GenericObject;->getMatcher()Lgov/nist/core/Match;

    move-result-object v19

    if-eqz v19, :cond_1f0

    .line 242
    check-cast v14, Lgov/nist/core/GenericObject;

    .end local v14           #myObj:Ljava/lang/Object;
    invoke-virtual {v14}, Lgov/nist/core/GenericObject;->encode()Ljava/lang/String;

    move-result-object v15

    .line 244
    .local v15, myObjEncoded:Ljava/lang/String;
    check-cast v9, Lgov/nist/core/GenericObject;

    .end local v9           #hisObj:Ljava/lang/Object;
    invoke-virtual {v9}, Lgov/nist/core/GenericObject;->getMatcher()Lgov/nist/core/Match;

    move-result-object v19

    move-object/from16 v0, v19

    move-object v1, v15

    invoke-interface {v0, v1}, Lgov/nist/core/Match;->match(Ljava/lang/String;)Z

    move-result v17

    .line 247
    .local v17, retval:Z
    if-nez v17, :cond_48

    .line 248
    const/16 v19, 0x0

    goto/16 :goto_4

    .line 249
    .end local v15           #myObjEncoded:Ljava/lang/String;
    .end local v17           #retval:Z
    .restart local v9       #hisObj:Ljava/lang/Object;
    .restart local v14       #myObj:Ljava/lang/Object;
    :cond_1f0
    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lgov/nist/core/GenericObject;->isMySubclass(Ljava/lang/Class;)Z

    move-result v19

    if-eqz v19, :cond_208

    move-object v0, v14

    check-cast v0, Lgov/nist/core/GenericObject;

    move-object v15, v0

    invoke-virtual {v15, v9}, Lgov/nist/core/GenericObject;->match(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_208

    .line 252
    const/16 v19, 0x0

    goto/16 :goto_4

    .line 253
    :cond_208
    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lgov/nist/core/GenericObjectList;->isMySubclass(Ljava/lang/Class;)Z

    move-result v19

    if-eqz v19, :cond_48

    check-cast v14, Lgov/nist/core/GenericObjectList;

    .end local v14           #myObj:Ljava/lang/Object;
    invoke-virtual {v14, v9}, Lgov/nist/core/GenericObjectList;->match(Ljava/lang/Object;)Z
    :try_end_217
    .catch Ljava/lang/IllegalAccessException; {:try_start_69 .. :try_end_217} :catch_21e

    move-result v19

    if-nez v19, :cond_48

    .line 256
    const/16 v19, 0x0

    goto/16 :goto_4

    .line 258
    .end local v9           #hisObj:Ljava/lang/Object;
    :catch_21e
    move-exception v19

    move-object/from16 v2, v19

    .line 259
    .local v2, ex1:Ljava/lang/IllegalAccessException;
    invoke-static {v2}, Lgov/nist/core/InternalErrorHandler;->handleException(Ljava/lang/Exception;)V

    goto/16 :goto_48

    .line 262
    .end local v2           #ex1:Ljava/lang/IllegalAccessException;
    .end local v3           #f:Ljava/lang/reflect/Field;
    .end local v4           #fieldName:Ljava/lang/String;
    .end local v5           #fieldType:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v8           #g:Ljava/lang/reflect/Field;
    :cond_226
    const-class v19, Lgov/nist/javax/sip/address/NetObject;

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_236

    .line 269
    const/16 v19, 0x1

    goto/16 :goto_4

    .line 265
    :cond_236
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v16

    .line 266
    invoke-virtual {v10}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v10

    .line 268
    goto/16 :goto_24
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 394
    invoke-virtual {p0}, Lgov/nist/javax/sip/address/NetObject;->encode()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
