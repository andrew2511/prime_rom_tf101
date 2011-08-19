.class Lcom/asus/dictionary/Dictionary$3;
.super Ljava/lang/Object;
.source "Dictionary.java"

# interfaces
.implements Lorg/htmlparser/NodeFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/asus/dictionary/Dictionary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/asus/dictionary/Dictionary;


# direct methods
.method constructor <init>(Lcom/asus/dictionary/Dictionary;)V
    .locals 0
    .parameter

    .prologue
    .line 1187
    iput-object p1, p0, Lcom/asus/dictionary/Dictionary$3;->this$0:Lcom/asus/dictionary/Dictionary;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Lorg/htmlparser/Node;)Z
    .locals 4
    .parameter "node"

    .prologue
    .line 1192
    instance-of v3, p1, Lorg/htmlparser/Tag;

    if-eqz v3, :cond_0

    .line 1194
    move-object v0, p1

    check-cast v0, Lorg/htmlparser/Tag;

    move-object v2, v0

    .line 1195
    .local v2, tag:Lorg/htmlparser/Tag;
    const-string v3, "class"

    invoke-interface {v2, v3}, Lorg/htmlparser/Tag;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1196
    .local v1, classValue:Ljava/lang/String;
    if-eqz v1, :cond_0

    const-string v3, "err"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    .line 1198
    .end local v1           #classValue:Ljava/lang/String;
    .end local v2           #tag:Lorg/htmlparser/Tag;
    :goto_0
    return v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method
