.class public Lorg/apache/xpath/operations/String;
.super Lorg/apache/xpath/operations/UnaryOperation;
.source "String.java"


# static fields
.field static final serialVersionUID:J = 0x29438c3e2055eea8L


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 29
    invoke-direct {p0}, Lorg/apache/xpath/operations/UnaryOperation;-><init>()V

    return-void
.end method


# virtual methods
.method public operate(Lorg/apache/xpath/objects/XObject;)Lorg/apache/xpath/objects/XObject;
    .registers 2
    .parameter "right"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    .line 45
    invoke-virtual {p1}, Lorg/apache/xpath/objects/XObject;->xstr()Lorg/apache/xml/utils/XMLString;

    move-result-object p0

    .end local p0
    check-cast p0, Lorg/apache/xpath/objects/XString;

    return-object p0
.end method
