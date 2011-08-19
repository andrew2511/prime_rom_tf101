.class public Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/functions/GetAccountTreeResponseImpl;
.super Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/functions/BoxResponseImpl;
.source "GetAccountTreeResponseImpl.java"

# interfaces
.implements Lcn/com/believer/songyuanframework/openapi/storage/box/functions/GetAccountTreeResponse;


# instance fields
.field private encodedTree:Ljava/lang/String;

.field private tree:Lcom/infraware/filemanager/webstorage/service/SimpleTreeNode;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/functions/BoxResponseImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public getEncodedTree()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/functions/GetAccountTreeResponseImpl;->encodedTree:Ljava/lang/String;

    return-object v0
.end method

.method public getTree()Lcom/infraware/filemanager/webstorage/service/SimpleTreeNode;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/functions/GetAccountTreeResponseImpl;->tree:Lcom/infraware/filemanager/webstorage/service/SimpleTreeNode;

    return-object v0
.end method

.method public setEncodedTree(Ljava/lang/String;)V
    .locals 0
    .parameter "encodedTree"

    .prologue
    .line 45
    iput-object p1, p0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/functions/GetAccountTreeResponseImpl;->encodedTree:Ljava/lang/String;

    .line 46
    return-void
.end method

.method public setTree(Lcom/infraware/filemanager/webstorage/service/SimpleTreeNode;)V
    .locals 0
    .parameter "tree"

    .prologue
    .line 50
    iput-object p1, p0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/functions/GetAccountTreeResponseImpl;->tree:Lcom/infraware/filemanager/webstorage/service/SimpleTreeNode;

    .line 51
    return-void
.end method
