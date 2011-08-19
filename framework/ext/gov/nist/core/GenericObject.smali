.class public abstract Lgov/nist/core/GenericObject;
.super Ljava/lang/Object;
.source "GenericObject.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# static fields
.field protected static final AND:Ljava/lang/String; = "&"

.field protected static final AT:Ljava/lang/String; = "@"

.field protected static final COLON:Ljava/lang/String; = ":"

.field protected static final COMMA:Ljava/lang/String; = ","

.field protected static final DOT:Ljava/lang/String; = "."

.field protected static final DOUBLE_QUOTE:Ljava/lang/String; = "\""

.field protected static final EQUALS:Ljava/lang/String; = "="

.field protected static final GREATER_THAN:Ljava/lang/String; = ">"

.field protected static final HT:Ljava/lang/String; = "\t"

.field protected static final LESS_THAN:Ljava/lang/String; = "<"

.field protected static final LPAREN:Ljava/lang/String; = "("

.field protected static final NEWLINE:Ljava/lang/String; = "\r\n"

.field protected static final PERCENT:Ljava/lang/String; = "%"

.field protected static final POUND:Ljava/lang/String; = "#"

.field protected static final QUESTION:Ljava/lang/String; = "?"

.field protected static final QUOTE:Ljava/lang/String; = "\'"

.field protected static final RETURN:Ljava/lang/String; = "\n"

.field protected static final RPAREN:Ljava/lang/String; = ")"

.field protected static final SEMICOLON:Ljava/lang/String; = ";"

.field protected static final SLASH:Ljava/lang/String; = "/"

.field protected static final SP:Ljava/lang/String; = " "

.field protected static final STAR:Ljava/lang/String; = "*"

.field static final immutableClassNames:[Ljava/lang/String;

.field protected static final immutableClasses:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Class",
            "<*>;>;"
        }
    .end annotation
.end field


# instance fields
.field protected indentation:I

.field protected matchExpression:Lgov/nist/core/Match;

