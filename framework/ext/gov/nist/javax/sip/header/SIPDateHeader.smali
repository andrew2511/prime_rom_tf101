.class public Lgov/nist/javax/sip/header/SIPDateHeader;
.super Lgov/nist/javax/sip/header/SIPHeader;
.source "SIPDateHeader.java"

# interfaces
.implements Ljavax/sip/header/DateHeader;


# static fields
.field private static final serialVersionUID:J = 0x1811114988a6e228L


# instance fields
.field protected date:Lgov/nist/javax/sip/header/SIPDate;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 57
    const-string v0, "Date"

    invoke-direct {p0, v0}, Lgov/nist/javax/sip/header/SIPHeader;-><init>(Ljava/lang/String;)V

    .line 58
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .registers 3

    .prologue
    .line 99
    invoke-super {p0}, Lgov/nist/javax/sip/header/SIPHeader;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgov/nist/javax/sip/header/SIPDateHeader;

    .line 100
    .local v0, retval:Lgov/nist/javax/sip/header/SIPDateHeader;
    iget-object v1, p0, Lgov/nist/javax/sip/header/SIPDateHeader;->date:Lgov/nist/javax/sip/header/SIPDate;

    if-eqz v1, :cond_14

    .line 101
    iget-object v1, p0, Lgov/nist/javax/sip/header/SIPDateHeader;->date:Lgov/nist/javax/sip/header/SIPDate;

    invoke-virtual {v1}, Lgov/nist/javax/sip/header/SIPDate;->clone()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lgov/nist/javax/sip/header/SIPDate;

    iput-object p0, v0, Lgov/nist/javax/sip/header/SIPDateHeader;->date:Lgov/nist/javax/sip/header/SIPDate;

    .line 102
    :cond_14
    return-object v0
.end method

.method public encodeBody()Ljava/lang/String;
    .registers 2

    .prologue
    .line 64
    iget-object v0, p0, Lgov/nist/javax/sip/header/SIPDateHeader;->date:Lgov/nist/javax/sip/header/SIPDate;

    invoke-virtual {v0}, Lgov/nist/javax/sip/header/SIPDate;->encode()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDate()Ljava/util/Calendar;
    .registers 2

    .prologue
    .line 93
    iget-object v0, p0, Lgov/nist/javax/sip/header/SIPDateHeader;->date:Lgov/nist/javax/sip/header/SIPDate;

    if-nez v0, :cond_6

    .line 94
    const/4 v0, 0x0

    .line 95
    :goto_5
    return-object v0

    :cond_6
    iget-object v0, p0, Lgov/nist/javax/sip/header/SIPDateHeader;->date:Lgov/nist/javax/sip/header/SIPDate;

    invoke-virtual {v0}, Lgov/nist/javax/sip/header/SIPDate;->getJavaCal()Ljava/util/Calendar;

    move-result-object v0

    goto :goto_5
.end method

.method public setDate(Lgov/nist/javax/sip/header/SIPDate;)V
    .registers 2
    .parameter "d"

    .prologue
    .line 72
    iput-object p1, p0, Lgov/nist/javax/sip/header/SIPDateHeader;->date:Lgov/nist/javax/sip/header/SIPDate;

    .line 74
    return-void
.end method

.method public setDate(Ljava/util/Calendar;)V
    .registers 5
    .parameter "dat"

    .prologue
    .line 82
    if-eqz p1, :cond_11

    .line 83
    new-instance v0, Lgov/nist/javax/sip/header/SIPDate;

    invoke-virtual {p1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lgov/nist/javax/sip/header/SIPDate;-><init>(J)V

    iput-object v0, p0, Lgov/nist/javax/sip/header/SIPDateHeader;->date:Lgov/nist/javax/sip/header/SIPDate;

    .line 84
    :cond_11
    return-void
.end method
