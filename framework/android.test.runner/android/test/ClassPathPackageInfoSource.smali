.class public Landroid/test/ClassPathPackageInfoSource;
.super Ljava/lang/Object;
.source "ClassPathPackageInfoSource.java"


# static fields
.field private static final CLASS_EXTENSION:Ljava/lang/String; = ".class"

.field private static final CLASS_LOADER:Ljava/lang/ClassLoader;

.field private static apkPaths:[Ljava/lang/String;


# instance fields
.field private final cache:Landroid/test/SimpleCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/test/SimpleCache",
            "<",
            "Ljava/lang/String;",
            "Landroid/test/ClassPathPackageInfo;",
            ">;"
        }
    .end annotation
.end field

.field private classLoader:Ljava/lang/ClassLoader;

.field private final classPath:[Ljava/lang/String;

.field private final jarFiles:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/io/File;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 44
    const-class v0, Landroid/test/ClassPathPackageInfoSource;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    sput-object v0, Landroid/test/ClassPathPackageInfoSource;->CLASS_LOADER:Ljava/lang/ClassLoader;

    return-void
.end method

.method constructor <init>()V
    .registers 2

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Landroid/test/ClassPathPackageInfoSource$1;

    invoke-direct {v0, p0}, Landroid/test/ClassPathPackageInfoSource$1;-><init>(Landroid/test/ClassPathPackageInfoSource;)V

    iput-object v0, p0, Landroid/test/ClassPathPackageInfoSource;->cache:Landroid/test/SimpleCache;

    .line 60
    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Landroid/test/ClassPathPackageInfoSource;->jarFiles:Ljava/util/Map;

    .line 64
    invoke-static {}, Landroid/test/ClassPathPackageInfoSource;->getClassPath()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/test/ClassPathPackageInfoSource;->classPath:[Ljava/lang/String;

    .line 65
    return-void
.end method

.method static synthetic access$000(Landroid/test/ClassPathPackageInfoSource;Ljava/lang/String;)Landroid/test/ClassPathPackageInfo;
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40
    invoke-direct {p0, p1}, Landroid/test/ClassPathPackageInfoSource;->createPackageInfo(Ljava/lang/String;)Landroid/test/ClassPathPackageInfo;

    move-result-object v0

    return-object v0
.end method

.method private createPackageInfo(Ljava/lang/String;)Landroid/test/ClassPathPackageInfo;
    .registers 11
    .parameter "packageName"

    .prologue
    .line 77
    new-instance v4, Ljava/util/TreeSet;

    invoke-direct {v4}, Ljava/util/TreeSet;-><init>()V

    .line 78
    .local v4, subpackageNames:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v1, Ljava/util/TreeSet;

    invoke-direct {v1}, Ljava/util/TreeSet;-><init>()V

    .line 79
    .local v1, classNames:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-static {}, Lcom/google/android/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v5

    .line 80
    .local v5, topLevelClasses:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Class<*>;>;"
    invoke-direct {p0, p1, v1, v4}, Landroid/test/ClassPathPackageInfoSource;->findClasses(Ljava/lang/String;Ljava/util/Set;Ljava/util/Set;)V

    .line 81
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_15
    :goto_15
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 82
    .local v0, className:Ljava/lang/String;
    const-string v6, ".R"

    invoke-virtual {v0, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_15

    const-string v6, ".Manifest"

    invoke-virtual {v0, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_15

    .line 89
    const/4 v6, 0x0

    :try_start_32
    iget-object v7, p0, Landroid/test/ClassPathPackageInfoSource;->classLoader:Ljava/lang/ClassLoader;

    if-eqz v7, :cond_69

    iget-object v7, p0, Landroid/test/ClassPathPackageInfoSource;->classLoader:Ljava/lang/ClassLoader;

    :goto_38
    invoke-static {v0, v6, v7}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_3f
    .catch Ljava/lang/ClassNotFoundException; {:try_start_32 .. :try_end_3f} :catch_40

    goto :goto_15

    .line 91
    :catch_40
    move-exception v6

    move-object v2, v6

    .line 94
    .local v2, e:Ljava/lang/ClassNotFoundException;
    const-string v6, "ClassPathPackageInfoSource"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Cannot load class. Make sure it is in your apk. Class name: \'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\'. Message: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Ljava/lang/ClassNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_15

    .line 89
    .end local v2           #e:Ljava/lang/ClassNotFoundException;
    :cond_69
    :try_start_69
    sget-object v7, Landroid/test/ClassPathPackageInfoSource;->CLASS_LOADER:Ljava/lang/ClassLoader;
    :try_end_6b
    .catch Ljava/lang/ClassNotFoundException; {:try_start_69 .. :try_end_6b} :catch_40

    goto :goto_38

    .line 99
    .end local v0           #className:Ljava/lang/String;
    :cond_6c
    new-instance v6, Landroid/test/ClassPathPackageInfo;

    invoke-direct {v6, p0, p1, v4, v5}, Landroid/test/ClassPathPackageInfo;-><init>(Landroid/test/ClassPathPackageInfoSource;Ljava/lang/String;Ljava/util/Set;Ljava/util/Set;)V

    return-object v6
.end method

.method private findClasses(Ljava/lang/String;Ljava/util/Set;Ljava/util/Set;)V
    .registers 25
    .parameter "packageName"
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 110
    .local p2, classNames:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    .local p3, subpackageNames:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object v0, v5

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v6, 0x2e

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 111
    .local v7, packagePrefix:Ljava/lang/String;
    const/16 v5, 0x2e

    const/16 v6, 0x2f

    invoke-virtual {v7, v5, v6}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v8

    .line 113
    .local v8, pathPrefix:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/test/ClassPathPackageInfoSource;->classPath:[Ljava/lang/String;

    move-object v12, v0

    .local v12, arr$:[Ljava/lang/String;
    move-object v0, v12

    array-length v0, v0

    move/from16 v19, v0

    .local v19, len$:I
    const/16 v17, 0x0

    .local v17, i$:I
    move/from16 v18, v17

    .end local v12           #arr$:[Ljava/lang/String;
    .end local v17           #i$:I
    .end local v19           #len$:I
    .local v18, i$:I
    :goto_2b
    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_f6

    aget-object v15, v12, v18

    .line 114
    .local v15, entryName:Ljava/lang/String;
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v15}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 118
    .local v6, classPathEntry:Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_52

    .line 120
    :try_start_3e
    const-string v5, ".apk"

    invoke-virtual {v15, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_57

    .line 121
    move-object/from16 v0, p0

    move-object v1, v15

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/test/ClassPathPackageInfoSource;->findClassesInApk(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;Ljava/util/Set;)V

    .line 113
    .end local v18           #i$:I
    :cond_52
    :goto_52
    add-int/lit8 v17, v18, 0x1

    .restart local v17       #i$:I
    move/from16 v18, v17

    .end local v17           #i$:I
    .restart local v18       #i$:I
    goto :goto_2b

    .line 122
    :cond_57
    const-string v5, "true"

    const-string v9, "android.vm.dexfile"

    const-string v10, "false"

    invoke-static {v9, v10}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8f

    .line 125
    sget-object v13, Landroid/test/ClassPathPackageInfoSource;->apkPaths:[Ljava/lang/String;

    .local v13, arr$:[Ljava/lang/String;
    move-object v0, v13

    array-length v0, v0

    move/from16 v20, v0

    .local v20, len$:I
    const/16 v17, 0x0

    .end local v18           #i$:I
    .restart local v17       #i$:I
    :goto_6f
    move/from16 v0, v17

    move/from16 v1, v20

    if-ge v0, v1, :cond_52

    aget-object v11, v13, v17

    .line 126
    .local v11, apkPath:Ljava/lang/String;
    new-instance v16, Ljava/io/File;

    move-object/from16 v0, v16

    move-object v1, v11

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 127
    .local v16, file:Ljava/io/File;
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/test/ClassPathPackageInfoSource;->scanForApkFiles(Ljava/io/File;Ljava/lang/String;Ljava/util/Set;Ljava/util/Set;)V

    .line 125
    add-int/lit8 v17, v17, 0x1

    goto :goto_6f

    .line 129
    .end local v11           #apkPath:Ljava/lang/String;
    .end local v13           #arr$:[Ljava/lang/String;
    .end local v16           #file:Ljava/io/File;
    .end local v17           #i$:I
    .end local v20           #len$:I
    .restart local v18       #i$:I
    :cond_8f
    const-string v5, ".jar"

    invoke-virtual {v15, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_cc

    .line 130
    move-object/from16 v0, p0

    move-object v1, v6

    move-object v2, v8

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/test/ClassPathPackageInfoSource;->findClassesInJar(Ljava/io/File;Ljava/lang/String;Ljava/util/Set;Ljava/util/Set;)V
    :try_end_a2
    .catch Ljava/io/IOException; {:try_start_3e .. :try_end_a2} :catch_a3

    goto :goto_52

    .line 139
    .end local v6           #classPathEntry:Ljava/io/File;
    .end local v7           #packagePrefix:Ljava/lang/String;
    .end local v8           #pathPrefix:Ljava/lang/String;
    .end local v18           #i$:I
    :catch_a3
    move-exception v5

    move-object v14, v5

    .line 140
    .local v14, e:Ljava/io/IOException;
    new-instance v5, Ljava/lang/AssertionError;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Can\'t read classpath entry "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ": "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v14}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v5

    .line 132
    .end local v14           #e:Ljava/io/IOException;
    .restart local v6       #classPathEntry:Ljava/io/File;
    .restart local v7       #packagePrefix:Ljava/lang/String;
    .restart local v8       #pathPrefix:Ljava/lang/String;
    .restart local v18       #i$:I
    :cond_cc
    :try_start_cc
    invoke-virtual {v6}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_dd

    move-object/from16 v5, p0

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    .line 133
    invoke-direct/range {v5 .. v10}, Landroid/test/ClassPathPackageInfoSource;->findClassesInDirectory(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;Ljava/util/Set;)V

    goto/16 :goto_52

    .line 136
    :cond_dd
    new-instance v5, Ljava/lang/AssertionError;

    new-instance v7, Ljava/lang/StringBuilder;

    .end local v7           #packagePrefix:Ljava/lang/String;
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Don\'t understand classpath entry "

    .end local v8           #pathPrefix:Ljava/lang/String;
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    .end local v6           #classPathEntry:Ljava/io/File;
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v5
    :try_end_f6
    .catch Ljava/io/IOException; {:try_start_cc .. :try_end_f6} :catch_a3

    .line 145
    .end local v15           #entryName:Ljava/lang/String;
    .restart local v7       #packagePrefix:Ljava/lang/String;
    .restart local v8       #pathPrefix:Ljava/lang/String;
    :cond_f6
    return-void
.end method

.method private findClassesInApk(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;Ljava/util/Set;)V
    .registers 13
    .parameter "apkPath"
    .parameter "packageName"
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 221
    .local p3, classNames:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    .local p4, subpackageNames:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .line 223
    .local v2, dexFile:Ldalvik/system/DexFile;
    :try_start_1
    new-instance v3, Ldalvik/system/DexFile;

    invoke-direct {v3, p1}, Ldalvik/system/DexFile;-><init>(Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_50
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_6} :catch_52

    .line 224
    .end local v2           #dexFile:Ldalvik/system/DexFile;
    .local v3, dexFile:Ldalvik/system/DexFile;
    :try_start_6
    invoke-virtual {v3}, Ldalvik/system/DexFile;->entries()Ljava/util/Enumeration;

    move-result-object v0

    .line 225
    .local v0, apkClassNames:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/lang/String;>;"
    :cond_a
    :goto_a
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v6

    if-eqz v6, :cond_4c

    .line 226
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 228
    .local v1, className:Ljava/lang/String;
    invoke-virtual {v1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 229
    move-object v5, p2

    .line 230
    .local v5, subPackageName:Ljava/lang/String;
    const/16 v6, 0x2e

    invoke-virtual {v1, v6}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v4

    .line 231
    .local v4, lastPackageSeparator:I
    if-lez v4, :cond_2a

    .line 232
    const/4 v6, 0x0

    invoke-virtual {v1, v6, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 234
    :cond_2a
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v7

    if-le v6, v7, :cond_3d

    .line 235
    invoke-interface {p4, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_a

    .line 241
    .end local v0           #apkClassNames:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/lang/String;>;"
    .end local v1           #className:Ljava/lang/String;
    .end local v4           #lastPackageSeparator:I
    .end local v5           #subPackageName:Ljava/lang/String;
    :catch_38
    move-exception v6

    move-object v2, v3

    .line 247
    .end local v3           #dexFile:Ldalvik/system/DexFile;
    .restart local v2       #dexFile:Ldalvik/system/DexFile;
    :goto_3a
    if-eqz v2, :cond_3c

    .line 252
    :cond_3c
    :goto_3c
    return-void

    .line 236
    .end local v2           #dexFile:Ldalvik/system/DexFile;
    .restart local v0       #apkClassNames:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/lang/String;>;"
    .restart local v1       #className:Ljava/lang/String;
    .restart local v3       #dexFile:Ldalvik/system/DexFile;
    .restart local v4       #lastPackageSeparator:I
    .restart local v5       #subPackageName:Ljava/lang/String;
    :cond_3d
    invoke-static {v1}, Landroid/test/ClassPathPackageInfoSource;->isToplevelClass(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 237
    invoke-interface {p3, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_46
    .catchall {:try_start_6 .. :try_end_46} :catchall_47
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_46} :catch_38

    goto :goto_a

    .line 247
    .end local v0           #apkClassNames:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/lang/String;>;"
    .end local v1           #className:Ljava/lang/String;
    .end local v4           #lastPackageSeparator:I
    .end local v5           #subPackageName:Ljava/lang/String;
    :catchall_47
    move-exception v6

    move-object v2, v3

    .end local v3           #dexFile:Ldalvik/system/DexFile;
    .restart local v2       #dexFile:Ldalvik/system/DexFile;
    :goto_49
    if-eqz v2, :cond_4b

    :cond_4b
    throw v6

    .end local v2           #dexFile:Ldalvik/system/DexFile;
    .restart local v0       #apkClassNames:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/lang/String;>;"
    .restart local v3       #dexFile:Ldalvik/system/DexFile;
    :cond_4c
    if-eqz v3, :cond_54

    move-object v2, v3

    .end local v3           #dexFile:Ldalvik/system/DexFile;
    .restart local v2       #dexFile:Ldalvik/system/DexFile;
    goto :goto_3c

    .end local v0           #apkClassNames:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/lang/String;>;"
    :catchall_50
    move-exception v6

    goto :goto_49

    .line 241
    :catch_52
    move-exception v6

    goto :goto_3a

    .end local v2           #dexFile:Ldalvik/system/DexFile;
    .restart local v0       #apkClassNames:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/lang/String;>;"
    .restart local v3       #dexFile:Ldalvik/system/DexFile;
    :cond_54
    move-object v2, v3

    .end local v3           #dexFile:Ldalvik/system/DexFile;
    .restart local v2       #dexFile:Ldalvik/system/DexFile;
    goto :goto_3c
.end method

.method private findClassesInDirectory(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;Ljava/util/Set;)V
    .registers 14
    .parameter "classDir"
    .parameter "packagePrefix"
    .parameter "pathPrefix"
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 169
    .local p4, classNames:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    .local p5, subpackageNames:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1, p3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 171
    .local v1, directory:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_5d

    .line 172
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .local v0, arr$:[Ljava/io/File;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_11
    if-ge v3, v4, :cond_5d

    aget-object v2, v0, v3

    .line 173
    .local v2, f:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    .line 174
    .local v5, name:Ljava/lang/String;
    const-string v6, ".class"

    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_42

    invoke-static {v5}, Landroid/test/ClassPathPackageInfoSource;->isToplevelClass(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_42

    .line 175
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v5}, Landroid/test/ClassPathPackageInfoSource;->getClassName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {p4, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 172
    :cond_3f
    :goto_3f
    add-int/lit8 v3, v3, 0x1

    goto :goto_11

    .line 176
    :cond_42
    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v6

    if-eqz v6, :cond_3f

    .line 177
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {p5, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_3f

    .line 181
    .end local v0           #arr$:[Ljava/io/File;
    .end local v2           #f:Ljava/io/File;
    .end local v3           #i$:I
    .end local v4           #len$:I
    .end local v5           #name:Ljava/lang/String;
    :cond_5d
    return-void
.end method

.method private findClassesInJar(Ljava/io/File;Ljava/lang/String;Ljava/util/Set;Ljava/util/Set;)V
    .registers 14
    .parameter "jarFile"
    .parameter "pathPrefix"
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .local p3, classNames:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    .local p4, subpackageNames:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    const/16 v8, 0x2e

    const/16 v7, 0x2f

    .line 190
    invoke-direct {p0, p1}, Landroid/test/ClassPathPackageInfoSource;->getJarEntries(Ljava/io/File;)Ljava/util/Set;

    move-result-object v1

    .line 192
    .local v1, entryNames:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v1, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_f

    .line 211
    :cond_e
    return-void

    .line 195
    :cond_f
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v5

    .line 196
    .local v5, prefixLength:I
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_17
    :goto_17
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 197
    .local v0, entryName:Ljava/lang/String;
    invoke-virtual {v0, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_17

    .line 198
    const-string v6, ".class"

    invoke-virtual {v0, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_17

    .line 201
    invoke-virtual {v0, v7, v5}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    .line 202
    .local v3, index:I
    if-ltz v3, :cond_44

    .line 203
    const/4 v6, 0x0

    invoke-virtual {v0, v6, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v4

    .line 204
    .local v4, p:Ljava/lang/String;
    invoke-interface {p4, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_17

    .line 205
    .end local v4           #p:Ljava/lang/String;
    :cond_44
    invoke-static {v0}, Landroid/test/ClassPathPackageInfoSource;->isToplevelClass(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_17

    .line 206
    invoke-static {v0}, Landroid/test/ClassPathPackageInfoSource;->getClassName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v6

    invoke-interface {p3, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_17
.end method

.method private static getClassName(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .parameter "className"

    .prologue
    .line 306
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const-string v2, ".class"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    sub-int v0, v1, v2

    .line 307
    .local v0, classNameEnd:I
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static getClassPath()[Ljava/lang/String;
    .registers 4

    .prologue
    .line 315
    const-string v2, "java.class.path"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 316
    .local v0, classPath:Ljava/lang/String;
    const-string v2, "path.separator"

    const-string v3, ":"

    invoke-static {v2, v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 317
    .local v1, separator:Ljava/lang/String;
    invoke-static {v1}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private getJarEntries(Ljava/io/File;)Ljava/util/Set;
    .registers 11
    .parameter "jarFile"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v8, 0x2f

    .line 259
    iget-object v6, p0, Landroid/test/ClassPathPackageInfoSource;->jarFiles:Ljava/util/Map;

    invoke-interface {v6, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Set;

    .line 260
    .local v2, entryNames:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    if-nez v2, :cond_51

    .line 261
    invoke-static {}, Lcom/google/android/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v2

    .line 262
    new-instance v5, Ljava/util/zip/ZipFile;

    invoke-direct {v5, p1}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V

    .line 263
    .local v5, zipFile:Ljava/util/zip/ZipFile;
    invoke-virtual {v5}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object v0

    .line 264
    .local v0, entries:Ljava/util/Enumeration;,"Ljava/util/Enumeration<+Ljava/util/zip/ZipEntry;>;"
    :cond_19
    :goto_19
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v6

    if-eqz v6, :cond_4c

    .line 265
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/zip/ZipEntry;

    invoke-virtual {v6}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v1

    .line 266
    .local v1, entryName:Ljava/lang/String;
    const-string v6, ".class"

    invoke-virtual {v1, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_19

    .line 268
    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 282
    invoke-virtual {v1, v8}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    .line 284
    .local v3, lastIndex:I
    :cond_38
    const/4 v6, 0x0

    add-int/lit8 v7, v3, 0x1

    invoke-virtual {v1, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 285
    .local v4, packageName:Ljava/lang/String;
    invoke-interface {v2, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 286
    const/4 v6, 0x1

    sub-int v6, v3, v6

    invoke-virtual {v1, v8, v6}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v3

    .line 287
    if-gtz v3, :cond_38

    goto :goto_19

    .line 290
    .end local v1           #entryName:Ljava/lang/String;
    .end local v3           #lastIndex:I
    .end local v4           #packageName:Ljava/lang/String;
    :cond_4c
    iget-object v6, p0, Landroid/test/ClassPathPackageInfoSource;->jarFiles:Ljava/util/Map;

    invoke-interface {v6, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 292
    .end local v0           #entries:Ljava/util/Enumeration;,"Ljava/util/Enumeration<+Ljava/util/zip/ZipEntry;>;"
    .end local v5           #zipFile:Ljava/util/zip/ZipFile;
    :cond_51
    return-object v2
.end method

.method private static isToplevelClass(Ljava/lang/String;)Z
    .registers 2
    .parameter "fileName"

    .prologue
    .line 299
    const/16 v0, 0x24

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-gez v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method private scanForApkFiles(Ljava/io/File;Ljava/lang/String;Ljava/util/Set;Ljava/util/Set;)V
    .registers 12
    .parameter "source"
    .parameter "packageName"
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 149
    .local p3, classNames:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    .local p4, subpackageNames:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    const-string v6, ".apk"

    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_14

    .line 150
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5, p2, p3, p4}, Landroid/test/ClassPathPackageInfoSource;->findClassesInApk(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;Ljava/util/Set;)V

    .line 159
    :cond_13
    return-void

    .line 152
    :cond_14
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 153
    .local v2, files:[Ljava/io/File;
    if-eqz v2, :cond_13

    .line 154
    move-object v0, v2

    .local v0, arr$:[Ljava/io/File;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_1d
    if-ge v3, v4, :cond_13

    aget-object v1, v0, v3

    .line 155
    .local v1, file:Ljava/io/File;
    invoke-direct {p0, v1, p2, p3, p4}, Landroid/test/ClassPathPackageInfoSource;->scanForApkFiles(Ljava/io/File;Ljava/lang/String;Ljava/util/Set;Ljava/util/Set;)V

    .line 154
    add-int/lit8 v3, v3, 0x1

    goto :goto_1d
.end method

.method public static setApkPaths([Ljava/lang/String;)V
    .registers 1
    .parameter "apkPaths"

    .prologue
    .line 69
    sput-object p0, Landroid/test/ClassPathPackageInfoSource;->apkPaths:[Ljava/lang/String;

    .line 70
    return-void
.end method


# virtual methods
.method public getPackageInfo(Ljava/lang/String;)Landroid/test/ClassPathPackageInfo;
    .registers 3
    .parameter "pkgName"

    .prologue
    .line 73
    iget-object v0, p0, Landroid/test/ClassPathPackageInfoSource;->cache:Landroid/test/SimpleCache;

    invoke-virtual {v0, p1}, Landroid/test/SimpleCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/test/ClassPathPackageInfo;

    return-object p0
.end method

.method public setClassLoader(Ljava/lang/ClassLoader;)V
    .registers 2
    .parameter "classLoader"

    .prologue
    .line 321
    iput-object p1, p0, Landroid/test/ClassPathPackageInfoSource;->classLoader:Ljava/lang/ClassLoader;

    .line 322
    return-void
.end method
