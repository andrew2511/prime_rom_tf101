.class Ljavax/xml/xpath/XPathFactoryFinder$1;
.super Ljavax/xml/xpath/XPathFactoryFinder$SingleIterator;
.source "XPathFactoryFinder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljavax/xml/xpath/XPathFactoryFinder;->createServiceFileIterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljavax/xml/xpath/XPathFactoryFinder;


# direct methods
.method constructor <init>(Ljavax/xml/xpath/XPathFactoryFinder;)V
    .registers 3
    .parameter

    .prologue
    .line 380
    iput-object p1, p0, Ljavax/xml/xpath/XPathFactoryFinder$1;->this$0:Ljavax/xml/xpath/XPathFactoryFinder;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ljavax/xml/xpath/XPathFactoryFinder$SingleIterator;-><init>(Ljavax/xml/xpath/XPathFactoryFinder$1;)V

    return-void
.end method


# virtual methods
.method protected value()Ljava/lang/Object;
    .registers 3

    .prologue
    .line 382
    const-class v1, Ljavax/xml/xpath/XPathFactoryFinder;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 383
    .local v0, classLoader:Ljava/lang/ClassLoader;
    invoke-static {}, Ljavax/xml/xpath/XPathFactoryFinder;->access$100()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ljavax/xml/xpath/SecuritySupport;->getResourceAsURL(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/net/URL;

    move-result-object v1

    return-object v1
.end method
