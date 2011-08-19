.class public Lcom/amazon/kcp/application/models/internal/RegisterRequestModel;
.super Ljava/lang/Object;
.source "RegisterRequestModel.java"


# instance fields
.field private deviceName:Ljava/lang/String;

.field private deviceSerial:Ljava/lang/String;

.field private deviceType:Ljava/lang/String;

.field private email:Ljava/lang/String;

.field private internalVersionNumber:J

.field private password:Ljava/lang/String;

.field private pid:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    return-void
.end method


# virtual methods
.method public getDeviceName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/amazon/kcp/application/models/internal/RegisterRequestModel;->deviceName:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceSerial()Ljava/lang/String;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/amazon/kcp/application/models/internal/RegisterRequestModel;->deviceSerial:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/amazon/kcp/application/models/internal/RegisterRequestModel;->deviceType:Ljava/lang/String;

    return-object v0
.end method

.method public getEmail()Ljava/lang/String;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/amazon/kcp/application/models/internal/RegisterRequestModel;->email:Ljava/lang/String;

    return-object v0
.end method

.method public getInternalVersionNumber()J
    .locals 2

    .prologue
    .line 150
    iget-wide v0, p0, Lcom/amazon/kcp/application/models/internal/RegisterRequestModel;->internalVersionNumber:J

    return-wide v0
.end method

.method public getPassword()Ljava/lang/String;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/amazon/kcp/application/models/internal/RegisterRequestModel;->password:Ljava/lang/String;

    return-object v0
.end method

.method public getPid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/amazon/kcp/application/models/internal/RegisterRequestModel;->pid:Ljava/lang/String;

    return-object v0
.end method

.method public setDeviceName(Ljava/lang/String;)V
    .locals 0
    .parameter "deviceName"

    .prologue
    .line 124
    iput-object p1, p0, Lcom/amazon/kcp/application/models/internal/RegisterRequestModel;->deviceName:Ljava/lang/String;

    .line 125
    return-void
.end method

.method public setDeviceSerial(Ljava/lang/String;)V
    .locals 0
    .parameter "deviceSerial"

    .prologue
    .line 70
    iput-object p1, p0, Lcom/amazon/kcp/application/models/internal/RegisterRequestModel;->deviceSerial:Ljava/lang/String;

    .line 71
    return-void
.end method

.method public setDeviceType(Ljava/lang/String;)V
    .locals 0
    .parameter "deviceType"

    .prologue
    .line 52
    iput-object p1, p0, Lcom/amazon/kcp/application/models/internal/RegisterRequestModel;->deviceType:Ljava/lang/String;

    .line 53
    return-void
.end method

.method public setEmail(Ljava/lang/String;)V
    .locals 0
    .parameter "email"

    .prologue
    .line 88
    iput-object p1, p0, Lcom/amazon/kcp/application/models/internal/RegisterRequestModel;->email:Ljava/lang/String;

    .line 89
    return-void
.end method

.method public setInternalVersionNumber(J)V
    .locals 0
    .parameter "internalVersionNumber"

    .prologue
    .line 142
    iput-wide p1, p0, Lcom/amazon/kcp/application/models/internal/RegisterRequestModel;->internalVersionNumber:J

    .line 143
    return-void
.end method

.method public setPassword(Ljava/lang/String;)V
    .locals 0
    .parameter "password"

    .prologue
    .line 106
    iput-object p1, p0, Lcom/amazon/kcp/application/models/internal/RegisterRequestModel;->password:Ljava/lang/String;

    .line 107
    return-void
.end method

.method public setPid(Ljava/lang/String;)V
    .locals 0
    .parameter "pid"

    .prologue
    .line 34
    iput-object p1, p0, Lcom/amazon/kcp/application/models/internal/RegisterRequestModel;->pid:Ljava/lang/String;

    .line 35
    return-void
.end method
