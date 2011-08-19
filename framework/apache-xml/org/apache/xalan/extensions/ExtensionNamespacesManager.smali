.class public Lorg/apache/xalan/extensions/ExtensionNamespacesManager;
.super Ljava/lang/Object;
.source "ExtensionNamespacesManager.java"


# instance fields
.field private m_extensions:Ljava/util/Vector;

.field private m_predefExtensions:Ljava/util/Vector;

.field private m_unregisteredExtensions:Ljava/util/Vector;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/apache/xalan/extensions/ExtensionNamespacesManager;->m_extensions:Ljava/util/Vector;

    .line 43
    new-instance v0, Ljava/util/Vector;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Ljava/util/Vector;-><init>(I)V

    iput-object v0, p0, Lorg/apache/xalan/extensions/ExtensionNamespacesManager;->m_predefExtensions:Ljava/util/Vector;

    .line 48
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/apache/xalan/extensions/ExtensionNamespacesManager;->m_unregisteredExtensions:Ljava/util/Vector;

    .line 57
    invoke-direct {p0}, Lorg/apache/xalan/extensions/ExtensionNamespacesManager;->setPredefinedNamespaces()V

    .line 58
    return-void
.end method

.method private setPredefinedNamespaces()V
    .registers 12

    .prologue
    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 210
    const-string v3, "http://xml.apache.org/xalan/java"

    .line 211
    .local v3, uri:Ljava/lang/String;
    const-string v0, "org.apache.xalan.extensions.ExtensionHandlerJavaPackage"

    .line 212
    .local v0, handlerClassName:Ljava/lang/String;
    const-string v1, "javapackage"

    .line 213
    .local v1, lang:Ljava/lang/String;
    const-string v2, ""

    .line 214
    .local v2, lib:Ljava/lang/String;
    iget-object v4, p0, Lorg/apache/xalan/extensions/ExtensionNamespacesManager;->m_predefExtensions:Ljava/util/Vector;

    new-instance v5, Lorg/apache/xalan/extensions/ExtensionNamespaceSupport;

    new-array v6, v10, [Ljava/lang/Object;

    aput-object v3, v6, v7

    aput-object v1, v6, v8

    aput-object v2, v6, v9

    invoke-direct {v5, v3, v0, v6}, Lorg/apache/xalan/extensions/ExtensionNamespaceSupport;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v4, v5}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 217
    const-string v3, "http://xml.apache.org/xslt/java"

    .line 218
    iget-object v4, p0, Lorg/apache/xalan/extensions/ExtensionNamespacesManager;->m_predefExtensions:Ljava/util/Vector;

    new-instance v5, Lorg/apache/xalan/extensions/ExtensionNamespaceSupport;

    new-array v6, v10, [Ljava/lang/Object;

    aput-object v3, v6, v7

    aput-object v1, v6, v8

    aput-object v2, v6, v9

    invoke-direct {v5, v3, v0, v6}, Lorg/apache/xalan/extensions/ExtensionNamespaceSupport;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v4, v5}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 221
    const-string v3, "http://xsl.lotus.com/java"

    .line 222
    iget-object v4, p0, Lorg/apache/xalan/extensions/ExtensionNamespacesManager;->m_predefExtensions:Ljava/util/Vector;

    new-instance v5, Lorg/apache/xalan/extensions/ExtensionNamespaceSupport;

    new-array v6, v10, [Ljava/lang/Object;

    aput-object v3, v6, v7

    aput-object v1, v6, v8

    aput-object v2, v6, v9

    invoke-direct {v5, v3, v0, v6}, Lorg/apache/xalan/extensions/ExtensionNamespaceSupport;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v4, v5}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 225
    const-string v3, "http://xml.apache.org/xalan"

    .line 226
    const-string v0, "org.apache.xalan.extensions.ExtensionHandlerJavaClass"

    .line 227
    const-string v1, "javaclass"

    .line 228
    const-string v2, "org.apache.xalan.lib.Extensions"

    .line 229
    iget-object v4, p0, Lorg/apache/xalan/extensions/ExtensionNamespacesManager;->m_predefExtensions:Ljava/util/Vector;

    new-instance v5, Lorg/apache/xalan/extensions/ExtensionNamespaceSupport;

    new-array v6, v10, [Ljava/lang/Object;

    aput-object v3, v6, v7

    aput-object v1, v6, v8

    aput-object v2, v6, v9

    invoke-direct {v5, v3, v0, v6}, Lorg/apache/xalan/extensions/ExtensionNamespaceSupport;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v4, v5}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 232
    const-string v3, "http://xml.apache.org/xslt"

    .line 233
    iget-object v4, p0, Lorg/apache/xalan/extensions/ExtensionNamespacesManager;->m_predefExtensions:Ljava/util/Vector;

    new-instance v5, Lorg/apache/xalan/extensions/ExtensionNamespaceSupport;

    new-array v6, v10, [Ljava/lang/Object;

    aput-object v3, v6, v7

    aput-object v1, v6, v8

    aput-object v2, v6, v9

    invoke-direct {v5, v3, v0, v6}, Lorg/apache/xalan/extensions/ExtensionNamespaceSupport;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v4, v5}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 237
    const-string v3, "http://xml.apache.org/xalan/redirect"

    .line 238
    const-string v2, "org.apache.xalan.lib.Redirect"

    .line 239
    iget-object v4, p0, Lorg/apache/xalan/extensions/ExtensionNamespacesManager;->m_predefExtensions:Ljava/util/Vector;

    new-instance v5, Lorg/apache/xalan/extensions/ExtensionNamespaceSupport;

    new-array v6, v10, [Ljava/lang/Object;

    aput-object v3, v6, v7

    aput-object v1, v6, v8

    aput-object v2, v6, v9

    invoke-direct {v5, v3, v0, v6}, Lorg/apache/xalan/extensions/ExtensionNamespaceSupport;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v4, v5}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 242
    const-string v3, "http://xml.apache.org/xalan/PipeDocument"

    .line 243
    const-string v2, "org.apache.xalan.lib.PipeDocument"

    .line 244
    iget-object v4, p0, Lorg/apache/xalan/extensions/ExtensionNamespacesManager;->m_predefExtensions:Ljava/util/Vector;

    new-instance v5, Lorg/apache/xalan/extensions/ExtensionNamespaceSupport;

    new-array v6, v10, [Ljava/lang/Object;

    aput-object v3, v6, v7

    aput-object v1, v6, v8

    aput-object v2, v6, v9

    invoke-direct {v5, v3, v0, v6}, Lorg/apache/xalan/extensions/ExtensionNamespaceSupport;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v4, v5}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 247
    const-string v3, "http://xml.apache.org/xalan/sql"

    .line 248
    const-string v2, "org.apache.xalan.lib.sql.XConnection"

    .line 249
    iget-object v4, p0, Lorg/apache/xalan/extensions/ExtensionNamespacesManager;->m_predefExtensions:Ljava/util/Vector;

    new-instance v5, Lorg/apache/xalan/extensions/ExtensionNamespaceSupport;

    new-array v6, v10, [Ljava/lang/Object;

    aput-object v3, v6, v7

    aput-object v1, v6, v8

    aput-object v2, v6, v9

    invoke-direct {v5, v3, v0, v6}, Lorg/apache/xalan/extensions/ExtensionNamespaceSupport;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v4, v5}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 255
    const-string v3, "http://exslt.org/common"

    .line 256
    const-string v2, "org.apache.xalan.lib.ExsltCommon"

    .line 257
    iget-object v4, p0, Lorg/apache/xalan/extensions/ExtensionNamespacesManager;->m_predefExtensions:Ljava/util/Vector;

    new-instance v5, Lorg/apache/xalan/extensions/ExtensionNamespaceSupport;

    new-array v6, v10, [Ljava/lang/Object;

    aput-object v3, v6, v7

    aput-object v1, v6, v8

    aput-object v2, v6, v9

    invoke-direct {v5, v3, v0, v6}, Lorg/apache/xalan/extensions/ExtensionNamespaceSupport;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v4, v5}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 260
    const-string v3, "http://exslt.org/math"

    .line 261
    const-string v2, "org.apache.xalan.lib.ExsltMath"

    .line 262
    iget-object v4, p0, Lorg/apache/xalan/extensions/ExtensionNamespacesManager;->m_predefExtensions:Ljava/util/Vector;

    new-instance v5, Lorg/apache/xalan/extensions/ExtensionNamespaceSupport;

    new-array v6, v10, [Ljava/lang/Object;

    aput-object v3, v6, v7

    aput-object v1, v6, v8

    aput-object v2, v6, v9

    invoke-direct {v5, v3, v0, v6}, Lorg/apache/xalan/extensions/ExtensionNamespaceSupport;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v4, v5}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 265
    const-string v3, "http://exslt.org/sets"

    .line 266
    const-string v2, "org.apache.xalan.lib.ExsltSets"

    .line 267
    iget-object v4, p0, Lorg/apache/xalan/extensions/ExtensionNamespacesManager;->m_predefExtensions:Ljava/util/Vector;

    new-instance v5, Lorg/apache/xalan/extensions/ExtensionNamespaceSupport;

    new-array v6, v10, [Ljava/lang/Object;

    aput-object v3, v6, v7

    aput-object v1, v6, v8

    aput-object v2, v6, v9

    invoke-direct {v5, v3, v0, v6}, Lorg/apache/xalan/extensions/ExtensionNamespaceSupport;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v4, v5}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 270
    const-string v3, "http://exslt.org/dates-and-times"

    .line 271
    const-string v2, "org.apache.xalan.lib.ExsltDatetime"

    .line 272
    iget-object v4, p0, Lorg/apache/xalan/extensions/ExtensionNamespacesManager;->m_predefExtensions:Ljava/util/Vector;

    new-instance v5, Lorg/apache/xalan/extensions/ExtensionNamespaceSupport;

    new-array v6, v10, [Ljava/lang/Object;

    aput-object v3, v6, v7

    aput-object v1, v6, v8

    aput-object v2, v6, v9

    invoke-direct {v5, v3, v0, v6}, Lorg/apache/xalan/extensions/ExtensionNamespaceSupport;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v4, v5}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 275
    const-string v3, "http://exslt.org/dynamic"

    .line 276
    const-string v2, "org.apache.xalan.lib.ExsltDynamic"

    .line 277
    iget-object v4, p0, Lorg/apache/xalan/extensions/ExtensionNamespacesManager;->m_predefExtensions:Ljava/util/Vector;

    new-instance v5, Lorg/apache/xalan/extensions/ExtensionNamespaceSupport;

    new-array v6, v10, [Ljava/lang/Object;

    aput-object v3, v6, v7

    aput-object v1, v6, v8

    aput-object v2, v6, v9

    invoke-direct {v5, v3, v0, v6}, Lorg/apache/xalan/extensions/ExtensionNamespaceSupport;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v4, v5}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 280
    const-string v3, "http://exslt.org/strings"

    .line 281
    const-string v2, "org.apache.xalan.lib.ExsltStrings"

    .line 282
    iget-object v4, p0, Lorg/apache/xalan/extensions/ExtensionNamespacesManager;->m_predefExtensions:Ljava/util/Vector;

    new-instance v5, Lorg/apache/xalan/extensions/ExtensionNamespaceSupport;

    new-array v6, v10, [Ljava/lang/Object;

    aput-object v3, v6, v7

    aput-object v1, v6, v8

    aput-object v2, v6, v9

    invoke-direct {v5, v3, v0, v6}, Lorg/apache/xalan/extensions/ExtensionNamespaceSupport;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v4, v5}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 284
    return-void
