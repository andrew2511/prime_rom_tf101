.class Ljava/util/ServiceLoader$ServiceIterator;
.super Ljava/lang/Object;
.source "ServiceLoader.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/ServiceLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ServiceIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<TS;>;"
    }
.end annotation


# instance fields
.field private final classLoader:Ljava/lang/ClassLoader;

.field private isRead:Z

.field private queue:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final service:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TS;>;"
        }
    .end annotation
.end field

.field private final services:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/net/URL;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Ljava/util/ServiceLoader;


# direct methods
.method public constructor <init>(Ljava/util/ServiceLoader;Ljava/util/ServiceLoader;)V
    .registers 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ServiceLoader",
            "<TS;>;)V"
        }
    .end annotation

    .prologue
    .line 200
    .local p0, this:Ljava/util/ServiceLoader$ServiceIterator;,"Ljava/util/ServiceLoader<TS;>.ServiceIterator;"
    .local p2, sl:Ljava/util/ServiceLoader;,"Ljava/util/ServiceLoader<TS;>;"
    iput-object p1, p0, Ljava/util/ServiceLoader$ServiceIterator;->this$0:Ljava/util/ServiceLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 196
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/util/ServiceLoader$ServiceIterator;->isRead:Z

    .line 198
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Ljava/util/ServiceLoader$ServiceIterator;->queue:Ljava/util/LinkedList;

    .line 201
    #getter for: Ljava/util/ServiceLoader;->classLoader:Ljava/lang/ClassLoader;
    invoke-static {p2}, Ljava/util/ServiceLoader;->access$000(Ljava/util/ServiceLoader;)Ljava/lang/ClassLoader;

    move-result-object v0

    iput-object v0, p0, Ljava/util/ServiceLoader$ServiceIterator;->classLoader:Ljava/lang/ClassLoader;

    .line 202
    #getter for: Ljava/util/ServiceLoader;->service:Ljava/lang/Class;
    invoke-static {p2}, Ljava/util/ServiceLoader;->access$100(Ljava/util/ServiceLoader;)Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Ljava/util/ServiceLoader$ServiceIterator;->service:Ljava/lang/Class;

    .line 203
    #getter for: Ljava/util/ServiceLoader;->services:Ljava/util/Set;
    invoke-static {p2}, Ljava/util/ServiceLoader;->access$200(Ljava/util/ServiceLoader;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Ljava/util/ServiceLoader$ServiceIterator;->services:Ljava/util/Set;

    .line 204
    return-void
.end method

.method private checkValidJavaClassName(Ljava/lang/String;)V
    .registers 7
    .parameter "className"

    .prologue
    .line 263
    .local p0, this:Ljava/util/ServiceLoader$ServiceIterator;,"Ljava/util/ServiceLoader<TS;>.ServiceIterator;"
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_37

    .line 264
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 265
    .local v0, ch:C
    invoke-static {v0}, Ljava/lang/Character;->isJavaIdentifierPart(C)Z

    move-result v2

    if-nez v2, :cond_34

    const/16 v2, 0x2e

    if-eq v0, v2, :cond_34

    .line 266
    new-instance v2, Ljava/util/ServiceConfigurationError;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Bad character \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' in class name"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ServiceConfigurationError;-><init>(Ljava/lang/String;)V

    throw v2

    .line 263
    :cond_34
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 269
    .end local v0           #ch:C
    :cond_37
    return-void
.end method

.method private readClass()V
    .registers 12

    .prologue
    .line 227
    .local p0, this:Ljava/util/ServiceLoader$ServiceIterator;,"Ljava/util/ServiceLoader<TS;>.ServiceIterator;"
    iget-object v8, p0, Ljava/util/ServiceLoader$ServiceIterator;->services:Ljava/util/Set;

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_7b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/net/URL;

    .line 228
    .local v7, url:Ljava/net/URL;
    const/4 v5, 0x0

    .line 230
    .local v5, reader:Ljava/io/BufferedReader;
    :try_start_13
    new-instance v6, Ljava/io/BufferedReader;

    new-instance v8, Ljava/io/InputStreamReader;

    invoke-virtual {v7}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v9

    const-string v10, "UTF-8"

    invoke-direct {v8, v9, v10}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v6, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_23
    .catchall {:try_start_13 .. :try_end_23} :catchall_6f
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_23} :catch_7f

    .line 232
    .end local v5           #reader:Ljava/io/BufferedReader;
    .local v6, reader:Ljava/io/BufferedReader;
    :cond_23
    :goto_23
    :try_start_23
    invoke-virtual {v6}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    .local v4, line:Ljava/lang/String;
    if-eqz v4, :cond_74

    .line 234
    const/16 v8, 0x23

    invoke-virtual {v4, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 235
    .local v1, commentStart:I
    const/4 v8, -0x1

    if-eq v1, v8, :cond_37

    .line 236
    const/4 v8, 0x0

    invoke-virtual {v4, v8, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 238
    :cond_37
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 240
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_23

    .line 243
    move-object v0, v4

    .line 244
    .local v0, className:Ljava/lang/String;
    invoke-direct {p0, v0}, Ljava/util/ServiceLoader$ServiceIterator;->checkValidJavaClassName(Ljava/lang/String;)V

    .line 245
    iget-object v8, p0, Ljava/util/ServiceLoader$ServiceIterator;->queue:Ljava/util/LinkedList;

    invoke-virtual {v8, v0}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_23

    .line 246
    iget-object v8, p0, Ljava/util/ServiceLoader$ServiceIterator;->queue:Ljava/util/LinkedList;

    invoke-virtual {v8, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z
    :try_end_52
    .catchall {:try_start_23 .. :try_end_52} :catchall_7c
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_52} :catch_53

    goto :goto_23

    .line 250
    .end local v0           #className:Ljava/lang/String;
    .end local v1           #commentStart:I
    .end local v4           #line:Ljava/lang/String;
    :catch_53
    move-exception v8

    move-object v2, v8

    move-object v5, v6

    .line 251
    .end local v6           #reader:Ljava/io/BufferedReader;
    .local v2, e:Ljava/lang/Exception;
    .restart local v5       #reader:Ljava/io/BufferedReader;
    :goto_56
    :try_start_56
    new-instance v8, Ljava/util/ServiceConfigurationError;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Couldn\'t read "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9, v2}, Ljava/util/ServiceConfigurationError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v8
    :try_end_6f
    .catchall {:try_start_56 .. :try_end_6f} :catchall_6f

    .line 253
    .end local v2           #e:Ljava/lang/Exception;
    :catchall_6f
    move-exception v8

    :goto_70
    invoke-static {v5}, Llibcore/io/IoUtils;->closeQuietly(Ljava/io/Closeable;)V

    throw v8

    .line 249
    .end local v5           #reader:Ljava/io/BufferedReader;
    .restart local v4       #line:Ljava/lang/String;
    .restart local v6       #reader:Ljava/io/BufferedReader;
    :cond_74
    const/4 v8, 0x1

    :try_start_75
    iput-boolean v8, p0, Ljava/util/ServiceLoader$ServiceIterator;->isRead:Z
    :try_end_77
    .catchall {:try_start_75 .. :try_end_77} :catchall_7c
    .catch Ljava/lang/Exception; {:try_start_75 .. :try_end_77} :catch_53

    .line 253
    invoke-static {v6}, Llibcore/io/IoUtils;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_6

    .line 256
    .end local v4           #line:Ljava/lang/String;
    .end local v6           #reader:Ljava/io/BufferedReader;
    .end local v7           #url:Ljava/net/URL;
    :cond_7b
    return-void

    .line 253
    .restart local v6       #reader:Ljava/io/BufferedReader;
    .restart local v7       #url:Ljava/net/URL;
    :catchall_7c
    move-exception v8

    move-object v5, v6

    .end local v6           #reader:Ljava/io/BufferedReader;
    .restart local v5       #reader:Ljava/io/BufferedReader;
    goto :goto_70

    .line 250
    :catch_7f
    move-exception v8

    move-object v2, v8

    goto :goto_56
.end method


# virtual methods
.method public hasNext()Z
    .registers 2

    .prologue
    .line 207
    .local p0, this:Ljava/util/ServiceLoader$ServiceIterator;,"Ljava/util/ServiceLoader<TS;>.ServiceIterator;"
    iget-boolean v0, p0, Ljava/util/ServiceLoader$ServiceIterator;->isRead:Z

    if-nez v0, :cond_7

    .line 208
    invoke-direct {p0}, Ljava/util/ServiceLoader$ServiceIterator;->readClass()V

    .line 210
    :cond_7
    iget-object v0, p0, Ljava/util/ServiceLoader$ServiceIterator;->queue:Ljava/util/LinkedList;

    if-eqz v0, :cond_15

    iget-object v0, p0, Ljava/util/ServiceLoader$ServiceIterator;->queue:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_15

    const/4 v0, 0x1

    :goto_14
    return v0

    :cond_15
    const/4 v0, 0x0

    goto :goto_14
.end method

.method public next()Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TS;"
        }
    .end annotation

    .prologue
    .line 215
    .local p0, this:Ljava/util/ServiceLoader$ServiceIterator;,"Ljava/util/ServiceLoader<TS;>.ServiceIterator;"
    invoke-virtual {p0}, Ljava/util/ServiceLoader$ServiceIterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_c

    .line 216
    new-instance v2, Ljava/util/NoSuchElementException;

    invoke-direct {v2}, Ljava/util/NoSuchElementException;-><init>()V

    throw v2

    .line 218
    :cond_c
    iget-object v2, p0, Ljava/util/ServiceLoader$ServiceIterator;->queue:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 220
    .local v0, className:Ljava/lang/String;
    :try_start_14
    iget-object v2, p0, Ljava/util/ServiceLoader$ServiceIterator;->service:Ljava/lang/Class;

    iget-object v3, p0, Ljava/util/ServiceLoader$ServiceIterator;->classLoader:Ljava/lang/ClassLoader;

    invoke-virtual {v3, v0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_23} :catch_25

    move-result-object v2

    return-object v2

    .line 221
    :catch_25
    move-exception v2

    move-object v1, v2

    .line 222
    .local v1, e:Ljava/lang/Exception;
    new-instance v2, Ljava/util/ServiceConfigurationError;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Couldn\'t instantiate class "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Ljava/util/ServiceConfigurationError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public remove()V
    .registers 2

    .prologue
    .line 259
    .local p0, this:Ljava/util/ServiceLoader$ServiceIterator;,"Ljava/util/ServiceLoader<TS;>.ServiceIterator;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
