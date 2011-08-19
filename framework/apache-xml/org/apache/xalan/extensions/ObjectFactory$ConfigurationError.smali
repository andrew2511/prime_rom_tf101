.class Lorg/apache/xalan/extensions/ObjectFactory$ConfigurationError;
.super Ljava/lang/Error;
.source "ObjectFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/xalan/extensions/ObjectFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ConfigurationError"
.end annotation


# static fields
.field static final serialVersionUID:J = 0x76da862380ef206dL


# instance fields
.field private exception:Ljava/lang/Exception;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/Exception;)V
    .registers 3
    .parameter "msg"
    .parameter "x"

    .prologue
    .line 139
    invoke-direct {p0, p1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    .line 140
    iput-object p2, p0, Lorg/apache/xalan/extensions/ObjectFactory$ConfigurationError;->exception:Ljava/lang/Exception;

    .line 141
    return-void
.end method


# virtual methods
.method getException()Ljava/lang/Exception;
    .registers 2

    .prologue
    .line 149
    iget-object v0, p0, Lorg/apache/xalan/extensions/ObjectFactory$ConfigurationError;->exception:Ljava/lang/Exception;

    return-object v0
.end method
