.class public Lcom/google/android/gm/provider/Operations$OperationInfo;
.super Ljava/lang/Object;
.source "Operations.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gm/provider/Operations;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OperationInfo"
.end annotation


# instance fields
.field public mAction:Ljava/lang/String;

.field public mConversationId:J

.field public mLabelId:J

.field public mMessageId:J

.field public mNextTimeToAttempt:J

.field public mNumAttempts:I


# direct methods
.method public constructor <init>(JJLjava/lang/String;J)V
    .locals 11
    .parameter "cId"
    .parameter "mId"
    .parameter "actionOp"
    .parameter "lId"

    .prologue
    .line 81
    const/4 v8, 0x0

    const-wide/16 v9, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    move-object/from16 v5, p5

    move-wide/from16 v6, p6

    invoke-direct/range {v0 .. v10}, Lcom/google/android/gm/provider/Operations$OperationInfo;-><init>(JJLjava/lang/String;JIJ)V

    .line 82
    return-void
.end method

.method public constructor <init>(JJLjava/lang/String;JIJ)V
    .locals 0
    .parameter "cId"
    .parameter "mId"
    .parameter "actionOp"
    .parameter "lId"
    .parameter "nAttempts"
    .parameter "nTimeToAttempt"

    .prologue
    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    iput-wide p1, p0, Lcom/google/android/gm/provider/Operations$OperationInfo;->mConversationId:J

    .line 87
    iput-wide p3, p0, Lcom/google/android/gm/provider/Operations$OperationInfo;->mMessageId:J

    .line 88
    iput-object p5, p0, Lcom/google/android/gm/provider/Operations$OperationInfo;->mAction:Ljava/lang/String;

    .line 89
    iput-wide p6, p0, Lcom/google/android/gm/provider/Operations$OperationInfo;->mLabelId:J

    .line 90
    iput p8, p0, Lcom/google/android/gm/provider/Operations$OperationInfo;->mNumAttempts:I

    .line 91
    iput-wide p9, p0, Lcom/google/android/gm/provider/Operations$OperationInfo;->mNextTimeToAttempt:J

    .line 92
    return-void
.end method
