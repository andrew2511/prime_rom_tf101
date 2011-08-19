.class public Lcom/asus/provisioning/oma/AccessPoint;
.super Ljava/lang/Object;
.source "AccessPoint.java"


# instance fields
.field public address:Ljava/lang/String;

.field public authtype:Ljava/lang/String;

.field public bearer:Ljava/lang/String;

.field public napId:Ljava/lang/String;

.field public password:Ljava/lang/String;

.field public type:Ljava/lang/String;

.field public user:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter "other"

    .prologue
    const/4 v4, 0x0

    .line 46
    instance-of v2, p1, Lcom/asus/provisioning/oma/AccessPoint;

    if-eqz v2, :cond_1

    .line 47
    move-object v0, p1

    check-cast v0, Lcom/asus/provisioning/oma/AccessPoint;

    move-object v1, v0

    .line 48
    .local v1, otherApn:Lcom/asus/provisioning/oma/AccessPoint;
    if-eqz p1, :cond_0

    iget-object v2, p0, Lcom/asus/provisioning/oma/AccessPoint;->napId:Ljava/lang/String;

    iget-object v3, v1, Lcom/asus/provisioning/oma/AccessPoint;->napId:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/asus/provisioning/oma/AccessPoint;->address:Ljava/lang/String;

    iget-object v3, v1, Lcom/asus/provisioning/oma/AccessPoint;->address:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/asus/provisioning/oma/AccessPoint;->user:Ljava/lang/String;

    iget-object v3, v1, Lcom/asus/provisioning/oma/AccessPoint;->user:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/asus/provisioning/oma/AccessPoint;->password:Ljava/lang/String;

    iget-object v3, v1, Lcom/asus/provisioning/oma/AccessPoint;->password:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/asus/provisioning/oma/AccessPoint;->authtype:Ljava/lang/String;

    iget-object v3, v1, Lcom/asus/provisioning/oma/AccessPoint;->authtype:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    .line 54
    .end local v1           #otherApn:Lcom/asus/provisioning/oma/AccessPoint;
    :goto_0
    return v2

    .restart local v1       #otherApn:Lcom/asus/provisioning/oma/AccessPoint;
    :cond_0
    move v2, v4

    .line 48
    goto :goto_0

    .end local v1           #otherApn:Lcom/asus/provisioning/oma/AccessPoint;
    :cond_1
    move v2, v4

    .line 54
    goto :goto_0
.end method

.method public isValid()Z
    .locals 2

    .prologue
    .line 40
    const-string v0, "GSM-GPRS"

    iget-object v1, p0, Lcom/asus/provisioning/oma/AccessPoint;->bearer:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "APN"

    iget-object v1, p0, Lcom/asus/provisioning/oma/AccessPoint;->type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
