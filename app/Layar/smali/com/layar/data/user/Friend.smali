.class public Lcom/layar/data/user/Friend;
.super Ljava/lang/Object;
.source "Friend.java"


# instance fields
.field public fullname:Ljava/lang/String;

.field public id:Ljava/lang/String;

.field public isOnLayar:Z

.field public sendInvite:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parse(Lorg/json/JSONObject;)Lcom/layar/data/user/Friend;
    .locals 2
    .parameter "json"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 16
    new-instance v0, Lcom/layar/data/user/Friend;

    invoke-direct {v0}, Lcom/layar/data/user/Friend;-><init>()V

    .line 17
    .local v0, result:Lcom/layar/data/user/Friend;
    const-string v1, "id"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/layar/data/user/Friend;->id:Ljava/lang/String;

    .line 18
    const-string v1, "name"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/layar/data/user/Friend;->fullname:Ljava/lang/String;

    .line 19
    const-string v1, "layar_friend"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/layar/data/user/Friend;->isOnLayar:Z

    .line 20
    return-object v0
.end method
