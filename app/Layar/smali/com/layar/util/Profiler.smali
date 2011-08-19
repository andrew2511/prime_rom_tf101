.class public Lcom/layar/util/Profiler;
.super Ljava/lang/Object;
.source "Profiler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/layar/util/Profiler$AbsractProfile;,
        Lcom/layar/util/Profiler$TimeProfile;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final profilers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/layar/util/Profiler$AbsractProfile;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const-class v0, Lcom/layar/util/Profiler;

    invoke-static {v0}, Lcom/layar/util/Logger;->generateTAG(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/layar/util/Profiler;->TAG:Ljava/lang/String;

    .line 16
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/layar/util/Profiler;->profilers:Ljava/util/ArrayList;

    .line 16
    return-void
.end method


# virtual methods
.method public addLocationProfile(Ljava/lang/String;)Lcom/layar/util/Profiler$TimeProfile$LocationProfile;
    .locals 2
    .parameter "id"

    .prologue
    .line 29
    new-instance v0, Lcom/layar/util/Profiler$TimeProfile$LocationProfile;

    invoke-direct {v0, p1}, Lcom/layar/util/Profiler$TimeProfile$LocationProfile;-><init>(Ljava/lang/String;)V

    .line 30
    .local v0, profile:Lcom/layar/util/Profiler$TimeProfile$LocationProfile;
    iget-object v1, p0, Lcom/layar/util/Profiler;->profilers:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 31
    return-object v0
.end method

.method public addTimeProfile(Ljava/lang/String;)Lcom/layar/util/Profiler$TimeProfile;
    .locals 2
    .parameter "id"

    .prologue
    .line 23
    new-instance v0, Lcom/layar/util/Profiler$TimeProfile;

    invoke-direct {v0, p1}, Lcom/layar/util/Profiler$TimeProfile;-><init>(Ljava/lang/String;)V

    .line 24
    .local v0, profile:Lcom/layar/util/Profiler$TimeProfile;
    iget-object v1, p0, Lcom/layar/util/Profiler;->profilers:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 25
    return-object v0
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/layar/util/Profiler;->profilers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 36
    return-void
.end method

.method public output(Ljava/lang/String;)V
    .locals 9
    .parameter "filename"

    .prologue
    .line 39
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v6

    const-string v7, "mounted"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 69
    :cond_0
    :goto_0
    return-void

    .line 41
    :cond_1
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v6

    const-string v7, "layar"

    invoke-direct {v0, v6, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 42
    .local v0, cache:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_2

    .line 44
    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_2

    move-result v6

    if-eqz v6, :cond_0

    .line 49
    :cond_2
    :goto_1
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 51
    .local v4, output:Ljava/io/File;
    :try_start_1
    new-instance v1, Ljava/io/FileOutputStream;

    const/4 v6, 0x1

    invoke-direct {v1, v4, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    .line 52
    .local v1, fos:Ljava/io/FileOutputStream;
    new-instance v2, Ljava/io/OutputStreamWriter;

    invoke-direct {v2, v1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    .line 53
    .local v2, osw:Ljava/io/OutputStreamWriter;
    const-string v6, "\n========================================================\n"

    invoke-virtual {v2, v6}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 54
    new-instance v6, Ljava/lang/StringBuilder;

    new-instance v7, Ljava/util/Date;

    invoke-direct {v7}, Ljava/util/Date;-><init>()V

    invoke-virtual {v7}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, " Encoding: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 55
    const-string v6, "========================================================\n"

    invoke-virtual {v2, v6}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 56
    iget-object v6, p0, Lcom/layar/util/Profiler;->profilers:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_3

    .line 61
    const-string v6, "========================================================\n"

    invoke-virtual {v2, v6}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 62
    invoke-virtual {v2}, Ljava/io/OutputStreamWriter;->flush()V

    .line 63
    invoke-virtual {v2}, Ljava/io/OutputStreamWriter;->close()V

    goto :goto_0

    .line 64
    .end local v1           #fos:Ljava/io/FileOutputStream;
    .end local v2           #osw:Ljava/io/OutputStreamWriter;
    :catch_0
    move-exception v6

    goto :goto_0

    .line 56
    .restart local v1       #fos:Ljava/io/FileOutputStream;
    .restart local v2       #osw:Ljava/io/OutputStreamWriter;
    :cond_3
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/layar/util/Profiler$AbsractProfile;

    .line 57
    .local v5, profile:Lcom/layar/util/Profiler$AbsractProfile;
    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 59
    .local v3, out:Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, "\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    .line 66
    .end local v1           #fos:Ljava/io/FileOutputStream;
    .end local v2           #osw:Ljava/io/OutputStreamWriter;
    .end local v3           #out:Ljava/lang/String;
    .end local v5           #profile:Lcom/layar/util/Profiler$AbsractProfile;
    :catch_1
    move-exception v6

    goto/16 :goto_0

    .line 46
    .end local v4           #output:Ljava/io/File;
    :catch_2
    move-exception v6

    goto/16 :goto_1
.end method
