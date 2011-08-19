.class public Lorg/apache/xml/dtm/DTMConfigurationException;
.super Lorg/apache/xml/dtm/DTMException;
.source "DTMConfigurationException.java"


# static fields
.field static final serialVersionUID:J = -0x3ff2750fa5b3bd7eL


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 36
    const-string v0, "Configuration Error"

    invoke-direct {p0, v0}, Lorg/apache/xml/dtm/DTMException;-><init>(Ljava/lang/String;)V

    .line 37
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2
    .parameter "msg"

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lorg/apache/xml/dtm/DTMException;-><init>(Ljava/lang/String;)V

    .line 47
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3
    .parameter "msg"
    .parameter "e"

    .prologue
    .line 68
    invoke-direct {p0, p1, p2}, Lorg/apache/xml/dtm/DTMException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 69
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljavax/xml/transform/SourceLocator;)V
    .registers 3
    .parameter "message"
    .parameter "locator"

    .prologue
    .line 83
    invoke-direct {p0, p1, p2}, Lorg/apache/xml/dtm/DTMException;-><init>(Ljava/lang/String;Ljavax/xml/transform/SourceLocator;)V

    .line 84
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljavax/xml/transform/SourceLocator;Ljava/lang/Throwable;)V
    .registers 4
    .parameter "message"
    .parameter "locator"
    .parameter "e"

    .prologue
    .line 97
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/xml/dtm/DTMException;-><init>(Ljava/lang/String;Ljavax/xml/transform/SourceLocator;Ljava/lang/Throwable;)V

    .line 98
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .registers 2
    .parameter "e"

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lorg/apache/xml/dtm/DTMException;-><init>(Ljava/lang/Throwable;)V

    .line 58
    return-void
.end method
