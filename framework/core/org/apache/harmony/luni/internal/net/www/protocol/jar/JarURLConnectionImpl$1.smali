.class Lorg/apache/harmony/luni/internal/net/www/protocol/jar/JarURLConnectionImpl$1;
.super Ljava/lang/Object;
.source "JarURLConnectionImpl.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/harmony/luni/internal/net/www/protocol/jar/JarURLConnectionImpl;->openJarFile()Ljava/util/jar/JarFile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/security/PrivilegedAction",
        "<",
        "Ljava/util/jar/JarFile;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/harmony/luni/internal/net/www/protocol/jar/JarURLConnectionImpl;

.field final synthetic val$is:Ljava/io/InputStream;


# direct methods
.method constructor <init>(Lorg/apache/harmony/luni/internal/net/www/protocol/jar/JarURLConnectionImpl;Ljava/io/InputStream;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 149
    iput-object p1, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/jar/JarURLConnectionImpl$1;->this$0:Lorg/apache/harmony/luni/internal/net/www/protocol/jar/JarURLConnectionImpl;

    iput-object p2, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/jar/JarURLConnectionImpl$1;->val$is:Ljava/io/InputStream;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic run()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 149
    invoke-virtual {p0}, Lorg/apache/harmony/luni/internal/net/www/protocol/jar/JarURLConnectionImpl$1;->run()Ljava/util/jar/JarFile;

    move-result-object v0

    return-object v0
.end method

.method public run()Ljava/util/jar/JarFile;
    .registers 14

    .prologue
    const/4 v12, 0x0

    .line 151
    const/4 v3, 0x0

    .line 152
    .local v3, fos:Ljava/io/FileOutputStream;
    const/4 v6, 0x0

    .line 154
    .local v6, result:Ljava/util/jar/JarFile;
    :try_start_3
    const-string v9, "hyjar_"

    const-string v10, ".tmp"

    const/4 v11, 0x0

    invoke-static {v9, v10, v11}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v8

    .line 155
    .local v8, tempJar:Ljava/io/File;
    invoke-virtual {v8}, Ljava/io/File;->deleteOnExit()V

    .line 156
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v8}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_4a
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_14} :catch_57

    .line 157
    .end local v3           #fos:Ljava/io/FileOutputStream;
    .local v4, fos:Ljava/io/FileOutputStream;
    const/16 v9, 0x1000

    :try_start_16
    new-array v0, v9, [B

    .line 158
    .local v0, buf:[B
    const/4 v5, 0x0

    .line 159
    .local v5, nbytes:I
    :goto_19
    iget-object v9, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/jar/JarURLConnectionImpl$1;->val$is:Ljava/io/InputStream;

    invoke-virtual {v9, v0}, Ljava/io/InputStream;->read([B)I

    move-result v5

    const/4 v9, -0x1

    if-le v5, v9, :cond_31

    .line 160
    const/4 v9, 0x0

    invoke-virtual {v4, v0, v9, v5}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_26
    .catchall {:try_start_16 .. :try_end_26} :catchall_54
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_26} :catch_27

    goto :goto_19

    .line 165
    .end local v0           #buf:[B
    .end local v5           #nbytes:I
    :catch_27
    move-exception v9

    move-object v1, v9

    move-object v3, v4

    .line 168
    .end local v4           #fos:Ljava/io/FileOutputStream;
    .end local v8           #tempJar:Ljava/io/File;
    .local v1, e:Ljava/io/IOException;
    .restart local v3       #fos:Ljava/io/FileOutputStream;
    :goto_2a
    if-eqz v3, :cond_2f

    .line 170
    :try_start_2c
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_2f
    .catch Ljava/io/IOException; {:try_start_2c .. :try_end_2f} :catch_47

    :cond_2f
    :goto_2f
    move-object v9, v12

    .line 176
    .end local v1           #e:Ljava/io/IOException;
    :goto_30
    return-object v9

    .line 162
    .end local v3           #fos:Ljava/io/FileOutputStream;
    .restart local v0       #buf:[B
    .restart local v4       #fos:Ljava/io/FileOutputStream;
    .restart local v5       #nbytes:I
    .restart local v8       #tempJar:Ljava/io/File;
    :cond_31
    :try_start_31
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V

    .line 163
    new-instance v7, Ljava/util/jar/JarFile;

    const/4 v9, 0x1

    const/4 v10, 0x5

    invoke-direct {v7, v8, v9, v10}, Ljava/util/jar/JarFile;-><init>(Ljava/io/File;ZI)V
    :try_end_3b
    .catchall {:try_start_31 .. :try_end_3b} :catchall_54
    .catch Ljava/io/IOException; {:try_start_31 .. :try_end_3b} :catch_27

    .line 168
    .end local v6           #result:Ljava/util/jar/JarFile;
    .local v7, result:Ljava/util/jar/JarFile;
    if-eqz v4, :cond_5a

    .line 170
    :try_start_3d
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_40
    .catch Ljava/io/IOException; {:try_start_3d .. :try_end_40} :catch_44

    move-object v6, v7

    .end local v7           #result:Ljava/util/jar/JarFile;
    .restart local v6       #result:Ljava/util/jar/JarFile;
    :goto_41
    move-object v3, v4

    .end local v4           #fos:Ljava/io/FileOutputStream;
    .restart local v3       #fos:Ljava/io/FileOutputStream;
    move-object v9, v6

    .line 176
    goto :goto_30

    .line 171
    .end local v3           #fos:Ljava/io/FileOutputStream;
    .end local v6           #result:Ljava/util/jar/JarFile;
    .restart local v4       #fos:Ljava/io/FileOutputStream;
    .restart local v7       #result:Ljava/util/jar/JarFile;
    :catch_44
    move-exception v2

    .line 172
    .local v2, ex:Ljava/io/IOException;
    const/4 v6, 0x0

    .line 173
    .end local v7           #result:Ljava/util/jar/JarFile;
    .restart local v6       #result:Ljava/util/jar/JarFile;
    goto :goto_41

    .line 171
    .end local v0           #buf:[B
    .end local v2           #ex:Ljava/io/IOException;
    .end local v4           #fos:Ljava/io/FileOutputStream;
    .end local v5           #nbytes:I
    .end local v8           #tempJar:Ljava/io/File;
    .restart local v1       #e:Ljava/io/IOException;
    .restart local v3       #fos:Ljava/io/FileOutputStream;
    :catch_47
    move-exception v2

    .line 172
    .restart local v2       #ex:Ljava/io/IOException;
    const/4 v6, 0x0

    goto :goto_2f

    .line 168
    .end local v1           #e:Ljava/io/IOException;
    .end local v2           #ex:Ljava/io/IOException;
    :catchall_4a
    move-exception v9

    :goto_4b
    if-eqz v3, :cond_50

    .line 170
    :try_start_4d
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_50
    .catch Ljava/io/IOException; {:try_start_4d .. :try_end_50} :catch_51

    .line 173
    :cond_50
    :goto_50
    throw v9

    .line 171
    :catch_51
    move-exception v2

    .line 172
    .restart local v2       #ex:Ljava/io/IOException;
    const/4 v6, 0x0

    goto :goto_50

    .line 168
    .end local v2           #ex:Ljava/io/IOException;
    .end local v3           #fos:Ljava/io/FileOutputStream;
    .restart local v4       #fos:Ljava/io/FileOutputStream;
    .restart local v8       #tempJar:Ljava/io/File;
    :catchall_54
    move-exception v9

    move-object v3, v4

    .end local v4           #fos:Ljava/io/FileOutputStream;
    .restart local v3       #fos:Ljava/io/FileOutputStream;
    goto :goto_4b

    .line 165
    .end local v8           #tempJar:Ljava/io/File;
    :catch_57
    move-exception v9

    move-object v1, v9

    goto :goto_2a

    .end local v3           #fos:Ljava/io/FileOutputStream;
    .end local v6           #result:Ljava/util/jar/JarFile;
    .restart local v0       #buf:[B
    .restart local v4       #fos:Ljava/io/FileOutputStream;
    .restart local v5       #nbytes:I
    .restart local v7       #result:Ljava/util/jar/JarFile;
    .restart local v8       #tempJar:Ljava/io/File;
    :cond_5a
    move-object v6, v7

    .end local v7           #result:Ljava/util/jar/JarFile;
    .restart local v6       #result:Ljava/util/jar/JarFile;
    goto :goto_41
.end method
