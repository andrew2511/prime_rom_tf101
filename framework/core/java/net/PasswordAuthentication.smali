.class public final Ljava/net/PasswordAuthentication;
.super Ljava/lang/Object;
.source "PasswordAuthentication.java"


# instance fields
.field private password:[C

.field private userName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;[C)V
    .registers 4
    .parameter "userName"
    .parameter "password"

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Ljava/net/PasswordAuthentication;->userName:Ljava/lang/String;

    .line 43
    invoke-virtual {p2}, [C->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [C

    iput-object v0, p0, Ljava/net/PasswordAuthentication;->password:[C

    .line 44
    return-void
.end method


# virtual methods
.method public getPassword()[C
    .registers 2

    .prologue
    .line 54
    iget-object v0, p0, Ljava/net/PasswordAuthentication;->password:[C

    invoke-virtual {v0}, [C->clone()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, [C

    return-object p0
.end method

.method public getUserName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 63
    iget-object v0, p0, Ljava/net/PasswordAuthentication;->userName:Ljava/lang/String;

    return-object v0
.end method
