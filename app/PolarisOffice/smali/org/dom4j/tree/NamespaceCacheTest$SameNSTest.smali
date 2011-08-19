.class Lorg/dom4j/tree/NamespaceCacheTest$SameNSTest;
.super Ljava/lang/Object;
.source "NamespaceCacheTest.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/dom4j/tree/NamespaceCacheTest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SameNSTest"
.end annotation


# instance fields
.field final this$0:Lorg/dom4j/tree/NamespaceCacheTest;


# direct methods
.method private constructor <init>(Lorg/dom4j/tree/NamespaceCacheTest;)V
    .locals 0
    .parameter

    .prologue
    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/dom4j/tree/NamespaceCacheTest$SameNSTest;->this$0:Lorg/dom4j/tree/NamespaceCacheTest;

    return-void
.end method

.method constructor <init>(Lorg/dom4j/tree/NamespaceCacheTest;Lorg/dom4j/tree/NamespaceCacheTest$SameNSTest;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 84
    invoke-direct {p0, p1}, Lorg/dom4j/tree/NamespaceCacheTest$SameNSTest;-><init>(Lorg/dom4j/tree/NamespaceCacheTest;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 86
    new-instance v0, Lorg/dom4j/tree/NamespaceCache;

    invoke-direct {v0}, Lorg/dom4j/tree/NamespaceCache;-><init>()V

    .line 88
    .local v0, cache:Lorg/dom4j/tree/NamespaceCache;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    const/16 v2, 0x2710

    if-lt v1, v2, :cond_0

    .line 91
    return-void

    .line 89
    :cond_0
    const-string v2, "prefix"

    const-string v3, "uri"

    invoke-virtual {v0, v2, v3}, Lorg/dom4j/tree/NamespaceCache;->get(Ljava/lang/String;Ljava/lang/String;)Lorg/dom4j/Namespace;

    .line 88
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method