.field protected stringRepresentation:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    .line 73
    new-instance v2, Ljava/util/HashSet;

    const/16 v3, 0xa

    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(I)V

    sput-object v2, Lgov/nist/core/GenericObject;->immutableClasses:Ljava/util/Set;

    .line 74
    const/16 v2, 0x9

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "String"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "Character"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "Boolean"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string v4, "Byte"

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string v4, "Short"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const-string v4, "Integer"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "Long"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string v4, "Float"

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string v4, "Double"

    aput-object v4, v2, v3

    sput-object v2, Lgov/nist/core/GenericObject;->immutableClassNames:[Ljava/lang/String;

    .line 86
    const/4 v1, 0x0

    .local v1, i:I
    :goto_3e
    :try_start_3e
    sget-object v2, Lgov/nist/core/GenericObject;->immutableClassNames:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_70

    .line 87
    sget-object v2, Lgov/nist/core/GenericObject;->immutableClasses:Ljava/util/Set;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "java.lang."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lgov/nist/core/GenericObject;->immutableClassNames:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_63
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3e .. :try_end_63} :catch_66

    .line 86
    add-int/lit8 v1, v1, 0x1

    goto :goto_3e

    .line 88
    :catch_66
    move-exception v2

    move-object v0, v2

    .line 89
    .local v0, e:Ljava/lang/ClassNotFoundException;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Internal error"

    invoke-direct {v2, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 91
    .end local v0           #e:Ljava/lang/ClassNotFoundException;
    :cond_70
    return-void
.end method

.method protected constructor <init>()V
    .registers 2

    .prologue
    .line 292
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 293
    const/4 v0, 0x0

    iput v0, p0, Lgov/nist/core/GenericObject;->indentation:I

    .line 294
    const-string v0, ""

    iput-object v0, p0, Lgov/nist/core/GenericObject;->stringRepresentation:Ljava/lang/String;

    .line 295
    return-void
.end method

.method public static getClassFromName(Ljava/lang/String;)Ljava/lang/Class;
    .registers 3
    .parameter "className"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 127
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_5

    move-result-object v1

    .line 130
    :goto_4
    return-object v1

    .line 128
    :catch_5
    move-exception v0

    .line 129
    .local v0, ex:Ljava/lang/Exception;
    invoke-static {v0}, Lgov/nist/core/InternalErrorHandler;->handleException(Ljava/lang/Exception;)V

    .line 130
    const/4 v1, 0x0

    goto :goto_4
.end method

.method public static isMySubclass(Ljava/lang/Class;)Z
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 136
    .local p0, other:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const-class v0, Lgov/nist/core/GenericObject;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public static makeClone(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 9
    .parameter "obj"

    .prologue
    .line 148
    if-nez p0, :cond_a

    .line 149
    new-instance v6, Ljava/lang/NullPointerException;

    const-string v7, "null obj!"

    invoke-direct {v6, v7}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 150
    :cond_a
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 151
    .local v1, c:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    move-object v2, p0

    .line 152
    .local v2, clone_obj:Ljava/lang/Object;
    sget-object v6, Lgov/nist/core/GenericObject;->immutableClasses:Ljava/util/Set;

    invoke-interface {v6, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_19

    move-object v6, p0

    .line 194
    .end local p0
    :goto_18
    return-object v6

    .line 154
    .restart local p0
    :cond_19
    invoke-virtual {v1}, Ljava/lang/Class;->isArray()Z

    move-result v6

    if-eqz v6, :cond_9e

    .line 155
    invoke-virtual {v1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v3

    .line 156
    .local v3, ec:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-virtual {v3}, Ljava/lang/Class;->isPrimitive()Z

    move-result v6

    if-nez v6, :cond_33

    .line 157
    check-cast p0, [Ljava/lang/Object;

    .end local p0
    check-cast p0, [Ljava/lang/Object;

    invoke-virtual {p0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v2

    .end local v3           #ec:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :cond_31
    :goto_31
    move-object v6, v2

    .line 194
    goto :goto_18

    .line 159
    .restart local v3       #ec:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .restart local p0
    :cond_33
    sget-object v6, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne v3, v6, :cond_4e

    .line 160
    move-object v0, p0

    check-cast v0, [C

    move-object v6, v0

    check-cast v6, [C

    invoke-virtual {v6}, [C->clone()Ljava/lang/Object;

    move-result-object v2

    .line 163
    :cond_41
    :goto_41
    sget-object v6, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne v3, v6, :cond_5d

    .line 164
    check-cast p0, [B

    .end local p0
    check-cast p0, [B

    invoke-virtual {p0}, [B->clone()Ljava/lang/Object;

    move-result-object v2

    goto :goto_31

    .line 161
    .restart local p0
    :cond_4e
    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne v3, v6, :cond_41

    .line 162
    move-object v0, p0

    check-cast v0, [Z

    move-object v6, v0

    check-cast v6, [Z

    invoke-virtual {v6}, [Z->clone()Ljava/lang/Object;

    move-result-object v2

    goto :goto_41

    .line 165
    :cond_5d
    sget-object v6, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne v3, v6, :cond_6a

    .line 166
    check-cast p0, [S

    .end local p0
    check-cast p0, [S

    invoke-virtual {p0}, [S->clone()Ljava/lang/Object;

    move-result-object v2

    goto :goto_31

    .line 167
    .restart local p0
    :cond_6a
    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v3, v6, :cond_77

    .line 168
    check-cast p0, [I

    .end local p0
    check-cast p0, [I

    invoke-virtual {p0}, [I->clone()Ljava/lang/Object;

    move-result-object v2

    goto :goto_31

    .line 169
    .restart local p0
    :cond_77
    sget-object v6, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne v3, v6, :cond_84

    .line 170
    check-cast p0, [J

    .end local p0
    check-cast p0, [J

    invoke-virtual {p0}, [J->clone()Ljava/lang/Object;

    move-result-object v2

    goto :goto_31

    .line 171
    .restart local p0
    :cond_84
    sget-object v6, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne v3, v6, :cond_91

    .line 172
    check-cast p0, [F

    .end local p0
    check-cast p0, [F

    invoke-virtual {p0}, [F->clone()Ljava/lang/Object;

    move-result-object v2

    goto :goto_31

    .line 173
    .restart local p0
    :cond_91
    sget-object v6, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne v3, v6, :cond_31

    .line 174
    check-cast p0, [D

    .end local p0
    check-cast p0, [D

    invoke-virtual {p0}, [D->clone()Ljava/lang/Object;

    move-result-object v2

    goto :goto_31

    .line 176
    .end local v3           #ec:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .restart local p0
    :cond_9e
    const-class v6, Lgov/nist/core/GenericObject;

    invoke-virtual {v6, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v6

    if-eqz v6, :cond_ad

    .line 177
    check-cast p0, Lgov/nist/core/GenericObject;

    .end local p0
    invoke-virtual {p0}, Lgov/nist/core/GenericObject;->clone()Ljava/lang/Object;

    move-result-object v2

    goto :goto_31

    .line 178
    .restart local p0
    :cond_ad
    const-class v6, Lgov/nist/core/GenericObjectList;

    invoke-virtual {v6, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v6

    if-eqz v6, :cond_bd

    .line 179
    check-cast p0, Lgov/nist/core/GenericObjectList;

    .end local p0
    invoke-virtual {p0}, Lgov/nist/core/GenericObjectList;->clone()Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_31

    .line 180
    .restart local p0
    :cond_bd
    const-class v6, Ljava/lang/Cloneable;

    invoke-virtual {v6, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v6

    if-eqz v6, :cond_31

    .line 184
    :try_start_c5
    const-string v7, "clone"

    const/4 v6, 0x0

    check-cast v6, [Ljava/lang/Class;

    invoke-virtual {v1, v7, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    .line 185
    .local v5, meth:Ljava/lang/reflect/Method;
    const/4 v6, 0x0

    check-cast v6, [Ljava/lang/Object;

    invoke-virtual {v5, p0, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_d4
    .catch Ljava/lang/SecurityException; {:try_start_c5 .. :try_end_d4} :catch_e7
    .catch Ljava/lang/IllegalArgumentException; {:try_start_c5 .. :try_end_d4} :catch_d7
    .catch Ljava/lang/IllegalAccessException; {:try_start_c5 .. :try_end_d4} :catch_e4
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_c5 .. :try_end_d4} :catch_e1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_c5 .. :try_end_d4} :catch_de

    move-result-object v2

    goto/16 :goto_31

    .line 187
    .end local v5           #meth:Ljava/lang/reflect/Method;
    :catch_d7
    move-exception v6

    move-object v4, v6

    .line 188
    .local v4, ex:Ljava/lang/IllegalArgumentException;
    invoke-static {v4}, Lgov/nist/core/InternalErrorHandler;->handleException(Ljava/lang/Exception;)V

    goto/16 :goto_31

    .line 191
    .end local v4           #ex:Ljava/lang/IllegalArgumentException;
    :catch_de
    move-exception v6

    goto/16 :goto_31

    .line 190
    :catch_e1
    move-exception v6

    goto/16 :goto_31

    .line 189
    :catch_e4
    move-exception v6

    goto/16 :goto_31

    .line 186
    :catch_e7
    move-exception v6

    goto/16 :goto_31
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .registers 4

    .prologue
    .line 201
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_3} :catch_5

    move-result-object v1

    return-object v1

    .line 202
    :catch_5
    move-exception v0

    .line 203
    .local v0, e:Ljava/lang/CloneNotSupportedException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Internal error"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected dbgPrint()V
    .registers 2

    .prologue
    .line 394
    invoke-virtual {p0}, Lgov/nist/core/GenericObject;->debugDump()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lgov/nist/core/Debug;->println(Ljava/lang/String;)V

    .line 395
    return-void
.end method

.method protected dbgPrint(Ljava/lang/String;)V
    .registers 2
    .parameter "s"

    .prologue
    .line 401
    invoke-static {p1}, Lgov/nist/core/Debug;->println(Ljava/lang/String;)V

    .line 402
    return-void
.end method

.method public debugDump()Ljava/lang/String;
    .registers 25

    .prologue
    .line 594
    const-string v22, ""

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lgov/nist/core/GenericObject;->stringRepresentation:Ljava/lang/String;

    .line 595
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v20

    .line 596
    .local v20, myclass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-virtual/range {v20 .. v20}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lgov/nist/core/GenericObject;->sprint(Ljava/lang/String;)V

    .line 597
    const-string v22, "{"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lgov/nist/core/GenericObject;->sprint(Ljava/lang/String;)V

    .line 598
    invoke-virtual/range {v20 .. v20}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v12

    .line 599
    .local v12, fields:[Ljava/lang/reflect/Field;
    const/4 v15, 0x0

    .local v15, i:I
    :goto_25
    move-object v0, v12

    array-length v0, v0

    move/from16 v22, v0

    move v0, v15

    move/from16 v1, v22

    if-ge v0, v1, :cond_272

    .line 600
    aget-object v9, v12, v15

    .line 602
    .local v9, f:Ljava/lang/reflect/Field;
    invoke-virtual {v9}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v19

    .line 603
    .local v19, modifier:I
    and-int/lit8 v22, v19, 0x2

    const/16 v23, 0x2

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_41

    .line 599
    :cond_3e
    :goto_3e
    add-int/lit8 v15, v15, 0x1

    goto :goto_25

    .line 605
    :cond_41
    invoke-virtual {v9}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v11

    .line 606
    .local v11, fieldType:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-virtual {v9}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v10

    .line 607
    .local v10, fieldName:Ljava/lang/String;
    const-string v22, "stringRepresentation"

    move-object v0, v10

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v22

    if-eqz v22, :cond_3e

    .line 611
    const-string v22, "indentation"

    move-object v0, v10

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v22

    if-eqz v22, :cond_3e

    .line 615
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v22

    move-object v1, v10

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, ":"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lgov/nist/core/GenericObject;->sprint(Ljava/lang/String;)V

    .line 618
    :try_start_7c
    invoke-virtual {v11}, Ljava/lang/Class;->isPrimitive()Z

    move-result v22

    if-eqz v22, :cond_168

    .line 619
    invoke-virtual {v11}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v14

    .line 620
    .local v14, fname:Ljava/lang/String;
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v22

    move-object v1, v14

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, ":"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lgov/nist/core/GenericObject;->sprint(Ljava/lang/String;)V

    .line 621
    const-string v22, "int"

    move-object v0, v14

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v22

    if-nez v22, :cond_c2

    .line 622
    move-object v0, v9

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v16

    .line 623
    .local v16, intfield:I
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lgov/nist/core/GenericObject;->sprint(I)V

    goto :goto_3e

    .line 679
    .end local v14           #fname:Ljava/lang/String;
    .end local v16           #intfield:I
    :catch_bd
    move-exception v22

    move-object/from16 v8, v22

    .line 680
    .local v8, ex1:Ljava/lang/IllegalAccessException;
    goto/16 :goto_3e

    .line 624
    .end local v8           #ex1:Ljava/lang/IllegalAccessException;
    .restart local v14       #fname:Ljava/lang/String;
    :cond_c2
    const-string v22, "short"

    move-object v0, v14

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v22

    if-nez v22, :cond_e5

    .line 625
    move-object v0, v9

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->getShort(Ljava/lang/Object;)S

    move-result v21

    .line 626
    .local v21, shortField:S
    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lgov/nist/core/GenericObject;->sprint(S)V
    :try_end_db
    .catch Ljava/lang/IllegalAccessException; {:try_start_7c .. :try_end_db} :catch_bd
    .catch Ljava/lang/Exception; {:try_start_7c .. :try_end_db} :catch_dd

    goto/16 :goto_3e

    .line 681
    .end local v14           #fname:Ljava/lang/String;
    .end local v21           #shortField:S
    :catch_dd
    move-exception v22

    move-object/from16 v7, v22

    .line 682
    .local v7, ex:Ljava/lang/Exception;
    invoke-static {v7}, Lgov/nist/core/InternalErrorHandler;->handleException(Ljava/lang/Exception;)V

    goto/16 :goto_3e

    .line 627
    .end local v7           #ex:Ljava/lang/Exception;
    .restart local v14       #fname:Ljava/lang/String;
    :cond_e5
    :try_start_e5
    const-string v22, "char"

    move-object v0, v14

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v22

    if-nez v22, :cond_ff

    .line 628
    move-object v0, v9

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->getChar(Ljava/lang/Object;)C

    move-result v4

    .line 629
    .local v4, charField:C
    move-object/from16 v0, p0

    move v1, v4

    invoke-virtual {v0, v1}, Lgov/nist/core/GenericObject;->sprint(C)V

    goto/16 :goto_3e

    .line 630
    .end local v4           #charField:C
    :cond_ff
    const-string v22, "long"

    move-object v0, v14

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v22

    if-nez v22, :cond_11a

    .line 631
    move-object v0, v9

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->getLong(Ljava/lang/Object;)J

    move-result-wide v17

    .line 632
    .local v17, longField:J
    move-object/from16 v0, p0

    move-wide/from16 v1, v17

    invoke-virtual {v0, v1, v2}, Lgov/nist/core/GenericObject;->sprint(J)V

    goto/16 :goto_3e

    .line 633
    .end local v17           #longField:J
    :cond_11a
    const-string v22, "boolean"

    move-object v0, v14

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v22

    if-nez v22, :cond_134

    .line 634
    move-object v0, v9

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z

    move-result v3

    .line 635
    .local v3, booleanField:Z
    move-object/from16 v0, p0

    move v1, v3

    invoke-virtual {v0, v1}, Lgov/nist/core/GenericObject;->sprint(Z)V

    goto/16 :goto_3e

    .line 636
    .end local v3           #booleanField:Z
    :cond_134
    const-string v22, "double"

    move-object v0, v14

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v22

    if-nez v22, :cond_14e

    .line 637
    move-object v0, v9

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->getDouble(Ljava/lang/Object;)D

    move-result-wide v5

    .line 638
    .local v5, doubleField:D
    move-object/from16 v0, p0

    move-wide v1, v5

    invoke-virtual {v0, v1, v2}, Lgov/nist/core/GenericObject;->sprint(D)V

    goto/16 :goto_3e

    .line 639
    .end local v5           #doubleField:D
    :cond_14e
    const-string v22, "float"

    move-object v0, v14

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v22

    if-nez v22, :cond_3e

    .line 640
    move-object v0, v9

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->getFloat(Ljava/lang/Object;)F

    move-result v13

    .line 641
    .local v13, floatField:F
    move-object/from16 v0, p0

    move v1, v13

    invoke-virtual {v0, v1}, Lgov/nist/core/GenericObject;->sprint(F)V

    goto/16 :goto_3e

    .line 643
    .end local v13           #floatField:F
    .end local v14           #fname:Ljava/lang/String;
    :cond_168
    const-class v22, Lgov/nist/core/GenericObject;

    move-object/from16 v0, v22

    move-object v1, v11

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v22

    if-eqz v22, :cond_1a8

    .line 644
    move-object v0, v9

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    if-eqz v22, :cond_19d

    .line 645
    move-object v0, v9

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lgov/nist/core/GenericObject;

    move-object/from16 v0, p0

    iget v0, v0, Lgov/nist/core/GenericObject;->indentation:I

    move/from16 v22, v0

    add-int/lit8 v22, v22, 0x1

    move-object v0, v3

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lgov/nist/core/GenericObject;->debugDump(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lgov/nist/core/GenericObject;->sprint(Ljava/lang/String;)V

    goto/16 :goto_3e

    .line 649
    :cond_19d
    const-string v22, "<null>"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lgov/nist/core/GenericObject;->sprint(Ljava/lang/String;)V

    goto/16 :goto_3e

    .line 652
    :cond_1a8
    const-class v22, Lgov/nist/core/GenericObjectList;

    move-object/from16 v0, v22

    move-object v1, v11

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v22

    if-eqz v22, :cond_1e8

    .line 654
    move-object v0, v9

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    if-eqz v22, :cond_1dd

    .line 655
    move-object v0, v9

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lgov/nist/core/GenericObjectList;

    move-object/from16 v0, p0

    iget v0, v0, Lgov/nist/core/GenericObject;->indentation:I

    move/from16 v22, v0

    add-int/lit8 v22, v22, 0x1

    move-object v0, v3

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lgov/nist/core/GenericObjectList;->debugDump(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lgov/nist/core/GenericObject;->sprint(Ljava/lang/String;)V

    goto/16 :goto_3e

    .line 659
    :cond_1dd
    const-string v22, "<null>"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lgov/nist/core/GenericObject;->sprint(Ljava/lang/String;)V

    goto/16 :goto_3e

    .line 665
    :cond_1e8
    move-object v0, v9

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    if-eqz v22, :cond_249

    .line 666
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    move-object v0, v9

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, ":"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lgov/nist/core/GenericObject;->sprint(Ljava/lang/String;)V

    .line 671
    :goto_21a
    const-string v22, "{"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lgov/nist/core/GenericObject;->sprint(Ljava/lang/String;)V

    .line 672
    move-object v0, v9

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    if-eqz v22, :cond_268

    .line 673
    move-object v0, v9

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lgov/nist/core/GenericObject;->sprint(Ljava/lang/String;)V

    .line 677
    :goto_23e
    const-string v22, "}"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lgov/nist/core/GenericObject;->sprint(Ljava/lang/String;)V

    goto/16 :goto_3e

    .line 668
    :cond_249
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, ":"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lgov/nist/core/GenericObject;->sprint(Ljava/lang/String;)V

    goto :goto_21a

    .line 675
    :cond_268
    const-string v22, "<null>"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lgov/nist/core/GenericObject;->sprint(Ljava/lang/String;)V
    :try_end_271
    .catch Ljava/lang/IllegalAccessException; {:try_start_e5 .. :try_end_271} :catch_bd
    .catch Ljava/lang/Exception; {:try_start_e5 .. :try_end_271} :catch_dd

    goto :goto_23e

    .line 685
    .end local v9           #f:Ljava/lang/reflect/Field;
    .end local v10           #fieldName:Ljava/lang/String;
    .end local v11           #fieldType:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v19           #modifier:I
    :cond_272
    const-string v22, "}"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lgov/nist/core/GenericObject;->sprint(Ljava/lang/String;)V

    .line 686
    move-object/from16 v0, p0

    iget-object v0, v0, Lgov/nist/core/GenericObject;->stringRepresentation:Ljava/lang/String;

    move-object/from16 v22, v0

    return-object v22
.end method

.method public debugDump(I)Ljava/lang/String;
    .registers 4
    .parameter "indent"

    .prologue
    .line 693
    iput p1, p0, Lgov/nist/core/GenericObject;->indentation:I

    .line 694
    invoke-virtual {p0}, Lgov/nist/core/GenericObject;->debugDump()Ljava/lang/String;

    move-result-object v0

    .line 695
    .local v0, retval:Ljava/lang/String;
    const/4 v1, 0x0

    iput v1, p0, Lgov/nist/core/GenericObject;->indentation:I

    .line 696
    return-object v0
.end method

.method public abstract encode()Ljava/lang/String;
.end method

.method public encode(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;
    .registers 3
    .parameter "buffer"

    .prologue
    .line 710
    invoke-virtual {p0}, Lgov/nist/core/GenericObject;->encode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 20
    .parameter "that"

    .prologue
    .line 410
    if-nez p1, :cond_4

    const/4 v14, 0x0

    .line 481
    :goto_3
    return v14

    .line 411
    :cond_4
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v14

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_14

    .line 412
    const/4 v14, 0x0

    goto :goto_3

    .line 413
    :cond_14
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v13

    .line 414
    .local v13, myclass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    .line 416
    .local v9, hisclass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :goto_1c
    invoke-virtual {v13}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v6

    .line 417
    .local v6, fields:[Ljava/lang/reflect/Field;
    invoke-virtual {v9}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v10

    .line 418
    .local v10, hisfields:[Ljava/lang/reflect/Field;
    const/4 v11, 0x0

    .local v11, i:I
    :goto_25
    array-length v14, v6

    if-ge v11, v14, :cond_17a

    .line 419
    aget-object v3, v6, v11

    .line 420
    .local v3, f:Ljava/lang/reflect/Field;
    aget-object v8, v10, v11

    .line 422
    .local v8, g:Ljava/lang/reflect/Field;
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v12

    .line 423
    .local v12, modifier:I
    and-int/lit8 v14, v12, 0x2

    const/4 v15, 0x2

    if-ne v14, v15, :cond_38

    .line 418
    :cond_35
    :goto_35
    add-int/lit8 v11, v11, 0x1

    goto :goto_25

    .line 425
    :cond_38
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v5

    .line 426
    .local v5, fieldType:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v4

    .line 427
    .local v4, fieldName:Ljava/lang/String;
    const-string v14, "stringRepresentation"

    invoke-virtual {v4, v14}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v14

    if-eqz v14, :cond_35

    .line 430
    const-string v14, "indentation"

    invoke-virtual {v4, v14}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v14

    if-eqz v14, :cond_35

    .line 435
    :try_start_50
    invoke-virtual {v5}, Ljava/lang/Class;->isPrimitive()Z

    move-result v14

    if-eqz v14, :cond_11c

    .line 436
    invoke-virtual {v5}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v7

    .line 437
    .local v7, fname:Ljava/lang/String;
    const-string v14, "int"

    invoke-virtual {v7, v14}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v14

    if-nez v14, :cond_74

    .line 438
    move-object v0, v3

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v14

    move-object v0, v8

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v15

    if-eq v14, v15, :cond_35

    .line 439
    const/4 v14, 0x0

    goto :goto_3

    .line 440
    :cond_74
    const-string v14, "short"

    invoke-virtual {v7, v14}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v14

    if-nez v14, :cond_8f

    .line 441
    move-object v0, v3

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->getShort(Ljava/lang/Object;)S

    move-result v14

    move-object v0, v8

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->getShort(Ljava/lang/Object;)S

    move-result v15

    if-eq v14, v15, :cond_35

    .line 442
    const/4 v14, 0x0

    goto/16 :goto_3

    .line 443
    :cond_8f
    const-string v14, "char"

    invoke-virtual {v7, v14}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v14

    if-nez v14, :cond_aa

    .line 444
    move-object v0, v3

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->getChar(Ljava/lang/Object;)C

    move-result v14

    move-object v0, v8

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->getChar(Ljava/lang/Object;)C

    move-result v15

    if-eq v14, v15, :cond_35

    .line 445
    const/4 v14, 0x0

    goto/16 :goto_3

    .line 446
    :cond_aa
    const-string v14, "long"

    invoke-virtual {v7, v14}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v14

    if-nez v14, :cond_c7

    .line 447
    move-object v0, v3

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->getLong(Ljava/lang/Object;)J

    move-result-wide v14

    move-object v0, v8

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->getLong(Ljava/lang/Object;)J

    move-result-wide v16

    cmp-long v14, v14, v16

    if-eqz v14, :cond_35

    .line 448
    const/4 v14, 0x0

    goto/16 :goto_3

    .line 449
    :cond_c7
    const-string v14, "boolean"

    invoke-virtual {v7, v14}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v14

    if-nez v14, :cond_e2

    .line 450
    move-object v0, v3

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z

    move-result v14

    move-object v0, v8

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z

    move-result v15

    if-eq v14, v15, :cond_35

    .line 451
    const/4 v14, 0x0

    goto/16 :goto_3

    .line 452
    :cond_e2
    const-string v14, "double"

    invoke-virtual {v7, v14}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v14

    if-nez v14, :cond_ff

    .line 453
    move-object v0, v3

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->getDouble(Ljava/lang/Object;)D

    move-result-wide v14

    move-object v0, v8

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->getDouble(Ljava/lang/Object;)D

    move-result-wide v16

    cmpl-double v14, v14, v16

    if-eqz v14, :cond_35

    .line 454
    const/4 v14, 0x0

    goto/16 :goto_3

    .line 455
    :cond_ff
    const-string v14, "float"

    invoke-virtual {v7, v14}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v14

    if-nez v14, :cond_35

    .line 456
    move-object v0, v3

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->getFloat(Ljava/lang/Object;)F

    move-result v14

    move-object v0, v8

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->getFloat(Ljava/lang/Object;)F

    move-result v15

    cmpl-float v14, v14, v15

    if-eqz v14, :cond_35

    .line 457
    const/4 v14, 0x0

    goto/16 :goto_3

    .line 459
    .end local v7           #fname:Ljava/lang/String;
    :cond_11c
    move-object v0, v8

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    move-object v0, v3

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    if-ne v14, v15, :cond_12f

    .line 460
    const/4 v14, 0x1

    goto/16 :goto_3

    .line 461
    :cond_12f
    move-object v0, v3

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    if-nez v14, :cond_13b

    .line 462
    const/4 v14, 0x0

    goto/16 :goto_3

    .line 463
    :cond_13b
    move-object v0, v8

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    if-nez v14, :cond_147

    .line 464
    const/4 v14, 0x0

    goto/16 :goto_3

    .line 465
    :cond_147
    move-object v0, v8

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    if-nez v14, :cond_15c

    move-object v0, v3

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    if-eqz v14, :cond_15c

    .line 466
    const/4 v14, 0x0

    goto/16 :goto_3

    .line 467
    :cond_15c
    move-object v0, v3

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    move-object v0, v8

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
    :try_end_16d
    .catch Ljava/lang/IllegalAccessException; {:try_start_50 .. :try_end_16d} :catch_173

    move-result v14

    if-nez v14, :cond_35

    .line 468
    const/4 v14, 0x0

    goto/16 :goto_3

    .line 469
    :catch_173
    move-exception v14

    move-object v2, v14

    .line 470
    .local v2, ex1:Ljava/lang/IllegalAccessException;
    invoke-static {v2}, Lgov/nist/core/InternalErrorHandler;->handleException(Ljava/lang/Exception;)V

    goto/16 :goto_35

    .line 473
    .end local v2           #ex1:Ljava/lang/IllegalAccessException;
    .end local v3           #f:Ljava/lang/reflect/Field;
    .end local v4           #fieldName:Ljava/lang/String;
    .end local v5           #fieldType:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v8           #g:Ljava/lang/reflect/Field;
    .end local v12           #modifier:I
    :cond_17a
    const-class v14, Lgov/nist/core/GenericObject;

    invoke-virtual {v13, v14}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_185

    .line 481
    const/4 v14, 0x1

    goto/16 :goto_3

    .line 476
    :cond_185
    invoke-virtual {v13}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v13

    .line 477
    invoke-virtual {v9}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v9

    .line 480
    goto/16 :goto_1c
.end method

.method protected getIndentation()Ljava/lang/String;
    .registers 3

    .prologue
    .line 298
    iget v1, p0, Lgov/nist/core/GenericObject;->indentation:I

    new-array v0, v1, [C

    .line 299
    .local v0, chars:[C
    const/16 v1, 0x20

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([CC)V

    .line 300
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    return-object v1
.end method

.method public getMatcher()Lgov/nist/core/Match;
    .registers 2

    .prologue
    .line 122
    iget-object v0, p0, Lgov/nist/core/GenericObject;->matchExpression:Lgov/nist/core/Match;

    return-object v0
.end method

.method public match(Ljava/lang/Object;)Z
    .registers 23
    .parameter "other"

    .prologue
    .line 494
    if-nez p1, :cond_5

    .line 495
    const/16 v17, 0x1

    .line 576
    :goto_4
    return v17

    .line 496
    :cond_5
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v17

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_16

    .line 497
    const/16 v17, 0x0

    goto :goto_4

    .line 498
    :cond_16
    move-object/from16 v0, p1

    check-cast v0, Lgov/nist/core/GenericObject;

    move-object/from16 v16, v0

    .line 499
    .local v16, that:Lgov/nist/core/GenericObject;
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v15

    .line 500
    .local v15, myclass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-virtual {v15}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v6

    .line 501
    .local v6, fields:[Ljava/lang/reflect/Field;
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    .line 502
    .local v10, hisclass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-virtual {v10}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v11

    .line 503
    .local v11, hisfields:[Ljava/lang/reflect/Field;
    const/4 v12, 0x0

    .end local v10           #hisclass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v15           #myclass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .local v12, i:I
    :goto_2d
    move-object v0, v6

    array-length v0, v0

    move/from16 v17, v0

    move v0, v12

    move/from16 v1, v17

    if-ge v0, v1, :cond_1e2

    .line 504
    aget-object v3, v6, v12

    .line 505
    .local v3, f:Ljava/lang/reflect/Field;
    aget-object v8, v11, v12

    .line 507
    .local v8, g:Ljava/lang/reflect/Field;
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v13

    .line 508
    .local v13, modifier:I
    and-int/lit8 v17, v13, 0x2

    const/16 v18, 0x2

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_4b

    .line 503
    :cond_48
    :goto_48
    add-int/lit8 v12, v12, 0x1

    goto :goto_2d

    .line 510
    :cond_4b
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v5

    .line 511
    .local v5, fieldType:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v4

    .line 512
    .local v4, fieldName:Ljava/lang/String;
    const-string v17, "stringRepresentation"

    move-object v0, v4

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v17

    if-eqz v17, :cond_48

    .line 515
    const-string v17, "indentation"

    move-object v0, v4

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v17

    if-eqz v17, :cond_48

    .line 520
    :try_start_69
    invoke-virtual {v5}, Ljava/lang/Class;->isPrimitive()Z

    move-result v17

    if-eqz v17, :cond_162

    .line 521
    invoke-virtual {v5}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v7

    .line 522
    .local v7, fname:Ljava/lang/String;
    const-string v17, "int"

    move-object v0, v7

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v17

    if-nez v17, :cond_96

    .line 523
    move-object v0, v3

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v17

    move-object v0, v8

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v18

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_48

    .line 524
    const/16 v17, 0x0

    goto/16 :goto_4

    .line 525
    :cond_96
    const-string v17, "short"

    move-object v0, v7

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v17

    if-nez v17, :cond_b9

    .line 526
    move-object v0, v3

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->getShort(Ljava/lang/Object;)S

    move-result v17

    move-object v0, v8

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->getShort(Ljava/lang/Object;)S

    move-result v18

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_48

    .line 527
    const/16 v17, 0x0

    goto/16 :goto_4

    .line 528
    :cond_b9
    const-string v17, "char"

    move-object v0, v7

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v17

    if-nez v17, :cond_dc

    .line 529
    move-object v0, v3

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->getChar(Ljava/lang/Object;)C

    move-result v17

    move-object v0, v8

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->getChar(Ljava/lang/Object;)C

    move-result v18

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_48

    .line 530
    const/16 v17, 0x0

    goto/16 :goto_4

    .line 531
    :cond_dc
    const-string v17, "long"

    move-object v0, v7

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v17

    if-nez v17, :cond_fd

    .line 532
    move-object v0, v3

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->getLong(Ljava/lang/Object;)J

    move-result-wide v17

    move-object v0, v8

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->getLong(Ljava/lang/Object;)J

    move-result-wide v19

    cmp-long v17, v17, v19

    if-eqz v17, :cond_48

    .line 533
    const/16 v17, 0x0

    goto/16 :goto_4

    .line 534
    :cond_fd
    const-string v17, "boolean"

    move-object v0, v7

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v17

    if-nez v17, :cond_120

    .line 535
    move-object v0, v3

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z

    move-result v17

    move-object v0, v8

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z

    move-result v18

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_48

    .line 536
    const/16 v17, 0x0

    goto/16 :goto_4

    .line 537
    :cond_120
    const-string v17, "double"

    move-object v0, v7

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v17

    if-nez v17, :cond_141

    .line 538
    move-object v0, v3

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->getDouble(Ljava/lang/Object;)D

    move-result-wide v17

    move-object v0, v8

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->getDouble(Ljava/lang/Object;)D

    move-result-wide v19

    cmpl-double v17, v17, v19

    if-eqz v17, :cond_48

    .line 539
    const/16 v17, 0x0

    goto/16 :goto_4

    .line 540
    :cond_141
    const-string v17, "float"

    move-object v0, v7

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v17

    if-nez v17, :cond_48

    .line 541
    move-object v0, v3

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->getFloat(Ljava/lang/Object;)F

    move-result v17

    move-object v0, v8

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->getFloat(Ljava/lang/Object;)F

    move-result v18

    cmpl-float v17, v17, v18

    if-eqz v17, :cond_48

    .line 542
    const/16 v17, 0x0

    goto/16 :goto_4

    .line 545
    .end local v7           #fname:Ljava/lang/String;
    :cond_162
    move-object v0, v3

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    .line 546
    .local v14, myObj:Ljava/lang/Object;
    move-object v0, v8

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    .line 547
    .local v9, hisObj:Ljava/lang/Object;
    if-eqz v9, :cond_178

    if-nez v14, :cond_178

    .line 548
    const/16 v17, 0x0

    goto/16 :goto_4

    .line 549
    :cond_178
    if-nez v9, :cond_17c

    if-nez v14, :cond_48

    .line 551
    :cond_17c
    if-nez v9, :cond_180

    if-eqz v14, :cond_48

    .line 553
    :cond_180
    move-object v0, v9

    instance-of v0, v0, Ljava/lang/String;

    move/from16 v17, v0

    if-eqz v17, :cond_1ac

    move-object v0, v14

    instance-of v0, v0, Ljava/lang/String;

    move/from16 v17, v0

    if-eqz v17, :cond_1ac

    .line 556
    move-object v0, v9

    check-cast v0, Ljava/lang/String;

    move-object v10, v0

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v17

    const-string v18, ""

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_48

    .line 558
    check-cast v14, Ljava/lang/String;

    .end local v14           #myObj:Ljava/lang/Object;
    check-cast v9, Ljava/lang/String;

    .end local v9           #hisObj:Ljava/lang/Object;
    invoke-virtual {v14, v9}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v17

    if-eqz v17, :cond_48

    .line 561
    const/16 v17, 0x0

    goto/16 :goto_4

    .line 562
    .restart local v9       #hisObj:Ljava/lang/Object;
    .restart local v14       #myObj:Ljava/lang/Object;
    :cond_1ac
    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lgov/nist/core/GenericObject;->isMySubclass(Ljava/lang/Class;)Z

    move-result v17

    if-eqz v17, :cond_1c4

    move-object v0, v14

    check-cast v0, Lgov/nist/core/GenericObject;

    move-object v15, v0

    invoke-virtual {v15, v9}, Lgov/nist/core/GenericObject;->match(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_1c4

    .line 565
    const/16 v17, 0x0

    goto/16 :goto_4

    .line 566
    :cond_1c4
    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lgov/nist/core/GenericObjectList;->isMySubclass(Ljava/lang/Class;)Z

    move-result v17

    if-eqz v17, :cond_48

    check-cast v14, Lgov/nist/core/GenericObjectList;

    .end local v14           #myObj:Ljava/lang/Object;
    invoke-virtual {v14, v9}, Lgov/nist/core/GenericObjectList;->match(Ljava/lang/Object;)Z
    :try_end_1d3
    .catch Ljava/lang/IllegalAccessException; {:try_start_69 .. :try_end_1d3} :catch_1da

    move-result v17

    if-nez v17, :cond_48

    .line 569
    const/16 v17, 0x0

    goto/16 :goto_4

    .line 572
    .end local v9           #hisObj:Ljava/lang/Object;
    :catch_1da
    move-exception v17

    move-object/from16 v2, v17

    .line 573
    .local v2, ex1:Ljava/lang/IllegalAccessException;
    invoke-static {v2}, Lgov/nist/core/InternalErrorHandler;->handleException(Ljava/lang/Exception;)V

    goto/16 :goto_48

    .line 576
    .end local v2           #ex1:Ljava/lang/IllegalAccessException;
    .end local v3           #f:Ljava/lang/reflect/Field;
    .end local v4           #fieldName:Ljava/lang/String;
    .end local v5           #fieldType:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v8           #g:Ljava/lang/reflect/Field;
    .end local v13           #modifier:I
    :cond_1e2
    const/16 v17, 0x1

    goto/16 :goto_4
.end method

.method public merge(Ljava/lang/Object;)V
    .registers 28
    .parameter "mergeObject"

    .prologue
    .line 219
    if-nez p1, :cond_3

    .line 290
    :goto_2
    return-void

    .line 222
    :cond_3
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v24

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-nez v24, :cond_19

    .line 223
    new-instance v24, Ljava/lang/IllegalArgumentException;

    const-string v25, "Bad override object"

    invoke-direct/range {v24 .. v25}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v24

    .line 225
    :cond_19
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v21

    .line 227
    .local v21, myclass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :cond_1d
    invoke-virtual/range {v21 .. v21}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v11

    .line 228
    .local v11, fields:[Ljava/lang/reflect/Field;
    const/4 v15, 0x0

    .local v15, i:I
    :goto_22
    move-object v0, v11

    array-length v0, v0

    move/from16 v24, v0

    move v0, v15

    move/from16 v1, v24

    if-ge v0, v1, :cond_153

    .line 229
    aget-object v9, v11, v15

    .line 230
    .local v9, f:Ljava/lang/reflect/Field;
    invoke-virtual {v9}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v20

    .line 231
    .local v20, modifier:I
    invoke-static/range {v20 .. v20}, Ljava/lang/reflect/Modifier;->isPrivate(I)Z

    move-result v24

    if-eqz v24, :cond_3a

    .line 228
    :cond_37
    :goto_37
    add-int/lit8 v15, v15, 0x1

    goto :goto_22

    .line 233
    :cond_3a
    invoke-static/range {v20 .. v20}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v24

    if-nez v24, :cond_37

    .line 235
    invoke-static/range {v20 .. v20}, Ljava/lang/reflect/Modifier;->isInterface(I)Z

    move-result v24

    if-nez v24, :cond_37

    .line 238
    invoke-virtual {v9}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v10

    .line 239
    .local v10, fieldType:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-virtual {v10}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v13

    .line 242
    .local v13, fname:Ljava/lang/String;
    :try_start_4e
    invoke-virtual {v10}, Ljava/lang/Class;->isPrimitive()Z

    move-result v24

    if-eqz v24, :cond_118

    .line 243
    const-string v24, "int"

    move-object v0, v13

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v24

    if-nez v24, :cond_76

    .line 244
    move-object v0, v9

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v16

    .line 245
    .local v16, intfield:I
    move-object v0, v9

    move-object/from16 v1, p0

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Field;->setInt(Ljava/lang/Object;I)V
    :try_end_6e
    .catch Ljava/lang/IllegalAccessException; {:try_start_4e .. :try_end_6e} :catch_6f

    goto :goto_37

    .line 281
    .end local v16           #intfield:I
    :catch_6f
    move-exception v24

    move-object/from16 v8, v24

    .line 282
    .local v8, ex1:Ljava/lang/IllegalAccessException;
    invoke-virtual {v8}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_37

    .line 246
    .end local v8           #ex1:Ljava/lang/IllegalAccessException;
    :cond_76
    :try_start_76
    const-string v24, "short"

    move-object v0, v13

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v24

    if-nez v24, :cond_91

    .line 247
    move-object v0, v9

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->getShort(Ljava/lang/Object;)S

    move-result v23

    .line 248
    .local v23, shortField:S
    move-object v0, v9

    move-object/from16 v1, p0

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Field;->setShort(Ljava/lang/Object;S)V

    goto :goto_37

    .line 249
    .end local v23           #shortField:S
    :cond_91
    const-string v24, "char"

    move-object v0, v13

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v24

    if-nez v24, :cond_ab

    .line 250
    move-object v0, v9

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->getChar(Ljava/lang/Object;)C

    move-result v5

    .line 251
    .local v5, charField:C
    move-object v0, v9

    move-object/from16 v1, p0

    move v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Field;->setChar(Ljava/lang/Object;C)V

    goto :goto_37

    .line 252
    .end local v5           #charField:C
    :cond_ab
    const-string v24, "long"

    move-object v0, v13

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v24

    if-nez v24, :cond_c7

    .line 253
    move-object v0, v9

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->getLong(Ljava/lang/Object;)J

    move-result-wide v17

    .line 254
    .local v17, longField:J
    move-object v0, v9

    move-object/from16 v1, p0

    move-wide/from16 v2, v17

    invoke-virtual {v0, v1, v2, v3}, Ljava/lang/reflect/Field;->setLong(Ljava/lang/Object;J)V

    goto/16 :goto_37

    .line 255
    .end local v17           #longField:J
    :cond_c7
    const-string v24, "boolean"

    move-object v0, v13

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v24

    if-nez v24, :cond_e2

    .line 256
    move-object v0, v9

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z

    move-result v4

    .line 257
    .local v4, booleanField:Z
    move-object v0, v9

    move-object/from16 v1, p0

    move v2, v4

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Field;->setBoolean(Ljava/lang/Object;Z)V

    goto/16 :goto_37

    .line 258
    .end local v4           #booleanField:Z
    :cond_e2
    const-string v24, "double"

    move-object v0, v13

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v24

    if-nez v24, :cond_fd

    .line 259
    move-object v0, v9

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->getDouble(Ljava/lang/Object;)D

    move-result-wide v6

    .line 260
    .local v6, doubleField:D
    move-object v0, v9

    move-object/from16 v1, p0

    move-wide v2, v6

    invoke-virtual {v0, v1, v2, v3}, Ljava/lang/reflect/Field;->setDouble(Ljava/lang/Object;D)V

    goto/16 :goto_37

    .line 261
    .end local v6           #doubleField:D
    :cond_fd
    const-string v24, "float"

    move-object v0, v13

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v24

    if-nez v24, :cond_37

    .line 262
    move-object v0, v9

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->getFloat(Ljava/lang/Object;)F

    move-result v12

    .line 263
    .local v12, floatField:F
    move-object v0, v9

    move-object/from16 v1, p0

    move v2, v12

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Field;->setFloat(Ljava/lang/Object;F)V

    goto/16 :goto_37

    .line 266
    .end local v12           #floatField:F
    :cond_118
    move-object v0, v9

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    .line 267
    .local v22, obj:Ljava/lang/Object;
    move-object v0, v9

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    .line 268
    .local v19, mobj:Ljava/lang/Object;
    if-eqz v19, :cond_37

    .line 270
    if-nez v22, :cond_134

    .line 271
    move-object v0, v9

    move-object/from16 v1, p0

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_37

    .line 274
    :cond_134
    move-object/from16 v0, v22

    instance-of v0, v0, Lgov/nist/core/GenericObject;

    move/from16 v24, v0

    if-eqz v24, :cond_149

    .line 275
    move-object/from16 v0, v22

    check-cast v0, Lgov/nist/core/GenericObject;

    move-object v14, v0

    .line 276
    .local v14, gobj:Lgov/nist/core/GenericObject;
    move-object v0, v14

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lgov/nist/core/GenericObject;->merge(Ljava/lang/Object;)V

    goto/16 :goto_37

    .line 278
    .end local v14           #gobj:Lgov/nist/core/GenericObject;
    :cond_149
    move-object v0, v9

    move-object/from16 v1, p0

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_151
    .catch Ljava/lang/IllegalAccessException; {:try_start_76 .. :try_end_151} :catch_6f

    goto/16 :goto_37

    .line 286
    .end local v9           #f:Ljava/lang/reflect/Field;
    .end local v10           #fieldType:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v13           #fname:Ljava/lang/String;
    .end local v19           #mobj:Ljava/lang/Object;
    .end local v20           #modifier:I
    .end local v22           #obj:Ljava/lang/Object;
    :cond_153
    invoke-virtual/range {v21 .. v21}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v21

    .line 287
    const-class v24, Lgov/nist/core/GenericObject;

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_1d

    goto/16 :goto_2
.end method

.method public setMatcher(Lgov/nist/core/Match;)V
    .registers 4
    .parameter "matchExpression"

    .prologue
    .line 113
    if-nez p1, :cond_a

    .line 114
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "null arg!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 115
    :cond_a
    iput-object p1, p0, Lgov/nist/core/GenericObject;->matchExpression:Lgov/nist/core/Match;

    .line 116
    return-void
.end method

.method protected sprint(C)V
    .registers 3
    .parameter "charField"

    .prologue
    .line 353
    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lgov/nist/core/GenericObject;->sprint(Ljava/lang/String;)V

    .line 355
    return-void
.end method

.method protected sprint(D)V
    .registers 4
    .parameter "doubleField"

    .prologue
    .line 378
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lgov/nist/core/GenericObject;->sprint(Ljava/lang/String;)V

    .line 379
    return-void
.end method

.method protected sprint(F)V
    .registers 3
    .parameter "floatField"

    .prologue
    .line 386
    invoke-static {p1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lgov/nist/core/GenericObject;->sprint(Ljava/lang/String;)V

    .line 387
    return-void
.end method

.method protected sprint(I)V
    .registers 3
    .parameter "intField"

    .prologue
    .line 338
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lgov/nist/core/GenericObject;->sprint(Ljava/lang/String;)V

    .line 339
    return-void
.end method

.method protected sprint(J)V
    .registers 4
    .parameter "longField"

    .prologue
    .line 362
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lgov/nist/core/GenericObject;->sprint(Ljava/lang/String;)V

    .line 363
    return-void
.end method

.method protected sprint(Ljava/lang/Object;)V
    .registers 3
    .parameter "o"

    .prologue
    .line 330
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lgov/nist/core/GenericObject;->sprint(Ljava/lang/String;)V

    .line 331
    return-void
.end method

.method protected sprint(Ljava/lang/String;)V
    .registers 4
    .parameter "a"

    .prologue
    .line 308
    if-nez p1, :cond_33

    .line 309
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lgov/nist/core/GenericObject;->stringRepresentation:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lgov/nist/core/GenericObject;->getIndentation()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lgov/nist/core/GenericObject;->stringRepresentation:Ljava/lang/String;

    .line 310
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lgov/nist/core/GenericObject;->stringRepresentation:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "<null>\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lgov/nist/core/GenericObject;->stringRepresentation:Ljava/lang/String;

    .line 323
    :cond_32
    :goto_32
    return-void

    .line 313
    :cond_33
    const-string v0, "}"

    invoke-virtual {p1, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_43

    const-string v0, "]"

    invoke-virtual {p1, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_49

    .line 314
    :cond_43
    iget v0, p0, Lgov/nist/core/GenericObject;->indentation:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Lgov/nist/core/GenericObject;->indentation:I

    .line 316
    :cond_49
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lgov/nist/core/GenericObject;->stringRepresentation:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lgov/nist/core/GenericObject;->getIndentation()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lgov/nist/core/GenericObject;->stringRepresentation:Ljava/lang/String;

    .line 317
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lgov/nist/core/GenericObject;->stringRepresentation:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lgov/nist/core/GenericObject;->stringRepresentation:Ljava/lang/String;

    .line 318
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lgov/nist/core/GenericObject;->stringRepresentation:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lgov/nist/core/GenericObject;->stringRepresentation:Ljava/lang/String;

    .line 319
    const-string v0, "{"

    invoke-virtual {p1, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_9e

    const-string v0, "["

    invoke-virtual {p1, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_32

    .line 320
    :cond_9e
    iget v0, p0, Lgov/nist/core/GenericObject;->indentation:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lgov/nist/core/GenericObject;->indentation:I

    goto :goto_32
.end method

.method protected sprint(S)V
    .registers 3
    .parameter "shortField"

    .prologue
    .line 345
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lgov/nist/core/GenericObject;->sprint(Ljava/lang/String;)V

    .line 346
    return-void
.end method

.method protected sprint(Z)V
    .registers 3
    .parameter "booleanField"

    .prologue
    .line 370
    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lgov/nist/core/GenericObject;->sprint(Ljava/lang/String;)V

    .line 371
    return-void
.end method
