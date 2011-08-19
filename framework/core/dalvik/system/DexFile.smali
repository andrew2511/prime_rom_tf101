.class public final Ldalvik/system/DexFile;
.super Ljava/lang/Object;
.source "DexFile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ldalvik/system/DexFile$DFEnum;
    }
.end annotation


# instance fields
.field private final guard:Ldalvik/system/CloseGuard;

.field private mCookie:I

.field private final mFileName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .registers 3
    .parameter "file"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 56
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ldalvik/system/DexFile;-><init>(Ljava/lang/String;)V

    .line 57
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 5
    .parameter "fileName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v1

    iput-object v1, p0, Ldalvik/system/DexFile;->guard:Ldalvik/system/CloseGuard;

    .line 77
    const-string v1, "android.vm.dexfile"

    const-string v2, "false"

    invoke-static {v1, v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 78
    .local v0, wantDex:Ljava/lang/String;
    const-string v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_21

    .line 79
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    const-string v2, "No dex in this VM"

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 81
    :cond_21
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p1, v1, v2}, Ldalvik/system/DexFile;->openDexFile(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Ldalvik/system/DexFile;->mCookie:I

    .line 82
    iput-object p1, p0, Ldalvik/system/DexFile;->mFileName:Ljava/lang/String;

    .line 83
    iget-object v1, p0, Ldalvik/system/DexFile;->guard:Ldalvik/system/CloseGuard;

    const-string v2, "close"

    invoke-virtual {v1, v2}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    .line 85
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 7
    .parameter "sourceName"
    .parameter "outputName"
    .parameter "flags"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v1

    iput-object v1, p0, Ldalvik/system/DexFile;->guard:Ldalvik/system/CloseGuard;

    .line 101
    const-string v1, "android.vm.dexfile"

    const-string v2, "false"

    invoke-static {v1, v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 102
    .local v0, wantDex:Ljava/lang/String;
    const-string v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_21

    .line 103
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    const-string v2, "No dex in this VM"

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 105
    :cond_21
    invoke-static {p1, p2, p3}, Ldalvik/system/DexFile;->openDexFile(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Ldalvik/system/DexFile;->mCookie:I

    .line 106
    iput-object p1, p0, Ldalvik/system/DexFile;->mFileName:Ljava/lang/String;

    .line 107
    iget-object v1, p0, Ldalvik/system/DexFile;->guard:Ldalvik/system/CloseGuard;

    const-string v2, "close"

    invoke-virtual {v1, v2}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    .line 109
    return-void
.end method

.method static synthetic access$000(Ldalvik/system/DexFile;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 33
    iget v0, p0, Ldalvik/system/DexFile;->mCookie:I

    return v0
.end method

.method static synthetic access$100(I)[Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 33
    invoke-static {p0}, Ldalvik/system/DexFile;->getClassNameList(I)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static native closeDexFile(I)V
.end method

.method private static native defineClass(Ljava/lang/String;Ljava/lang/ClassLoader;ILjava/security/ProtectionDomain;)Ljava/lang/Class;
.end method

.method private static native getClassNameList(I)[Ljava/lang/String;
.end method

.method public static native isDexOptNeeded(Ljava/lang/String;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public static loadDex(Ljava/lang/String;Ljava/lang/String;I)Ldalvik/system/DexFile;
    .registers 4
    .parameter "sourcePathName"
    .parameter "outputPathName"
    .parameter "flags"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 145
    new-instance v0, Ldalvik/system/DexFile;

    invoke-direct {v0, p0, p1, p2}, Ldalvik/system/DexFile;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    return-object v0
.end method

.method private static native openDexFile(Ljava/lang/String;Ljava/lang/String;I)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private static native openDexFile([B)I
.end method


# virtual methods
.method public close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 168
    iget-object v0, p0, Ldalvik/system/DexFile;->guard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->close()V

    .line 169
    iget v0, p0, Ldalvik/system/DexFile;->mCookie:I

    invoke-static {v0}, Ldalvik/system/DexFile;->closeDexFile(I)V

    .line 170
    const/4 v0, 0x0

    iput v0, p0, Ldalvik/system/DexFile;->mCookie:I

    .line 171
    return-void
.end method

.method public entries()Ljava/util/Enumeration;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 222
    new-instance v0, Ldalvik/system/DexFile$DFEnum;

    invoke-direct {v0, p0, p0}, Ldalvik/system/DexFile$DFEnum;-><init>(Ldalvik/system/DexFile;Ldalvik/system/DexFile;)V

    return-object v0
.end method

.method protected finalize()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 258
    :try_start_0
    iget-object v0, p0, Ldalvik/system/DexFile;->guard:Ldalvik/system/CloseGuard;

    if-eqz v0, :cond_9

    .line 259
    iget-object v0, p0, Ldalvik/system/DexFile;->guard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->warnIfOpen()V

    .line 261
    :cond_9
    invoke-virtual {p0}, Ldalvik/system/DexFile;->close()V
    :try_end_c
    .catchall {:try_start_0 .. :try_end_c} :catchall_10

    .line 263
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 265
    return-void

    .line 263
    :catchall_10
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 154
    iget-object v0, p0, Ldalvik/system/DexFile;->mFileName:Ljava/lang/String;

    return-object v0
.end method

.method public loadClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;
    .registers 6
    .parameter "name"
    .parameter "loader"

    .prologue
    .line 195
    const/16 v1, 0x2e

    const/16 v2, 0x2f

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    .line 196
    .local v0, slashName:Ljava/lang/String;
    invoke-virtual {p0, v0, p2}, Ldalvik/system/DexFile;->loadClassBinaryName(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v1

    return-object v1
.end method

.method public loadClassBinaryName(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;
    .registers 5
    .parameter "name"
    .parameter "loader"

    .prologue
    .line 207
    iget v0, p0, Ldalvik/system/DexFile;->mCookie:I

    const/4 v1, 0x0

    invoke-static {p1, p2, v0, v1}, Ldalvik/system/DexFile;->defineClass(Ljava/lang/String;Ljava/lang/ClassLoader;ILjava/security/ProtectionDomain;)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method
