.class public Lcom/asus/cm/CMDlPkg;
.super Ljava/lang/Object;
.source "CMDlPkg.java"

# interfaces
.implements Lcom/asus/dmlib/vdm/PLDlPkg;


# static fields
.field private static final FILENAME:Ljava/lang/String; = "dlpkgfile"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "pContext"

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/asus/cm/CMDlPkg;->mContext:Landroid/content/Context;

    .line 20
    return-void
.end method


# virtual methods
.method public getFilename(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "arg0"

    .prologue
    .line 26
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getFilename() of DMDlPkg"

    invoke-static {v0, v1}, Lcom/asus/cm/util/CMLog;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    new-instance v0, Ljava/lang/String;

    const-string v1, "dlpkgfile"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public getMaxSize()I
    .locals 1

    .prologue
    .line 32
    const v0, 0xbebc200

    return v0
.end method

.method public remove(Ljava/lang/String;)V
    .locals 1
    .parameter "filename"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/asus/cm/CMDlPkg;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    .line 37
    return-void
.end method

.method public writeChunk(Ljava/lang/String;I[B)V
    .locals 6
    .parameter "filename"
    .parameter "offset"
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/asus/dmlib/vdm/VdmException;
        }
    .end annotation

    .prologue
    .line 41
    const/4 v1, 0x0

    .line 44
    .local v1, f:Ljava/io/FileOutputStream;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "===== writeChunk(), offset="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", original file length:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/asus/cm/CMDlPkg;->mContext:Landroid/content/Context;

    invoke-virtual {v4, p1}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", data="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    array-length v4, p3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/asus/cm/util/CMLog;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    :try_start_0
    iget-object v2, p0, Lcom/asus/cm/CMDlPkg;->mContext:Landroid/content/Context;

    if-nez p2, :cond_1

    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v2, p1, v3}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v1

    .line 48
    invoke-virtual {v1, p3}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 54
    if-eqz v1, :cond_0

    .line 56
    :try_start_1
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 75
    :cond_0
    :goto_1
    return-void

    .line 46
    :cond_1
    const v3, 0x8000

    goto :goto_0

    .line 57
    :catch_0
    move-exception v0

    .line 58
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 49
    .end local v0           #e:Ljava/io/IOException;
    :catch_1
    move-exception v2

    move-object v0, v2

    .line 50
    .local v0, e:Ljava/io/FileNotFoundException;
    :try_start_2
    new-instance v2, Lcom/asus/dmlib/vdm/VdmException;

    const-string v3, "File was not created"

    invoke-direct {v2, v3}, Lcom/asus/dmlib/vdm/VdmException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 54
    .end local v0           #e:Ljava/io/FileNotFoundException;
    :catchall_0
    move-exception v2

    if-eqz v1, :cond_2

    .line 56
    :try_start_3
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 59
    :cond_2
    :goto_2
    throw v2

    .line 51
    :catch_2
    move-exception v2

    move-object v0, v2

    .line 52
    .local v0, e:Ljava/io/IOException;
    :try_start_4
    new-instance v2, Lcom/asus/dmlib/vdm/VdmException;

    const-string v3, "File write error"

    invoke-direct {v2, v3}, Lcom/asus/dmlib/vdm/VdmException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 57
    .end local v0           #e:Ljava/io/IOException;
    :catch_3
    move-exception v0

    .line 58
    .restart local v0       #e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2
.end method
