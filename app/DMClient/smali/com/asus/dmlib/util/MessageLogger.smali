.class public abstract Lcom/asus/dmlib/util/MessageLogger;
.super Ljava/lang/Object;
.source "MessageLogger.java"


# instance fields
.field protected mDTime:Ljava/lang/String;

.field protected mImei:Ljava/lang/String;

.field protected mSessionID:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "imei"
    .parameter "pSessionID"

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/asus/dmlib/util/MessageLogger;->mImei:Ljava/lang/String;

    .line 26
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    .line 27
    .local v1, now:Ljava/util/Date;
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy_MMM_dd_a_hh_mm_ss"

    invoke-direct {v0, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 28
    .local v0, format:Ljava/text/SimpleDateFormat;
    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/asus/dmlib/util/MessageLogger;->mDTime:Ljava/lang/String;

    .line 29
    iput-object p2, p0, Lcom/asus/dmlib/util/MessageLogger;->mSessionID:Ljava/lang/String;

    .line 30
    return-void
.end method


# virtual methods
.method public saveMessage(Lcom/asus/dmlib/syncml/message/container/SyncML;)V
    .locals 1
    .parameter "syncMl"

    .prologue
    .line 33
    invoke-virtual {p1}, Lcom/asus/dmlib/syncml/message/container/SyncML;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/asus/dmlib/util/MessageLogger;->saveMessage(Ljava/lang/String;)V

    .line 34
    return-void
.end method

.method public abstract saveMessage(Ljava/lang/String;)V
.end method
