.class public Lcom/android/exchange/IllegalHeartbeatException;
.super Lcom/android/exchange/EasException;
.source "IllegalHeartbeatException.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field public final mLegalHeartbeat:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .parameter "legalHeartbeat"

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/android/exchange/EasException;-><init>()V

    .line 25
    iput p1, p0, Lcom/android/exchange/IllegalHeartbeatException;->mLegalHeartbeat:I

    .line 26
    return-void
.end method
