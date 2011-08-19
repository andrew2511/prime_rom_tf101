.class Ljavax/xml/validation/SchemaFactoryFinder$1;
.super Ljavax/xml/validation/SchemaFactoryFinder$SingleIterator;
.source "SchemaFactoryFinder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljavax/xml/validation/SchemaFactoryFinder;->createServiceFileIterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljavax/xml/validation/SchemaFactoryFinder;


# direct methods
.method constructor <init>(Ljavax/xml/validation/SchemaFactoryFinder;)V
    .registers 3
    .parameter

    .prologue
    .line 351
    iput-object p1, p0, Ljavax/xml/validation/SchemaFactoryFinder$1;->this$0:Ljavax/xml/validation/SchemaFactoryFinder;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ljavax/xml/validation/SchemaFactoryFinder$SingleIterator;-><init>(Ljavax/xml/validation/SchemaFactoryFinder$1;)V

    return-void
.end method


# virtual methods
.method protected value()Ljava/lang/Object;
    .registers 3

    .prologue
    .line 353
    const-class v1, Ljavax/xml/validation/SchemaFactoryFinder;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 355
    .local v0, classLoader:Ljava/lang/ClassLoader;
    invoke-static {}, Ljavax/xml/validation/SchemaFactoryFinder;->access$100()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ljavax/xml/validation/SecuritySupport;->getResourceAsURL(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/net/URL;

    move-result-object v1

    return-object v1
.end method
