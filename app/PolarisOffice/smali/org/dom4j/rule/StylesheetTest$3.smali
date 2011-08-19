.class Lorg/dom4j/rule/StylesheetTest$3;
.super Ljava/lang/Object;
.source "StylesheetTest.java"

# interfaces
.implements Lorg/dom4j/rule/Action;


# instance fields
.field final this$0:Lorg/dom4j/rule/StylesheetTest;


# direct methods
.method constructor <init>(Lorg/dom4j/rule/StylesheetTest;)V
    .locals 0
    .parameter

    .prologue
    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    iput-object p1, p0, Lorg/dom4j/rule/StylesheetTest$3;->this$0:Lorg/dom4j/rule/StylesheetTest;

    return-void
.end method


# virtual methods
.method public run(Lorg/dom4j/Node;)V
    .locals 3
    .parameter "node"

    .prologue
    .line 106
    iget-object v0, p0, Lorg/dom4j/rule/StylesheetTest$3;->this$0:Lorg/dom4j/rule/StylesheetTest;

    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, "Default ValueOf action on node: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/dom4j/rule/StylesheetTest;->access$0(Lorg/dom4j/rule/StylesheetTest;Ljava/lang/String;)V

    .line 107
    iget-object v0, p0, Lorg/dom4j/rule/StylesheetTest$3;->this$0:Lorg/dom4j/rule/StylesheetTest;

    const-string v1, "........................................"

    invoke-static {v0, v1}, Lorg/dom4j/rule/StylesheetTest;->access$0(Lorg/dom4j/rule/StylesheetTest;Ljava/lang/String;)V

    .line 108
    return-void
.end method
