.class public Lorg/dom4j/EmbeddedHandlerTest$EmbeddedHandler;
.super Ljava/lang/Object;
.source "EmbeddedHandlerTest.java"

# interfaces
.implements Lorg/dom4j/ElementHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/dom4j/EmbeddedHandlerTest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "EmbeddedHandler"
.end annotation


# instance fields
.field final this$0:Lorg/dom4j/EmbeddedHandlerTest;


# direct methods
.method public constructor <init>(Lorg/dom4j/EmbeddedHandlerTest;)V
    .locals 0
    .parameter

    .prologue
    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/dom4j/EmbeddedHandlerTest$EmbeddedHandler;->this$0:Lorg/dom4j/EmbeddedHandlerTest;

    return-void
.end method


# virtual methods
.method public onEnd(Lorg/dom4j/ElementPath;)V
    .locals 0
    .parameter "path"

    .prologue
    .line 130
    return-void
.end method

.method public onStart(Lorg/dom4j/ElementPath;)V
    .locals 4
    .parameter "path"

    .prologue
    .line 125
    iget-object v0, p0, Lorg/dom4j/EmbeddedHandlerTest$EmbeddedHandler;->this$0:Lorg/dom4j/EmbeddedHandlerTest;

    invoke-static {v0}, Lorg/dom4j/EmbeddedHandlerTest;->access$0(Lorg/dom4j/EmbeddedHandlerTest;)[Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lorg/dom4j/EmbeddedHandlerTest$EmbeddedHandler;->this$0:Lorg/dom4j/EmbeddedHandlerTest;

    iget v1, v1, Lorg/dom4j/EmbeddedHandlerTest;->test:I

    aget-object v0, v0, v1

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-interface {p1}, Lorg/dom4j/ElementPath;->getCurrent()Lorg/dom4j/Element;

    move-result-object v2

    const-string v3, "name"

    invoke-interface {v2, v3}, Lorg/dom4j/Element;->attribute(Ljava/lang/String;)Lorg/dom4j/Attribute;

    move-result-object v2

    invoke-interface {v2}, Lorg/dom4j/Attribute;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 126
    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    .line 125
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 127
    return-void
.end method
