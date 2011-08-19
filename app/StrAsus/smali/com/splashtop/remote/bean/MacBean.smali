.class public Lcom/splashtop/remote/bean/MacBean;
.super Ljava/lang/Object;
.source "MacBean.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# static fields
.field static final serialVersionUID:J = 0x1L


# instance fields
.field private id:J

.field private macAddr:Ljava/lang/String;

.field private macIP:Ljava/lang/String;

.field private macName:Ljava/lang/String;

.field private macOnline:Z

.field private macPort:Ljava/lang/String;

.field private macPwd:Ljava/lang/String;

.field private macResolution:Ljava/lang/String;

.field private macResolutionHeight:I

.field private macResolutionWidth:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/splashtop/remote/bean/MacBean;->macOnline:Z

    .line 33
    iput v1, p0, Lcom/splashtop/remote/bean/MacBean;->macResolutionWidth:I

    .line 34
    iput v1, p0, Lcom/splashtop/remote/bean/MacBean;->macResolutionHeight:I

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/database/Cursor;)V
    .locals 5
    .parameter "cursor"

    .prologue
    const/4 v4, 0x1

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const/4 v2, 0x0

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/splashtop/remote/bean/MacBean;->id:J

    .line 39
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/splashtop/remote/bean/MacBean;->macName:Ljava/lang/String;

    .line 40
    const/4 v2, 0x2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/splashtop/remote/bean/MacBean;->macAddr:Ljava/lang/String;

    .line 41
    const/4 v2, 0x3

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/splashtop/remote/bean/MacBean;->macPwd:Ljava/lang/String;

    .line 42
    const/4 v2, 0x4

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/splashtop/remote/bean/MacBean;->macPort:Ljava/lang/String;

    .line 43
    const/4 v2, 0x5

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/splashtop/remote/bean/MacBean;->setMacResolution(Ljava/lang/String;)V

    .line 44
    iput-boolean v4, p0, Lcom/splashtop/remote/bean/MacBean;->macOnline:Z

    .line 46
    :try_start_0
    iget-object v2, p0, Lcom/splashtop/remote/bean/MacBean;->macAddr:Ljava/lang/String;

    invoke-static {v2}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v1

    .line 47
    .local v1, serverip:Ljava/net/InetAddress;
    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/splashtop/remote/bean/MacBean;->macIP:Ljava/lang/String;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    .end local v1           #serverip:Ljava/net/InetAddress;
    :goto_0
    return-void

    .line 48
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 49
    .local v0, ex:Ljava/net/UnknownHostException;
    const-string v2, "0.0.0.0"

    iput-object v2, p0, Lcom/splashtop/remote/bean/MacBean;->macIP:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 141
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 143
    :goto_0
    return-object v1

    .line 142
    :catch_0
    move-exception v0

    .line 143
    .local v0, e:Ljava/lang/CloneNotSupportedException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getId()J
    .locals 2

    .prologue
    .line 54
    iget-wide v0, p0, Lcom/splashtop/remote/bean/MacBean;->id:J

    return-wide v0
.end method

.method public getMacAddr()Ljava/lang/String;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/splashtop/remote/bean/MacBean;->macAddr:Ljava/lang/String;

    return-object v0
.end method

.method public getMacIP()Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/splashtop/remote/bean/MacBean;->macIP:Ljava/lang/String;

    return-object v0
.end method

.method public getMacName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/splashtop/remote/bean/MacBean;->macName:Ljava/lang/String;

    return-object v0
.end method

.method public getMacOnline()Z
    .locals 1

    .prologue
    .line 131
    iget-boolean v0, p0, Lcom/splashtop/remote/bean/MacBean;->macOnline:Z

    return v0
.end method

.method public getMacPort()Ljava/lang/String;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/splashtop/remote/bean/MacBean;->macPort:Ljava/lang/String;

    return-object v0
.end method

.method public getMacPwd()Ljava/lang/String;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/splashtop/remote/bean/MacBean;->macPwd:Ljava/lang/String;

    return-object v0
.end method

.method public getMacResolution()Ljava/lang/String;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/splashtop/remote/bean/MacBean;->macResolution:Ljava/lang/String;

    return-object v0
.end method

.method public getResolutionHeight()I
    .locals 1

    .prologue
    .line 127
    iget v0, p0, Lcom/splashtop/remote/bean/MacBean;->macResolutionHeight:I

    return v0
