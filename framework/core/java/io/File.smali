.class public Ljava/io/File;
.super Ljava/lang/Object;
.source "File.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Comparable",
        "<",
        "Ljava/io/File;",
        ">;"
    }
.end annotation


# static fields
.field public static final pathSeparator:Ljava/lang/String; = null

#the value of this static final field might be set in the static constructor
.field public static final pathSeparatorChar:C = '\u0000'

.field public static final separator:Ljava/lang/String; = null

#the value of this static final field might be set in the static constructor
.field public static final separatorChar:C = '\u0000'

.field private static final serialVersionUID:J = 0x42da4450e0de4ffL


# instance fields
.field private transient absolutePath:Ljava/lang/String;

.field private path:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    const/4 v2, 0x0

    .line 112
    const-string v0, "file.separator"

    const-string v1, "/"

    invoke-static {v0, v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    sput-char v0, Ljava/io/File;->separatorChar:C

    .line 113
    const-string v0, "path.separator"

    const-string v1, ":"

    invoke-static {v0, v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    sput-char v0, Ljava/io/File;->pathSeparatorChar:C

    .line 114
    sget-char v0, Ljava/io/File;->separatorChar:C

    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    .line 115
    sget-char v0, Ljava/io/File;->pathSeparatorChar:C

    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ljava/io/File;->pathSeparator:Ljava/lang/String;

    .line 116
    return-void
.end method

.method public constructor <init>(Ljava/io/File;Ljava/lang/String;)V
    .registers 4
    .parameter "dir"
    .parameter "name"

    .prologue
    .line 129
    if-nez p1, :cond_7

    const/4 v0, 0x0

    :goto_3
    invoke-direct {p0, v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    return-void

    .line 129
    :cond_7
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    goto :goto_3
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2
    .parameter "path"

    .prologue
    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 139
    invoke-direct {p0, p1}, Ljava/io/File;->init(Ljava/lang/String;)V

    .line 140
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .parameter "dirPath"
    .parameter "name"

    .prologue
    .line 153
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 154
    if-nez p2, :cond_b

    .line 155
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 157
    :cond_b
    if-eqz p1, :cond_13

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 158
    :cond_13
    invoke-direct {p0, p2}, Ljava/io/File;->init(Ljava/lang/String;)V

    .line 164
    :goto_16
    return-void

    .line 159
    :cond_17
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 160
    invoke-direct {p0, p1}, Ljava/io/File;->init(Ljava/lang/String;)V

    goto :goto_16

    .line 162
    :cond_21
    invoke-direct {p0, p1, p2}, Ljava/io/File;->join(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/io/File;->init(Ljava/lang/String;)V

    goto :goto_16
.end method

.method public constructor <init>(Ljava/net/URI;)V
    .registers 3
    .parameter "uri"

    .prologue
    .line 180
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 182
    invoke-direct {p0, p1}, Ljava/io/File;->checkURI(Ljava/net/URI;)V

    .line 183
    invoke-virtual {p1}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/io/File;->init(Ljava/lang/String;)V

    .line 184
    return-void
.end method

.method private static native canExecuteImpl(Ljava/lang/String;)Z
.end method

.method private static native canReadImpl(Ljava/lang/String;)Z
.end method

.method private static native canWriteImpl(Ljava/lang/String;)Z
.end method

.method private checkURI(Ljava/net/URI;)V
    .registers 6
    .parameter "uri"

    .prologue
    .line 239
    invoke-virtual {p1}, Ljava/net/URI;->isAbsolute()Z

    move-result v1

    if-nez v1, :cond_1f

    .line 240
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "URI is not absolute: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 241
    :cond_1f
    invoke-virtual {p1}, Ljava/net/URI;->getRawSchemeSpecificPart()Ljava/lang/String;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_44

    .line 242
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "URI is not hierarchical: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 244
    :cond_44
    const-string v1, "file"

    invoke-virtual {p1}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_69

    .line 245
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expected file scheme in URI: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 247
    :cond_69
    invoke-virtual {p1}, Ljava/net/URI;->getRawPath()Ljava/lang/String;

    move-result-object v0

    .line 248
    .local v0, rawPath:Ljava/lang/String;
    if-eqz v0, :cond_75

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_8e

    .line 249
    :cond_75
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expected non-empty path in URI: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 251
    :cond_8e
    invoke-virtual {p1}, Ljava/net/URI;->getRawAuthority()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_ad

    .line 252
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Found authority in URI: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 254
    :cond_ad
    invoke-virtual {p1}, Ljava/net/URI;->getRawQuery()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_cc

    .line 255
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Found query in URI: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 257
    :cond_cc
    invoke-virtual {p1}, Ljava/net/URI;->getRawFragment()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_eb

    .line 258
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Found fragment in URI: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 260
    :cond_eb
    return-void
.end method

.method private static native createNewFileImpl(Ljava/lang/String;)Z
.end method

.method public static createTempFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .registers 3
    .parameter "prefix"
    .parameter "suffix"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1136
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public static createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;
    .registers 9
    .parameter "prefix"
    .parameter "suffix"
    .parameter "directory"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1165
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x3

    if-ge v3, v4, :cond_f

    .line 1166
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "prefix must be at least 3 characters"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1168
    :cond_f
    if-nez p1, :cond_13

    .line 1169
    const-string p1, ".tmp"

    .line 1171
    :cond_13
    move-object v2, p2

    .line 1172
    .local v2, tmpDirFile:Ljava/io/File;
    if-nez v2, :cond_2a

    .line 1173
    new-instance v3, Lorg/apache/harmony/luni/util/PriviAction;

    const-string v4, "java.io.tmpdir"

    const-string v5, "."

    invoke-direct {v3, v4, v5}, Lorg/apache/harmony/luni/util/PriviAction;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v3}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1175
    .local v1, tmpDir:Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    .end local v2           #tmpDirFile:Ljava/io/File;
    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1179
    .end local v1           #tmpDir:Ljava/lang/String;
    .restart local v2       #tmpDirFile:Ljava/io/File;
    :cond_2a
    new-instance v0, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    new-instance v4, Ljava/util/Random;

    invoke-direct {v4}, Ljava/util/Random;-><init>()V

    invoke-virtual {v4}, Ljava/util/Random;->nextInt()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1180
    .local v0, result:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    move-result v3

    if-eqz v3, :cond_2a

    .line 1181
    return-object v0
.end method

.method private static native deleteImpl(Ljava/lang/String;)Z
.end method

.method private static native existsImpl(Ljava/lang/String;)Z
.end method

.method private filenamesToFiles([Ljava/lang/String;)[Ljava/io/File;
    .registers 7
    .parameter "filenames"

    .prologue
    .line 1022
    if-nez p1, :cond_4

    .line 1023
    const/4 v3, 0x0

    .line 1030
    :goto_3
    return-object v3

    .line 1025
    :cond_4
    array-length v0, p1

    .line 1026
    .local v0, count:I
    new-array v2, v0, [Ljava/io/File;

    .line 1027
    .local v2, result:[Ljava/io/File;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_8
    if-ge v1, v0, :cond_16

    .line 1028
    new-instance v3, Ljava/io/File;

    aget-object v4, p1, v1

    invoke-direct {v3, p0, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    aput-object v3, v2, v1

    .line 1027
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_16
    move-object v3, v2

    .line 1030
    goto :goto_3
.end method

.method private fixSlashes(Ljava/lang/String;)Ljava/lang/String;
    .registers 11
    .parameter "origPath"

    .prologue
    .line 204
    const/4 v2, 0x0

    .line 205
    .local v2, lastWasSlash:Z
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v6

    .line 206
    .local v6, newPath:[C
    array-length v3, v6

    .line 207
    .local v3, length:I
    const/4 v4, 0x0

    .line 208
    .local v4, newLength:I
    const/4 v1, 0x0

    .local v1, i:I
    move v5, v4

    .end local v4           #newLength:I
    .local v5, newLength:I
    :goto_9
    if-ge v1, v3, :cond_24

    .line 209
    aget-char v0, v6, v1

    .line 210
    .local v0, ch:C
    const/16 v7, 0x2f

    if-ne v0, v7, :cond_1e

    .line 211
    if-nez v2, :cond_38

    .line 212
    add-int/lit8 v4, v5, 0x1

    .end local v5           #newLength:I
    .restart local v4       #newLength:I
    sget-char v7, Ljava/io/File;->separatorChar:C

    aput-char v7, v6, v5

    .line 213
    const/4 v2, 0x1

    .line 208
    :goto_1a
    add-int/lit8 v1, v1, 0x1

    move v5, v4

    .end local v4           #newLength:I
    .restart local v5       #newLength:I
    goto :goto_9

    .line 216
    :cond_1e
    add-int/lit8 v4, v5, 0x1

    .end local v5           #newLength:I
    .restart local v4       #newLength:I
    aput-char v0, v6, v5

    .line 217
    const/4 v2, 0x0

    goto :goto_1a

    .line 221
    .end local v0           #ch:C
    .end local v4           #newLength:I
    .restart local v5       #newLength:I
    :cond_24
    if-eqz v2, :cond_36

    const/4 v7, 0x1

    if-le v5, v7, :cond_36

    .line 222
    add-int/lit8 v4, v5, -0x1

    .line 225
    .end local v5           #newLength:I
    .restart local v4       #newLength:I
    :goto_2b
    if-eq v4, v3, :cond_34

    new-instance v7, Ljava/lang/String;

    const/4 v8, 0x0

    invoke-direct {v7, v6, v8, v4}, Ljava/lang/String;-><init>([CII)V

    :goto_33
    return-object v7

    :cond_34
    move-object v7, p1

    goto :goto_33

    .end local v4           #newLength:I
    .restart local v5       #newLength:I
    :cond_36
    move v4, v5

    .end local v5           #newLength:I
    .restart local v4       #newLength:I
    goto :goto_2b

    .end local v4           #newLength:I
    .restart local v0       #ch:C
    .restart local v5       #newLength:I
    :cond_38
    move v4, v5

    .end local v5           #newLength:I
    .restart local v4       #newLength:I
    goto :goto_1a
.end method

.method private getAbsoluteName()Ljava/lang/String;
    .registers 6

    .prologue
    const/16 v4, 0x2f

    .line 1283
    invoke-virtual {p0}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v0

    .line 1284
    .local v0, f:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 1286
    .local v1, name:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_35

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    sget-char v3, Ljava/io/File;->separatorChar:C

    if-eq v2, v3, :cond_35

    .line 1288
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1291
    :cond_35
    sget-char v2, Ljava/io/File;->separatorChar:C

    if-eq v2, v4, :cond_3f

    .line 1292
    sget-char v2, Ljava/io/File;->separatorChar:C

    invoke-virtual {v1, v2, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    .line 1294
    :cond_3f
    return-object v1
.end method

.method private static native getFreeSpaceImpl(Ljava/lang/String;)J
.end method

.method private static native getTotalSpaceImpl(Ljava/lang/String;)J
.end method

.method private static native getUsableSpaceImpl(Ljava/lang/String;)J
.end method

.method private init(Ljava/lang/String;)V
    .registers 8
    .parameter "dirtyPath"

    .prologue
    const/4 v5, 0x0

    .line 189
    invoke-direct {p0, p1}, Ljava/io/File;->fixSlashes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 190
    .local v0, cleanPath:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_1c

    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v3

    sget-char v4, Ljava/io/File;->separatorChar:C

    if-ne v3, v4, :cond_1c

    const/4 v3, 0x1

    move v1, v3

    .line 191
    .local v1, isAbsolute:Z
    :goto_15
    if-eqz v1, :cond_1e

    .line 192
    iput-object v0, p0, Ljava/io/File;->absolutePath:Ljava/lang/String;

    iput-object v0, p0, Ljava/io/File;->path:Ljava/lang/String;

    .line 199
    :goto_1b
    return-void

    .end local v1           #isAbsolute:Z
    :cond_1c
    move v1, v5

    .line 190
    goto :goto_15

    .line 194
    .restart local v1       #isAbsolute:Z
    :cond_1e
    new-instance v3, Lorg/apache/harmony/luni/util/PriviAction;

    const-string v4, "user.dir"

    invoke-direct {v3, v4}, Lorg/apache/harmony/luni/util/PriviAction;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 195
    .local v2, userDir:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_48

    move-object v3, v2

    :goto_32
    iput-object v3, p0, Ljava/io/File;->absolutePath:Ljava/lang/String;

    .line 197
    iget-object v3, p0, Ljava/io/File;->absolutePath:Ljava/lang/String;

    iget-object v4, p0, Ljava/io/File;->absolutePath:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Ljava/io/File;->path:Ljava/lang/String;

    goto :goto_1b

    .line 195
    :cond_48
    invoke-direct {p0, v2, v0}, Ljava/io/File;->join(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_32
.end method

.method private static native isDirectoryImpl(Ljava/lang/String;)Z
.end method

.method private static native isFileImpl(Ljava/lang/String;)Z
.end method

.method private join(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 9
    .parameter "prefix"
    .parameter "suffix"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 230
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 231
    .local v1, prefixLength:I
    if-lez v1, :cond_38

    sub-int v2, v1, v5

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    sget-char v3, Ljava/io/File;->separatorChar:C

    if-ne v2, v3, :cond_38

    move v0, v5

    .line 232
    .local v0, haveSlash:Z
    :goto_13
    if-nez v0, :cond_24

    .line 233
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_3a

    invoke-virtual {p2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v2

    sget-char v3, Ljava/io/File;->separatorChar:C

    if-ne v2, v3, :cond_3a

    move v0, v5

    .line 235
    :cond_24
    :goto_24
    if-eqz v0, :cond_3c

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_37
    return-object v2

    .end local v0           #haveSlash:Z
    :cond_38
    move v0, v4

    .line 231
    goto :goto_13

    .restart local v0       #haveSlash:Z
    :cond_3a
    move v0, v4

    .line 233
    goto :goto_24

    .line 235
    :cond_3c
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-char v3, Ljava/io/File;->separatorChar:C

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_37
.end method

.method private static native lastModifiedImpl(Ljava/lang/String;)J
.end method

.method private static native lengthImpl(Ljava/lang/String;)J
.end method

.method private static native listImpl(Ljava/lang/String;)[Ljava/lang/String;
.end method

.method public static listRoots()[Ljava/io/File;
    .registers 4

    .prologue
    .line 271
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/io/File;

    const/4 v1, 0x0

    new-instance v2, Ljava/io/File;

    const-string v3, "/"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    aput-object v2, v0, v1

    return-object v0
.end method

.method private static native mkdirImpl(Ljava/lang/String;)Z
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .registers 5
    .parameter "stream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 1303
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 1304
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readChar()C

    move-result v0

    .line 1305
    .local v0, inSeparator:C
    iget-object v1, p0, Ljava/io/File;->path:Ljava/lang/String;

    sget-char v2, Ljava/io/File;->separatorChar:C

    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Ljava/io/File;->init(Ljava/lang/String;)V

    .line 1306
    return-void
.end method

.method private static native readlink(Ljava/lang/String;)Ljava/lang/String;
.end method

.method private static native realpath(Ljava/lang/String;)Ljava/lang/String;
.end method

.method private static native renameToImpl(Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method private static native setExecutableImpl(Ljava/lang/String;ZZ)Z
.end method

.method private static native setLastModifiedImpl(Ljava/lang/String;J)Z
.end method

.method private static native setReadableImpl(Ljava/lang/String;ZZ)Z
.end method

.method private static native setWritableImpl(Ljava/lang/String;ZZ)Z
.end method

.method public static native symlink(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .registers 3
    .parameter "stream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1298
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 1299
    sget-char v0, Ljava/io/File;->separatorChar:C

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeChar(I)V

    .line 1300
    return-void
.end method


# virtual methods
.method public canExecute()Z
    .registers 3

    .prologue
    .line 289
    iget-object v1, p0, Ljava/io/File;->path:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 290
    const/4 v1, 0x0

    .line 296
    :goto_9
    return v1

    .line 292
    :cond_a
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    .line 293
    .local v0, security:Ljava/lang/SecurityManager;
    if-eqz v0, :cond_15

    .line 294
    iget-object v1, p0, Ljava/io/File;->path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/SecurityManager;->checkExec(Ljava/lang/String;)V

    .line 296
    :cond_15
    iget-object v1, p0, Ljava/io/File;->absolutePath:Ljava/lang/String;

    invoke-static {v1}, Ljava/io/File;->canExecuteImpl(Ljava/lang/String;)Z

    move-result v1

    goto :goto_9
.end method

.method public canRead()Z
    .registers 3

    .prologue
    .line 309
    iget-object v1, p0, Ljava/io/File;->path:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 310
    const/4 v1, 0x0

    .line 316
    :goto_9
    return v1

    .line 312
    :cond_a
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    .line 313
    .local v0, security:Ljava/lang/SecurityManager;
    if-eqz v0, :cond_15

    .line 314
    iget-object v1, p0, Ljava/io/File;->path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/SecurityManager;->checkRead(Ljava/lang/String;)V

    .line 316
    :cond_15
    iget-object v1, p0, Ljava/io/File;->absolutePath:Ljava/lang/String;

    invoke-static {v1}, Ljava/io/File;->canReadImpl(Ljava/lang/String;)Z

    move-result v1

    goto :goto_9
.end method

.method public canWrite()Z
    .registers 3

    .prologue
    .line 330
    iget-object v1, p0, Ljava/io/File;->path:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 331
    const/4 v1, 0x0

    .line 337
    :goto_9
    return v1

    .line 333
    :cond_a
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    .line 334
    .local v0, security:Ljava/lang/SecurityManager;
    if-eqz v0, :cond_15

    .line 335
    iget-object v1, p0, Ljava/io/File;->path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/SecurityManager;->checkWrite(Ljava/lang/String;)V

    .line 337
    :cond_15
    iget-object v1, p0, Ljava/io/File;->absolutePath:Ljava/lang/String;

    invoke-static {v1}, Ljava/io/File;->canWriteImpl(Ljava/lang/String;)Z

    move-result v1

    goto :goto_9
.end method

.method public compareTo(Ljava/io/File;)I
    .registers 4
    .parameter "another"

    .prologue
    .line 352
    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 3
    .parameter "x0"

    .prologue
    .line 62
    check-cast p1, Ljava/io/File;

    .end local p1
    invoke-virtual {p0, p1}, Ljava/io/File;->compareTo(Ljava/io/File;)I

    move-result v0

    return v0
.end method

.method public createNewFile()Z
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1108
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    .line 1109
    .local v0, security:Ljava/lang/SecurityManager;
    if-eqz v0, :cond_b

    .line 1110
    iget-object v1, p0, Ljava/io/File;->path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/SecurityManager;->checkWrite(Ljava/lang/String;)V

    .line 1112
    :cond_b
    iget-object v1, p0, Ljava/io/File;->path:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 1113
    new-instance v1, Ljava/io/IOException;

    const-string v2, "No such file or directory"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1115
    :cond_1b
    iget-object v1, p0, Ljava/io/File;->absolutePath:Ljava/lang/String;

    invoke-static {v1}, Ljava/io/File;->createNewFileImpl(Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public delete()Z
    .registers 3

    .prologue
    .line 368
    iget-object v1, p0, Ljava/io/File;->path:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 369
    const/4 v1, 0x0

    .line 375
    :goto_9
    return v1

    .line 371
    :cond_a
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    .line 372
    .local v0, security:Ljava/lang/SecurityManager;
    if-eqz v0, :cond_15

    .line 373
    iget-object v1, p0, Ljava/io/File;->path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/SecurityManager;->checkDelete(Ljava/lang/String;)V

    .line 375
    :cond_15
    iget-object v1, p0, Ljava/io/File;->absolutePath:Ljava/lang/String;

    invoke-static {v1}, Ljava/io/File;->deleteImpl(Ljava/lang/String;)Z

    move-result v1

    goto :goto_9
.end method

.method public deleteOnExit()V
    .registers 4

    .prologue
    .line 390
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    .line 391
    .local v0, security:Ljava/lang/SecurityManager;
    if-eqz v0, :cond_b

    .line 392
    iget-object v1, p0, Ljava/io/File;->path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/SecurityManager;->checkDelete(Ljava/lang/String;)V

    .line 394
    :cond_b
    invoke-static {}, Lorg/apache/harmony/luni/util/DeleteOnExit;->getInstance()Lorg/apache/harmony/luni/util/DeleteOnExit;

    move-result-object v1

    invoke-direct {p0}, Ljava/io/File;->getAbsoluteName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/harmony/luni/util/DeleteOnExit;->addFile(Ljava/lang/String;)V

    .line 395
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4
    .parameter "obj"

    .prologue
    .line 408
    instance-of v0, p1, Ljava/io/File;

    if-nez v0, :cond_6

    .line 409
    const/4 v0, 0x0

    .line 411
    .end local p1
    :goto_5
    return v0

    .restart local p1
    :cond_6
    iget-object v0, p0, Ljava/io/File;->path:Ljava/lang/String;

    check-cast p1, Ljava/io/File;

    .end local p1
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_5
.end method

.method public exists()Z
    .registers 3

    .prologue
    .line 426
    iget-object v1, p0, Ljava/io/File;->path:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 427
    const/4 v1, 0x0

    .line 433
    :goto_9
    return v1

    .line 429
    :cond_a
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    .line 430
    .local v0, security:Ljava/lang/SecurityManager;
    if-eqz v0, :cond_15

    .line 431
    iget-object v1, p0, Ljava/io/File;->path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/SecurityManager;->checkRead(Ljava/lang/String;)V

    .line 433
    :cond_15
    iget-object v1, p0, Ljava/io/File;->absolutePath:Ljava/lang/String;

    invoke-static {v1}, Ljava/io/File;->existsImpl(Ljava/lang/String;)Z

    move-result v1

    goto :goto_9
.end method

.method public getAbsoluteFile()Ljava/io/File;
    .registers 3

    .prologue
    .line 455
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public getAbsolutePath()Ljava/lang/String;
    .registers 2

    .prologue
    .line 447
    iget-object v0, p0, Ljava/io/File;->absolutePath:Ljava/lang/String;

    return-object v0
.end method

.method public getCanonicalFile()Ljava/io/File;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 503
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public getCanonicalPath()Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 482
    iget-object v0, p0, Ljava/io/File;->absolutePath:Ljava/lang/String;

    invoke-static {v0}, Ljava/io/File;->realpath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFreeSpace()J
    .registers 4

    .prologue
    .line 1355
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    .line 1356
    .local v0, security:Ljava/lang/SecurityManager;
    if-eqz v0, :cond_10

    .line 1357
    new-instance v1, Ljava/lang/RuntimePermission;

    const-string v2, "getFileSystemAttributes"

    invoke-direct {v1, v2}, Ljava/lang/RuntimePermission;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    .line 1359
    :cond_10
    iget-object v1, p0, Ljava/io/File;->absolutePath:Ljava/lang/String;

    invoke-static {v1}, Ljava/io/File;->getFreeSpaceImpl(Ljava/lang/String;)J

    move-result-wide v1

    return-wide v1
.end method

.method public getName()Ljava/lang/String;
    .registers 5

    .prologue
    .line 513
    iget-object v1, p0, Ljava/io/File;->path:Ljava/lang/String;

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 514
    .local v0, separatorIndex:I
    if-gez v0, :cond_d

    iget-object v1, p0, Ljava/io/File;->path:Ljava/lang/String;

    :goto_c
    return-object v1

    :cond_d
    iget-object v1, p0, Ljava/io/File;->path:Ljava/lang/String;

    add-int/lit8 v2, v0, 0x1

    iget-object v3, p0, Ljava/io/File;->path:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_c
.end method

.method public getParent()Ljava/lang/String;
    .registers 9

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, -0x1

    .line 525
    iget-object v3, p0, Ljava/io/File;->path:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v2

    .local v2, length:I
    const/4 v0, 0x0

    .line 526
    .local v0, firstInPath:I
    sget-char v3, Ljava/io/File;->separatorChar:C

    const/16 v4, 0x5c

    if-ne v3, v4, :cond_1e

    const/4 v3, 0x2

    if-le v2, v3, :cond_1e

    iget-object v3, p0, Ljava/io/File;->path:Ljava/lang/String;

    invoke-virtual {v3, v7}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x3a

    if-ne v3, v4, :cond_1e

    .line 527
    const/4 v0, 0x2

    .line 529
    :cond_1e
    iget-object v3, p0, Ljava/io/File;->path:Ljava/lang/String;

    sget-char v4, Ljava/io/File;->separatorChar:C

    invoke-virtual {v3, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 530
    .local v1, index:I
    if-ne v1, v5, :cond_2b

    if-lez v0, :cond_2b

    .line 531
    const/4 v1, 0x2

    .line 533
    :cond_2b
    if-eq v1, v5, :cond_39

    iget-object v3, p0, Ljava/io/File;->path:Ljava/lang/String;

    sub-int v4, v2, v7

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    sget-char v4, Ljava/io/File;->separatorChar:C

    if-ne v3, v4, :cond_3b

    .line 534
    :cond_39
    const/4 v3, 0x0

    .line 540
    :goto_3a
    return-object v3

    .line 536
    :cond_3b
    iget-object v3, p0, Ljava/io/File;->path:Ljava/lang/String;

    sget-char v4, Ljava/io/File;->separatorChar:C

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-ne v3, v1, :cond_58

    iget-object v3, p0, Ljava/io/File;->path:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    sget-char v4, Ljava/io/File;->separatorChar:C

    if-ne v3, v4, :cond_58

    .line 538
    iget-object v3, p0, Ljava/io/File;->path:Ljava/lang/String;

    add-int/lit8 v4, v1, 0x1

    invoke-virtual {v3, v6, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    goto :goto_3a

    .line 540
    :cond_58
    iget-object v3, p0, Ljava/io/File;->path:Ljava/lang/String;

    invoke-virtual {v3, v6, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    goto :goto_3a
.end method

.method public getParentFile()Ljava/io/File;
    .registers 3

    .prologue
    .line 551
    invoke-virtual {p0}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v0

    .line 552
    .local v0, tempParent:Ljava/lang/String;
    if-nez v0, :cond_8

    .line 553
    const/4 v1, 0x0

    .line 555
    :goto_7
    return-object v1

    :cond_8
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_7
.end method

.method public getPath()Ljava/lang/String;
    .registers 2

    .prologue
    .line 564
    iget-object v0, p0, Ljava/io/File;->path:Ljava/lang/String;

    return-object v0
.end method

.method public getTotalSpace()J
    .registers 4

    .prologue
    .line 1315
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    .line 1316
    .local v0, security:Ljava/lang/SecurityManager;
    if-eqz v0, :cond_10

    .line 1317
    new-instance v1, Ljava/lang/RuntimePermission;

    const-string v2, "getFileSystemAttributes"

    invoke-direct {v1, v2}, Ljava/lang/RuntimePermission;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    .line 1319
    :cond_10
    iget-object v1, p0, Ljava/io/File;->absolutePath:Ljava/lang/String;

    invoke-static {v1}, Ljava/io/File;->getTotalSpaceImpl(Ljava/lang/String;)J

    move-result-wide v1

    return-wide v1
.end method

.method public getUsableSpace()J
    .registers 4

    .prologue
    .line 1337
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    .line 1338
    .local v0, security:Ljava/lang/SecurityManager;
    if-eqz v0, :cond_10

    .line 1339
    new-instance v1, Ljava/lang/RuntimePermission;

    const-string v2, "getFileSystemAttributes"

    invoke-direct {v1, v2}, Ljava/lang/RuntimePermission;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    .line 1341
    :cond_10
    iget-object v1, p0, Ljava/io/File;->absolutePath:Ljava/lang/String;

    invoke-static {v1}, Ljava/io/File;->getUsableSpaceImpl(Ljava/lang/String;)J

    move-result-wide v1

    return-wide v1
.end method

.method public hashCode()I
    .registers 3

    .prologue
    .line 576
    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, 0x12d591

    xor-int/2addr v0, v1

    return v0
.end method

.method public isAbsolute()Z
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 589
    iget-object v0, p0, Ljava/io/File;->path:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_15

    iget-object v0, p0, Ljava/io/File;->path:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    sget-char v1, Ljava/io/File;->separatorChar:C

    if-ne v0, v1, :cond_15

    const/4 v0, 0x1

    :goto_14
    return v0

    :cond_15
    move v0, v2

    goto :goto_14
.end method

.method public isDirectory()Z
    .registers 3

    .prologue
    .line 603
    iget-object v1, p0, Ljava/io/File;->path:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 604
    const/4 v1, 0x0

    .line 610
    :goto_9
    return v1

    .line 606
    :cond_a
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    .line 607
    .local v0, security:Ljava/lang/SecurityManager;
    if-eqz v0, :cond_15

    .line 608
    iget-object v1, p0, Ljava/io/File;->path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/SecurityManager;->checkRead(Ljava/lang/String;)V

    .line 610
    :cond_15
    iget-object v1, p0, Ljava/io/File;->absolutePath:Ljava/lang/String;

    invoke-static {v1}, Ljava/io/File;->isDirectoryImpl(Ljava/lang/String;)Z

    move-result v1

    goto :goto_9
.end method

.method public isFile()Z
    .registers 3

    .prologue
    .line 625
    iget-object v1, p0, Ljava/io/File;->path:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 626
    const/4 v1, 0x0

    .line 632
    :goto_9
    return v1

    .line 628
    :cond_a
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    .line 629
    .local v0, security:Ljava/lang/SecurityManager;
    if-eqz v0, :cond_15

    .line 630
    iget-object v1, p0, Ljava/io/File;->path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/SecurityManager;->checkRead(Ljava/lang/String;)V

    .line 632
    :cond_15
    iget-object v1, p0, Ljava/io/File;->absolutePath:Ljava/lang/String;

    invoke-static {v1}, Ljava/io/File;->isFileImpl(Ljava/lang/String;)Z

    move-result v1

    goto :goto_9
.end method

.method public isHidden()Z
    .registers 4

    .prologue
    .line 650
    iget-object v1, p0, Ljava/io/File;->path:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 651
    const/4 v1, 0x0

    .line 657
    :goto_9
    return v1

    .line 653
    :cond_a
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    .line 654
    .local v0, security:Ljava/lang/SecurityManager;
    if-eqz v0, :cond_15

    .line 655
    iget-object v1, p0, Ljava/io/File;->path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/SecurityManager;->checkRead(Ljava/lang/String;)V

    .line 657
    :cond_15
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    goto :goto_9
.end method

.method public lastModified()J
    .registers 4

    .prologue
    .line 671
    iget-object v1, p0, Ljava/io/File;->path:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 672
    const-wide/16 v1, 0x0

    .line 678
    :goto_a
    return-wide v1

    .line 674
    :cond_b
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    .line 675
    .local v0, security:Ljava/lang/SecurityManager;
    if-eqz v0, :cond_16

    .line 676
    iget-object v1, p0, Ljava/io/File;->path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/SecurityManager;->checkRead(Ljava/lang/String;)V

    .line 678
    :cond_16
    iget-object v1, p0, Ljava/io/File;->absolutePath:Ljava/lang/String;

    invoke-static {v1}, Ljava/io/File;->lastModifiedImpl(Ljava/lang/String;)J

    move-result-wide v1

    goto :goto_a
.end method

.method public length()J
    .registers 4

    .prologue
    .line 869
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    .line 870
    .local v0, security:Ljava/lang/SecurityManager;
    if-eqz v0, :cond_b

    .line 871
    iget-object v1, p0, Ljava/io/File;->path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/SecurityManager;->checkRead(Ljava/lang/String;)V

    .line 873
    :cond_b
    iget-object v1, p0, Ljava/io/File;->absolutePath:Ljava/lang/String;

    invoke-static {v1}, Ljava/io/File;->lengthImpl(Ljava/lang/String;)J

    move-result-wide v1

    return-wide v1
.end method

.method public list()[Ljava/lang/String;
    .registers 3

    .prologue
    .line 894
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    .line 895
    .local v0, security:Ljava/lang/SecurityManager;
    if-eqz v0, :cond_b

    .line 896
    iget-object v1, p0, Ljava/io/File;->path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/SecurityManager;->checkRead(Ljava/lang/String;)V

    .line 898
    :cond_b
    iget-object v1, p0, Ljava/io/File;->path:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_15

    .line 899
    const/4 v1, 0x0

    .line 901
    :goto_14
    return-object v1

    :cond_15
    iget-object v1, p0, Ljava/io/File;->absolutePath:Ljava/lang/String;

    invoke-static {v1}, Ljava/io/File;->listImpl(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    goto :goto_14
.end method

.method public list(Ljava/io/FilenameFilter;)[Ljava/lang/String;
    .registers 9
    .parameter "filter"

    .prologue
    .line 927
    invoke-virtual {p0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v2

    .line 928
    .local v2, filenames:[Ljava/lang/String;
    if-eqz p1, :cond_8

    if-nez v2, :cond_a

    :cond_8
    move-object v6, v2

    .line 937
    .end local p0
    :goto_9
    return-object v6

    .line 931
    .restart local p0
    :cond_a
    new-instance v5, Ljava/util/ArrayList;

    array-length v6, v2

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 932
    .local v5, result:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    move-object v0, v2

    .local v0, arr$:[Ljava/lang/String;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_13
    if-ge v3, v4, :cond_23

    aget-object v1, v0, v3

    .line 933
    .local v1, filename:Ljava/lang/String;
    invoke-interface {p1, p0, v1}, Ljava/io/FilenameFilter;->accept(Ljava/io/File;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_20

    .line 934
    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 932
    :cond_20
    add-int/lit8 v3, v3, 0x1

    goto :goto_13

    .line 937
    .end local v1           #filename:Ljava/lang/String;
    :cond_23
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    new-array v6, v6, [Ljava/lang/String;

    invoke-interface {v5, v6}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, [Ljava/lang/String;

    move-object v6, p0

    goto :goto_9
.end method

.method public listFiles()[Ljava/io/File;
    .registers 2

    .prologue
    .line 954
    invoke-virtual {p0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/io/File;->filenamesToFiles([Ljava/lang/String;)[Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public listFiles(Ljava/io/FileFilter;)[Ljava/io/File;
    .registers 9
    .parameter "filter"

    .prologue
    .line 1002
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 1003
    .local v2, files:[Ljava/io/File;
    if-eqz p1, :cond_8

    if-nez v2, :cond_a

    :cond_8
    move-object v6, v2

    .line 1012
    .end local p0
    :goto_9
    return-object v6

    .line 1006
    .restart local p0
    :cond_a
    new-instance v5, Ljava/util/ArrayList;

    array-length v6, v2

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 1007
    .local v5, result:Ljava/util/List;,"Ljava/util/List<Ljava/io/File;>;"
    move-object v0, v2

    .local v0, arr$:[Ljava/io/File;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_13
    if-ge v3, v4, :cond_23

    aget-object v1, v0, v3

    .line 1008
    .local v1, file:Ljava/io/File;
    invoke-interface {p1, v1}, Ljava/io/FileFilter;->accept(Ljava/io/File;)Z

    move-result v6

    if-eqz v6, :cond_20

    .line 1009
    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1007
    :cond_20
    add-int/lit8 v3, v3, 0x1

    goto :goto_13

    .line 1012
    .end local v1           #file:Ljava/io/File;
    :cond_23
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    new-array v6, v6, [Ljava/io/File;

    invoke-interface {v5, v6}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, [Ljava/io/File;

    move-object v6, p0

    goto :goto_9
.end method

.method public listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;
    .registers 3
    .parameter "filter"

    .prologue
    .line 979
    invoke-virtual {p0, p1}, Ljava/io/File;->list(Ljava/io/FilenameFilter;)[Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/io/File;->filenamesToFiles([Ljava/lang/String;)[Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public mkdir()Z
    .registers 3

    .prologue
    .line 1048
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    .line 1049
    .local v0, security:Ljava/lang/SecurityManager;
    if-eqz v0, :cond_b

    .line 1050
    iget-object v1, p0, Ljava/io/File;->path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/SecurityManager;->checkWrite(Ljava/lang/String;)V

    .line 1052
    :cond_b
    iget-object v1, p0, Ljava/io/File;->absolutePath:Ljava/lang/String;

    invoke-static {v1}, Ljava/io/File;->mkdirImpl(Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public mkdirs()Z
    .registers 5

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1074
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_a

    move v1, v2

    .line 1090
    :goto_9
    return v1

    .line 1079
    :cond_a
    invoke-virtual {p0}, Ljava/io/File;->mkdir()Z

    move-result v1

    if-eqz v1, :cond_12

    move v1, v3

    .line 1080
    goto :goto_9

    .line 1083
    :cond_12
    invoke-virtual {p0}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v0

    .line 1085
    .local v0, parentDir:Ljava/lang/String;
    if-nez v0, :cond_1a

    move v1, v2

    .line 1086
    goto :goto_9

    .line 1090
    :cond_1a
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result v1

    if-eqz v1, :cond_2d

    invoke-virtual {p0}, Ljava/io/File;->mkdir()Z

    move-result v1

    if-eqz v1, :cond_2d

    move v1, v3

    goto :goto_9

    :cond_2d
    move v1, v2

    goto :goto_9
.end method

.method public renameTo(Ljava/io/File;)Z
    .registers 5
    .parameter "newPath"

    .prologue
    .line 1207
    iget-object v1, p0, Ljava/io/File;->path:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_10

    iget-object v1, p1, Ljava/io/File;->path:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_12

    .line 1208
    :cond_10
    const/4 v1, 0x0

    .line 1215
    :goto_11
    return v1

    .line 1210
    :cond_12
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    .line 1211
    .local v0, security:Ljava/lang/SecurityManager;
    if-eqz v0, :cond_22

    .line 1212
    iget-object v1, p0, Ljava/io/File;->path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/SecurityManager;->checkWrite(Ljava/lang/String;)V

    .line 1213
    iget-object v1, p1, Ljava/io/File;->path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/SecurityManager;->checkWrite(Ljava/lang/String;)V

    .line 1215
    :cond_22
    iget-object v1, p0, Ljava/io/File;->absolutePath:Ljava/lang/String;

    iget-object v2, p1, Ljava/io/File;->absolutePath:Ljava/lang/String;

    invoke-static {v1, v2}, Ljava/io/File;->renameToImpl(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    goto :goto_11
.end method

.method public setExecutable(Z)Z
    .registers 3
    .parameter "executable"

    .prologue
    .line 767
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Ljava/io/File;->setExecutable(ZZ)Z

    move-result v0

    return v0
.end method

.method public setExecutable(ZZ)Z
    .registers 5
    .parameter "executable"
    .parameter "ownerOnly"

    .prologue
    .line 751
    iget-object v1, p0, Ljava/io/File;->path:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 752
    const/4 v1, 0x0

    .line 758
    :goto_9
    return v1

    .line 754
    :cond_a
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    .line 755
    .local v0, security:Ljava/lang/SecurityManager;
    if-eqz v0, :cond_15

    .line 756
    iget-object v1, p0, Ljava/io/File;->path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/SecurityManager;->checkWrite(Ljava/lang/String;)V

    .line 758
    :cond_15
    iget-object v1, p0, Ljava/io/File;->absolutePath:Ljava/lang/String;

    invoke-static {v1, p1, p2}, Ljava/io/File;->setExecutableImpl(Ljava/lang/String;ZZ)Z

    move-result v1

    goto :goto_9
.end method

.method public setLastModified(J)Z
    .registers 6
    .parameter "time"

    .prologue
    .line 701
    iget-object v1, p0, Ljava/io/File;->path:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 702
    const/4 v1, 0x0

    .line 711
    :goto_9
    return v1

    .line 704
    :cond_a
    const-wide/16 v1, 0x0

    cmp-long v1, p1, v1

    if-gez v1, :cond_18

    .line 705
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "time < 0"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 707
    :cond_18
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    .line 708
    .local v0, security:Ljava/lang/SecurityManager;
    if-eqz v0, :cond_23

    .line 709
    iget-object v1, p0, Ljava/io/File;->path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/SecurityManager;->checkWrite(Ljava/lang/String;)V

    .line 711
    :cond_23
    iget-object v1, p0, Ljava/io/File;->absolutePath:Ljava/lang/String;

    invoke-static {v1, p1, p2}, Ljava/io/File;->setLastModifiedImpl(Ljava/lang/String;J)Z

    move-result v1

    goto :goto_9
.end method

.method public setReadOnly()Z
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 722
    invoke-virtual {p0, v0, v0}, Ljava/io/File;->setWritable(ZZ)Z

    move-result v0

    return v0
.end method

.method public setReadable(Z)Z
    .registers 3
    .parameter "readable"

    .prologue
    .line 811
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Ljava/io/File;->setReadable(ZZ)Z

    move-result v0

    return v0
.end method

.method public setReadable(ZZ)Z
    .registers 5
    .parameter "readable"
    .parameter "ownerOnly"

    .prologue
    .line 795
    iget-object v1, p0, Ljava/io/File;->path:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 796
    const/4 v1, 0x0

    .line 802
    :goto_9
    return v1

    .line 798
    :cond_a
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    .line 799
    .local v0, security:Ljava/lang/SecurityManager;
    if-eqz v0, :cond_15

    .line 800
    iget-object v1, p0, Ljava/io/File;->path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/SecurityManager;->checkWrite(Ljava/lang/String;)V

    .line 802
    :cond_15
    iget-object v1, p0, Ljava/io/File;->absolutePath:Ljava/lang/String;

    invoke-static {v1, p1, p2}, Ljava/io/File;->setReadableImpl(Ljava/lang/String;ZZ)Z

    move-result v1

    goto :goto_9
.end method

.method public setWritable(Z)Z
    .registers 3
    .parameter "writable"

    .prologue
    .line 853
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Ljava/io/File;->setWritable(ZZ)Z

    move-result v0

    return v0
.end method

.method public setWritable(ZZ)Z
    .registers 5
    .parameter "writable"
    .parameter "ownerOnly"

    .prologue
    .line 837
    iget-object v1, p0, Ljava/io/File;->path:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 838
    const/4 v1, 0x0

    .line 844
    :goto_9
    return v1

    .line 840
    :cond_a
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    .line 841
    .local v0, security:Ljava/lang/SecurityManager;
    if-eqz v0, :cond_15

    .line 842
    iget-object v1, p0, Ljava/io/File;->path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/SecurityManager;->checkWrite(Ljava/lang/String;)V

    .line 844
    :cond_15
    iget-object v1, p0, Ljava/io/File;->absolutePath:Ljava/lang/String;

    invoke-static {v1, p1, p2}, Ljava/io/File;->setWritableImpl(Ljava/lang/String;ZZ)Z

    move-result v1

    goto :goto_9
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1228
    iget-object v0, p0, Ljava/io/File;->path:Ljava/lang/String;

    return-object v0
.end method

.method public toURI()Ljava/net/URI;
    .registers 9

    .prologue
    const/4 v7, 0x0

    .line 1240
    invoke-direct {p0}, Ljava/io/File;->getAbsoluteName()Ljava/lang/String;

    move-result-object v3

    .line 1242
    .local v3, name:Ljava/lang/String;
    :try_start_5
    const-string v0, "/"

    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_31

    .line 1244
    new-instance v0, Ljava/net/URI;

    const-string v1, "file"

    const/4 v2, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const/16 v5, 0x2f

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .end local v3           #name:Ljava/lang/String;
    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Ljava/net/URI;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1253
    :goto_30
    return-object v0

    .line 1247
    .restart local v3       #name:Ljava/lang/String;
    :cond_31
    const-string v0, "//"

    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_48

    .line 1248
    new-instance v0, Ljava/net/URI;

    const-string v1, "file"

    const-string v2, ""

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Ljava/net/URI;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_30

    .line 1251
    .end local v3           #name:Ljava/lang/String;
    :catch_44
    move-exception v0

    move-object v6, v0

    .local v6, e:Ljava/net/URISyntaxException;
    move-object v0, v7

    .line 1253
    goto :goto_30

    .line 1250
    .end local v6           #e:Ljava/net/URISyntaxException;
    .restart local v3       #name:Ljava/lang/String;
    :cond_48
    new-instance v0, Ljava/net/URI;

    const-string v1, "file"

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Ljava/net/URI;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_52
    .catch Ljava/net/URISyntaxException; {:try_start_5 .. :try_end_52} :catch_44

    goto :goto_30
.end method

.method public toURL()Ljava/net/URL;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/4 v3, -0x1

    .line 1271
    invoke-direct {p0}, Ljava/io/File;->getAbsoluteName()Ljava/lang/String;

    move-result-object v4

    .line 1272
    .local v4, name:Ljava/lang/String;
    const-string v0, "/"

    invoke-virtual {v4, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_31

    .line 1274
    new-instance v0, Ljava/net/URL;

    const-string v1, "file"

    const-string v2, ""

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    const/16 v7, 0x2f

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .end local v4           #name:Ljava/lang/String;
    invoke-direct/range {v0 .. v5}, Ljava/net/URL;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/net/URLStreamHandler;)V

    .line 1279
    :goto_30
    return-object v0

    .line 1276
    .restart local v4       #name:Ljava/lang/String;
    :cond_31
    const-string v0, "//"

    invoke-virtual {v4, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_52

    .line 1277
    new-instance v0, Ljava/net/URL;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "file:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    goto :goto_30

    .line 1279
    :cond_52
    new-instance v0, Ljava/net/URL;

    const-string v1, "file"

    const-string v2, ""

    invoke-direct/range {v0 .. v5}, Ljava/net/URL;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/net/URLStreamHandler;)V

    goto :goto_30
.end method
