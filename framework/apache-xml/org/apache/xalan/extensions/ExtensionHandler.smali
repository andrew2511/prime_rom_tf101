.class public abstract Lorg/apache/xalan/extensions/ExtensionHandler;
.super Ljava/lang/Object;
.source "ExtensionHandler.java"


# instance fields
.field protected m_namespaceUri:Ljava/lang/String;

.field protected m_scriptLang:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .parameter "namespaceUri"
    .parameter "scriptLang"

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    iput-object p1, p0, Lorg/apache/xalan/extensions/ExtensionHandler;->m_namespaceUri:Ljava/lang/String;

    .line 79
    iput-object p2, p0, Lorg/apache/xalan/extensions/ExtensionHandler;->m_scriptLang:Ljava/lang/String;

    .line 80
    return-void
.end method

.method static getClassForName(Ljava/lang/String;)Ljava/lang/Class;
    .registers 3
    .parameter "className"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 61
    const-string v0, "org.apache.xalan.xslt.extensions.Redirect"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 62
    const-string p0, "org.apache.xalan.lib.Redirect"

    .line 65
    :cond_a
    invoke-static {}, Lorg/apache/xalan/extensions/ObjectFactory;->findClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lorg/apache/xalan/extensions/ObjectFactory;->findProviderClass(Ljava/lang/String;Ljava/lang/ClassLoader;Z)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public abstract callFunction(Ljava/lang/String;Ljava/util/Vector;Ljava/lang/Object;Lorg/apache/xalan/extensions/ExpressionContext;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation
.end method

.method public abstract callFunction(Lorg/apache/xpath/functions/FuncExtFunction;Ljava/util/Vector;Lorg/apache/xalan/extensions/ExpressionContext;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation
.end method

.method public abstract isElementAvailable(Ljava/lang/String;)Z
.end method

.method public abstract isFunctionAvailable(Ljava/lang/String;)Z
.end method

.method public abstract processElement(Ljava/lang/String;Lorg/apache/xalan/templates/ElemTemplateElement;Lorg/apache/xalan/transformer/TransformerImpl;Lorg/apache/xalan/templates/Stylesheet;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method
