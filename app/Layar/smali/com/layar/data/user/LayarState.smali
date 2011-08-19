.class public Lcom/layar/data/user/LayarState;
.super Ljava/lang/Object;
.source "LayarState.java"


# static fields
.field private static instance:Lcom/layar/data/user/LayarState;


# instance fields
.field private user:Lcom/layar/data/user/User;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/layar/data/user/LayarState;->user:Lcom/layar/data/user/User;

    .line 4
    return-void
.end method

.method public static getInstance()Lcom/layar/data/user/LayarState;
    .locals 1

    .prologue
    .line 11
    sget-object v0, Lcom/layar/data/user/LayarState;->instance:Lcom/layar/data/user/LayarState;

    if-nez v0, :cond_0

    .line 12
    new-instance v0, Lcom/layar/data/user/LayarState;

    invoke-direct {v0}, Lcom/layar/data/user/LayarState;-><init>()V

    sput-object v0, Lcom/layar/data/user/LayarState;->instance:Lcom/layar/data/user/LayarState;

    .line 14
    :cond_0
    sget-object v0, Lcom/layar/data/user/LayarState;->instance:Lcom/layar/data/user/LayarState;

    return-object v0
.end method


# virtual methods
.method public getUser()Lcom/layar/data/user/User;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/layar/data/user/LayarState;->user:Lcom/layar/data/user/User;

    return-object v0
.end method

.method public setUser(Lcom/layar/data/user/User;)V
    .locals 0
    .parameter "user"

    .prologue
    .line 22
    iput-object p1, p0, Lcom/layar/data/user/LayarState;->user:Lcom/layar/data/user/User;

    .line 23
    return-void
.end method
