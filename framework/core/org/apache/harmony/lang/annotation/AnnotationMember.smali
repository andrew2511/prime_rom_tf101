.class public Lorg/apache/harmony/lang/annotation/AnnotationMember;
.super Ljava/lang/Object;
.source "AnnotationMember.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/harmony/lang/annotation/AnnotationMember$DefaultValues;
    }
.end annotation


# static fields
.field protected static final ARRAY:C = '['

.field protected static final ERROR:C = '!'

.field protected static final NO_VALUE:Ljava/lang/Object; = null

.field protected static final OTHER:C = '*'


# instance fields
.field protected transient definingMethod:Ljava/lang/reflect/Method;

.field protected transient elementType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field protected final name:Ljava/lang/String;

.field protected final tag:C

.field protected final value:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 88
    sget-object v0, Lorg/apache/harmony/lang/annotation/AnnotationMember$DefaultValues;->NO_VALUE:Lorg/apache/harmony/lang/annotation/AnnotationMember$DefaultValues;

    sput-object v0, Lorg/apache/harmony/lang/annotation/AnnotationMember;->NO_VALUE:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 4
    .parameter "name"
    .parameter "val"

    .prologue
    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 109
    iput-object p1, p0, Lorg/apache/harmony/lang/annotation/AnnotationMember;->name:Ljava/lang/String;

    .line 110
    if-nez p2, :cond_16

    sget-object v0, Lorg/apache/harmony/lang/annotation/AnnotationMember;->NO_VALUE:Ljava/lang/Object;

    :goto_9
    iput-object v0, p0, Lorg/apache/harmony/lang/annotation/AnnotationMember;->value:Ljava/lang/Object;

    .line 111
    iget-object v0, p0, Lorg/apache/harmony/lang/annotation/AnnotationMember;->value:Ljava/lang/Object;

    instance-of v0, v0, Ljava/lang/Throwable;

    if-eqz v0, :cond_18

    .line 112
    const/16 v0, 0x21

    iput-char v0, p0, Lorg/apache/harmony/lang/annotation/AnnotationMember;->tag:C

    .line 118
    :goto_15
    return-void

    :cond_16
    move-object v0, p2

    .line 110
    goto :goto_9

    .line 113
    :cond_18
    iget-object v0, p0, Lorg/apache/harmony/lang/annotation/AnnotationMember;->value:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_29

    .line 114
    const/16 v0, 0x5b

    iput-char v0, p0, Lorg/apache/harmony/lang/annotation/AnnotationMember;->tag:C

    goto :goto_15

    .line 116
    :cond_29
    const/16 v0, 0x2a

    iput-char v0, p0, Lorg/apache/harmony/lang/annotation/AnnotationMember;->tag:C

    goto :goto_15
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/reflect/Method;)V
    .registers 6
    .parameter "name"
    .parameter "val"
    .parameter "type"
    .parameter "m"

    .prologue
    .line 130
    invoke-direct {p0, p1, p2}, Lorg/apache/harmony/lang/annotation/AnnotationMember;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 132
    iput-object p4, p0, Lorg/apache/harmony/lang/annotation/AnnotationMember;->definingMethod:Ljava/lang/reflect/Method;

    .line 134
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne p3, v0, :cond_e

    .line 135
    const-class v0, Ljava/lang/Integer;

    iput-object v0, p0, Lorg/apache/harmony/lang/annotation/AnnotationMember;->elementType:Ljava/lang/Class;

    .line 153
    :goto_d
    return-void

    .line 136
    :cond_e
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne p3, v0, :cond_17

    .line 137
    const-class v0, Ljava/lang/Boolean;

    iput-object v0, p0, Lorg/apache/harmony/lang/annotation/AnnotationMember;->elementType:Ljava/lang/Class;

    goto :goto_d

    .line 138
    :cond_17
    sget-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne p3, v0, :cond_20

    .line 139
    const-class v0, Ljava/lang/Character;

    iput-object v0, p0, Lorg/apache/harmony/lang/annotation/AnnotationMember;->elementType:Ljava/lang/Class;

    goto :goto_d

    .line 140
    :cond_20
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne p3, v0, :cond_29

    .line 141
    const-class v0, Ljava/lang/Float;

    iput-object v0, p0, Lorg/apache/harmony/lang/annotation/AnnotationMember;->elementType:Ljava/lang/Class;

    goto :goto_d

    .line 142
    :cond_29
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne p3, v0, :cond_32

    .line 143
    const-class v0, Ljava/lang/Double;

    iput-object v0, p0, Lorg/apache/harmony/lang/annotation/AnnotationMember;->elementType:Ljava/lang/Class;

    goto :goto_d

    .line 144
    :cond_32
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne p3, v0, :cond_3b

    .line 145
    const-class v0, Ljava/lang/Long;

    iput-object v0, p0, Lorg/apache/harmony/lang/annotation/AnnotationMember;->elementType:Ljava/lang/Class;

    goto :goto_d

    .line 146
    :cond_3b
    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne p3, v0, :cond_44

    .line 147
    const-class v0, Ljava/lang/Short;

    iput-object v0, p0, Lorg/apache/harmony/lang/annotation/AnnotationMember;->elementType:Ljava/lang/Class;

    goto :goto_d

    .line 148
    :cond_44
    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne p3, v0, :cond_4d

    .line 149
    const-class v0, Ljava/lang/Byte;

    iput-object v0, p0, Lorg/apache/harmony/lang/annotation/AnnotationMember;->elementType:Ljava/lang/Class;

    goto :goto_d

    .line 151
    :cond_4d
    iput-object p3, p0, Lorg/apache/harmony/lang/annotation/AnnotationMember;->elementType:Ljava/lang/Class;

    goto :goto_d
