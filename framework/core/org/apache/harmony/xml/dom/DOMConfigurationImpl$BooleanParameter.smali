.class abstract Lorg/apache/harmony/xml/dom/DOMConfigurationImpl$BooleanParameter;
.super Ljava/lang/Object;
.source "DOMConfigurationImpl.java"

# interfaces
.implements Lorg/apache/harmony/xml/dom/DOMConfigurationImpl$Parameter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "BooleanParameter"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 324
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public canSet(Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;Ljava/lang/Object;)Z
    .registers 4
    .parameter "config"
    .parameter "value"

    .prologue
    .line 326
    instance-of v0, p2, Ljava/lang/Boolean;

    return v0
.end method