.end method


# virtual methods
.method public defineJavaNamespace(Ljava/lang/String;)Lorg/apache/xalan/extensions/ExtensionNamespaceSupport;
    .registers 3
    .parameter "ns"

    .prologue
    .line 157
    invoke-virtual {p0, p1, p1}, Lorg/apache/xalan/extensions/ExtensionNamespacesManager;->defineJavaNamespace(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/xalan/extensions/ExtensionNamespaceSupport;

    move-result-object v0

    return-object v0
.end method

.method public defineJavaNamespace(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/xalan/extensions/ExtensionNamespaceSupport;
    .registers 15
    .parameter "ns"
    .parameter "classOrPackage"

    .prologue
    const/4 v4, 0x0

    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 161
    if-eqz p1, :cond_11

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_13

    :cond_11
    move-object v3, v4

    .line 190
    :goto_12
    return-object v3

    .line 167
    :cond_13
    move-object v0, p2

    .line 168
    .local v0, className:Ljava/lang/String;
    const-string v3, "class:"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_21

    .line 169
    const/4 v3, 0x6

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 171
    :cond_21
    const-string v3, "/"

    invoke-virtual {v0, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    .line 172
    .local v2, lastSlash:I
    const/4 v3, -0x1

    if-eq v3, v2, :cond_30

    .line 173
    add-int/lit8 v3, v2, 0x1

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 177
    :cond_30
    if-eqz v0, :cond_3c

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_3e

    :cond_3c
    move-object v3, v4

    .line 178
    goto :goto_12

    .line 182
    :cond_3e
    :try_start_3e
    invoke-static {v0}, Lorg/apache/xalan/extensions/ExtensionHandler;->getClassForName(Ljava/lang/String;)Ljava/lang/Class;

    .line 183
    new-instance v3, Lorg/apache/xalan/extensions/ExtensionNamespaceSupport;

    const-string v4, "org.apache.xalan.extensions.ExtensionHandlerJavaClass"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    const/4 v6, 0x1

    const-string v7, "javaclass"

    aput-object v7, v5, v6

    const/4 v6, 0x2

    aput-object v0, v5, v6

    invoke-direct {v3, p1, v4, v5}, Lorg/apache/xalan/extensions/ExtensionNamespaceSupport;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_56
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3e .. :try_end_56} :catch_57

    goto :goto_12

    .line 188
    :catch_57
    move-exception v3

    move-object v1, v3

    .line 190
    .local v1, e:Ljava/lang/ClassNotFoundException;
    new-instance v3, Lorg/apache/xalan/extensions/ExtensionNamespaceSupport;

    const-string v4, "org.apache.xalan.extensions.ExtensionHandlerJavaPackage"

    new-array v5, v11, [Ljava/lang/Object;

    aput-object p1, v5, v8

    const-string v6, "javapackage"

    aput-object v6, v5, v9

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v10

    invoke-direct {v3, p1, v4, v5}, Lorg/apache/xalan/extensions/ExtensionNamespaceSupport;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_12
.end method

.method public getExtensions()Ljava/util/Vector;
    .registers 2

    .prologue
    .line 121
    iget-object v0, p0, Lorg/apache/xalan/extensions/ExtensionNamespacesManager;->m_extensions:Ljava/util/Vector;

    return-object v0
.end method

.method public namespaceIndex(Ljava/lang/String;Ljava/util/Vector;)I
    .registers 5
    .parameter "namespace"
    .parameter "extensions"

    .prologue
    .line 105
    const/4 v0, 0x0

    .end local p0
    .local v0, i:I
    :goto_1
    invoke-virtual {p2}, Ljava/util/Vector;->size()I

    move-result v1

    if-ge v0, v1, :cond_1c

    .line 107
    invoke-virtual {p2, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/xalan/extensions/ExtensionNamespaceSupport;

    invoke-virtual {p0}, Lorg/apache/xalan/extensions/ExtensionNamespaceSupport;->getNamespace()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    move v1, v0

    .line 110
    :goto_18
    return v1

    .line 105
    :cond_19
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 110
    :cond_1c
    const/4 v1, -0x1

    goto :goto_18
.end method

.method public registerExtension(Ljava/lang/String;)V
    .registers 5
    .parameter "namespace"

    .prologue
    const/4 v2, -0x1

    .line 72
    iget-object v1, p0, Lorg/apache/xalan/extensions/ExtensionNamespacesManager;->m_extensions:Ljava/util/Vector;

    invoke-virtual {p0, p1, v1}, Lorg/apache/xalan/extensions/ExtensionNamespacesManager;->namespaceIndex(Ljava/lang/String;Ljava/util/Vector;)I

    move-result v1

    if-ne v1, v2, :cond_1c

    .line 74
    iget-object v1, p0, Lorg/apache/xalan/extensions/ExtensionNamespacesManager;->m_predefExtensions:Ljava/util/Vector;

    invoke-virtual {p0, p1, v1}, Lorg/apache/xalan/extensions/ExtensionNamespacesManager;->namespaceIndex(Ljava/lang/String;Ljava/util/Vector;)I

    move-result v0

    .line 75
    .local v0, predef:I
    if-eq v0, v2, :cond_1d

    .line 76
    iget-object v1, p0, Lorg/apache/xalan/extensions/ExtensionNamespacesManager;->m_extensions:Ljava/util/Vector;

    iget-object v2, p0, Lorg/apache/xalan/extensions/ExtensionNamespacesManager;->m_predefExtensions:Ljava/util/Vector;

    invoke-virtual {v2, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 80
    .end local v0           #predef:I
    :cond_1c
    :goto_1c
    return-void

    .line 77
    .restart local v0       #predef:I
    :cond_1d
    iget-object v1, p0, Lorg/apache/xalan/extensions/ExtensionNamespacesManager;->m_unregisteredExtensions:Ljava/util/Vector;

    invoke-virtual {v1, p1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1c

    .line 78
    iget-object v1, p0, Lorg/apache/xalan/extensions/ExtensionNamespacesManager;->m_unregisteredExtensions:Ljava/util/Vector;

    invoke-virtual {v1, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_1c
.end method

.method public registerExtension(Lorg/apache/xalan/extensions/ExtensionNamespaceSupport;)V
    .registers 5
    .parameter "extNsSpt"

    .prologue
    .line 89
    invoke-virtual {p1}, Lorg/apache/xalan/extensions/ExtensionNamespaceSupport;->getNamespace()Ljava/lang/String;

    move-result-object v0

    .line 90
    .local v0, namespace:Ljava/lang/String;
    iget-object v1, p0, Lorg/apache/xalan/extensions/ExtensionNamespacesManager;->m_extensions:Ljava/util/Vector;

    invoke-virtual {p0, v0, v1}, Lorg/apache/xalan/extensions/ExtensionNamespacesManager;->namespaceIndex(Ljava/lang/String;Ljava/util/Vector;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1f

    .line 92
    iget-object v1, p0, Lorg/apache/xalan/extensions/ExtensionNamespacesManager;->m_extensions:Ljava/util/Vector;

    invoke-virtual {v1, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 93
    iget-object v1, p0, Lorg/apache/xalan/extensions/ExtensionNamespacesManager;->m_unregisteredExtensions:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 94
    iget-object v1, p0, Lorg/apache/xalan/extensions/ExtensionNamespacesManager;->m_unregisteredExtensions:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    .line 97
    :cond_1f
    return-void
.end method

.method public registerUnregisteredNamespaces()V
    .registers 5

    .prologue
    .line 129
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    iget-object v3, p0, Lorg/apache/xalan/extensions/ExtensionNamespacesManager;->m_unregisteredExtensions:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    if-ge v1, v3, :cond_1f

    .line 131
    iget-object v3, p0, Lorg/apache/xalan/extensions/ExtensionNamespacesManager;->m_unregisteredExtensions:Ljava/util/Vector;

    invoke-virtual {v3, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 132
    .local v2, ns:Ljava/lang/String;
    invoke-virtual {p0, v2}, Lorg/apache/xalan/extensions/ExtensionNamespacesManager;->defineJavaNamespace(Ljava/lang/String;)Lorg/apache/xalan/extensions/ExtensionNamespaceSupport;

    move-result-object v0

    .line 133
    .local v0, extNsSpt:Lorg/apache/xalan/extensions/ExtensionNamespaceSupport;
    if-eqz v0, :cond_1c

    .line 134
    iget-object v3, p0, Lorg/apache/xalan/extensions/ExtensionNamespacesManager;->m_extensions:Ljava/util/Vector;

    invoke-virtual {v3, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 129
    :cond_1c
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 136
    .end local v0           #extNsSpt:Lorg/apache/xalan/extensions/ExtensionNamespaceSupport;
    .end local v2           #ns:Ljava/lang/String;
    :cond_1f
    return-void
.end method
