.class public Lcom/asus/dmlib/mo/DMAcc$Auth;
.super Ljava/lang/Object;
.source "DMAcc.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/asus/dmlib/mo/DMAcc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Auth"
.end annotation


# instance fields
.field mAuthLevel:Lcom/asus/dmlib/tree/Leaf;

.field mNonce:Lcom/asus/dmlib/tree/Leaf;

.field mPassword:Lcom/asus/dmlib/tree/Leaf;

.field mPref:Lcom/asus/dmlib/tree/Leaf;

.field mType:Lcom/asus/dmlib/tree/Leaf;

.field mUserName:Lcom/asus/dmlib/tree/Leaf;

.field final synthetic this$0:Lcom/asus/dmlib/mo/DMAcc;


# direct methods
.method public constructor <init>(Lcom/asus/dmlib/mo/DMAcc;Lcom/asus/dmlib/tree/DMTree;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter "pTree"
    .parameter "authPath"

    .prologue
    .line 46
    iput-object p1, p0, Lcom/asus/dmlib/mo/DMAcc$Auth;->this$0:Lcom/asus/dmlib/mo/DMAcc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/AAuthName"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/asus/dmlib/tree/DMTree;->getDMNode(Ljava/lang/String;)Lcom/asus/dmlib/tree/DMNode;

    move-result-object v0

    check-cast v0, Lcom/asus/dmlib/tree/Leaf;

    iput-object v0, p0, Lcom/asus/dmlib/mo/DMAcc$Auth;->mUserName:Lcom/asus/dmlib/tree/Leaf;

    .line 48
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/AAuthSecret"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/asus/dmlib/tree/DMTree;->getDMNode(Ljava/lang/String;)Lcom/asus/dmlib/tree/DMNode;

    move-result-object v0

    check-cast v0, Lcom/asus/dmlib/tree/Leaf;

    iput-object v0, p0, Lcom/asus/dmlib/mo/DMAcc$Auth;->mPassword:Lcom/asus/dmlib/tree/Leaf;

    .line 49
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/AAuthData"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/asus/dmlib/tree/DMTree;->getDMNode(Ljava/lang/String;)Lcom/asus/dmlib/tree/DMNode;

    move-result-object v0

    check-cast v0, Lcom/asus/dmlib/tree/Leaf;

    iput-object v0, p0, Lcom/asus/dmlib/mo/DMAcc$Auth;->mNonce:Lcom/asus/dmlib/tree/Leaf;

    .line 50
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/AAuthType"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/asus/dmlib/tree/DMTree;->getDMNode(Ljava/lang/String;)Lcom/asus/dmlib/tree/DMNode;

    move-result-object v0

    check-cast v0, Lcom/asus/dmlib/tree/Leaf;

    iput-object v0, p0, Lcom/asus/dmlib/mo/DMAcc$Auth;->mType:Lcom/asus/dmlib/tree/Leaf;

    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/AuthPref"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/asus/dmlib/tree/DMTree;->getDMNode(Ljava/lang/String;)Lcom/asus/dmlib/tree/DMNode;

    move-result-object v0

    check-cast v0, Lcom/asus/dmlib/tree/Leaf;

    iput-object v0, p0, Lcom/asus/dmlib/mo/DMAcc$Auth;->mPref:Lcom/asus/dmlib/tree/Leaf;

    .line 52
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/AAuthLevel"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/asus/dmlib/tree/DMTree;->getDMNode(Ljava/lang/String;)Lcom/asus/dmlib/tree/DMNode;

    move-result-object v0

    check-cast v0, Lcom/asus/dmlib/tree/Leaf;

    iput-object v0, p0, Lcom/asus/dmlib/mo/DMAcc$Auth;->mAuthLevel:Lcom/asus/dmlib/tree/Leaf;

    .line 53
    return-void
.end method
