.class Lorg/dom4j/rule/RuleManager$1;
.super Ljava/lang/Object;
.source "RuleManager.java"

# interfaces
.implements Lorg/dom4j/rule/Action;


# instance fields
.field final this$0:Lorg/dom4j/rule/RuleManager;

.field private final val$mode:Lorg/dom4j/rule/Mode;


# direct methods
.method constructor <init>(Lorg/dom4j/rule/RuleManager;Lorg/dom4j/rule/Mode;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 166
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    iput-object p1, p0, Lorg/dom4j/rule/RuleManager$1;->this$0:Lorg/dom4j/rule/RuleManager;

    iput-object p2, p0, Lorg/dom4j/rule/RuleManager$1;->val$mode:Lorg/dom4j/rule/Mode;

    return-void
.end method


# virtual methods
.method public run(Lorg/dom4j/Node;)V
    .locals 1
    .parameter "node"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 168
    instance-of v0, p1, Lorg/dom4j/Element;

    if-eqz v0, :cond_1

    .line 169
    iget-object v0, p0, Lorg/dom4j/rule/RuleManager$1;->val$mode:Lorg/dom4j/rule/Mode;

    check-cast p1, Lorg/dom4j/Element;

    .end local p1
    invoke-virtual {v0, p1}, Lorg/dom4j/rule/Mode;->applyTemplates(Lorg/dom4j/Element;)V

    .line 173
    :cond_0
    :goto_0
    return-void

    .line 170
    .restart local p1
    :cond_1
    instance-of v0, p1, Lorg/dom4j/Document;

    if-eqz v0, :cond_0

    .line 171
    iget-object v0, p0, Lorg/dom4j/rule/RuleManager$1;->val$mode:Lorg/dom4j/rule/Mode;

    check-cast p1, Lorg/dom4j/Document;

    .end local p1
    invoke-virtual {v0, p1}, Lorg/dom4j/rule/Mode;->applyTemplates(Lorg/dom4j/Document;)V

    goto :goto_0
.end method
