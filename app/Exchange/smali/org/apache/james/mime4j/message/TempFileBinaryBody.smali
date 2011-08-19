.class Lorg/apache/james/mime4j/message/TempFileBinaryBody;
.super Lorg/apache/james/mime4j/message/AbstractBody;
.source "TempFileBinaryBody.java"

# interfaces
.implements Lorg/apache/james/mime4j/message/BinaryBody;


# static fields
.field private static log:Lorg/apache/james/mime4j/Log;


# instance fields
.field private parent:Lorg/apache/james/mime4j/message/Entity;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    const-class v0, Lorg/apache/james/mime4j/message/TempFileBinaryBody;

    invoke-static {v0}, Lorg/apache/james/mime4j/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/james/mime4j/Log;

    move-result-object v0

    sput-object v0, Lorg/apache/james/mime4j/message/TempFileBinaryBody;->log:Lorg/apache/james/mime4j/Log;

    return-void
.end method


# virtual methods
.method public setParent(Lorg/apache/james/mime4j/message/Entity;)V
    .locals 0
    .parameter "parent"

    .prologue
    .line 75
    iput-object p1, p0, Lorg/apache/james/mime4j/message/TempFileBinaryBody;->parent:Lorg/apache/james/mime4j/message/Entity;

    .line 76
    return-void
.end method
