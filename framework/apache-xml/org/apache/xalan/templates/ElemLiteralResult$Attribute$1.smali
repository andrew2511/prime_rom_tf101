.class Lorg/apache/xalan/templates/ElemLiteralResult$Attribute$1;
.super Ljava/lang/Object;
.source "ElemLiteralResult.java"

# interfaces
.implements Lorg/w3c/dom/NodeList;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/xalan/templates/ElemLiteralResult$Attribute;->getChildNodes()Lorg/w3c/dom/NodeList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/apache/xalan/templates/ElemLiteralResult$Attribute;


# direct methods
.method constructor <init>(Lorg/apache/xalan/templates/ElemLiteralResult$Attribute;)V
    .registers 2
    .parameter

    .prologue
    .line 790
    iput-object p1, p0, Lorg/apache/xalan/templates/ElemLiteralResult$Attribute$1;->this$1:Lorg/apache/xalan/templates/ElemLiteralResult$Attribute;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getLength()I
    .registers 2

    .prologue
    .line 792
    const/4 v0, 0x0

    return v0
.end method

.method public item(I)Lorg/w3c/dom/Node;
    .registers 3
    .parameter "index"

    .prologue
    .line 795
    const/4 v0, 0x0

    return-object v0
.end method
