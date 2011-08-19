.class public Ljunit/runner/TestCaseClassLoader;
.super Ljava/lang/ClassLoader;
.source "TestCaseClassLoader.java"


# static fields
.field static final EXCLUDED_FILE:Ljava/lang/String; = "excluded.properties"


# instance fields
.field private defaultExclusions:[Ljava/lang/String;

.field private fExcluded:Ljava/util/Vector;

.field private fPathItems:Ljava/util/Vector;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 43
    const-string v0, "java.class.path"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljunit/runner/TestCaseClassLoader;-><init>(Ljava/lang/String;)V

    .line 44
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 5
    .parameter "classPath"

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/ClassLoader;-><init>()V

    .line 28
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "junit.framework."

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "junit.extensions."

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "junit.runner."

    aput-object v2, v0, v1

    iput-object v0, p0, Ljunit/runner/TestCaseClassLoader;->defaultExclusions:[Ljava/lang/String;

    .line 51
    invoke-direct {p0, p1}, Ljunit/runner/TestCaseClassLoader;->scanPath(Ljava/lang/String;)V

    .line 52
    invoke-direct {p0}, Ljunit/runner/TestCaseClassLoader;->readExcludedPackages()V

    .line 53
    return-void
.end method

.method private getClassData(Ljava/io/File;)[B
    .registers 7
    .parameter "f"

    .prologue
    .line 142
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 143
    .local v3, stream:Ljava/io/FileInputStream;
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    const/16 v4, 0x3e8

    invoke-direct {v2, v4}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 144
    .local v2, out:Ljava/io/ByteArrayOutputStream;
    const/16 v4, 0x3e8

    new-array v0, v4, [B

    .line 146
    .local v0, b:[B
    :goto_10
    invoke-virtual {v3, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v1

    .local v1, n:I
    const/4 v4, -0x1

    if-eq v1, v4, :cond_1f

    .line 147
    const/4 v4, 0x0

    invoke-virtual {v2, v0, v4, v1}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_10

    .line 152
    .end local v0           #b:[B
    .end local v1           #n:I
    .end local v2           #out:Ljava/io/ByteArrayOutputStream;
    .end local v3           #stream:Ljava/io/FileInputStream;
    :catch_1c
    move-exception v4

    .line 154
    const/4 v4, 0x0

    :goto_1e
    return-object v4

    .line 148
    .restart local v0       #b:[B
    .restart local v1       #n:I
    .restart local v2       #out:Ljava/io/ByteArrayOutputStream;
    .restart local v3       #stream:Ljava/io/FileInputStream;
    :cond_1f
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    .line 149
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 150
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_28
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_28} :catch_1c

    move-result-object v4

    goto :goto_1e
.end method

.method private loadFileData(Ljava/lang/String;Ljava/lang/String;)[B
    .registers 5
    .parameter "path"
    .parameter "fileName"

    .prologue
    .line 133
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_10

    .line 135
    invoke-direct {p0, v0}, Ljunit/runner/TestCaseClassLoader;->getClassData(Ljava/io/File;)[B

    move-result-object v1

    .line 137
    :goto_f
    return-object v1

    :cond_10
    const/4 v1, 0x0

    goto :goto_f
.end method

.method private loadJarData(Ljava/lang/String;Ljava/lang/String;)[B
    .registers 16
    .parameter "path"
    .parameter "fileName"

    .prologue
    const/4 v12, 0x0

    .line 158
    const/4 v8, 0x0

    .line 159
    .local v8, zipFile:Ljava/util/zip/ZipFile;
    const/4 v7, 0x0

    .line 160
    .local v7, stream:Ljava/io/InputStream;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 161
    .local v0, archive:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v10

    if-nez v10, :cond_10

    move-object v10, v12

    .line 190
    :goto_f
    return-object v10

    .line 164
    :cond_10
    :try_start_10
    new-instance v9, Ljava/util/zip/ZipFile;

    invoke-direct {v9, v0}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_15} :catch_1e

    .line 168
    .end local v8           #zipFile:Ljava/util/zip/ZipFile;
    .local v9, zipFile:Ljava/util/zip/ZipFile;
    invoke-virtual {v9, p2}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v2

    .line 169
    .local v2, entry:Ljava/util/zip/ZipEntry;
    if-nez v2, :cond_22

    move-object v8, v9

    .end local v9           #zipFile:Ljava/util/zip/ZipFile;
    .restart local v8       #zipFile:Ljava/util/zip/ZipFile;
    move-object v10, v12

    .line 170
    goto :goto_f

    .line 165
    .end local v2           #entry:Ljava/util/zip/ZipEntry;
    :catch_1e
    move-exception v10

    move-object v3, v10

    .local v3, io:Ljava/io/IOException;
    move-object v10, v12

    .line 166
    goto :goto_f

    .line 171
    .end local v3           #io:Ljava/io/IOException;
    .end local v8           #zipFile:Ljava/util/zip/ZipFile;
    .restart local v2       #entry:Ljava/util/zip/ZipEntry;
    .restart local v9       #zipFile:Ljava/util/zip/ZipFile;
    :cond_22
    invoke-virtual {v2}, Ljava/util/zip/ZipEntry;->getSize()J

    move-result-wide v10

    long-to-int v6, v10

    .line 173
    .local v6, size:I
    :try_start_27
    invoke-virtual {v9, v2}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v7

    .line 174
    new-array v1, v6, [B

    .line 175
    .local v1, data:[B
    const/4 v5, 0x0

    .line 176
    .local v5, pos:I
    :goto_2e
    if-ge v5, v6, :cond_38

    .line 177
    array-length v10, v1

    sub-int/2addr v10, v5

    invoke-virtual {v7, v1, v5, v10}, Ljava/io/InputStream;->read([BII)I

    move-result v4

    .line 178
    .local v4, n:I
    add-int/2addr v5, v4

    .line 179
    goto :goto_2e

    .line 180
    .end local v4           #n:I
    :cond_38
    invoke-virtual {v9}, Ljava/util/zip/ZipFile;->close()V
    :try_end_3b
    .catchall {:try_start_27 .. :try_end_3b} :catchall_4c
    .catch Ljava/io/IOException; {:try_start_27 .. :try_end_3b} :catch_43

    .line 185
    if-eqz v7, :cond_40

    .line 186
    :try_start_3d
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_40
    .catch Ljava/io/IOException; {:try_start_3d .. :try_end_40} :catch_53

    :cond_40
    :goto_40
    move-object v8, v9

    .end local v9           #zipFile:Ljava/util/zip/ZipFile;
    .restart local v8       #zipFile:Ljava/util/zip/ZipFile;
    move-object v10, v1

    .line 188
    goto :goto_f

    .line 182
    .end local v1           #data:[B
    .end local v5           #pos:I
    .end local v8           #zipFile:Ljava/util/zip/ZipFile;
    .restart local v9       #zipFile:Ljava/util/zip/ZipFile;
    :catch_43
    move-exception v10

    .line 185
    if-eqz v7, :cond_49

    .line 186
    :try_start_46
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_49
    .catch Ljava/io/IOException; {:try_start_46 .. :try_end_49} :catch_55

    :cond_49
    :goto_49
    move-object v8, v9

    .end local v9           #zipFile:Ljava/util/zip/ZipFile;
    .restart local v8       #zipFile:Ljava/util/zip/ZipFile;
    move-object v10, v12

    .line 190
    goto :goto_f

    .line 184
    .end local v8           #zipFile:Ljava/util/zip/ZipFile;
    .restart local v9       #zipFile:Ljava/util/zip/ZipFile;
    :catchall_4c
    move-exception v10

    .line 185
    if-eqz v7, :cond_52

    .line 186
    :try_start_4f
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_52
    .catch Ljava/io/IOException; {:try_start_4f .. :try_end_52} :catch_57

    .line 188
    :cond_52
    :goto_52
    throw v10

    .line 187
    .restart local v1       #data:[B
    .restart local v5       #pos:I
    :catch_53
    move-exception v10

    goto :goto_40

    .end local v1           #data:[B
    .end local v5           #pos:I
    :catch_55
    move-exception v10

    goto :goto_49

    :catch_57
    move-exception v11

    goto :goto_52
.end method

.method private lookupClassData(Ljava/lang/String;)[B
    .registers 9
    .parameter "className"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 111
    const/4 v0, 0x0

    .line 112
    .local v0, data:[B
    const/4 v2, 0x0

    .local v2, i:I
    :goto_2
    iget-object v4, p0, Ljunit/runner/TestCaseClassLoader;->fPathItems:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v4

    if-ge v2, v4, :cond_42

    .line 113
    iget-object v4, p0, Ljunit/runner/TestCaseClassLoader;->fPathItems:Ljava/util/Vector;

    invoke-virtual {v4, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 114
    .local v3, path:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v5, 0x2e

    const/16 v6, 0x2f

    invoke-virtual {p1, v5, v6}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".class"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 115
    .local v1, fileName:Ljava/lang/String;
    invoke-virtual {p0, v3}, Ljunit/runner/TestCaseClassLoader;->isJar(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3a

    .line 116
    invoke-direct {p0, v3, v1}, Ljunit/runner/TestCaseClassLoader;->loadJarData(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    .line 120
    :goto_37
    if-eqz v0, :cond_3f

    .line 121
    return-object v0

    .line 118
    :cond_3a
    invoke-direct {p0, v3, v1}, Ljunit/runner/TestCaseClassLoader;->loadFileData(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    goto :goto_37

    .line 112
    :cond_3f
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 123
    .end local v1           #fileName:Ljava/lang/String;
    .end local v3           #path:Ljava/lang/String;
    :cond_42
    new-instance v4, Ljava/lang/ClassNotFoundException;

    invoke-direct {v4, p1}, Ljava/lang/ClassNotFoundException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method private readExcludedPackages()V
    .registers 10

    .prologue
    .line 194
    new-instance v6, Ljava/util/Vector;

    const/16 v7, 0xa

    invoke-direct {v6, v7}, Ljava/util/Vector;-><init>(I)V

    iput-object v6, p0, Ljunit/runner/TestCaseClassLoader;->fExcluded:Ljava/util/Vector;

    .line 195
    const/4 v1, 0x0

    .local v1, i:I
    :goto_a
    iget-object v6, p0, Ljunit/runner/TestCaseClassLoader;->defaultExclusions:[Ljava/lang/String;

    array-length v6, v6

    if-ge v1, v6, :cond_1b

    .line 196
    iget-object v6, p0, Ljunit/runner/TestCaseClassLoader;->fExcluded:Ljava/util/Vector;

    iget-object v7, p0, Ljunit/runner/TestCaseClassLoader;->defaultExclusions:[Ljava/lang/String;

    aget-object v7, v7, v1

    invoke-virtual {v6, v7}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 195
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 198
    :cond_1b
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    const-string v7, "excluded.properties"

    invoke-virtual {v6, v7}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    .line 199
    .local v2, is:Ljava/io/InputStream;
    if-nez v2, :cond_28

    .line 224
    :cond_27
    :goto_27
    return-void

    .line 201
    :cond_28
    new-instance v4, Ljava/util/Properties;

    invoke-direct {v4}, Ljava/util/Properties;-><init>()V

    .line 203
    .local v4, p:Ljava/util/Properties;
    :try_start_2d
    invoke-virtual {v4, v2}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V
    :try_end_30
    .catchall {:try_start_2d .. :try_end_30} :catchall_79
    .catch Ljava/io/IOException; {:try_start_2d .. :try_end_30} :catch_72

    .line 209
    :try_start_30
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_33
    .catch Ljava/io/IOException; {:try_start_30 .. :try_end_33} :catch_7e

    .line 213
    :goto_33
    invoke-virtual {v4}, Ljava/util/Properties;->propertyNames()Ljava/util/Enumeration;

    move-result-object v0

    .local v0, e:Ljava/util/Enumeration;
    :cond_37
    :goto_37
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v6

    if-eqz v6, :cond_27

    .line 214
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 215
    .local v3, key:Ljava/lang/String;
    const-string v6, "excluded."

    invoke-virtual {v3, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_37

    .line 216
    invoke-virtual {v4, v3}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 217
    .local v5, path:Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 218
    const-string v6, "*"

    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_66

    .line 219
    const/4 v6, 0x0

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    const/4 v8, 0x1

    sub-int/2addr v7, v8

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 220
    :cond_66
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_37

    .line 221
    iget-object v6, p0, Ljunit/runner/TestCaseClassLoader;->fExcluded:Ljava/util/Vector;

    invoke-virtual {v6, v5}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_37

    .line 205
    .end local v0           #e:Ljava/util/Enumeration;
    .end local v3           #key:Ljava/lang/String;
    .end local v5           #path:Ljava/lang/String;
    :catch_72
    move-exception v0

    .line 209
    .local v0, e:Ljava/io/IOException;
    :try_start_73
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_76
    .catch Ljava/io/IOException; {:try_start_73 .. :try_end_76} :catch_77

    goto :goto_27

    .line 210
    :catch_77
    move-exception v6

    goto :goto_27

    .line 208
    .end local v0           #e:Ljava/io/IOException;
    :catchall_79
    move-exception v6

    .line 209
    :try_start_7a
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_7d
    .catch Ljava/io/IOException; {:try_start_7a .. :try_end_7d} :catch_80

    .line 211
    :goto_7d
    throw v6

    .line 210
    :catch_7e
    move-exception v6

    goto :goto_33

    :catch_80
    move-exception v7

    goto :goto_7d
.end method

.method private scanPath(Ljava/lang/String;)V
    .registers 6
    .parameter "classPath"

    .prologue
    .line 56
    const-string v2, "path.separator"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 57
    .local v0, separator:Ljava/lang/String;
    new-instance v2, Ljava/util/Vector;

    const/16 v3, 0xa

    invoke-direct {v2, v3}, Ljava/util/Vector;-><init>(I)V

    iput-object v2, p0, Ljunit/runner/TestCaseClassLoader;->fPathItems:Ljava/util/Vector;

    .line 58
    new-instance v1, Ljava/util/StringTokenizer;

    invoke-direct {v1, p1, v0}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    .local v1, st:Ljava/util/StringTokenizer;
    :goto_14
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v2

    if-eqz v2, :cond_24

    .line 60
    iget-object v2, p0, Ljunit/runner/TestCaseClassLoader;->fPathItems:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_14

    .line 62
    :cond_24
    return-void
.end method


# virtual methods
.method public getResource(Ljava/lang/String;)Ljava/net/URL;
    .registers 3
    .parameter "name"

    .prologue
    .line 65
    invoke-static {p1}, Ljava/lang/ClassLoader;->getSystemResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v0

    return-object v0
.end method

.method public getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;
    .registers 3
    .parameter "name"

    .prologue
    .line 69
    invoke-static {p1}, Ljava/lang/ClassLoader;->getSystemResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public isExcluded(Ljava/lang/String;)Z
    .registers 4
    .parameter "name"

    .prologue
    .line 73
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v1, p0, Ljunit/runner/TestCaseClassLoader;->fExcluded:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-ge v0, v1, :cond_1c

    .line 74
    iget-object v1, p0, Ljunit/runner/TestCaseClassLoader;->fExcluded:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 75
    const/4 v1, 0x1

    .line 78
    :goto_18
    return v1

    .line 73
    :cond_19
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 78
    :cond_1c
    const/4 v1, 0x0

    goto :goto_18
.end method

.method isJar(Ljava/lang/String;)Z
    .registers 3
    .parameter "pathEntry"

    .prologue
    .line 127
    const-string v0, ".jar"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_18

    const-string v0, ".apk"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_18

    const-string v0, ".zip"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1a

    :cond_18
    const/4 v0, 0x1

    :goto_19
    return v0

    :cond_1a
    const/4 v0, 0x0

    goto :goto_19
.end method

.method public declared-synchronized loadClass(Ljava/lang/String;Z)Ljava/lang/Class;
    .registers 8
    .parameter "name"
    .parameter "resolve"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 84
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0, p1}, Ljunit/runner/TestCaseClassLoader;->findLoadedClass(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_25

    move-result-object v0

    .line 85
    .local v0, c:Ljava/lang/Class;
    if-eqz v0, :cond_a

    move-object v1, v0

    .line 107
    .end local v0           #c:Ljava/lang/Class;
    .local v1, c:Ljava/lang/Class;
    :goto_8
    monitor-exit p0

    return-object v1

    .line 91
    .end local v1           #c:Ljava/lang/Class;
    .restart local v0       #c:Ljava/lang/Class;
    :cond_a
    :try_start_a
    invoke-virtual {p0, p1}, Ljunit/runner/TestCaseClassLoader;->isExcluded(Ljava/lang/String;)Z
    :try_end_d
    .catchall {:try_start_a .. :try_end_d} :catchall_25

    move-result v3

    if-eqz v3, :cond_17

    .line 93
    :try_start_10
    invoke-virtual {p0, p1}, Ljunit/runner/TestCaseClassLoader;->findSystemClass(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_13
    .catchall {:try_start_10 .. :try_end_13} :catchall_25
    .catch Ljava/lang/ClassNotFoundException; {:try_start_10 .. :try_end_13} :catch_16

    move-result-object v0

    move-object v1, v0

    .line 94
    .end local v0           #c:Ljava/lang/Class;
    .restart local v1       #c:Ljava/lang/Class;
    goto :goto_8

    .line 95
    .end local v1           #c:Ljava/lang/Class;
    .restart local v0       #c:Ljava/lang/Class;
    :catch_16
    move-exception v3

    .line 99
    :cond_17
    if-nez v0, :cond_2e

    .line 100
    :try_start_19
    invoke-direct {p0, p1}, Ljunit/runner/TestCaseClassLoader;->lookupClassData(Ljava/lang/String;)[B

    move-result-object v2

    .line 101
    .local v2, data:[B
    if-nez v2, :cond_28

    .line 102
    new-instance v3, Ljava/lang/ClassNotFoundException;

    invoke-direct {v3}, Ljava/lang/ClassNotFoundException;-><init>()V

    throw v3
    :try_end_25
    .catchall {:try_start_19 .. :try_end_25} :catchall_25

    .line 84
    .end local v0           #c:Ljava/lang/Class;
    .end local v2           #data:[B
    :catchall_25
    move-exception v3

    monitor-exit p0

    throw v3

    .line 103
    .restart local v0       #c:Ljava/lang/Class;
    .restart local v2       #data:[B
    :cond_28
    const/4 v3, 0x0

    :try_start_29
    array-length v4, v2

    invoke-virtual {p0, p1, v2, v3, v4}, Ljunit/runner/TestCaseClassLoader;->defineClass(Ljava/lang/String;[BII)Ljava/lang/Class;

    move-result-object v0

    .line 105
    .end local v2           #data:[B
    :cond_2e
    if-eqz p2, :cond_33

    .line 106
    invoke-virtual {p0, v0}, Ljunit/runner/TestCaseClassLoader;->resolveClass(Ljava/lang/Class;)V
    :try_end_33
    .catchall {:try_start_29 .. :try_end_33} :catchall_25

    :cond_33
    move-object v1, v0

    .line 107
    .end local v0           #c:Ljava/lang/Class;
    .restart local v1       #c:Ljava/lang/Class;
    goto :goto_8
.end method
