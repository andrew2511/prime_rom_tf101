.class Lorg/dom4j/rule/StylesheetTest$4;
.super Ljava/lang/Object;
.source "StylesheetTest.java"

# interfaces
.implements Lorg/dom4j/rule/Action;


# instance fields
.field final this$0:Lorg/dom4j/rule/StylesheetTest;

.field private final val$match:Ljava/lang/String;


# direct methods
.method constructor <init>(Lorg/dom4j/rule/StylesheetTest;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    iput-object p1, p0, Lorg/dom4j/rule/StylesheetTest$4;->this$0:Lorg/dom4j/rule/StylesheetTest;

    iput-object p2, p0, Lorg/dom4j/rule/StylesheetTest$4;->val$match:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public run(Lorg/dom4j/Node;)V
    .locals 3
    .parameter "node"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 122
    iget-object v0, p0, Lorg/dom4j/rule/StylesheetTest$4;->this$0:Lorg/dom4j/rule/StylesheetTest;

    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, "Matched pattern: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/dom4j/rule/StylesheetTest$4;->val$match:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/dom4j/rule/StylesheetTest;->access$0(Lorg/dom4j/rule/StylesheetTest;Ljava/lang/String;)V

    .line 123
    iget-object v0, p0, Lorg/dom4j/rule/StylesheetTest$4;->this$0:Lorg/dom4j/rule/StylesheetTest;

    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, "Node: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Lorg/dom4j/Node;->asXML()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/dom4j/rule/StylesheetTest;->access$0(Lorg/dom4j/rule/StylesheetTest;Ljava/lang/String;)V

    .line 124
    iget-object v0, p0, Lorg/dom4j/rule/StylesheetTest$4;->this$0:Lorg/dom4j/rule/StylesheetTest;

    const-string v1, "........................................"

    invoke-static {v0, v1}, Lorg/dom4j/rule/StylesheetTest;->access$0(Lorg/dom4j/rule/StylesheetTest;Ljava/lang/String;)V

    .line 127
    iget-object v0, p0, Lorg/dom4j/rule/StylesheetTest$4;->this$0:Lorg/dom4j/rule/StylesheetTest;

    iget-object v0, v0, Lorg/dom4j/rule/StylesheetTest;->stylesheet:Lorg/dom4j/rule/Stylesheet;

    invoke-virtual {v0, p1}, Lorg/dom4j/rule/Stylesheet;->applyTemplates(Ljava/lang/Object;)V

    .line 128
    return-void
.end method
