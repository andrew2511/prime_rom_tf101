.class Lorg/dom4j/rule/StylesheetTest$2;
.super Ljava/lang/Object;
.source "StylesheetTest.java"

# interfaces
.implements Lorg/dom4j/rule/Action;


# instance fields
.field final this$0:Lorg/dom4j/rule/StylesheetTest;

.field private final val$b:Ljava/lang/StringBuffer;

.field private final val$s:Lorg/dom4j/rule/Stylesheet;


# direct methods
.method constructor <init>(Lorg/dom4j/rule/StylesheetTest;Ljava/lang/StringBuffer;Lorg/dom4j/rule/Stylesheet;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    iput-object p1, p0, Lorg/dom4j/rule/StylesheetTest$2;->this$0:Lorg/dom4j/rule/StylesheetTest;

    iput-object p2, p0, Lorg/dom4j/rule/StylesheetTest$2;->val$b:Ljava/lang/StringBuffer;

    iput-object p3, p0, Lorg/dom4j/rule/StylesheetTest$2;->val$s:Lorg/dom4j/rule/Stylesheet;

    return-void
.end method


# virtual methods
.method public run(Lorg/dom4j/Node;)V
    .locals 2
    .parameter "node"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 85
    iget-object v0, p0, Lorg/dom4j/rule/StylesheetTest$2;->val$b:Ljava/lang/StringBuffer;

    const-string v1, "url"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 86
    iget-object v0, p0, Lorg/dom4j/rule/StylesheetTest$2;->val$s:Lorg/dom4j/rule/Stylesheet;

    invoke-virtual {v0, p1}, Lorg/dom4j/rule/Stylesheet;->applyTemplates(Ljava/lang/Object;)V

    .line 87
    return-void
.end method