.end method

.method public getResolutionWidth()I
    .locals 1

    .prologue
    .line 123
    iget v0, p0, Lcom/splashtop/remote/bean/MacBean;->macResolutionWidth:I

    return v0
.end method

.method public setId(J)V
    .locals 0
    .parameter "id"

    .prologue
    .line 58
    iput-wide p1, p0, Lcom/splashtop/remote/bean/MacBean;->id:J

    .line 59
    return-void
.end method

.method public setMacAddr(Ljava/lang/String;)V
    .locals 0
    .parameter "macAddr"

    .prologue
    .line 79
    iput-object p1, p0, Lcom/splashtop/remote/bean/MacBean;->macAddr:Ljava/lang/String;

    .line 80
    return-void
.end method

.method public setMacIP(Ljava/lang/String;)V
    .locals 0
    .parameter "macIP"

    .prologue
    .line 72
    iput-object p1, p0, Lcom/splashtop/remote/bean/MacBean;->macIP:Ljava/lang/String;

    .line 73
    return-void
.end method

.method public setMacName(Ljava/lang/String;)V
    .locals 0
    .parameter "macName"

    .prologue
    .line 65
    iput-object p1, p0, Lcom/splashtop/remote/bean/MacBean;->macName:Ljava/lang/String;

    .line 66
    return-void
.end method

.method public setMacOnline(Z)V
    .locals 0
    .parameter "macOnline"

    .prologue
    .line 135
    iput-boolean p1, p0, Lcom/splashtop/remote/bean/MacBean;->macOnline:Z

    .line 136
    return-void
.end method

.method public setMacPort(Ljava/lang/String;)V
    .locals 0
    .parameter "macPort"

    .prologue
    .line 95
    iput-object p1, p0, Lcom/splashtop/remote/bean/MacBean;->macPort:Ljava/lang/String;

    .line 96
    return-void
.end method

.method public setMacPwd(Ljava/lang/String;)V
    .locals 0
    .parameter "macPwd"

    .prologue
    .line 87
    iput-object p1, p0, Lcom/splashtop/remote/bean/MacBean;->macPwd:Ljava/lang/String;

    .line 88
    return-void
.end method

.method public setMacResolution(Ljava/lang/String;)V
    .locals 5
    .parameter "macResolution"

    .prologue
    const/16 v4, 0x500

    const/16 v3, 0x320

    const/16 v2, 0x300

    const/4 v1, 0x0

    .line 103
    iput-object p1, p0, Lcom/splashtop/remote/bean/MacBean;->macResolution:Ljava/lang/String;

    .line 104
    const-string v0, "800 x 600"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 105
    iput v3, p0, Lcom/splashtop/remote/bean/MacBean;->macResolutionWidth:I

    .line 106
    const/16 v0, 0x258

    iput v0, p0, Lcom/splashtop/remote/bean/MacBean;->macResolutionHeight:I

    .line 120
    :goto_0
    return-void

    .line 107
    :cond_0
    const-string v0, "1024 x 768"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 108
    const/16 v0, 0x400

    iput v0, p0, Lcom/splashtop/remote/bean/MacBean;->macResolutionWidth:I

    .line 109
    iput v2, p0, Lcom/splashtop/remote/bean/MacBean;->macResolutionHeight:I

    goto :goto_0

    .line 110
    :cond_1
    const-string v0, "1280 x 800"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 111
    iput v4, p0, Lcom/splashtop/remote/bean/MacBean;->macResolutionWidth:I

    .line 112
    iput v3, p0, Lcom/splashtop/remote/bean/MacBean;->macResolutionHeight:I

    goto :goto_0

    .line 113
    :cond_2
    const-string v0, "1280 x 768"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 114
    iput v4, p0, Lcom/splashtop/remote/bean/MacBean;->macResolutionWidth:I

    .line 115
    iput v2, p0, Lcom/splashtop/remote/bean/MacBean;->macResolutionHeight:I

    goto :goto_0

    .line 117
    :cond_3
    iput v1, p0, Lcom/splashtop/remote/bean/MacBean;->macResolutionWidth:I

    .line 118
    iput v1, p0, Lcom/splashtop/remote/bean/MacBean;->macResolutionHeight:I

    goto :goto_0
.end method
