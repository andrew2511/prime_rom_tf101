.class Lcom/google/android/gm/provider/MailCore$MessageLabelRecord;
.super Ljava/lang/Object;
.source "MailCore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gm/provider/MailCore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MessageLabelRecord"
.end annotation


# instance fields
.field private final mDateReceived:Ljava/lang/Long;

.field private final mJoinedLabelIds:Ljava/lang/String;

.field private final mMessageId:J

.field final synthetic this$0:Lcom/google/android/gm/provider/MailCore;


# direct methods
.method public constructor <init>(Lcom/google/android/gm/provider/MailCore;Ljava/lang/String;JJ)V
    .locals 1
    .parameter
    .parameter "labelString"
    .parameter "messageId"
    .parameter "dateReceived"

    .prologue
    .line 912
    iput-object p1, p0, Lcom/google/android/gm/provider/MailCore$MessageLabelRecord;->this$0:Lcom/google/android/gm/provider/MailCore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 913
    iput-object p2, p0, Lcom/google/android/gm/provider/MailCore$MessageLabelRecord;->mJoinedLabelIds:Ljava/lang/String;

    .line 914
    iput-wide p3, p0, Lcom/google/android/gm/provider/MailCore$MessageLabelRecord;->mMessageId:J

    .line 915
    invoke-static {p5, p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gm/provider/MailCore$MessageLabelRecord;->mDateReceived:Ljava/lang/Long;

    .line 916
    return-void
.end method

.method public constructor <init>(Lcom/google/android/gm/provider/MailCore;Ljava/lang/String;Ljava/lang/Long;)V
    .locals 2
    .parameter
    .parameter "labelString"
    .parameter "messageId"

    .prologue
    .line 899
    iput-object p1, p0, Lcom/google/android/gm/provider/MailCore$MessageLabelRecord;->this$0:Lcom/google/android/gm/provider/MailCore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 900
    iput-object p2, p0, Lcom/google/android/gm/provider/MailCore$MessageLabelRecord;->mJoinedLabelIds:Ljava/lang/String;

    .line 901
    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gm/provider/MailCore$MessageLabelRecord;->mMessageId:J

    .line 902
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gm/provider/MailCore$MessageLabelRecord;->mDateReceived:Ljava/lang/Long;

    .line 903
    return-void
.end method


# virtual methods
.method getDateReceived()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 939
    iget-object v0, p0, Lcom/google/android/gm/provider/MailCore$MessageLabelRecord;->mDateReceived:Ljava/lang/Long;

    return-object v0
.end method

.method getLabelIds()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 922
    iget-object v1, p0, Lcom/google/android/gm/provider/MailCore$MessageLabelRecord;->mJoinedLabelIds:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gm/provider/MailCore$MessageLabelRecord;->mJoinedLabelIds:Ljava/lang/String;

    sget-object v2, Lcom/google/android/gm/provider/Gmail;->COMMA_SEPARATOR_PATTERN:Ljava/util/regex/Pattern;

    invoke-static {v1, v2}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/util/regex/Pattern;)[Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .line 925
    .local v0, labelIds:[Ljava/lang/String;
    :goto_0
    return-object v0

    .line 922
    .end local v0           #labelIds:[Ljava/lang/String;
    :cond_0
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    move-object v0, v1

    goto :goto_0
.end method

.method getMessageId()J
    .locals 2

    .prologue
    .line 932
    iget-wide v0, p0, Lcom/google/android/gm/provider/MailCore$MessageLabelRecord;->mMessageId:J

    return-wide v0
.end method
