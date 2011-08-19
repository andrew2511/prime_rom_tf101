.class Lorg/apache/james/mime4j/message/TempFileTextBody;
.super Lorg/apache/james/mime4j/message/AbstractBody;
.source "TempFileTextBody.java"

# interfaces
.implements Lorg/apache/james/mime4j/message/TextBody;


# static fields
.field private static log:Lorg/apache/james/mime4j/Log;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    const-class v0, Lorg/apache/james/mime4j/message/TempFileTextBody;

    invoke-static {v0}, Lorg/apache/james/mime4j/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/james/mime4j/Log;

    move-result-object v0

    sput-object v0, Lorg/apache/james/mime4j/message/TempFileTextBody;->log:Lorg/apache/james/mime4j/Log;

    return-void
.end method
