.class public Landroid/renderscript/ScriptC;
.super Landroid/renderscript/Script;
.source "ScriptC.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ScriptC"


# direct methods
.method protected constructor <init>(ILandroid/renderscript/RenderScript;)V
    .registers 3
    .parameter "id"
    .parameter "rs"

    .prologue
    .line 45
    invoke-direct {p0, p1, p2}, Landroid/renderscript/Script;-><init>(ILandroid/renderscript/RenderScript;)V

    .line 46
    return-void
.end method

.method protected constructor <init>(Landroid/renderscript/RenderScript;Landroid/content/res/Resources;I)V
    .registers 7
    .parameter "rs"
    .parameter "resources"
    .parameter "resourceID"

    .prologue
    .line 57
    const/4 v1, 0x0

    invoke-direct {p0, v1, p1}, Landroid/renderscript/Script;-><init>(ILandroid/renderscript/RenderScript;)V

    .line 58
    invoke-static {p1, p2, p3}, Landroid/renderscript/ScriptC;->internalCreate(Landroid/renderscript/RenderScript;Landroid/content/res/Resources;I)I

    move-result v0

    .line 59
    .local v0, id:I
    if-nez v0, :cond_12

    .line 60
    new-instance v1, Landroid/renderscript/RSRuntimeException;

    const-string v2, "Loading of ScriptC script failed."

    invoke-direct {v1, v2}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 62
    :cond_12
    invoke-virtual {p0, v0}, Landroid/renderscript/ScriptC;->setID(I)V

    .line 63
    return-void
.end method

.method private static declared-synchronized internalCreate(Landroid/renderscript/RenderScript;Landroid/content/res/Resources;I)I
    .registers 11
    .parameter "rs"
    .parameter "resources"
    .parameter "resourceID"

    .prologue
    .line 69
    const-class v4, Landroid/renderscript/ScriptC;

    monitor-enter v4

    :try_start_3
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_75

    move-result-object v1

    .line 72
    .local v1, is:Ljava/io/InputStream;
    const/16 v0, 0x400

    :try_start_9
    new-array v0, v0, [B

    .line 73
    .local v0, pgm:[B
    const/4 v2, 0x0

    .local v2, pgmLength:I
    move v3, v2

    .end local v2           #pgmLength:I
    .local v3, pgmLength:I
    move-object v2, v0

    .line 75
    .end local v0           #pgm:[B
    .local v2, pgm:[B
    :goto_e
    array-length v0, v2

    sub-int/2addr v0, v3

    .line 76
    .local v0, bytesLeft:I
    if-nez v0, :cond_20

    .line 77
    array-length v0, v2

    .end local v0           #bytesLeft:I
    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [B

    .line 78
    .local v0, buf2:[B
    const/4 v5, 0x0

    const/4 v6, 0x0

    array-length v7, v2

    invoke-static {v2, v5, v0, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 79
    move-object v2, v0

    .line 80
    array-length v0, v2

    .end local v0           #buf2:[B
    sub-int/2addr v0, v3

    .line 82
    .local v0, bytesLeft:I
    :cond_20
    invoke-virtual {v1, v2, v3, v0}, Ljava/io/InputStream;->read([BII)I
    :try_end_23
    .catchall {:try_start_9 .. :try_end_23} :catchall_69

    move-result v0

    .line 83
    .local v0, bytesRead:I
    if-gtz v0, :cond_66

    .line 89
    :try_start_26
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_29
    .catchall {:try_start_26 .. :try_end_29} :catchall_75
    .catch Ljava/io/IOException; {:try_start_26 .. :try_end_29} :catch_6e

    .line 95
    :try_start_29
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->nScriptCBegin()V

    .line 96
    const/4 v0, 0x0

    invoke-virtual {p0, v2, v0, v3}, Landroid/renderscript/RenderScript;->nScriptCSetScript([BII)V

    .line 99
    .end local v0           #bytesRead:I
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageResourcePath()Ljava/lang/String;

    move-result-object v0

    .line 101
    .local v0, packageName:Ljava/lang/String;
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p2

    .line 102
    .local p2, resName:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    .end local p1
    invoke-virtual {p1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object p1

    .line 104
    .local p1, cacheDir:Ljava/lang/String;
    const-string v1, "ScriptC"

    .end local v1           #is:Ljava/io/InputStream;
    new-instance v2, Ljava/lang/StringBuilder;

    .end local v2           #pgm:[B
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Create script for resource = "

    .end local v3           #pgmLength:I
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    invoke-virtual {p0, v0, p2, p1}, Landroid/renderscript/RenderScript;->nScriptCCreate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    :try_end_63
    .catchall {:try_start_29 .. :try_end_63} :catchall_75

    move-result p0

    .end local p0
    monitor-exit v4

    return p0

    .line 86
    .local v0, bytesRead:I
    .restart local v1       #is:Ljava/io/InputStream;
    .restart local v2       #pgm:[B
    .restart local v3       #pgmLength:I
    .restart local p0
    .local p1, resources:Landroid/content/res/Resources;
    .local p2, resourceID:I
    :cond_66
    add-int/2addr v0, v3

    .end local v3           #pgmLength:I
    .local v0, pgmLength:I
    move v3, v0

    .line 87
    .end local v0           #pgmLength:I
    .restart local v3       #pgmLength:I
    goto :goto_e

    .line 89
    .end local v2           #pgm:[B
    .end local v3           #pgmLength:I
    :catchall_69
    move-exception p0

    .end local p0
    :try_start_6a
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    throw p0
    :try_end_6e
    .catchall {:try_start_6a .. :try_end_6e} :catchall_75
    .catch Ljava/io/IOException; {:try_start_6a .. :try_end_6e} :catch_6e

    .line 91
    :catch_6e
    move-exception p0

    .line 92
    .local p0, e:Ljava/io/IOException;
    :try_start_6f
    new-instance p0, Landroid/content/res/Resources$NotFoundException;

    .end local p0           #e:Ljava/io/IOException;
    invoke-direct {p0}, Landroid/content/res/Resources$NotFoundException;-><init>()V

    throw p0
    :try_end_75
    .catchall {:try_start_6f .. :try_end_75} :catchall_75

    .line 69
    .end local v1           #is:Ljava/io/InputStream;
    .end local p1           #resources:Landroid/content/res/Resources;
    .end local p2           #resourceID:I
    :catchall_75
    move-exception p0

    monitor-exit v4

    throw p0
.end method
