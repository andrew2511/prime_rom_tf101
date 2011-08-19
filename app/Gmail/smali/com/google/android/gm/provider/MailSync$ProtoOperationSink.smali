.class Lcom/google/android/gm/provider/MailSync$ProtoOperationSink;
.super Lcom/google/android/gm/provider/MailSync$AbstractOperationSink;
.source "MailSync.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gm/provider/MailSync;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ProtoOperationSink"
.end annotation


# instance fields
.field private final mParams:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;"
        }
    .end annotation
.end field

.field private mParts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/common/http/Part;",
            ">;"
        }
    .end annotation
.end field

.field mUphillSyncProto:Lcom/google/common/io/protocol/ProtoBuf;

.field final synthetic this$0:Lcom/google/android/gm/provider/MailSync;


# direct methods
.method constructor <init>(Lcom/google/android/gm/provider/MailSync;Lcom/google/common/io/protocol/ProtoBuf;)V
    .locals 2
    .parameter
    .parameter "uphillSyncProto"

    .prologue
    const/4 v1, 0x0

    .line 3073
    iput-object p1, p0, Lcom/google/android/gm/provider/MailSync$ProtoOperationSink;->this$0:Lcom/google/android/gm/provider/MailSync;

    invoke-direct {p0, p1, v1}, Lcom/google/android/gm/provider/MailSync$AbstractOperationSink;-><init>(Lcom/google/android/gm/provider/MailSync;Lcom/google/android/gm/provider/MailSync$1;)V

    .line 3074
    iput-object p2, p0, Lcom/google/android/gm/provider/MailSync$ProtoOperationSink;->mUphillSyncProto:Lcom/google/common/io/protocol/ProtoBuf;

    .line 3075
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gm/provider/MailSync$ProtoOperationSink;->mParams:Ljava/util/ArrayList;

    .line 3076
    iput-object v1, p0, Lcom/google/android/gm/provider/MailSync$ProtoOperationSink;->mParts:Ljava/util/ArrayList;

    .line 3077
    return-void
.end method

.method private newOperationProto(J)Lcom/google/common/io/protocol/ProtoBuf;
    .locals 3
    .parameter "clientOperationId"

    .prologue
    const/4 v2, 0x1

    .line 3372
    iget-object v1, p0, Lcom/google/android/gm/provider/MailSync$ProtoOperationSink;->mUphillSyncProto:Lcom/google/common/io/protocol/ProtoBuf;

    invoke-virtual {v1, v2}, Lcom/google/common/io/protocol/ProtoBuf;->addNewProtoBuf(I)Lcom/google/common/io/protocol/ProtoBuf;

    move-result-object v0

    .line 3373
    .local v0, operation:Lcom/google/common/io/protocol/ProtoBuf;
    invoke-virtual {v0, v2, p1, p2}, Lcom/google/common/io/protocol/ProtoBuf;->setLong(IJ)V

    .line 3374
    return-object v0
.end method

