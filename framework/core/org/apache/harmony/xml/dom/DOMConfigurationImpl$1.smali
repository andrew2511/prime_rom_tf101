.class final Lorg/apache/harmony/xml/dom/DOMConfigurationImpl$1;
.super Lorg/apache/harmony/xml/dom/DOMConfigurationImpl$BooleanParameter;
.source "DOMConfigurationImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 60
    invoke-direct {p0}, Lorg/apache/harmony/xml/dom/DOMConfigurationImpl$BooleanParameter;-><init>()V

    return-void
.end method


# virtual methods
.method public get(Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;)Ljava/lang/Object;
    .registers 3
    .parameter "config"

    .prologue
    .line 62
    #getter for: Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;->cdataSections:Z
    invoke-static {p1}, Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;->access$000(Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public set(Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;Ljava/lang/Object;)V
    .registers 4
    .parameter "config"
    .parameter "value"

    .prologue
    .line 65
    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    #setter for: Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;->cdataSections:Z
    invoke-static {p1, v0}, Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;->access$002(Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;Z)Z

    .line 66
    return-void
.end method
