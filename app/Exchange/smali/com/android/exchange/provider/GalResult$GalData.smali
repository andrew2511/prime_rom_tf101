.class public Lcom/android/exchange/provider/GalResult$GalData;
.super Ljava/lang/Object;
.source "GalResult.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/exchange/provider/GalResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GalData"
.end annotation


# instance fields
.field public _id:J

.field builder:Lcom/android/emailcommon/mail/PackedString$Builder;

.field public displayName:Ljava/lang/String;

.field public emailAddress:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    new-instance v0, Lcom/android/emailcommon/mail/PackedString$Builder;

    invoke-direct {v0}, Lcom/android/emailcommon/mail/PackedString$Builder;-><init>()V

    iput-object v0, p0, Lcom/android/exchange/provider/GalResult$GalData;->builder:Lcom/android/emailcommon/mail/PackedString$Builder;

    .line 63
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/exchange/provider/GalResult$GalData;->_id:J

    .line 80
    return-void
.end method

.method private constructor <init>(JLjava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "id"
    .parameter "_displayName"
    .parameter "_emailAddress"

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    new-instance v0, Lcom/android/emailcommon/mail/PackedString$Builder;

    invoke-direct {v0}, Lcom/android/emailcommon/mail/PackedString$Builder;-><init>()V

    iput-object v0, p0, Lcom/android/exchange/provider/GalResult$GalData;->builder:Lcom/android/emailcommon/mail/PackedString$Builder;

    .line 63
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/exchange/provider/GalResult$GalData;->_id:J

    .line 71
    const-string v0, "_id"

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/exchange/provider/GalResult$GalData;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    iput-wide p1, p0, Lcom/android/exchange/provider/GalResult$GalData;->_id:J

    .line 73
    const-string v0, "displayName"

    invoke-virtual {p0, v0, p3}, Lcom/android/exchange/provider/GalResult$GalData;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    iput-object p3, p0, Lcom/android/exchange/provider/GalResult$GalData;->displayName:Ljava/lang/String;

    .line 75
    const-string v0, "emailAddress"

    invoke-virtual {p0, v0, p4}, Lcom/android/exchange/provider/GalResult$GalData;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    iput-object p4, p0, Lcom/android/exchange/provider/GalResult$GalData;->emailAddress:Ljava/lang/String;

    .line 77
    return-void
.end method

.method synthetic constructor <init>(JLjava/lang/String;Ljava/lang/String;Lcom/android/exchange/provider/GalResult$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 45
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/exchange/provider/GalResult$GalData;-><init>(JLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public get(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "field"

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/exchange/provider/GalResult$GalData;->builder:Lcom/android/emailcommon/mail/PackedString$Builder;

    invoke-virtual {v0, p1}, Lcom/android/emailcommon/mail/PackedString$Builder;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public put(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "field"
    .parameter "value"

    .prologue
    .line 87
    iget-object v0, p0, Lcom/android/exchange/provider/GalResult$GalData;->builder:Lcom/android/emailcommon/mail/PackedString$Builder;

    invoke-virtual {v0, p1, p2}, Lcom/android/emailcommon/mail/PackedString$Builder;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    return-void
.end method

.method public toPackedString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/exchange/provider/GalResult$GalData;->builder:Lcom/android/emailcommon/mail/PackedString$Builder;

    invoke-virtual {v0}, Lcom/android/emailcommon/mail/PackedString$Builder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
