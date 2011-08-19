.class public Lcom/mobipocket/common/parser/javascript/DialFunction;
.super Lcom/mobipocket/common/parser/javascript/JavaScriptFunction;
.source "DialFunction.java"


# instance fields
.field private pPhoneNumber:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "phoneNumber"

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/mobipocket/common/parser/javascript/JavaScriptFunction;-><init>()V

    .line 8
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mobipocket/common/parser/javascript/DialFunction;->pPhoneNumber:Ljava/lang/String;

    .line 15
    iput-object p1, p0, Lcom/mobipocket/common/parser/javascript/DialFunction;->pPhoneNumber:Ljava/lang/String;

    .line 16
    return-void
.end method


# virtual methods
.method getFunctionName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    const-string v0, "dial"

    return-object v0
.end method

.method public getPhoneNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/mobipocket/common/parser/javascript/DialFunction;->pPhoneNumber:Ljava/lang/String;

    return-object v0
.end method
