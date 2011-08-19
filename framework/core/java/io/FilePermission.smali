.class public final Ljava/io/FilePermission;
.super Ljava/security/Permission;
.source "FilePermission.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final actionList:[Ljava/lang/String; = null

.field private static final serialVersionUID:J = 0x6e0f9f93f4c0a9bbL


# instance fields
.field private actions:Ljava/lang/String;

.field private transient allDir:Z

.field private transient allSubdir:Z

.field private transient canonPath:Ljava/lang/String;

.field private transient includeAll:Z

.field transient mask:I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 56
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "read"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "write"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "execute"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "delete"

    aput-object v2, v0, v1

    sput-object v0, Ljava/io/FilePermission;->actionList:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .parameter "path"
    .parameter "actions"

    .prologue
    const/4 v1, 0x0

    .line 89
    invoke-direct {p0, p1}, Ljava/security/Permission;-><init>(Ljava/lang/String;)V

    .line 64
    const/4 v0, -0x1

    iput v0, p0, Ljava/io/FilePermission;->mask:I

    .line 67
    iput-boolean v1, p0, Ljava/io/FilePermission;->includeAll:Z

    .line 69
    iput-boolean v1, p0, Ljava/io/FilePermission;->allDir:Z

    .line 71
    iput-boolean v1, p0, Ljava/io/FilePermission;->allSubdir:Z

    .line 90
    invoke-direct {p0, p1, p2}, Ljava/io/FilePermission;->init(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    return-void
.end method

.method private getMask(Ljava/lang/String;)I
    .registers 9
    .parameter "actionNames"

    .prologue
    .line 169
    const/4 v1, 0x0

    .local v1, actionInt:I
    const/4 v2, 0x0

    .local v2, head:I
    const/4 v3, 0x0

    .line 171
    .local v3, tail:I
    :cond_3
    const-string v4, ","

    invoke-virtual {p1, v4, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v3

    .line 172
    if-lez v3, :cond_23

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    .line 174
    .local v0, action:Ljava/lang/String;
    :goto_14
    const-string v4, "read"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2d

    .line 175
    or-int/lit8 v1, v1, 0x8

    .line 185
    :goto_1e
    add-int/lit8 v2, v3, 0x1

    .line 186
    if-gtz v3, :cond_3

    .line 187
    return v1

    .line 172
    .end local v0           #action:Ljava/lang/String;
    :cond_23
    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    goto :goto_14

    .line 176
    .restart local v0       #action:Ljava/lang/String;
    :cond_2d
    const-string v4, "write"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_38

    .line 177
    or-int/lit8 v1, v1, 0x4

    goto :goto_1e

    .line 178
    :cond_38
    const-string v4, "execute"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_43

    .line 179
    or-int/lit8 v1, v1, 0x2

    goto :goto_1e

    .line 180
    :cond_43
    const-string v4, "delete"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4e

    .line 181
    or-int/lit8 v1, v1, 0x1

    goto :goto_1e

    .line 183
    :cond_4e
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid action: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method private init(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .parameter "path"
    .parameter "pathActions"

    .prologue
    const/4 v2, 0x1

    .line 94
    if-eqz p2, :cond_9

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 95
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "pathActions == null || pathActions.isEmpty()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 97
    :cond_11
    invoke-direct {p0, p2}, Ljava/io/FilePermission;->toCanonicalActionString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljava/io/FilePermission;->actions:Ljava/lang/String;

    .line 99
    if-nez p1, :cond_21

    .line 100
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "path == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 102
    :cond_21
    const-string v0, "<<ALL FILES>>"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 103
    iput-boolean v2, p0, Ljava/io/FilePermission;->includeAll:Z

    .line 122
    :cond_2b
    :goto_2b
    return-void

    .line 105
    :cond_2c
    new-instance v0, Ljava/io/FilePermission$1;

    invoke-direct {v0, p0, p1}, Ljava/io/FilePermission$1;-><init>(Ljava/io/FilePermission;Ljava/lang/String;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Ljava/io/FilePermission;->canonPath:Ljava/lang/String;

    .line 115
    const-string v0, "*"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5c

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "*"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5e

    .line 116
    :cond_5c
    iput-boolean v2, p0, Ljava/io/FilePermission;->allDir:Z

    .line 118
    :cond_5e
    const-string v0, "-"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_81

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 119
    :cond_81
    iput-boolean v2, p0, Ljava/io/FilePermission;->allSubdir:Z

    goto :goto_2b
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .registers 4
    .parameter "stream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 376
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 377
    invoke-virtual {p0}, Ljava/io/FilePermission;->getName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Ljava/io/FilePermission;->actions:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Ljava/io/FilePermission;->init(Ljava/lang/String;Ljava/lang/String;)V

    .line 378
    return-void
.end method

.method private toCanonicalActionString(Ljava/lang/String;)Ljava/lang/String;
    .registers 9
    .parameter "action"

    .prologue
    const/4 v6, 0x1

    .line 134
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Ljava/io/FilePermission;->actions:Ljava/lang/String;

    .line 137
    iget-object v5, p0, Ljava/io/FilePermission;->actions:Ljava/lang/String;

    invoke-direct {p0, v5}, Ljava/io/FilePermission;->getMask(Ljava/lang/String;)I

    move-result v5

    iput v5, p0, Ljava/io/FilePermission;->mask:I

    .line 140
    sget-object v5, Ljava/io/FilePermission;->actionList:[Ljava/lang/String;

    array-length v3, v5

    .line 143
    .local v3, len:I
    sub-int v5, v3, v6

    shl-int v1, v6, v5

    .line 146
    .local v1, highestBitMask:I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 147
    .local v4, result:Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .line 148
    .local v0, addedItem:Z
    const/4 v2, 0x0

    .local v2, i:I
    :goto_21
    if-ge v2, v3, :cond_3c

    .line 149
    iget v5, p0, Ljava/io/FilePermission;->mask:I

    and-int/2addr v5, v1

    if-eqz v5, :cond_37

    .line 150
    if-eqz v0, :cond_2f

    .line 151
    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    :cond_2f
    sget-object v5, Ljava/io/FilePermission;->actionList:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    const/4 v0, 0x1

    .line 156
    :cond_37
    shr-int/lit8 v1, v1, 0x1

    .line 148
    add-int/lit8 v2, v2, 0x1

    goto :goto_21

    .line 158
    :cond_3c
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .registers 2
    .parameter "stream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 371
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 372
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .parameter "obj"

    .prologue
    const/4 v4, 0x0

    .line 212
    instance-of v2, p1, Ljava/io/FilePermission;

    if-eqz v2, :cond_30

    .line 213
    move-object v0, p1

    check-cast v0, Ljava/io/FilePermission;

    move-object v1, v0

    .line 214
    .local v1, fp:Ljava/io/FilePermission;
    iget-object v2, v1, Ljava/io/FilePermission;->actions:Ljava/lang/String;

    iget-object v3, p0, Ljava/io/FilePermission;->actions:Ljava/lang/String;

    invoke-static {v2, v3}, Llibcore/util/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_15

    move v2, v4

    .line 224
    .end local v1           #fp:Ljava/io/FilePermission;
    :goto_14
    return v2

    .line 219
    .restart local v1       #fp:Ljava/io/FilePermission;
    :cond_15
    iget-boolean v2, v1, Ljava/io/FilePermission;->includeAll:Z

    if-nez v2, :cond_1d

    iget-boolean v2, p0, Ljava/io/FilePermission;->includeAll:Z

    if-eqz v2, :cond_27

    .line 220
    :cond_1d
    iget-boolean v2, v1, Ljava/io/FilePermission;->includeAll:Z

    iget-boolean v3, p0, Ljava/io/FilePermission;->includeAll:Z

    if-ne v2, v3, :cond_25

    const/4 v2, 0x1

    goto :goto_14

    :cond_25
    move v2, v4

    goto :goto_14

    .line 222
    :cond_27
    iget-object v2, v1, Ljava/io/FilePermission;->canonPath:Ljava/lang/String;

    iget-object v3, p0, Ljava/io/FilePermission;->canonPath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    goto :goto_14

    .end local v1           #fp:Ljava/io/FilePermission;
    :cond_30
    move v2, v4

    .line 224
    goto :goto_14
.end method

.method public getActions()Ljava/lang/String;
    .registers 2

    .prologue
    .line 197
    iget-object v0, p0, Ljava/io/FilePermission;->actions:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .registers 3

    .prologue
    .line 366
    iget-object v0, p0, Ljava/io/FilePermission;->canonPath:Ljava/lang/String;

    if-nez v0, :cond_10

    invoke-virtual {p0}, Ljava/io/FilePermission;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_c
    iget v1, p0, Ljava/io/FilePermission;->mask:I

    add-int/2addr v0, v1

    return v0

    :cond_10
    iget-object v0, p0, Ljava/io/FilePermission;->canonPath:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_c
.end method

.method public implies(Ljava/security/Permission;)Z
    .registers 4
    .parameter "p"

    .prologue
    .line 241
    invoke-virtual {p0, p1}, Ljava/io/FilePermission;->impliesMask(Ljava/security/Permission;)I

    move-result v0

    .line 242
    .local v0, match:I
    if-eqz v0, :cond_e

    check-cast p1, Ljava/io/FilePermission;

    .end local p1
    iget v1, p1, Ljava/io/FilePermission;->mask:I

    if-ne v0, v1, :cond_e

    const/4 v1, 0x1

    :goto_d
    return v1

    :cond_e
    const/4 v1, 0x0

    goto :goto_d
.end method

.method impliesMask(Ljava/security/Permission;)I
    .registers 13
    .parameter "p"

    .prologue
    const/4 v10, 0x0

    .line 254
    instance-of v8, p1, Ljava/io/FilePermission;

    if-nez v8, :cond_7

    move v8, v10

    .line 344
    :goto_6
    return v8

    .line 257
    :cond_7
    move-object v0, p1

    check-cast v0, Ljava/io/FilePermission;

    move-object v1, v0

    .line 258
    .local v1, fp:Ljava/io/FilePermission;
    iget v8, p0, Ljava/io/FilePermission;->mask:I

    iget v9, v1, Ljava/io/FilePermission;->mask:I

    and-int v4, v8, v9

    .line 260
    .local v4, matchedMask:I
    if-nez v4, :cond_15

    move v8, v10

    .line 261
    goto :goto_6

    .line 265
    :cond_15
    iget-boolean v8, p0, Ljava/io/FilePermission;->includeAll:Z

    if-eqz v8, :cond_1b

    move v8, v4

    .line 266
    goto :goto_6

    .line 270
    :cond_1b
    iget-boolean v8, v1, Ljava/io/FilePermission;->includeAll:Z

    if-eqz v8, :cond_21

    move v8, v10

    .line 271
    goto :goto_6

    .line 276
    :cond_21
    iget-object v8, p0, Ljava/io/FilePermission;->canonPath:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v7

    .line 277
    .local v7, thisLength:I
    iget-boolean v8, p0, Ljava/io/FilePermission;->allSubdir:Z

    if-eqz v8, :cond_3a

    const/4 v8, 0x2

    if-ne v7, v8, :cond_3a

    iget-object v8, v1, Ljava/io/FilePermission;->canonPath:Ljava/lang/String;

    sget-object v9, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3a

    move v8, v4

    .line 279
    goto :goto_6

    .line 282
    :cond_3a
    iget-boolean v8, v1, Ljava/io/FilePermission;->allSubdir:Z

    if-eqz v8, :cond_44

    iget-boolean v8, p0, Ljava/io/FilePermission;->allSubdir:Z

    if-nez v8, :cond_44

    move v8, v10

    .line 283
    goto :goto_6

    .line 286
    :cond_44
    iget-boolean v8, v1, Ljava/io/FilePermission;->allDir:Z

    if-eqz v8, :cond_52

    iget-boolean v8, p0, Ljava/io/FilePermission;->allSubdir:Z

    if-nez v8, :cond_52

    iget-boolean v8, p0, Ljava/io/FilePermission;->allDir:Z

    if-nez v8, :cond_52

    move v8, v10

    .line 287
    goto :goto_6

    .line 290
    :cond_52
    const/4 v3, 0x0

    .line 291
    .local v3, includeDir:Z
    iget-object v8, v1, Ljava/io/FilePermission;->canonPath:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v6

    .line 293
    .local v6, pLength:I
    iget-boolean v8, p0, Ljava/io/FilePermission;->allDir:Z

    if-nez v8, :cond_61

    iget-boolean v8, p0, Ljava/io/FilePermission;->allSubdir:Z

    if-eqz v8, :cond_63

    .line 294
    :cond_61
    add-int/lit8 v7, v7, -0x1

    .line 296
    :cond_63
    iget-boolean v8, v1, Ljava/io/FilePermission;->allDir:Z

    if-nez v8, :cond_6b

    iget-boolean v8, v1, Ljava/io/FilePermission;->allSubdir:Z

    if-eqz v8, :cond_6d

    .line 297
    :cond_6b
    add-int/lit8 v6, v6, -0x1

    .line 299
    :cond_6d
    const/4 v2, 0x0

    .local v2, i:I
    :goto_6e
    if-ge v2, v6, :cond_9f

    .line 300
    iget-object v8, v1, Ljava/io/FilePermission;->canonPath:Ljava/lang/String;

    invoke-virtual {v8, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 302
    .local v5, pChar:C
    if-lt v2, v7, :cond_91

    .line 303
    if-ne v2, v7, :cond_85

    .line 306
    iget-boolean v8, p0, Ljava/io/FilePermission;->allSubdir:Z

    if-eqz v8, :cond_80

    move v8, v4

    .line 307
    goto :goto_6

    .line 311
    :cond_80
    iget-boolean v8, p0, Ljava/io/FilePermission;->allDir:Z

    if-eqz v8, :cond_85

    .line 312
    const/4 v3, 0x1

    .line 316
    :cond_85
    if-nez v3, :cond_8a

    move v8, v10

    .line 317
    goto/16 :goto_6

    .line 325
    :cond_8a
    sget-char v8, Ljava/io/File;->separatorChar:C

    if-ne v5, v8, :cond_9c

    move v8, v10

    .line 326
    goto/16 :goto_6

    .line 330
    :cond_91
    iget-object v8, p0, Ljava/io/FilePermission;->canonPath:Ljava/lang/String;

    invoke-virtual {v8, v2}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-eq v8, v5, :cond_9c

    move v8, v10

    .line 331
    goto/16 :goto_6

    .line 299
    :cond_9c
    add-int/lit8 v2, v2, 0x1

    goto :goto_6e

    .line 337
    .end local v5           #pChar:C
    :cond_9f
    if-ne v6, v7, :cond_bf

    .line 338
    iget-boolean v8, p0, Ljava/io/FilePermission;->allSubdir:Z

    if-eqz v8, :cond_b3

    .line 340
    iget-boolean v8, v1, Ljava/io/FilePermission;->allSubdir:Z

    if-nez v8, :cond_ad

    iget-boolean v8, v1, Ljava/io/FilePermission;->allDir:Z

    if-eqz v8, :cond_b0

    :cond_ad
    move v8, v4

    goto/16 :goto_6

    :cond_b0
    move v8, v10

    goto/16 :goto_6

    .line 342
    :cond_b3
    iget-boolean v8, p0, Ljava/io/FilePermission;->allDir:Z

    iget-boolean v9, v1, Ljava/io/FilePermission;->allDir:Z

    if-ne v8, v9, :cond_bc

    move v8, v4

    goto/16 :goto_6

    :cond_bc
    move v8, v10

    goto/16 :goto_6

    .line 344
    :cond_bf
    if-eqz v3, :cond_c4

    move v8, v4

    goto/16 :goto_6

    :cond_c4
    move v8, v10

    goto/16 :goto_6
.end method

.method public newPermissionCollection()Ljava/security/PermissionCollection;
    .registers 2

    .prologue
    .line 356
    new-instance v0, Ljava/io/FilePermissionCollection;

    invoke-direct {v0}, Ljava/io/FilePermissionCollection;-><init>()V

    return-object v0
.end method