.end method


# virtual methods
.method public copyValue()Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 364
    iget-char v1, p0, Lorg/apache/harmony/lang/annotation/AnnotationMember;->tag:C

    const/16 v2, 0x5b

    if-ne v1, v2, :cond_e

    iget-object v1, p0, Lorg/apache/harmony/lang/annotation/AnnotationMember;->value:Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v1

    if-nez v1, :cond_11

    .line 365
    :cond_e
    iget-object v1, p0, Lorg/apache/harmony/lang/annotation/AnnotationMember;->value:Ljava/lang/Object;

    .line 385
    .end local p0
    :goto_10
    return-object v1

    .line 367
    .restart local p0
    :cond_11
    iget-object v1, p0, Lorg/apache/harmony/lang/annotation/AnnotationMember;->value:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 368
    .local v0, type:Ljava/lang/Class;
    const-class v1, [I

    if-ne v0, v1, :cond_26

    .line 369
    iget-object p0, p0, Lorg/apache/harmony/lang/annotation/AnnotationMember;->value:Ljava/lang/Object;

    .end local p0
    check-cast p0, [I

    check-cast p0, [I

    invoke-virtual {p0}, [I->clone()Ljava/lang/Object;

    move-result-object v1

    goto :goto_10

    .line 370
    .restart local p0
    :cond_26
    const-class v1, [B

    if-ne v0, v1, :cond_35

    .line 371
    iget-object p0, p0, Lorg/apache/harmony/lang/annotation/AnnotationMember;->value:Ljava/lang/Object;

    .end local p0
    check-cast p0, [B

    check-cast p0, [B

    invoke-virtual {p0}, [B->clone()Ljava/lang/Object;

    move-result-object v1

    goto :goto_10

    .line 372
    .restart local p0
    :cond_35
    const-class v1, [S

    if-ne v0, v1, :cond_44

    .line 373
    iget-object p0, p0, Lorg/apache/harmony/lang/annotation/AnnotationMember;->value:Ljava/lang/Object;

    .end local p0
    check-cast p0, [S

    check-cast p0, [S

    invoke-virtual {p0}, [S->clone()Ljava/lang/Object;

    move-result-object v1

    goto :goto_10

    .line 374
    .restart local p0
    :cond_44
    const-class v1, [J

    if-ne v0, v1, :cond_53

    .line 375
    iget-object p0, p0, Lorg/apache/harmony/lang/annotation/AnnotationMember;->value:Ljava/lang/Object;

    .end local p0
    check-cast p0, [J

    check-cast p0, [J

    invoke-virtual {p0}, [J->clone()Ljava/lang/Object;

    move-result-object v1

    goto :goto_10

    .line 376
    .restart local p0
    :cond_53
    const-class v1, [C

    if-ne v0, v1, :cond_62

    .line 377
    iget-object p0, p0, Lorg/apache/harmony/lang/annotation/AnnotationMember;->value:Ljava/lang/Object;

    .end local p0
    check-cast p0, [C

    check-cast p0, [C

    invoke-virtual {p0}, [C->clone()Ljava/lang/Object;

    move-result-object v1

    goto :goto_10

    .line 378
    .restart local p0
    :cond_62
    const-class v1, [Z

    if-ne v0, v1, :cond_71

    .line 379
    iget-object p0, p0, Lorg/apache/harmony/lang/annotation/AnnotationMember;->value:Ljava/lang/Object;

    .end local p0
    check-cast p0, [Z

    check-cast p0, [Z

    invoke-virtual {p0}, [Z->clone()Ljava/lang/Object;

    move-result-object v1

    goto :goto_10

    .line 380
    .restart local p0
    :cond_71
    const-class v1, [F

    if-ne v0, v1, :cond_80

    .line 381
    iget-object p0, p0, Lorg/apache/harmony/lang/annotation/AnnotationMember;->value:Ljava/lang/Object;

    .end local p0
    check-cast p0, [F

    check-cast p0, [F

    invoke-virtual {p0}, [F->clone()Ljava/lang/Object;

    move-result-object v1

    goto :goto_10

    .line 382
    .restart local p0
    :cond_80
    const-class v1, [D

    if-ne v0, v1, :cond_8f

    .line 383
    iget-object p0, p0, Lorg/apache/harmony/lang/annotation/AnnotationMember;->value:Ljava/lang/Object;

    .end local p0
    check-cast p0, [D

    check-cast p0, [D

    invoke-virtual {p0}, [D->clone()Ljava/lang/Object;

    move-result-object v1

    goto :goto_10

    .line 385
    .restart local p0
    :cond_8f
    iget-object p0, p0, Lorg/apache/harmony/lang/annotation/AnnotationMember;->value:Ljava/lang/Object;

    .end local p0
    check-cast p0, [Ljava/lang/Object;

    check-cast p0, [Ljava/lang/Object;

    invoke-virtual {p0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_10
.end method

.method public equalArrayValue(Ljava/lang/Object;)Z
    .registers 5
    .parameter "otherValue"

    .prologue
    const/4 v2, 0x0

    .line 223
    iget-object v1, p0, Lorg/apache/harmony/lang/annotation/AnnotationMember;->value:Ljava/lang/Object;

    instance-of v1, v1, [Ljava/lang/Object;

    if-eqz v1, :cond_1a

    instance-of v1, p1, [Ljava/lang/Object;

    if-eqz v1, :cond_1a

    .line 224
    iget-object p0, p0, Lorg/apache/harmony/lang/annotation/AnnotationMember;->value:Ljava/lang/Object;

    .end local p0
    check-cast p0, [Ljava/lang/Object;

    check-cast p0, [Ljava/lang/Object;

    check-cast p1, [Ljava/lang/Object;

    .end local p1
    check-cast p1, [Ljava/lang/Object;

    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    .line 247
    :goto_19
    return v1

    .line 226
    .restart local p0
    .restart local p1
    :cond_1a
    iget-object v1, p0, Lorg/apache/harmony/lang/annotation/AnnotationMember;->value:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 227
    .local v0, type:Ljava/lang/Class;
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_28

    move v1, v2

    .line 228
    goto :goto_19

    .line 230
    :cond_28
    const-class v1, [I

    if-ne v0, v1, :cond_3b

    .line 231
    iget-object p0, p0, Lorg/apache/harmony/lang/annotation/AnnotationMember;->value:Ljava/lang/Object;

    .end local p0
    check-cast p0, [I

    check-cast p0, [I

    check-cast p1, [I

    .end local p1
    check-cast p1, [I

    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v1

    goto :goto_19

    .line 232
    .restart local p0
    .restart local p1
    :cond_3b
    const-class v1, [B

    if-ne v0, v1, :cond_4e

    .line 233
    iget-object p0, p0, Lorg/apache/harmony/lang/annotation/AnnotationMember;->value:Ljava/lang/Object;

    .end local p0
    check-cast p0, [B

    check-cast p0, [B

    check-cast p1, [B

    .end local p1
    check-cast p1, [B

    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    goto :goto_19

    .line 234
    .restart local p0
    .restart local p1
    :cond_4e
    const-class v1, [S

    if-ne v0, v1, :cond_61

    .line 235
    iget-object p0, p0, Lorg/apache/harmony/lang/annotation/AnnotationMember;->value:Ljava/lang/Object;

    .end local p0
    check-cast p0, [S

    check-cast p0, [S

    check-cast p1, [S

    .end local p1
    check-cast p1, [S

    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([S[S)Z

    move-result v1

    goto :goto_19

    .line 236
    .restart local p0
    .restart local p1
    :cond_61
    const-class v1, [J

    if-ne v0, v1, :cond_74

    .line 237
    iget-object p0, p0, Lorg/apache/harmony/lang/annotation/AnnotationMember;->value:Ljava/lang/Object;

    .end local p0
    check-cast p0, [J

    check-cast p0, [J

    check-cast p1, [J

    .end local p1
    check-cast p1, [J

    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([J[J)Z

    move-result v1

    goto :goto_19

    .line 238
    .restart local p0
    .restart local p1
    :cond_74
    const-class v1, [C

    if-ne v0, v1, :cond_87

    .line 239
    iget-object p0, p0, Lorg/apache/harmony/lang/annotation/AnnotationMember;->value:Ljava/lang/Object;

    .end local p0
    check-cast p0, [C

    check-cast p0, [C

    check-cast p1, [C

    .end local p1
    check-cast p1, [C

    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([C[C)Z

    move-result v1

    goto :goto_19

    .line 240
    .restart local p0
    .restart local p1
    :cond_87
    const-class v1, [Z

    if-ne v0, v1, :cond_9a

    .line 241
    iget-object p0, p0, Lorg/apache/harmony/lang/annotation/AnnotationMember;->value:Ljava/lang/Object;

    .end local p0
    check-cast p0, [Z

    check-cast p0, [Z

    check-cast p1, [Z

    .end local p1
    check-cast p1, [Z

    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([Z[Z)Z

    move-result v1

    goto :goto_19

    .line 242
    .restart local p0
    .restart local p1
    :cond_9a
    const-class v1, [F

    if-ne v0, v1, :cond_ae

    .line 243
    iget-object p0, p0, Lorg/apache/harmony/lang/annotation/AnnotationMember;->value:Ljava/lang/Object;

    .end local p0
    check-cast p0, [F

    check-cast p0, [F

    check-cast p1, [F

    .end local p1
    check-cast p1, [F

    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([F[F)Z

    move-result v1

    goto/16 :goto_19

    .line 244
    .restart local p0
    .restart local p1
    :cond_ae
    const-class v1, [D

    if-ne v0, v1, :cond_c2

    .line 245
    iget-object p0, p0, Lorg/apache/harmony/lang/annotation/AnnotationMember;->value:Ljava/lang/Object;

    .end local p0
    check-cast p0, [D

    check-cast p0, [D

    check-cast p1, [D

    .end local p1
    check-cast p1, [D

    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([D[D)Z

    move-result v1

    goto/16 :goto_19

    .restart local p0
    .restart local p1
    :cond_c2
    move v1, v2

    .line 247
    goto/16 :goto_19
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .parameter "obj"

    .prologue
    const/4 v4, 0x0

    .line 193
    if-ne p1, p0, :cond_5

    .line 196
    const/4 v2, 0x1

    .line 211
    :goto_4
    return v2

    .line 198
    :cond_5
    instance-of v2, p1, Lorg/apache/harmony/lang/annotation/AnnotationMember;

    if-eqz v2, :cond_3b

    .line 199
    move-object v0, p1

    check-cast v0, Lorg/apache/harmony/lang/annotation/AnnotationMember;

    move-object v1, v0

    .line 200
    .local v1, that:Lorg/apache/harmony/lang/annotation/AnnotationMember;
    iget-object v2, p0, Lorg/apache/harmony/lang/annotation/AnnotationMember;->name:Ljava/lang/String;

    iget-object v3, v1, Lorg/apache/harmony/lang/annotation/AnnotationMember;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3b

    iget-char v2, p0, Lorg/apache/harmony/lang/annotation/AnnotationMember;->tag:C

    iget-char v3, v1, Lorg/apache/harmony/lang/annotation/AnnotationMember;->tag:C

    if-ne v2, v3, :cond_3b

    .line 201
    iget-char v2, p0, Lorg/apache/harmony/lang/annotation/AnnotationMember;->tag:C

    const/16 v3, 0x5b

    if-ne v2, v3, :cond_2a

    .line 202
    iget-object v2, v1, Lorg/apache/harmony/lang/annotation/AnnotationMember;->value:Ljava/lang/Object;

    invoke-virtual {p0, v2}, Lorg/apache/harmony/lang/annotation/AnnotationMember;->equalArrayValue(Ljava/lang/Object;)Z

    move-result v2

    goto :goto_4

    .line 203
    :cond_2a
    iget-char v2, p0, Lorg/apache/harmony/lang/annotation/AnnotationMember;->tag:C

    const/16 v3, 0x21

    if-ne v2, v3, :cond_32

    move v2, v4

    .line 205
    goto :goto_4

    .line 207
    :cond_32
    iget-object v2, p0, Lorg/apache/harmony/lang/annotation/AnnotationMember;->value:Ljava/lang/Object;

    iget-object v3, v1, Lorg/apache/harmony/lang/annotation/AnnotationMember;->value:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    goto :goto_4

    .end local v1           #that:Lorg/apache/harmony/lang/annotation/AnnotationMember;
    :cond_3b
    move v2, v4

    .line 211
    goto :goto_4
.end method

.method public hashCode()I
    .registers 5

    .prologue
    .line 260
    iget-object v2, p0, Lorg/apache/harmony/lang/annotation/AnnotationMember;->name:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    mul-int/lit8 v0, v2, 0x7f

    .line 261
    .local v0, hash:I
    iget-char v2, p0, Lorg/apache/harmony/lang/annotation/AnnotationMember;->tag:C

    const/16 v3, 0x5b

    if-ne v2, v3, :cond_a0

    .line 262
    iget-object v2, p0, Lorg/apache/harmony/lang/annotation/AnnotationMember;->value:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 263
    .local v1, type:Ljava/lang/Class;
    const-class v2, [I

    if-ne v1, v2, :cond_24

    .line 264
    iget-object p0, p0, Lorg/apache/harmony/lang/annotation/AnnotationMember;->value:Ljava/lang/Object;

    .end local p0
    check-cast p0, [I

    check-cast p0, [I

    invoke-static {p0}, Ljava/util/Arrays;->hashCode([I)I

    move-result v2

    xor-int/2addr v2, v0

    .line 282
    .end local v1           #type:Ljava/lang/Class;
    :goto_23
    return v2

    .line 265
    .restart local v1       #type:Ljava/lang/Class;
    .restart local p0
    :cond_24
    const-class v2, [B

    if-ne v1, v2, :cond_34

    .line 266
    iget-object p0, p0, Lorg/apache/harmony/lang/annotation/AnnotationMember;->value:Ljava/lang/Object;

    .end local p0
    check-cast p0, [B

    check-cast p0, [B

    invoke-static {p0}, Ljava/util/Arrays;->hashCode([B)I

    move-result v2

    xor-int/2addr v2, v0

    goto :goto_23

    .line 267
    .restart local p0
    :cond_34
    const-class v2, [S

    if-ne v1, v2, :cond_44

    .line 268
    iget-object p0, p0, Lorg/apache/harmony/lang/annotation/AnnotationMember;->value:Ljava/lang/Object;

    .end local p0
    check-cast p0, [S

    check-cast p0, [S

    invoke-static {p0}, Ljava/util/Arrays;->hashCode([S)I

    move-result v2

    xor-int/2addr v2, v0

    goto :goto_23

    .line 269
    .restart local p0
    :cond_44
    const-class v2, [J

    if-ne v1, v2, :cond_54

    .line 270
    iget-object p0, p0, Lorg/apache/harmony/lang/annotation/AnnotationMember;->value:Ljava/lang/Object;

    .end local p0
    check-cast p0, [J

    check-cast p0, [J

    invoke-static {p0}, Ljava/util/Arrays;->hashCode([J)I

    move-result v2

    xor-int/2addr v2, v0

    goto :goto_23

    .line 271
    .restart local p0
    :cond_54
    const-class v2, [C

    if-ne v1, v2, :cond_64

    .line 272
    iget-object p0, p0, Lorg/apache/harmony/lang/annotation/AnnotationMember;->value:Ljava/lang/Object;

    .end local p0
    check-cast p0, [C

    check-cast p0, [C

    invoke-static {p0}, Ljava/util/Arrays;->hashCode([C)I

    move-result v2

    xor-int/2addr v2, v0

    goto :goto_23

    .line 273
    .restart local p0
    :cond_64
    const-class v2, [Z

    if-ne v1, v2, :cond_74

    .line 274
    iget-object p0, p0, Lorg/apache/harmony/lang/annotation/AnnotationMember;->value:Ljava/lang/Object;

    .end local p0
    check-cast p0, [Z

    check-cast p0, [Z

    invoke-static {p0}, Ljava/util/Arrays;->hashCode([Z)I

    move-result v2

    xor-int/2addr v2, v0

    goto :goto_23

    .line 275
    .restart local p0
    :cond_74
    const-class v2, [F

    if-ne v1, v2, :cond_84

    .line 276
    iget-object p0, p0, Lorg/apache/harmony/lang/annotation/AnnotationMember;->value:Ljava/lang/Object;

    .end local p0
    check-cast p0, [F

    check-cast p0, [F

    invoke-static {p0}, Ljava/util/Arrays;->hashCode([F)I

    move-result v2

    xor-int/2addr v2, v0

    goto :goto_23

    .line 277
    .restart local p0
    :cond_84
    const-class v2, [D

    if-ne v1, v2, :cond_94

    .line 278
    iget-object p0, p0, Lorg/apache/harmony/lang/annotation/AnnotationMember;->value:Ljava/lang/Object;

    .end local p0
    check-cast p0, [D

    check-cast p0, [D

    invoke-static {p0}, Ljava/util/Arrays;->hashCode([D)I

    move-result v2

    xor-int/2addr v2, v0

    goto :goto_23

    .line 280
    .restart local p0
    :cond_94
    iget-object p0, p0, Lorg/apache/harmony/lang/annotation/AnnotationMember;->value:Ljava/lang/Object;

    .end local p0
    check-cast p0, [Ljava/lang/Object;

    check-cast p0, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v2

    xor-int/2addr v2, v0

    goto :goto_23

    .line 282
    .end local v1           #type:Ljava/lang/Class;
    .restart local p0
    :cond_a0
    iget-object v2, p0, Lorg/apache/harmony/lang/annotation/AnnotationMember;->value:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    xor-int/2addr v2, v0

    goto/16 :goto_23
.end method

.method public rethrowError()V
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 290
    iget-char v9, p0, Lorg/apache/harmony/lang/annotation/AnnotationMember;->tag:C

    const/16 v10, 0x21

    if-ne v9, v10, :cond_87

    .line 296
    iget-object v9, p0, Lorg/apache/harmony/lang/annotation/AnnotationMember;->value:Ljava/lang/Object;

    instance-of v9, v9, Ljava/lang/TypeNotPresentException;

    if-eqz v9, :cond_1e

    .line 297
    iget-object v8, p0, Lorg/apache/harmony/lang/annotation/AnnotationMember;->value:Ljava/lang/Object;

    check-cast v8, Ljava/lang/TypeNotPresentException;

    .line 298
    .local v8, tnpe:Ljava/lang/TypeNotPresentException;
    new-instance v9, Ljava/lang/TypeNotPresentException;

    invoke-virtual {v8}, Ljava/lang/TypeNotPresentException;->typeName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8}, Ljava/lang/TypeNotPresentException;->getCause()Ljava/lang/Throwable;

    move-result-object v11

    invoke-direct {v9, v10, v11}, Ljava/lang/TypeNotPresentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v9

    .line 299
    .end local v8           #tnpe:Ljava/lang/TypeNotPresentException;
    :cond_1e
    iget-object v9, p0, Lorg/apache/harmony/lang/annotation/AnnotationMember;->value:Ljava/lang/Object;

    instance-of v9, v9, Ljava/lang/EnumConstantNotPresentException;

    if-eqz v9, :cond_36

    .line 300
    iget-object v3, p0, Lorg/apache/harmony/lang/annotation/AnnotationMember;->value:Ljava/lang/Object;

    check-cast v3, Ljava/lang/EnumConstantNotPresentException;

    .line 301
    .local v3, ecnpe:Ljava/lang/EnumConstantNotPresentException;
    new-instance v9, Ljava/lang/EnumConstantNotPresentException;

    invoke-virtual {v3}, Ljava/lang/EnumConstantNotPresentException;->enumType()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v3}, Ljava/lang/EnumConstantNotPresentException;->constantName()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v9, v10, v11}, Ljava/lang/EnumConstantNotPresentException;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    throw v9

    .line 302
    .end local v3           #ecnpe:Ljava/lang/EnumConstantNotPresentException;
    :cond_36
    iget-object v9, p0, Lorg/apache/harmony/lang/annotation/AnnotationMember;->value:Ljava/lang/Object;

    instance-of v9, v9, Ljava/lang/ArrayStoreException;

    if-eqz v9, :cond_4a

    .line 303
    iget-object v0, p0, Lorg/apache/harmony/lang/annotation/AnnotationMember;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/ArrayStoreException;

    .line 304
    .local v0, ase:Ljava/lang/ArrayStoreException;
    new-instance v9, Ljava/lang/ArrayStoreException;

    invoke-virtual {v0}, Ljava/lang/ArrayStoreException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/ArrayStoreException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 308
    .end local v0           #ase:Ljava/lang/ArrayStoreException;
    :cond_4a
    iget-object v4, p0, Lorg/apache/harmony/lang/annotation/AnnotationMember;->value:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Throwable;

    .line 309
    .local v4, error:Ljava/lang/Throwable;
    invoke-virtual {v4}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v7

    .line 310
    .local v7, ste:[Ljava/lang/StackTraceElement;
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    if-nez v7, :cond_81

    const/16 v9, 0x200

    :goto_58
    invoke-direct {v2, v9}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 312
    .local v2, bos:Ljava/io/ByteArrayOutputStream;
    new-instance v6, Ljava/io/ObjectOutputStream;

    invoke-direct {v6, v2}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 313
    .local v6, oos:Ljava/io/ObjectOutputStream;
    invoke-virtual {v6, v4}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 314
    invoke-virtual {v6}, Ljava/io/ObjectOutputStream;->flush()V

    .line 315
    invoke-virtual {v6}, Ljava/io/ObjectOutputStream;->close()V

    .line 316
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v9

    invoke-direct {v1, v9}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 318
    .local v1, bis:Ljava/io/ByteArrayInputStream;
    new-instance v5, Ljava/io/ObjectInputStream;

    invoke-direct {v5, v1}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    .line 319
    .local v5, ois:Ljava/io/ObjectInputStream;
    invoke-virtual {v5}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v4

    .end local v4           #error:Ljava/lang/Throwable;
    check-cast v4, Ljava/lang/Throwable;

    .line 320
    .restart local v4       #error:Ljava/lang/Throwable;
    invoke-virtual {v5}, Ljava/io/ObjectInputStream;->close()V

    .line 322
    throw v4

    .line 310
    .end local v1           #bis:Ljava/io/ByteArrayInputStream;
    .end local v2           #bos:Ljava/io/ByteArrayOutputStream;
    .end local v5           #ois:Ljava/io/ObjectInputStream;
    .end local v6           #oos:Ljava/io/ObjectOutputStream;
    :cond_81
    array-length v9, v7

    add-int/lit8 v9, v9, 0x1

    mul-int/lit8 v9, v9, 0x50

    goto :goto_58

    .line 324
    .end local v4           #error:Ljava/lang/Throwable;
    .end local v7           #ste:[Ljava/lang/StackTraceElement;
    :cond_87
    return-void
.end method

.method protected setDefinition(Lorg/apache/harmony/lang/annotation/AnnotationMember;)Lorg/apache/harmony/lang/annotation/AnnotationMember;
    .registers 3
    .parameter "copy"

    .prologue
    .line 159
    iget-object v0, p1, Lorg/apache/harmony/lang/annotation/AnnotationMember;->definingMethod:Ljava/lang/reflect/Method;

    iput-object v0, p0, Lorg/apache/harmony/lang/annotation/AnnotationMember;->definingMethod:Ljava/lang/reflect/Method;

    .line 160
    iget-object v0, p1, Lorg/apache/harmony/lang/annotation/AnnotationMember;->elementType:Ljava/lang/Class;

    iput-object v0, p0, Lorg/apache/harmony/lang/annotation/AnnotationMember;->elementType:Ljava/lang/Class;

    .line 161
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    .prologue
    .line 168
    iget-char v3, p0, Lorg/apache/harmony/lang/annotation/AnnotationMember;->tag:C

    const/16 v4, 0x5b

    if-ne v3, v4, :cond_3f

    .line 169
    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x50

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 170
    .local v2, sb:Ljava/lang/StringBuilder;
    iget-object v3, p0, Lorg/apache/harmony/lang/annotation/AnnotationMember;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "=["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    iget-object v3, p0, Lorg/apache/harmony/lang/annotation/AnnotationMember;->value:Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v1

    .line 172
    .local v1, len:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1f
    if-ge v0, v1, :cond_34

    .line 173
    if-eqz v0, :cond_28

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    :cond_28
    iget-object v3, p0, Lorg/apache/harmony/lang/annotation/AnnotationMember;->value:Ljava/lang/Object;

    invoke-static {v3, v0}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 172
    add-int/lit8 v0, v0, 0x1

    goto :goto_1f

    .line 176
    :cond_34
    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 178
    .end local v0           #i:I
    .end local v1           #len:I
    .end local v2           #sb:Ljava/lang/StringBuilder;
    :goto_3e
    return-object v3

    :cond_3f
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lorg/apache/harmony/lang/annotation/AnnotationMember;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/apache/harmony/lang/annotation/AnnotationMember;->value:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_3e
.end method

.method public validateValue()Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 340
    iget-char v0, p0, Lorg/apache/harmony/lang/annotation/AnnotationMember;->tag:C

    const/16 v1, 0x21

    if-ne v0, v1, :cond_9

    .line 341
    invoke-virtual {p0}, Lorg/apache/harmony/lang/annotation/AnnotationMember;->rethrowError()V

    .line 343
    :cond_9
    iget-object v0, p0, Lorg/apache/harmony/lang/annotation/AnnotationMember;->value:Ljava/lang/Object;

    sget-object v1, Lorg/apache/harmony/lang/annotation/AnnotationMember;->NO_VALUE:Ljava/lang/Object;

    if-ne v0, v1, :cond_11

    .line 344
    const/4 v0, 0x0

    .line 348
    :goto_10
    return-object v0

    .line 346
    :cond_11
    iget-object v0, p0, Lorg/apache/harmony/lang/annotation/AnnotationMember;->elementType:Ljava/lang/Class;

    iget-object v1, p0, Lorg/apache/harmony/lang/annotation/AnnotationMember;->value:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_25

    iget-object v0, p0, Lorg/apache/harmony/lang/annotation/AnnotationMember;->elementType:Ljava/lang/Class;

    iget-object v1, p0, Lorg/apache/harmony/lang/annotation/AnnotationMember;->value:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 348
    :cond_25
    invoke-virtual {p0}, Lorg/apache/harmony/lang/annotation/AnnotationMember;->copyValue()Ljava/lang/Object;

    move-result-object v0

    goto :goto_10

    .line 350
    :cond_2a
    new-instance v0, Ljava/lang/annotation/AnnotationTypeMismatchException;

    iget-object v1, p0, Lorg/apache/harmony/lang/annotation/AnnotationMember;->definingMethod:Ljava/lang/reflect/Method;

    iget-object v2, p0, Lorg/apache/harmony/lang/annotation/AnnotationMember;->value:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/lang/annotation/AnnotationTypeMismatchException;-><init>(Ljava/lang/reflect/Method;Ljava/lang/String;)V

    throw v0
.end method
