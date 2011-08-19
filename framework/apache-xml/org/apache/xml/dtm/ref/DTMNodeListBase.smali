.class public Lorg/apache/xml/dtm/ref/DTMNodeListBase;
.super Ljava/lang/Object;
.source "DTMNodeListBase.java"

# interfaces
.implements Lorg/w3c/dom/NodeList;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    return-void
.end method


# virtual methods
.method public getLength()I
    .registers 2

    .prologue
    .line 79
    const/4 v0, 0x0

    return v0
.end method

.method public item(I)Lorg/w3c/dom/Node;
    .registers 3
    .parameter "index"

    .prologue
    .line 71
    const/4 v0, 0x0

    return-object v0
.end method
