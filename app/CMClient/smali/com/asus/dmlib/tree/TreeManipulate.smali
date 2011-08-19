.class Lcom/asus/dmlib/tree/TreeManipulate;
.super Ljava/lang/Object;
.source "TreeManipulate.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "TreeManipulate"


# instance fields
.field private mParientNode:Lcom/asus/dmlib/tree/DMNode;

.field private mPathMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/asus/dmlib/tree/DMNode;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/io/InputStream;)V
    .locals 3
    .parameter "treeIS"

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v1, Lcom/asus/dmlib/tree/DMTreeParser;

    invoke-direct {v1}, Lcom/asus/dmlib/tree/DMTreeParser;-><init>()V

    .line 23
    .local v1, pp:Lcom/asus/dmlib/tree/DMTreeParser;
    :try_start_0
    invoke-virtual {v1, p1}, Lcom/asus/dmlib/tree/DMTreeParser;->parse(Ljava/io/InputStream;)Lcom/asus/dmlib/tree/DMNode;

    .line 24
    invoke-virtual {v1}, Lcom/asus/dmlib/tree/DMTreeParser;->getmParientNode()Lcom/asus/dmlib/tree/DMNode;

    move-result-object v2

    iput-object v2, p0, Lcom/asus/dmlib/tree/TreeManipulate;->mParientNode:Lcom/asus/dmlib/tree/DMNode;

    .line 25
    invoke-virtual {v1}, Lcom/asus/dmlib/tree/DMTreeParser;->getmPathMap()Ljava/util/HashMap;

    move-result-object v2

    iput-object v2, p0, Lcom/asus/dmlib/tree/TreeManipulate;->mPathMap:Ljava/util/HashMap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lcom/asus/dmlib/tree/TreePaserException; {:try_start_0 .. :try_end_0} :catch_5

    .line 34
    :try_start_1
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 39
    :goto_0
    return-void

    .line 35
    :catch_0
    move-exception v0

    .line 36
    .local v0, e:Ljava/io/IOException;
    invoke-static {v0}, Lcom/asus/dmlib/util/DMLog;->logException(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 26
    .end local v0           #e:Ljava/io/IOException;
    :catch_1
    move-exception v2

    move-object v0, v2

    .line 27
    .local v0, e:Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_2
    invoke-static {v0}, Lcom/asus/dmlib/util/DMLog;->logException(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 34
    :try_start_3
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 35
    :catch_2
    move-exception v0

    .line 36
    .local v0, e:Ljava/io/IOException;
    invoke-static {v0}, Lcom/asus/dmlib/util/DMLog;->logException(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 28
    .end local v0           #e:Ljava/io/IOException;
    :catch_3
    move-exception v2

    move-object v0, v2

    .line 29
    .restart local v0       #e:Ljava/io/IOException;
    :try_start_4
    invoke-static {v0}, Lcom/asus/dmlib/util/DMLog;->logException(Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 34
    :try_start_5
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_0

    .line 35
    :catch_4
    move-exception v0

    .line 36
    invoke-static {v0}, Lcom/asus/dmlib/util/DMLog;->logException(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 30
    .end local v0           #e:Ljava/io/IOException;
    :catch_5
    move-exception v2

    move-object v0, v2

    .line 31
    .local v0, e:Lcom/asus/dmlib/tree/TreePaserException;
    :try_start_6
    invoke-static {v0}, Lcom/asus/dmlib/util/DMLog;->logException(Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 34
    :try_start_7
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6

    goto :goto_0

    .line 35
    :catch_6
    move-exception v0

    .line 36
    .local v0, e:Ljava/io/IOException;
    invoke-static {v0}, Lcom/asus/dmlib/util/DMLog;->logException(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 33
    .end local v0           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v2

    .line 34
    :try_start_8
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_7

    .line 37
    :goto_1
    throw v2

    .line 35
    :catch_7
    move-exception v0

    .line 36
    .restart local v0       #e:Ljava/io/IOException;
    invoke-static {v0}, Lcom/asus/dmlib/util/DMLog;->logException(Ljava/lang/Throwable;)V

    goto :goto_1
.end method


# virtual methods
.method add(Lcom/asus/dmlib/tree/DMNode;)V
    .locals 4
    .parameter "node"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/asus/dmlib/tree/TreePaserException;
        }
    .end annotation

    .prologue
    .line 42
    iget-object v1, p0, Lcom/asus/dmlib/tree/TreeManipulate;->mPathMap:Ljava/util/HashMap;

    iget-object v2, p1, Lcom/asus/dmlib/tree/DMNode;->mParient:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/asus/dmlib/tree/DMNode;

    .line 43
    .local v0, parient:Lcom/asus/dmlib/tree/DMNode;
    instance-of v1, v0, Lcom/asus/dmlib/tree/Interior;

    if-eqz v1, :cond_0

    .line 44
    check-cast v0, Lcom/asus/dmlib/tree/Interior;

    .end local v0           #parient:Lcom/asus/dmlib/tree/DMNode;
    iget-object v1, v0, Lcom/asus/dmlib/tree/Interior;->child:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 45
    iget-object v1, p0, Lcom/asus/dmlib/tree/TreeManipulate;->mPathMap:Ljava/util/HashMap;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p1, Lcom/asus/dmlib/tree/DMNode;->mParient:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/asus/dmlib/tree/DMNode;->mName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    return-void

    .line 47
    .restart local v0       #parient:Lcom/asus/dmlib/tree/DMNode;
    :cond_0
    new-instance v1, Lcom/asus/dmlib/tree/TreePaserException;

    const-string v2, "Add to a leaf of null node."

    invoke-direct {v1, v2}, Lcom/asus/dmlib/tree/TreePaserException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method delete(Lcom/asus/dmlib/tree/DMNode;)V
    .locals 8
    .parameter "node"

    .prologue
    .line 52
    instance-of v5, p1, Lcom/asus/dmlib/tree/Interior;

    if-eqz v5, :cond_0

    .line 53
    move-object v0, p1

    check-cast v0, Lcom/asus/dmlib/tree/Interior;

    move-object v2, v0

    .line 54
    .local v2, interior:Lcom/asus/dmlib/tree/Interior;
    const/4 v1, 0x0

    .local v1, idx:I
    :goto_0
    iget-object v5, v2, Lcom/asus/dmlib/tree/Interior;->child:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v1, v5, :cond_0

    .line 55
    iget-object v5, v2, Lcom/asus/dmlib/tree/Interior;->child:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/asus/dmlib/tree/DMNode;

    .line 56
    .local v3, n:Lcom/asus/dmlib/tree/DMNode;
    invoke-virtual {p0, v3}, Lcom/asus/dmlib/tree/TreeManipulate;->delete(Lcom/asus/dmlib/tree/DMNode;)V

    .line 54
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 59
    .end local v1           #idx:I
    .end local v2           #interior:Lcom/asus/dmlib/tree/Interior;
    .end local v3           #n:Lcom/asus/dmlib/tree/DMNode;
    :cond_0
    iget-object v5, p0, Lcom/asus/dmlib/tree/TreeManipulate;->mPathMap:Ljava/util/HashMap;

    iget-object v6, p1, Lcom/asus/dmlib/tree/DMNode;->mParient:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/asus/dmlib/tree/Interior;

    .line 60
    .local v4, parient:Lcom/asus/dmlib/tree/Interior;
    iget-object v5, v4, Lcom/asus/dmlib/tree/Interior;->child:Ljava/util/ArrayList;

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 61
    iget-object v5, p0, Lcom/asus/dmlib/tree/TreeManipulate;->mPathMap:Ljava/util/HashMap;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p1, Lcom/asus/dmlib/tree/DMNode;->mParient:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p1, Lcom/asus/dmlib/tree/DMNode;->mName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    return-void
.end method

.method delete(Ljava/lang/String;)V
    .locals 4
    .parameter "nodeUri"

    .prologue
    .line 65
    invoke-virtual {p0, p1}, Lcom/asus/dmlib/tree/TreeManipulate;->findByNodeURI(Ljava/lang/String;)Lcom/asus/dmlib/tree/DMNode;

    move-result-object v0

    .line 66
    .local v0, node:Lcom/asus/dmlib/tree/DMNode;
    if-eqz v0, :cond_0

    .line 67
    invoke-virtual {p0, v0}, Lcom/asus/dmlib/tree/TreeManipulate;->delete(Lcom/asus/dmlib/tree/DMNode;)V

    .line 71
    :goto_0
    return-void

    .line 69
    :cond_0
    const-string v1, "TreeManipulate"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Delete ==> No Such Node: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/asus/dmlib/util/DMLog;->logD(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method findByNodeURI(Ljava/lang/String;)Lcom/asus/dmlib/tree/DMNode;
    .locals 1
    .parameter "nodeUri"

    .prologue
    .line 74
    iget-object v0, p0, Lcom/asus/dmlib/tree/TreeManipulate;->mPathMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/asus/dmlib/tree/DMNode;

    return-object p0
.end method

.method printNode()V
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/asus/dmlib/tree/TreeManipulate;->mParientNode:Lcom/asus/dmlib/tree/DMNode;

    invoke-virtual {v0}, Lcom/asus/dmlib/tree/DMNode;->printNode()V

    .line 98
    return-void
.end method

.method printPath()V
    .locals 3

    .prologue
    .line 101
    iget-object v2, p0, Lcom/asus/dmlib/tree/TreeManipulate;->mPathMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 102
    .local v1, path:Ljava/lang/String;
    const-string v2, "PATH"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 104
    .end local v1           #path:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method writeToPersistor(Ljava/io/OutputStream;)V
    .locals 3
    .parameter "out"

    .prologue
    .line 80
    :try_start_0
    new-instance v1, Lcom/asus/dmlib/tree/DMTreeSerializer;

    invoke-direct {v1}, Lcom/asus/dmlib/tree/DMTreeSerializer;-><init>()V

    .line 81
    .local v1, s:Lcom/asus/dmlib/tree/DMTreeSerializer;
    iget-object v2, p0, Lcom/asus/dmlib/tree/TreeManipulate;->mParientNode:Lcom/asus/dmlib/tree/DMNode;

    invoke-virtual {v1, p1, v2}, Lcom/asus/dmlib/tree/DMTreeSerializer;->serialize(Ljava/io/OutputStream;Lcom/asus/dmlib/tree/DMNode;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    .line 88
    if-eqz p1, :cond_0

    .line 89
    :try_start_1
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 94
    .end local v1           #s:Lcom/asus/dmlib/tree/DMTreeSerializer;
    :cond_0
    :goto_0
    return-void

    .line 90
    .restart local v1       #s:Lcom/asus/dmlib/tree/DMTreeSerializer;
    :catch_0
    move-exception v0

    .line 91
    .local v0, e:Ljava/io/IOException;
    invoke-static {v0}, Lcom/asus/dmlib/util/DMLog;->logException(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 82
    .end local v0           #e:Ljava/io/IOException;
    .end local v1           #s:Lcom/asus/dmlib/tree/DMTreeSerializer;
    :catch_1
    move-exception v2

    move-object v0, v2

    .line 83
    .local v0, e:Ljava/io/FileNotFoundException;
    :try_start_2
    invoke-static {v0}, Lcom/asus/dmlib/util/DMLog;->logException(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 88
    if-eqz p1, :cond_0

    .line 89
    :try_start_3
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 90
    :catch_2
    move-exception v0

    .line 91
    .local v0, e:Ljava/io/IOException;
    invoke-static {v0}, Lcom/asus/dmlib/util/DMLog;->logException(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 84
    .end local v0           #e:Ljava/io/IOException;
    :catch_3
    move-exception v2

    move-object v0, v2

    .line 85
    .restart local v0       #e:Ljava/io/IOException;
    :try_start_4
    invoke-static {v0}, Lcom/asus/dmlib/util/DMLog;->logException(Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 88
    if-eqz p1, :cond_0

    .line 89
    :try_start_5
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_0

    .line 90
    :catch_4
    move-exception v0

    .line 91
    invoke-static {v0}, Lcom/asus/dmlib/util/DMLog;->logException(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 87
    .end local v0           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v2

    .line 88
    if-eqz p1, :cond_1

    .line 89
    :try_start_6
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    .line 92
    :cond_1
    :goto_1
    throw v2

    .line 90
    :catch_5
    move-exception v0

    .line 91
    .restart local v0       #e:Ljava/io/IOException;
    invoke-static {v0}, Lcom/asus/dmlib/util/DMLog;->logException(Ljava/lang/Throwable;)V

    goto :goto_1
.end method
