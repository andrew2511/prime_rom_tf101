.class Ljava/net/URLClassLoader$IndexFile;
.super Ljava/lang/Object;
.source "URLClassLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/net/URLClassLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "IndexFile"
.end annotation


# instance fields
.field private map:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/net/URL;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/HashMap;)V
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/net/URL;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 185
    .local p1, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Ljava/net/URL;>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 186
    iput-object p1, p0, Ljava/net/URLClassLoader$IndexFile;->map:Ljava/util/HashMap;

    .line 187
    return-void
.end method

.method private static getParentURL(Ljava/net/URL;)Ljava/net/URL;
    .registers 8
    .parameter "url"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v5, 0x2f

    .line 173
    invoke-virtual {p0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/net/JarURLConnection;

    invoke-virtual {p0}, Ljava/net/JarURLConnection;->getJarFileURL()Ljava/net/URL;

    move-result-object v1

    .line 174
    .local v1, fileURL:Ljava/net/URL;
    invoke-virtual {v1}, Ljava/net/URL;->getFile()Ljava/lang/String;

    move-result-object v0

    .line 175
    .local v0, file:Ljava/lang/String;
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v2

    .line 176
    .local v2, parentFile:Ljava/lang/String;
    sget-char v4, Ljava/io/File;->separatorChar:C

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v2

    .line 177
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-eq v4, v5, :cond_39

    .line 178
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 180
    :cond_39
    new-instance v3, Ljava/net/URL;

    invoke-virtual {v1}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1}, Ljava/net/URL;->getPort()I

    move-result v6

    invoke-direct {v3, v4, v5, v6, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 182
    .local v3, parentURL:Ljava/net/URL;
    return-object v3
.end method

.method static readIndexFile(Ljava/util/jar/JarFile;Ljava/util/jar/JarEntry;Ljava/net/URL;)Ljava/net/URLClassLoader$IndexFile;
    .registers 15
    .parameter "jf"
    .parameter "indexEntry"
    .parameter "url"

    .prologue
    const/4 v11, 0x0

    .line 120
    const/4 v0, 0x0

    .line 121
    .local v0, in:Ljava/io/BufferedReader;
    const/4 v2, 0x0

    .line 124
    .local v2, is:Ljava/io/InputStream;
    :try_start_3
    invoke-static {p2}, Ljava/net/URLClassLoader$IndexFile;->getParentURL(Ljava/net/URL;)Ljava/net/URL;

    move-result-object v9

    invoke-virtual {v9}, Ljava/net/URL;->toExternalForm()Ljava/lang/String;

    move-result-object v6

    .line 125
    .local v6, parentURLString:Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "jar:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 127
    .local v8, prefix:Ljava/lang/String;
    invoke-virtual {p0, p1}, Ljava/util/jar/JarFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v2

    .line 128
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v9, Ljava/io/InputStreamReader;

    const-string v10, "UTF8"

    invoke-direct {v9, v2, v10}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v1, v9}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_34
    .catchall {:try_start_3 .. :try_end_34} :catchall_cd
    .catch Ljava/net/MalformedURLException; {:try_start_3 .. :try_end_34} :catch_da
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_34} :catch_d8

    .line 129
    .end local v0           #in:Ljava/io/BufferedReader;
    .local v1, in:Ljava/io/BufferedReader;
    :try_start_34
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 131
    .local v7, pre_map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Ljava/net/URL;>;>;"
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_3c
    .catchall {:try_start_34 .. :try_end_3c} :catchall_d5
    .catch Ljava/net/MalformedURLException; {:try_start_34 .. :try_end_3c} :catch_a9
    .catch Ljava/io/IOException; {:try_start_34 .. :try_end_3c} :catch_bc

    move-result-object v9

    if-nez v9, :cond_48

    .line 166
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 167
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/io/Closeable;)V

    move-object v0, v1

    .end local v1           #in:Ljava/io/BufferedReader;
    .restart local v0       #in:Ljava/io/BufferedReader;
    move-object v9, v11

    .line 169
    .end local v6           #parentURLString:Ljava/lang/String;
    .end local v7           #pre_map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Ljava/net/URL;>;>;"
    .end local v8           #prefix:Ljava/lang/String;
    :goto_47
    return-object v9

    .line 132
    .end local v0           #in:Ljava/io/BufferedReader;
    .restart local v1       #in:Ljava/io/BufferedReader;
    .restart local v6       #parentURLString:Ljava/lang/String;
    .restart local v7       #pre_map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Ljava/net/URL;>;>;"
    .restart local v8       #prefix:Ljava/lang/String;
    :cond_48
    :try_start_48
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_4b
    .catchall {:try_start_48 .. :try_end_4b} :catchall_d5
    .catch Ljava/net/MalformedURLException; {:try_start_48 .. :try_end_4b} :catch_a9
    .catch Ljava/io/IOException; {:try_start_48 .. :try_end_4b} :catch_bc

    move-result-object v9

    if-nez v9, :cond_5d

    .line 166
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 167
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/io/Closeable;)V

    move-object v0, v1

    .end local v1           #in:Ljava/io/BufferedReader;
    .restart local v0       #in:Ljava/io/BufferedReader;
    move-object v9, v11

    goto :goto_47

    .line 145
    .end local v0           #in:Ljava/io/BufferedReader;
    .restart local v1       #in:Ljava/io/BufferedReader;
    .local v3, jar:Ljava/net/URL;
    .local v4, line:Ljava/lang/String;
    :cond_57
    :try_start_57
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_99

    .line 135
    .end local v3           #jar:Ljava/net/URL;
    .end local v4           #line:Ljava/lang/String;
    :cond_5d
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    .line 136
    .restart local v4       #line:Ljava/lang/String;
    if-nez v4, :cond_76

    .line 158
    :goto_63
    invoke-virtual {v7}, Ljava/util/HashMap;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_c5

    .line 159
    new-instance v9, Ljava/net/URLClassLoader$IndexFile;

    invoke-direct {v9, v7}, Ljava/net/URLClassLoader$IndexFile;-><init>(Ljava/util/HashMap;)V
    :try_end_6e
    .catchall {:try_start_57 .. :try_end_6e} :catchall_d5
    .catch Ljava/net/MalformedURLException; {:try_start_57 .. :try_end_6e} :catch_a9
    .catch Ljava/io/IOException; {:try_start_57 .. :try_end_6e} :catch_bc

    .line 166
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 167
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/io/Closeable;)V

    move-object v0, v1

    .end local v1           #in:Ljava/io/BufferedReader;
    .restart local v0       #in:Ljava/io/BufferedReader;
    goto :goto_47

    .line 139
    .end local v0           #in:Ljava/io/BufferedReader;
    .restart local v1       #in:Ljava/io/BufferedReader;
    :cond_76
    :try_start_76
    new-instance v3, Ljava/net/URL;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "!/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v3, v9}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 141
    .restart local v3       #jar:Ljava/net/URL;
    :goto_92
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    .line 142
    if-nez v4, :cond_57

    goto :goto_63

    .line 149
    :cond_99
    invoke-virtual {v7, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_b3

    .line 150
    invoke-virtual {v7, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    .line 155
    .local v5, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/net/URL;>;"
    :goto_a5
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_a8
    .catchall {:try_start_76 .. :try_end_a8} :catchall_d5
    .catch Ljava/net/MalformedURLException; {:try_start_76 .. :try_end_a8} :catch_a9
    .catch Ljava/io/IOException; {:try_start_76 .. :try_end_a8} :catch_bc

    goto :goto_92

    .line 161
    .end local v3           #jar:Ljava/net/URL;
    .end local v4           #line:Ljava/lang/String;
    .end local v5           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/net/URL;>;"
    .end local v7           #pre_map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Ljava/net/URL;>;>;"
    :catch_a9
    move-exception v9

    move-object v0, v1

    .line 166
    .end local v1           #in:Ljava/io/BufferedReader;
    .end local v6           #parentURLString:Ljava/lang/String;
    .end local v8           #prefix:Ljava/lang/String;
    .restart local v0       #in:Ljava/io/BufferedReader;
    :goto_ab
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 167
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/io/Closeable;)V

    :goto_b1
    move-object v9, v11

    .line 169
    goto :goto_47

    .line 152
    .end local v0           #in:Ljava/io/BufferedReader;
    .restart local v1       #in:Ljava/io/BufferedReader;
    .restart local v3       #jar:Ljava/net/URL;
    .restart local v4       #line:Ljava/lang/String;
    .restart local v6       #parentURLString:Ljava/lang/String;
    .restart local v7       #pre_map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Ljava/net/URL;>;>;"
    .restart local v8       #prefix:Ljava/lang/String;
    :cond_b3
    :try_start_b3
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 153
    .restart local v5       #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/net/URL;>;"
    invoke-virtual {v7, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_bb
    .catchall {:try_start_b3 .. :try_end_bb} :catchall_d5
    .catch Ljava/net/MalformedURLException; {:try_start_b3 .. :try_end_bb} :catch_a9
    .catch Ljava/io/IOException; {:try_start_b3 .. :try_end_bb} :catch_bc

    goto :goto_a5

    .line 163
    .end local v3           #jar:Ljava/net/URL;
    .end local v4           #line:Ljava/lang/String;
    .end local v5           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/net/URL;>;"
    .end local v7           #pre_map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Ljava/net/URL;>;>;"
    :catch_bc
    move-exception v9

    move-object v0, v1

    .line 166
    .end local v1           #in:Ljava/io/BufferedReader;
    .end local v6           #parentURLString:Ljava/lang/String;
    .end local v8           #prefix:Ljava/lang/String;
    .restart local v0       #in:Ljava/io/BufferedReader;
    :goto_be
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 167
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_b1

    .line 166
    .end local v0           #in:Ljava/io/BufferedReader;
    .restart local v1       #in:Ljava/io/BufferedReader;
    .restart local v4       #line:Ljava/lang/String;
    .restart local v6       #parentURLString:Ljava/lang/String;
    .restart local v7       #pre_map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Ljava/net/URL;>;>;"
    .restart local v8       #prefix:Ljava/lang/String;
    :cond_c5
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 167
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/io/Closeable;)V

    move-object v0, v1

    .line 168
    .end local v1           #in:Ljava/io/BufferedReader;
    .restart local v0       #in:Ljava/io/BufferedReader;
    goto :goto_b1

    .line 166
    .end local v4           #line:Ljava/lang/String;
    .end local v6           #parentURLString:Ljava/lang/String;
    .end local v7           #pre_map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Ljava/net/URL;>;>;"
    .end local v8           #prefix:Ljava/lang/String;
    :catchall_cd
    move-exception v9

    :goto_ce
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 167
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/io/Closeable;)V

    throw v9

    .line 166
    .end local v0           #in:Ljava/io/BufferedReader;
    .restart local v1       #in:Ljava/io/BufferedReader;
    .restart local v6       #parentURLString:Ljava/lang/String;
    .restart local v8       #prefix:Ljava/lang/String;
    :catchall_d5
    move-exception v9

    move-object v0, v1

    .end local v1           #in:Ljava/io/BufferedReader;
    .restart local v0       #in:Ljava/io/BufferedReader;
    goto :goto_ce

    .line 163
    .end local v6           #parentURLString:Ljava/lang/String;
    .end local v8           #prefix:Ljava/lang/String;
    :catch_d8
    move-exception v9

    goto :goto_be

    .line 161
    :catch_da
    move-exception v9

    goto :goto_ab
.end method


# virtual methods
.method get(Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 3
    .parameter "name"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/net/URL;",
            ">;"
        }
    .end annotation

    .prologue
    .line 190
    iget-object v0, p0, Ljava/net/URLClassLoader$IndexFile;->map:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/util/ArrayList;

    return-object p0
.end method