.method private notifyAttachmentFailed(Lcom/google/android/gm/provider/MailSync$Message;Lcom/google/android/gm/provider/Gmail$Attachment;)V
    .locals 4
    .parameter "message"
    .parameter "attachment"

    .prologue
    .line 3351
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.google.android.gm.intent.ACTION_POST_SEND_ERROR"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3352
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "account"

    iget-object v2, p0, Lcom/google/android/gm/provider/MailSync$ProtoOperationSink;->this$0:Lcom/google/android/gm/provider/MailSync;

    invoke-static {v2}, Lcom/google/android/gm/provider/MailSync;->access$300(Lcom/google/android/gm/provider/MailSync;)Lcom/google/android/gm/provider/MailStore;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/gm/provider/MailStore;->getAccount()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3353
    const-string v1, "extraMessageSubject"

    iget-object v2, p1, Lcom/google/android/gm/provider/MailSync$Message;->subject:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3354
    const-string v1, "extraConversationId"

    iget-wide v2, p1, Lcom/google/android/gm/provider/MailSync$Message;->conversationId:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 3355
    iget-object v1, p0, Lcom/google/android/gm/provider/MailSync$ProtoOperationSink;->this$0:Lcom/google/android/gm/provider/MailSync;

    invoke-static {v1}, Lcom/google/android/gm/provider/MailSync;->access$000(Lcom/google/android/gm/provider/MailSync;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 3356
    return-void
.end method

.method private shouldIgnoreLabelOperation(J)Z
    .locals 2
    .parameter "labelId"

    .prologue
    .line 3368
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public conversationLabelAddedOrRemoved(JJJZ)V
    .locals 5
    .parameter "clientOperationId"
    .parameter "maxMessageId"
    .parameter "labelId"
    .parameter "added"

    .prologue
    const/4 v3, 0x3

    .line 3133
    invoke-direct {p0, p5, p6}, Lcom/google/android/gm/provider/MailSync$ProtoOperationSink;->shouldIgnoreLabelOperation(J)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3153
    .end local p0
    :goto_0
    return-void

    .line 3135
    .restart local p0
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/google/android/gm/provider/MailSync$ProtoOperationSink;->newOperationProto(J)Lcom/google/common/io/protocol/ProtoBuf;

    move-result-object v1

    .line 3136
    .local v1, operation:Lcom/google/common/io/protocol/ProtoBuf;
    invoke-virtual {v1, v3}, Lcom/google/common/io/protocol/ProtoBuf;->setNewProtoBuf(I)Lcom/google/common/io/protocol/ProtoBuf;

    move-result-object v0

    .line 3138
    .local v0, labelAdded:Lcom/google/common/io/protocol/ProtoBuf;
    invoke-virtual {v0, v3, p7}, Lcom/google/common/io/protocol/ProtoBuf;->setBool(IZ)V

    .line 3140
    const/4 v2, 0x1

    invoke-virtual {v0, v2, p3, p4}, Lcom/google/common/io/protocol/ProtoBuf;->setLong(IJ)V

    .line 3143
    invoke-static {p5, p6}, Lcom/google/android/gm/provider/MailCore;->isLabelIdLocal(J)Z

    move-result v2

    if-nez v2, :cond_1

    .line 3144
    const/4 v2, 0x2

    invoke-virtual {v0, v2, p5, p6}, Lcom/google/common/io/protocol/ProtoBuf;->setLong(IJ)V

    goto :goto_0

    .line 3148
    :cond_1
    const/4 v2, 0x4

    sget-object v3, Lcom/google/android/gm/provider/Gmail;->LOCAL_PRIORITY_LABELS:Lcom/google/common/collect/BiMap;

    invoke-static {p5, p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/google/common/collect/BiMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/String;

    invoke-virtual {v0, v2, p0}, Lcom/google/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)V

    goto :goto_0
.end method

.method public getNumOperations()I
    .locals 2

    .prologue
    .line 3081
    iget-object v0, p0, Lcom/google/android/gm/provider/MailSync$ProtoOperationSink;->mUphillSyncProto:Lcom/google/common/io/protocol/ProtoBuf;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->getCount(I)I

    move-result v0

    return v0
.end method

.method public getParts()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/common/http/Part;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3089
    iget-object v0, p0, Lcom/google/android/gm/provider/MailSync$ProtoOperationSink;->mParts:Ljava/util/ArrayList;

    return-object v0
.end method

.method public hasAttachments()Z
    .locals 1

    .prologue
    .line 3085
    iget-object v0, p0, Lcom/google/android/gm/provider/MailSync$ProtoOperationSink;->mParts:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gm/provider/MailSync$ProtoOperationSink;->mParts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public messageExpunged(JJ)V
    .locals 2
    .parameter "clientOperationId"
    .parameter "messageId"

    .prologue
    .line 3359
    invoke-direct {p0, p1, p2}, Lcom/google/android/gm/provider/MailSync$ProtoOperationSink;->newOperationProto(J)Lcom/google/common/io/protocol/ProtoBuf;

    move-result-object v0

    .line 3360
    .local v0, operation:Lcom/google/common/io/protocol/ProtoBuf;
    const/4 v1, 0x5

    invoke-virtual {v0, v1, p3, p4}, Lcom/google/common/io/protocol/ProtoBuf;->setLong(IJ)V

    .line 3361
    return-void
.end method

.method public messageLabelAdded(JJJ)V
    .locals 5
    .parameter "clientOperationId"
    .parameter "messageId"
    .parameter "labelId"

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 3093
    invoke-direct {p0, p5, p6}, Lcom/google/android/gm/provider/MailSync$ProtoOperationSink;->shouldIgnoreLabelOperation(J)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3113
    .end local p0
    :goto_0
    return-void

    .line 3095
    .restart local p0
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/google/android/gm/provider/MailSync$ProtoOperationSink;->newOperationProto(J)Lcom/google/common/io/protocol/ProtoBuf;

    move-result-object v1

    .line 3096
    .local v1, operation:Lcom/google/common/io/protocol/ProtoBuf;
    invoke-virtual {v1, v4}, Lcom/google/common/io/protocol/ProtoBuf;->setNewProtoBuf(I)Lcom/google/common/io/protocol/ProtoBuf;

    move-result-object v0

    .line 3098
    .local v0, labelAdded:Lcom/google/common/io/protocol/ProtoBuf;
    const/4 v2, 0x3

    invoke-virtual {v0, v2, v3}, Lcom/google/common/io/protocol/ProtoBuf;->setBool(IZ)V

    .line 3100
    invoke-virtual {v0, v3, p3, p4}, Lcom/google/common/io/protocol/ProtoBuf;->setLong(IJ)V

    .line 3104
    invoke-static {p5, p6}, Lcom/google/android/gm/provider/MailCore;->isLabelIdLocal(J)Z

    move-result v2

    if-nez v2, :cond_1

    .line 3105
    invoke-virtual {v0, v4, p5, p6}, Lcom/google/common/io/protocol/ProtoBuf;->setLong(IJ)V

    goto :goto_0

    .line 3109
    :cond_1
    const/4 v2, 0x4

    sget-object v3, Lcom/google/android/gm/provider/Gmail;->LOCAL_PRIORITY_LABELS:Lcom/google/common/collect/BiMap;

    invoke-static {p5, p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/google/common/collect/BiMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/String;

    invoke-virtual {v0, v2, p0}, Lcom/google/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)V

    goto :goto_0
.end method

.method public messageLabelRemoved(JJJ)V
    .locals 5
    .parameter "clientOperationId"
    .parameter "messageId"
    .parameter "labelId"

    .prologue
    const/4 v4, 0x2

    .line 3116
    invoke-direct {p0, p5, p6}, Lcom/google/android/gm/provider/MailSync$ProtoOperationSink;->shouldIgnoreLabelOperation(J)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3129
    :goto_0
    return-void

    .line 3118
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/google/android/gm/provider/MailSync$ProtoOperationSink;->newOperationProto(J)Lcom/google/common/io/protocol/ProtoBuf;

    move-result-object v1

    .line 3119
    .local v1, operation:Lcom/google/common/io/protocol/ProtoBuf;
    invoke-virtual {v1, v4}, Lcom/google/common/io/protocol/ProtoBuf;->setNewProtoBuf(I)Lcom/google/common/io/protocol/ProtoBuf;

    move-result-object v0

    .line 3121
    .local v0, labelAdded:Lcom/google/common/io/protocol/ProtoBuf;
    const/4 v2, 0x3

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/google/common/io/protocol/ProtoBuf;->setBool(IZ)V

    .line 3123
    const/4 v2, 0x1

    invoke-virtual {v0, v2, p3, p4}, Lcom/google/common/io/protocol/ProtoBuf;->setLong(IJ)V

    .line 3126
    invoke-virtual {v0, v4, p5, p6}, Lcom/google/common/io/protocol/ProtoBuf;->setLong(IJ)V

    goto :goto_0
.end method

.method public messageSavedOrSent(JLcom/google/android/gm/provider/MailSync$Message;JJZ)V
    .locals 28
    .parameter "clientOperationId"
    .parameter "message"
    .parameter "prevMessageId"
    .parameter "refMessageId"
    .parameter "save"

    .prologue
    .line 3159
    const-string v24, "Gmail"

    const/16 v25, 0x2

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v24

    if-eqz v24, :cond_0

    .line 3160
    const-string v24, "Gmail"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "MailSync posting operation "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-wide/from16 v1, p1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, " (messageSavedOrSent)"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3164
    :cond_0
    invoke-direct/range {p0 .. p2}, Lcom/google/android/gm/provider/MailSync$ProtoOperationSink;->newOperationProto(J)Lcom/google/common/io/protocol/ProtoBuf;

    move-result-object v17

    .line 3165
    .local v17, operation:Lcom/google/common/io/protocol/ProtoBuf;
    const/16 v24, 0x4

    move-object/from16 v0, v17

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->setNewProtoBuf(I)Lcom/google/common/io/protocol/ProtoBuf;

    move-result-object v20

    .line 3167
    .local v20, savedOrSentProto:Lcom/google/common/io/protocol/ProtoBuf;
    const/16 v24, 0xa

    move-object/from16 v0, v20

    move/from16 v1, v24

    move/from16 v2, p8

    invoke-virtual {v0, v1, v2}, Lcom/google/common/io/protocol/ProtoBuf;->setBool(IZ)V

    .line 3169
    const/16 v24, 0x1

    move-object/from16 v0, v20

    move/from16 v1, v24

    move-wide/from16 v2, p4

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/common/io/protocol/ProtoBuf;->setLong(IJ)V

    .line 3172
    const/16 v24, 0x2

    move-object/from16 v0, v20

    move/from16 v1, v24

    move-wide/from16 v2, p6

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/common/io/protocol/ProtoBuf;->setLong(IJ)V

    .line 3175
    const/16 v24, 0x3

    const-string v25, ", "

    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/google/android/gm/provider/MailSync$Message;->toAddresses:Ljava/util/List;

    move-object/from16 v26, v0

    invoke-static/range {v25 .. v26}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v20

    move/from16 v1, v24

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lcom/google/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)V

    .line 3178
    const/16 v24, 0x4

    const-string v25, ", "

    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/google/android/gm/provider/MailSync$Message;->ccAddresses:Ljava/util/List;

    move-object/from16 v26, v0

    invoke-static/range {v25 .. v26}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v20

    move/from16 v1, v24

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lcom/google/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)V

    .line 3181
    const/16 v24, 0x5

    const-string v25, ", "

    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/google/android/gm/provider/MailSync$Message;->bccAddresses:Ljava/util/List;

    move-object/from16 v26, v0

    invoke-static/range {v25 .. v26}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v20

    move/from16 v1, v24

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lcom/google/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)V

    .line 3184
    const/16 v24, 0x6

    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/google/android/gm/provider/MailSync$Message;->subject:Ljava/lang/String;

    move-object/from16 v25, v0

    if-eqz v25, :cond_4

    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/google/android/gm/provider/MailSync$Message;->subject:Ljava/lang/String;

    move-object/from16 v25, v0

    :goto_0
    move-object/from16 v0, v20

    move/from16 v1, v24

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lcom/google/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)V

    .line 3187
    const/16 v24, 0x7

    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/google/android/gm/provider/MailSync$Message;->body:Ljava/lang/String;

    move-object/from16 v25, v0

    if-eqz v25, :cond_5

    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/google/android/gm/provider/MailSync$Message;->body:Ljava/lang/String;

    move-object/from16 v25, v0

    :goto_1
    move-object/from16 v0, v20

    move/from16 v1, v24

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lcom/google/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)V

    .line 3192
    move-object/from16 v0, p3

    iget-boolean v0, v0, Lcom/google/android/gm/provider/MailSync$Message;->clientCreated:Z

    move/from16 v24, v0

    if-eqz v24, :cond_6

    move-object/from16 v0, p3

    iget-boolean v0, v0, Lcom/google/android/gm/provider/MailSync$Message;->includeQuotedText:Z

    move/from16 v24, v0

    if-eqz v24, :cond_6

    .line 3193
    const/16 v24, 0xb

    const/16 v25, 0x1

    move-object/from16 v0, v20

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lcom/google/common/io/protocol/ProtoBuf;->setBool(IZ)V

    .line 3196
    const/16 v24, 0xd

    move-object/from16 v0, p3

    iget-wide v0, v0, Lcom/google/android/gm/provider/MailSync$Message;->quoteStartPos:J

    move-wide/from16 v25, v0

    move-object/from16 v0, v20

    move/from16 v1, v24

    move-wide/from16 v2, v25

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/common/io/protocol/ProtoBuf;->setLong(IJ)V

    .line 3199
    move-object/from16 v0, p3

    iget-boolean v0, v0, Lcom/google/android/gm/provider/MailSync$Message;->forward:Z

    move/from16 v24, v0

    if-eqz v24, :cond_1

    .line 3200
    const/16 v24, 0xc

    const/16 v25, 0x1

    move-object/from16 v0, v20

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lcom/google/common/io/protocol/ProtoBuf;->setBool(IZ)V

    .line 3210
    :cond_1
    :goto_2
    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/google/android/gm/provider/MailSync$Message;->customFromAddress:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v24

    if-nez v24, :cond_2

    .line 3211
    const/16 v24, 0xe

    const/16 v25, 0x1

    move-object/from16 v0, v20

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lcom/google/common/io/protocol/ProtoBuf;->setBool(IZ)V

    .line 3214
    const/16 v24, 0xf

    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/google/android/gm/provider/MailSync$Message;->customFromAddress:Ljava/lang/String;

    move-object/from16 v25, v0

    move-object/from16 v0, v20

    move/from16 v1, v24

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lcom/google/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)V

    .line 3218
    const-string v24, "Gmail"

    const/16 v25, 0x2

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v24

    if-eqz v24, :cond_2

    .line 3219
    const-string v24, "Gmail"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "Uphill Sync operation with custom from address:"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/google/android/gm/provider/MailSync$Message;->customFromAddress:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3225
    :cond_2
    const/16 v21, 0x1

    .line 3226
    .local v21, tempIndex:I
    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/google/android/gm/provider/MailSync$Message;->attachments:Ljava/util/List;

    move-object/from16 v24, v0

    invoke-interface/range {v24 .. v24}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .local v13, i$:Ljava/util/Iterator;
    :cond_3
    :goto_3
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v24

    if-eqz v24, :cond_e

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gm/provider/Gmail$Attachment;

    .line 3227
    .local v5, attachment:Lcom/google/android/gm/provider/Gmail$Attachment;
    sget-object v24, Lcom/google/android/gm/provider/MailSync$2;->$SwitchMap$com$google$android$gm$provider$Gmail$AttachmentOrigin:[I

    move-object v0, v5

    iget-object v0, v0, Lcom/google/android/gm/provider/Gmail$Attachment;->origin:Lcom/google/android/gm/provider/Gmail$AttachmentOrigin;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/google/android/gm/provider/Gmail$AttachmentOrigin;->ordinal()I

    move-result v25

    aget v24, v24, v25

    packed-switch v24, :pswitch_data_0

    .line 3342
    new-instance v24, Ljava/lang/IllegalArgumentException;

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "Unknown origin: "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object v0, v5

    iget-object v0, v0, Lcom/google/android/gm/provider/Gmail$Attachment;->origin:Lcom/google/android/gm/provider/Gmail$AttachmentOrigin;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-direct/range {v24 .. v25}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v24

    .line 3184
    .end local v5           #attachment:Lcom/google/android/gm/provider/Gmail$Attachment;
    .end local v13           #i$:Ljava/util/Iterator;
    .end local v21           #tempIndex:I
    :cond_4
    const-string v25, ""

    goto/16 :goto_0

    .line 3187
    :cond_5
    const-string v25, ""

    goto/16 :goto_1

    .line 3204
    :cond_6
    const/16 v24, 0xb

    const/16 v25, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lcom/google/common/io/protocol/ProtoBuf;->setBool(IZ)V

    goto/16 :goto_2

    .line 3229
    .restart local v5       #attachment:Lcom/google/android/gm/provider/Gmail$Attachment;
    .restart local v13       #i$:Ljava/util/Iterator;
    .restart local v21       #tempIndex:I
    :pswitch_0
    const/16 v24, 0x8

    move-object v0, v5

    iget-object v0, v0, Lcom/google/android/gm/provider/Gmail$Attachment;->originExtras:Ljava/lang/String;

    move-object/from16 v25, v0

    move-object/from16 v0, v20

    move/from16 v1, v24

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lcom/google/common/io/protocol/ProtoBuf;->addString(ILjava/lang/String;)V

    goto :goto_3

    .line 3234
    :pswitch_1
    iget-object v7, v5, Lcom/google/android/gm/provider/Gmail$Attachment;->originExtras:Ljava/lang/String;

    .line 3237
    .local v7, attachmentUri:Ljava/lang/String;
    const-string v24, "file://"

    move-object v0, v7

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_7

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "file://"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object v0, v7

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v24

    if-nez v24, :cond_7

    const-string v24, "file:///sdcard"

    move-object v0, v7

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v24

    if-nez v24, :cond_7

    .line 3241
    const-string v24, "Gmail"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "file:// attachment paths must point to file://"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, ". "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, "Ignoring attachment "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object v1, v7

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 3249
    :cond_7
    move-object v0, v5

    iget-object v0, v0, Lcom/google/android/gm/provider/Gmail$Attachment;->partId:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/google/android/common/base/Strings;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_9

    .line 3254
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p3

    iget-wide v0, v0, Lcom/google/android/gm/provider/MailSync$Message;->messageId:J

    move-wide/from16 v25, v0

    invoke-virtual/range {v24 .. v26}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "-"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 3255
    .local v6, attachmentId:Ljava/lang/String;
    add-int/lit8 v21, v21, 0x1

    .line 3259
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/provider/MailSync$ProtoOperationSink;->this$0:Lcom/google/android/gm/provider/MailSync;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/google/android/gm/provider/MailSync;->access$200(Lcom/google/android/gm/provider/MailSync;)Landroid/content/ContentResolver;

    move-result-object v24

    const-string v25, "gmail_use_multipart_protobuf"

    const/16 v26, 0x1

    invoke-static/range {v24 .. v26}, Lcom/google/android/gsf/Gservices;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v24

    if-eqz v24, :cond_a

    const/16 v24, 0x1

    move/from16 v23, v24

    .line 3261
    .local v23, useMultiPartProtoBuf:Z
    :goto_5
    const/4 v12, 0x0

    .line 3262
    .local v12, fileContents:[B
    if-eqz v23, :cond_b

    .line 3263
    const/16 v18, 0x0

    .line 3265
    .local v18, part:Lcom/google/android/common/http/FilePart;
    :try_start_0
    new-instance v19, Lcom/google/android/gm/provider/MailSync$AttachmentPartSource;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/provider/MailSync$ProtoOperationSink;->this$0:Lcom/google/android/gm/provider/MailSync;

    move-object/from16 v24, v0

    move-object/from16 v0, p3

    iget-wide v0, v0, Lcom/google/android/gm/provider/MailSync$Message;->messageId:J

    move-wide/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v24

    move-wide/from16 v2, v25

    move-object v4, v5

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/gm/provider/MailSync$AttachmentPartSource;-><init>(Lcom/google/android/gm/provider/MailSync;JLcom/google/android/gm/provider/Gmail$Attachment;)V

    .line 3267
    .local v19, partSource:Lcom/google/android/common/http/PartSource;
    new-instance v18, Lcom/google/android/common/http/FilePart;

    .end local v18           #part:Lcom/google/android/common/http/FilePart;
    move-object v0, v5

    iget-object v0, v0, Lcom/google/android/gm/provider/Gmail$Attachment;->contentType:Ljava/lang/String;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    move-object/from16 v0, v18

    move-object v1, v6

    move-object/from16 v2, v19

    move-object/from16 v3, v24

    move-object/from16 v4, v25

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/common/http/FilePart;-><init>(Ljava/lang/String;Lcom/google/android/common/http/PartSource;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    .line 3288
    .restart local v18       #part:Lcom/google/android/common/http/FilePart;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/provider/MailSync$ProtoOperationSink;->mParts:Ljava/util/ArrayList;

    move-object/from16 v24, v0

    if-nez v24, :cond_8

    .line 3289
    new-instance v24, Ljava/util/ArrayList;

    invoke-direct/range {v24 .. v24}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/gm/provider/MailSync$ProtoOperationSink;->mParts:Ljava/util/ArrayList;

    .line 3291
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/provider/MailSync$ProtoOperationSink;->mParts:Ljava/util/ArrayList;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3323
    .end local v18           #part:Lcom/google/android/common/http/FilePart;
    .end local v19           #partSource:Lcom/google/android/common/http/PartSource;
    :goto_6
    const/16 v24, 0x9

    move-object/from16 v0, v20

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->addNewProtoBuf(I)Lcom/google/common/io/protocol/ProtoBuf;

    move-result-object v22

    .line 3325
    .local v22, uploadedAttachment:Lcom/google/common/io/protocol/ProtoBuf;
    const/16 v24, 0x1

    move-object/from16 v0, v22

    move/from16 v1, v24

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Lcom/google/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)V

    .line 3328
    const/16 v24, 0x2

    move-object v0, v5

    iget-object v0, v0, Lcom/google/android/gm/provider/Gmail$Attachment;->name:Ljava/lang/String;

    move-object/from16 v25, v0

    move-object/from16 v0, v22

    move/from16 v1, v24

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lcom/google/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)V

    .line 3331
    const/16 v24, 0x3

    move-object v0, v5

    iget-object v0, v0, Lcom/google/android/gm/provider/Gmail$Attachment;->contentType:Ljava/lang/String;

    move-object/from16 v25, v0

    move-object/from16 v0, v22

    move/from16 v1, v24

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lcom/google/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)V

    .line 3334
    if-nez v23, :cond_3

    .line 3335
    const/16 v24, 0x4

    move-object/from16 v0, v22

    move/from16 v1, v24

    move-object v2, v12

    invoke-virtual {v0, v1, v2}, Lcom/google/common/io/protocol/ProtoBuf;->setBytes(I[B)V

    goto/16 :goto_3

    .line 3257
    .end local v6           #attachmentId:Ljava/lang/String;
    .end local v12           #fileContents:[B
    .end local v22           #uploadedAttachment:Lcom/google/common/io/protocol/ProtoBuf;
    .end local v23           #useMultiPartProtoBuf:Z
    :cond_9
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p3

    iget-wide v0, v0, Lcom/google/android/gm/provider/MailSync$Message;->messageId:J

    move-wide/from16 v25, v0

    invoke-virtual/range {v24 .. v26}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "-"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object v0, v5

    iget-object v0, v0, Lcom/google/android/gm/provider/Gmail$Attachment;->partId:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .restart local v6       #attachmentId:Ljava/lang/String;
    goto/16 :goto_4

    .line 3259
    :cond_a
    const/16 v24, 0x0

    move/from16 v23, v24

    goto/16 :goto_5

    .line 3269
    .restart local v12       #fileContents:[B
    .restart local v23       #useMultiPartProtoBuf:Z
    :catch_0
    move-exception v24

    move-object/from16 v11, v24

    .line 3274
    .local v11, e:Ljava/io/IOException;
    const-string v24, "Gmail"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "IO error while reading attachment: "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    move-object v2, v11

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3275
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object v2, v5

    invoke-direct {v0, v1, v2}, Lcom/google/android/gm/provider/MailSync$ProtoOperationSink;->notifyAttachmentFailed(Lcom/google/android/gm/provider/MailSync$Message;Lcom/google/android/gm/provider/Gmail$Attachment;)V

    goto/16 :goto_3

    .line 3277
    .end local v11           #e:Ljava/io/IOException;
    :catch_1
    move-exception v24

    move-object/from16 v11, v24

    .line 3282
    .local v11, e:Ljava/lang/SecurityException;
    const-string v24, "Gmail"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "SecurityException while reading attachment: "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    move-object v2, v11

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3284
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object v2, v5

    invoke-direct {v0, v1, v2}, Lcom/google/android/gm/provider/MailSync$ProtoOperationSink;->notifyAttachmentFailed(Lcom/google/android/gm/provider/MailSync$Message;Lcom/google/android/gm/provider/Gmail$Attachment;)V

    goto/16 :goto_3

    .line 3294
    .end local v11           #e:Ljava/lang/SecurityException;
    :cond_b
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/provider/MailSync$ProtoOperationSink;->this$0:Lcom/google/android/gm/provider/MailSync;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/google/android/gm/provider/MailSync;->access$300(Lcom/google/android/gm/provider/MailSync;)Lcom/google/android/gm/provider/MailStore;

    move-result-object v24

    move-object/from16 v0, p3

    iget-wide v0, v0, Lcom/google/android/gm/provider/MailSync$Message;->messageId:J

    move-wide/from16 v25, v0

    move-object/from16 v0, v24

    move-wide/from16 v1, v25

    move-object v3, v5

    invoke-interface {v0, v1, v2, v3}, Lcom/google/android/gm/provider/MailStore;->getInputStreamForUploadedAttachment(JLcom/google/android/gm/provider/Gmail$Attachment;)Ljava/io/InputStream;

    move-result-object v14

    .line 3296
    .local v14, is:Ljava/io/InputStream;
    new-instance v8, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v8}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 3297
    .local v8, byteStream:Ljava/io/ByteArrayOutputStream;
    const/16 v24, 0x400

    move/from16 v0, v24

    new-array v0, v0, [B

    move-object v10, v0

    .line 3298
    .local v10, data:[B
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v15

    .line 3300
    .local v15, now:J
    :cond_c
    invoke-virtual {v14, v10}, Ljava/io/InputStream;->read([B)I

    move-result v9

    .line 3301
    .local v9, bytesRead:I
    if-gez v9, :cond_d

    .line 3308
    invoke-virtual {v8}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v12

    goto/16 :goto_6

    .line 3303
    :cond_d
    const/16 v24, 0x0

    move-object v0, v8

    move-object v1, v10

    move/from16 v2, v24

    move v3, v9

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 3304
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v24

    sub-long v24, v24, v15

    const-wide/32 v26, 0x36ee80

    cmp-long v24, v24, v26

    if-lez v24, :cond_c

    .line 3305
    new-instance v24, Ljava/io/IOException;

    const-string v25, "Timed out reading attachment"

    invoke-direct/range {v24 .. v25}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v24
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 3309
    .end local v8           #byteStream:Ljava/io/ByteArrayOutputStream;
    .end local v9           #bytesRead:I
    .end local v10           #data:[B
    .end local v14           #is:Ljava/io/InputStream;
    .end local v15           #now:J
    :catch_2
    move-exception v24

    move-object/from16 v11, v24

    .line 3314
    .local v11, e:Ljava/io/IOException;
    const-string v24, "Gmail"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "IO error while reading attachment: "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    move-object v2, v11

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3316
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object v2, v5

    invoke-direct {v0, v1, v2}, Lcom/google/android/gm/provider/MailSync$ProtoOperationSink;->notifyAttachmentFailed(Lcom/google/android/gm/provider/MailSync$Message;Lcom/google/android/gm/provider/Gmail$Attachment;)V

    goto/16 :goto_3

    .line 3345
    .end local v5           #attachment:Lcom/google/android/gm/provider/Gmail$Attachment;
    .end local v6           #attachmentId:Ljava/lang/String;
    .end local v7           #attachmentUri:Ljava/lang/String;
    .end local v11           #e:Ljava/io/IOException;
    .end local v12           #fileContents:[B
    .end local v23           #useMultiPartProtoBuf:Z
    :cond_e
    const-string v24, "Gmail"

    const/16 v25, 0x2

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v24

    if-eqz v24, :cond_f

    .line 3346
    const-string v24, "Gmail"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "messageSavedOrSent: message = "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3348
    :cond_f
    return-void

    .line 3227
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
