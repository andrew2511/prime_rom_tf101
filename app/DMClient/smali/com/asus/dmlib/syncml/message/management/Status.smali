.class public Lcom/asus/dmlib/syncml/message/management/Status;
.super Ljava/lang/Object;
.source "Status.java"


# static fields
.field public static final STATUS_200_OK:I = 0xc8

.field public static final STATUS_202_ACCEPTED_FOR_PROCESSING:I = 0xca

.field public static final STATUS_212_OK_ACCEPTED:I = 0xd4

.field public static final STATUS_213_CHUNKED_ITEM_ACCEPTED_AND_BUFFERED:I = 0xd5

.field public static final STATUS_214_OPERATION_CANCELLED:I = 0xd6

.field public static final STATUS_215_NOT_EXECUTED:I = 0xd7

.field public static final STATUS_216_ATOMIC_ROLL_BACK_OK:I = 0xd8

.field public static final STATUS_304_NOT_MODIFIED:I = 0x130

.field public static final STATUS_401_UNAUTHORIZED:I = 0x191

.field public static final STATUS_403_FORBIDDEN:I = 0x193

.field public static final STATUS_404_NOT_FOUND:I = 0x194

.field public static final STATUS_405_COMMAND_NOT_ALLOWED:I = 0x195

.field public static final STATUS_406_OPTIONAL_FEATURE_NOT_SUPPORTED:I = 0x196

.field public static final STATUS_407_AUTHENTICATION_REQUIRED:I = 0x197

.field public static final STATUS_408_REQUEST_TIMEOUT:I = 0x198

.field public static final STATUS_412_INCOMPLETE_COMMAND:I = 0x19c

.field public static final STATUS_413_REQUEST_ENTITY_TOO_LARGE:I = 0x19d

.field public static final STATUS_414_URI_TOO_LONG:I = 0x19e

.field public static final STATUS_415_UNSUPPORTED_MEDIA_TYPE_OR_FORMAT:I = 0x19f

.field public static final STATUS_416_REQUESTED_RANGE_NOT_SATISFIABLE:I = 0x1a0

.field public static final STATUS_418_ALREADY_EXISTS:I = 0x1a2

.field public static final STATUS_420_DEVICE_FULL:I = 0x1a4

.field public static final STATUS_425_PERMISSION_DENIED:I = 0x1a9

.field public static final STATUS_500_COMMAND_FAILED:I = 0x1f4

.field public static final STATUS_507_ATOMIC_FAILED:I = 0x1fb

.field public static final STATUS_510_DATA_STORE_FAILURE:I = 0x1fe

.field public static final STATUS_516_ATOMIC_ROLL_BACK_FAILED:I = 0x204

.field public static final STATUS_517_ATOMIC_RESPONSE_TOO_LARGE_TO_FIT:I = 0x205

.field private static final TAG:Ljava/lang/String; = "Status"


# instance fields
.field private mAppCommandRef:Ljava/lang/Object;

.field private mChal:Lcom/asus/dmlib/syncml/common/Chal;

.field private mCmd:Ljava/lang/String;

.field private mCmdID:Ljava/lang/String;

.field private mCmdRef:Ljava/lang/String;

.field private mCred:Lcom/asus/dmlib/syncml/message/common/Cred;

.field private mItemList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/asus/dmlib/syncml/dm/message/description/Item;",
            ">;"
        }
    .end annotation
.end field

.field private mMsgRef:Ljava/lang/String;

.field private mSourceRefList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mStatusCode:I

.field private mTargetRefList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/asus/dmlib/syncml/message/management/Status;->mSourceRefList:Ljava/util/ArrayList;

    .line 99
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/asus/dmlib/syncml/message/management/Status;->mTargetRefList:Ljava/util/ArrayList;

    .line 105
    const/4 v0, -0x1

    iput v0, p0, Lcom/asus/dmlib/syncml/message/management/Status;->mStatusCode:I

    .line 107
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/asus/dmlib/syncml/message/management/Status;->mItemList:Ljava/util/ArrayList;

    .line 113
    return-void
.end method

.method public constructor <init>(Lcom/asus/dmlib/syncml/message/SyncMLMsgElement;)V
    .locals 11
    .parameter "status"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 209
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v9, p0, Lcom/asus/dmlib/syncml/message/management/Status;->mSourceRefList:Ljava/util/ArrayList;

    .line 99
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v9, p0, Lcom/asus/dmlib/syncml/message/management/Status;->mTargetRefList:Ljava/util/ArrayList;

    .line 105
    const/4 v9, -0x1

    iput v9, p0, Lcom/asus/dmlib/syncml/message/management/Status;->mStatusCode:I

    .line 107
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v9, p0, Lcom/asus/dmlib/syncml/message/management/Status;->mItemList:Ljava/util/ArrayList;

    .line 210
    const-string v9, "CmdID"

    invoke-virtual {p1, v9}, Lcom/asus/dmlib/syncml/message/SyncMLMsgElement;->getChild(Ljava/lang/String;)Lcom/asus/dmlib/syncml/message/SyncMLMsgElement;

    move-result-object v9

    invoke-virtual {v9}, Lcom/asus/dmlib/syncml/message/SyncMLMsgElement;->getContent()Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/asus/dmlib/syncml/message/management/Status;->mCmdID:Ljava/lang/String;

    .line 211
    const-string v9, "MsgRef"

    invoke-virtual {p1, v9}, Lcom/asus/dmlib/syncml/message/SyncMLMsgElement;->getChild(Ljava/lang/String;)Lcom/asus/dmlib/syncml/message/SyncMLMsgElement;

    move-result-object v9

    invoke-virtual {v9}, Lcom/asus/dmlib/syncml/message/SyncMLMsgElement;->getContent()Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/asus/dmlib/syncml/message/management/Status;->mMsgRef:Ljava/lang/String;

    .line 212
    const-string v9, "CmdRef"

    invoke-virtual {p1, v9}, Lcom/asus/dmlib/syncml/message/SyncMLMsgElement;->getChild(Ljava/lang/String;)Lcom/asus/dmlib/syncml/message/SyncMLMsgElement;

    move-result-object v9

    invoke-virtual {v9}, Lcom/asus/dmlib/syncml/message/SyncMLMsgElement;->getContent()Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/asus/dmlib/syncml/message/management/Status;->mCmdRef:Ljava/lang/String;

    .line 213
    const-string v9, "Cmd"

    invoke-virtual {p1, v9}, Lcom/asus/dmlib/syncml/message/SyncMLMsgElement;->getChild(Ljava/lang/String;)Lcom/asus/dmlib/syncml/message/SyncMLMsgElement;

    move-result-object v9

    invoke-virtual {v9}, Lcom/asus/dmlib/syncml/message/SyncMLMsgElement;->getContent()Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/asus/dmlib/syncml/message/management/Status;->mCmd:Ljava/lang/String;

    .line 214
    const-string v9, "Data"

    invoke-virtual {p1, v9}, Lcom/asus/dmlib/syncml/message/SyncMLMsgElement;->getChild(Ljava/lang/String;)Lcom/asus/dmlib/syncml/message/SyncMLMsgElement;

    move-result-object v9

    invoke-virtual {v9}, Lcom/asus/dmlib/syncml/message/SyncMLMsgElement;->getContent()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    iput v9, p0, Lcom/asus/dmlib/syncml/message/management/Status;->mStatusCode:I

    .line 216
    iget-object v9, p0, Lcom/asus/dmlib/syncml/message/management/Status;->mCmdID:Ljava/lang/String;

    if-eqz v9, :cond_0

    iget-object v9, p0, Lcom/asus/dmlib/syncml/message/management/Status;->mMsgRef:Ljava/lang/String;

    if-eqz v9, :cond_0

    iget-object v9, p0, Lcom/asus/dmlib/syncml/message/management/Status;->mCmdRef:Ljava/lang/String;

    if-eqz v9, :cond_0

    iget-object v9, p0, Lcom/asus/dmlib/syncml/message/management/Status;->mCmd:Ljava/lang/String;

    if-eqz v9, :cond_0

    iget v9, p0, Lcom/asus/dmlib/syncml/message/management/Status;->mStatusCode:I

    const/4 v10, 0x1

    if-ge v9, v10, :cond_1

    .line 218
    :cond_0
    new-instance v9, Ljava/lang/IllegalArgumentException;

    const-string v10, "Cannot construct a new Status if any of the parameters is null."

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 222
    :cond_1
    const-string v9, "Cred"

    invoke-virtual {p1, v9}, Lcom/asus/dmlib/syncml/message/SyncMLMsgElement;->getChild(Ljava/lang/String;)Lcom/asus/dmlib/syncml/message/SyncMLMsgElement;

    move-result-object v1

    .line 223
    .local v1, cred:Lcom/asus/dmlib/syncml/message/SyncMLMsgElement;
    if-eqz v1, :cond_2

    .line 224
    new-instance v9, Lcom/asus/dmlib/syncml/message/common/Cred;

    invoke-direct {v9, v1}, Lcom/asus/dmlib/syncml/message/common/Cred;-><init>(Lcom/asus/dmlib/syncml/message/SyncMLMsgElement;)V

    iput-object v9, p0, Lcom/asus/dmlib/syncml/message/management/Status;->mCred:Lcom/asus/dmlib/syncml/message/common/Cred;

    .line 227
    :cond_2
    const-string v9, "SourceRef"

    invoke-virtual {p1, v9}, Lcom/asus/dmlib/syncml/message/SyncMLMsgElement;->getChildren(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v6

    .line 228
    .local v6, sourceRefs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/asus/dmlib/syncml/message/SyncMLMsgElement;>;"
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/asus/dmlib/syncml/message/SyncMLMsgElement;

    .line 229
    .local v5, sourceRef:Lcom/asus/dmlib/syncml/message/SyncMLMsgElement;
    iget-object v9, p0, Lcom/asus/dmlib/syncml/message/management/Status;->mSourceRefList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Lcom/asus/dmlib/syncml/message/SyncMLMsgElement;->getContent()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 232
    .end local v5           #sourceRef:Lcom/asus/dmlib/syncml/message/SyncMLMsgElement;
    :cond_3
    const-string v9, "TargetRef"

    invoke-virtual {p1, v9}, Lcom/asus/dmlib/syncml/message/SyncMLMsgElement;->getChildren(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v8

    .line 233
    .local v8, targetRefs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/asus/dmlib/syncml/message/SyncMLMsgElement;>;"
    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/asus/dmlib/syncml/message/SyncMLMsgElement;

    .line 234
    .local v7, targetRef:Lcom/asus/dmlib/syncml/message/SyncMLMsgElement;
    iget-object v9, p0, Lcom/asus/dmlib/syncml/message/management/Status;->mTargetRefList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Lcom/asus/dmlib/syncml/message/SyncMLMsgElement;->getContent()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 237
    .end local v7           #targetRef:Lcom/asus/dmlib/syncml/message/SyncMLMsgElement;
    :cond_4
    const-string v9, "Item"

    invoke-virtual {p1, v9}, Lcom/asus/dmlib/syncml/message/SyncMLMsgElement;->getChildren(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    .line 238
    .local v4, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/asus/dmlib/syncml/message/SyncMLMsgElement;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/asus/dmlib/syncml/message/SyncMLMsgElement;

    .line 239
    .local v3, item:Lcom/asus/dmlib/syncml/message/SyncMLMsgElement;
    iget-object v9, p0, Lcom/asus/dmlib/syncml/message/management/Status;->mTargetRefList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Lcom/asus/dmlib/syncml/message/SyncMLMsgElement;->getContent()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 242
    .end local v3           #item:Lcom/asus/dmlib/syncml/message/SyncMLMsgElement;
    :cond_5
    const-string v9, "Chal"

    invoke-virtual {p1, v9}, Lcom/asus/dmlib/syncml/message/SyncMLMsgElement;->getChild(Ljava/lang/String;)Lcom/asus/dmlib/syncml/message/SyncMLMsgElement;

    move-result-object v0

    .line 243
    .local v0, chal:Lcom/asus/dmlib/syncml/message/SyncMLMsgElement;
    if-eqz v0, :cond_6

    .line 244
    new-instance v9, Lcom/asus/dmlib/syncml/common/Chal;

    invoke-direct {v9, v0}, Lcom/asus/dmlib/syncml/common/Chal;-><init>(Lcom/asus/dmlib/syncml/message/SyncMLMsgElement;)V

    iput-object v9, p0, Lcom/asus/dmlib/syncml/message/management/Status;->mChal:Lcom/asus/dmlib/syncml/common/Chal;

    .line 246
    :cond_6
    return-void
.end method

.method public constructor <init>(Lcom/asus/dmlib/syncml/message/command/BaseCommand;I)V
    .locals 2
    .parameter "command"
    .parameter "statusCode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Lcom/asus/dmlib/syncml/exception/SyncMLElementNotSupportException;
        }
    .end annotation

    .prologue
    .line 178
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/asus/dmlib/syncml/message/management/Status;->mSourceRefList:Ljava/util/ArrayList;

    .line 99
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/asus/dmlib/syncml/message/management/Status;->mTargetRefList:Ljava/util/ArrayList;

    .line 105
    const/4 v0, -0x1

    iput v0, p0, Lcom/asus/dmlib/syncml/message/management/Status;->mStatusCode:I

    .line 107
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/asus/dmlib/syncml/message/management/Status;->mItemList:Ljava/util/ArrayList;

    .line 179
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    if-ge p2, v0, :cond_1

    .line 180
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot construct a new Status if command is null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 183
    :cond_1
    invoke-virtual {p1}, Lcom/asus/dmlib/syncml/message/command/BaseCommand;->getMessageID()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/asus/dmlib/syncml/message/management/Status;->mMsgRef:Ljava/lang/String;

    .line 184
    invoke-virtual {p1}, Lcom/asus/dmlib/syncml/message/command/BaseCommand;->getCmdID()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/asus/dmlib/syncml/message/management/Status;->mCmdRef:Ljava/lang/String;

    .line 185
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/asus/dmlib/syncml/message/management/Status;->mCmd:Ljava/lang/String;

    .line 186
    iput p2, p0, Lcom/asus/dmlib/syncml/message/management/Status;->mStatusCode:I

    .line 187
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/asus/dmlib/syncml/message/management/Status;->mAppCommandRef:Ljava/lang/Object;

    .line 188
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V
    .locals 2
    .parameter "commandID"
    .parameter "messageRef"
    .parameter "commandRef"
    .parameter "cmd"
    .parameter "statusCode"
    .parameter "appCommandRef"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 191
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/asus/dmlib/syncml/message/management/Status;->mSourceRefList:Ljava/util/ArrayList;

    .line 99
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/asus/dmlib/syncml/message/management/Status;->mTargetRefList:Ljava/util/ArrayList;

    .line 105
    const/4 v0, -0x1

    iput v0, p0, Lcom/asus/dmlib/syncml/message/management/Status;->mStatusCode:I

    .line 107
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/asus/dmlib/syncml/message/management/Status;->mItemList:Ljava/util/ArrayList;

    .line 192
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    if-eqz p4, :cond_0

    const/4 v0, 0x1

    if-lt p5, v0, :cond_0

    if-nez p6, :cond_1

    .line 195
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot construct a new Status if any of the parameters is null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 199
    :cond_1
    iput-object p1, p0, Lcom/asus/dmlib/syncml/message/management/Status;->mCmdID:Ljava/lang/String;

    .line 200
    iput-object p2, p0, Lcom/asus/dmlib/syncml/message/management/Status;->mMsgRef:Ljava/lang/String;

    .line 201
    iput-object p3, p0, Lcom/asus/dmlib/syncml/message/management/Status;->mCmdRef:Ljava/lang/String;

    .line 202
    iput-object p4, p0, Lcom/asus/dmlib/syncml/message/management/Status;->mCmd:Ljava/lang/String;

    .line 203
    iput p5, p0, Lcom/asus/dmlib/syncml/message/management/Status;->mStatusCode:I

    .line 204
    iput-object p6, p0, Lcom/asus/dmlib/syncml/message/management/Status;->mAppCommandRef:Ljava/lang/Object;

    .line 205
    return-void
.end method

.method public constructor <init>(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 8
    .parameter "parser"

    .prologue
    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/asus/dmlib/syncml/message/management/Status;->mSourceRefList:Ljava/util/ArrayList;

    .line 99
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/asus/dmlib/syncml/message/management/Status;->mTargetRefList:Ljava/util/ArrayList;

    .line 105
    const/4 v6, -0x1

    iput v6, p0, Lcom/asus/dmlib/syncml/message/management/Status;->mStatusCode:I

    .line 107
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/asus/dmlib/syncml/message/management/Status;->mItemList:Ljava/util/ArrayList;

    .line 117
    const/4 v3, 0x0

    .line 118
    .local v3, tagName:Ljava/lang/String;
    const/4 v2, 0x1

    .line 119
    .local v2, keepParsingStatus:Z
    :cond_0
    :goto_0
    if-eqz v2, :cond_1

    .line 120
    :try_start_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextToken()I

    move-result v4

    .line 121
    .local v4, type:I
    sparse-switch v4, :sswitch_data_0

    goto :goto_0

    .line 123
    :sswitch_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 124
    const-string v6, "Item"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 125
    iget-object v6, p0, Lcom/asus/dmlib/syncml/message/management/Status;->mItemList:Ljava/util/ArrayList;

    new-instance v7, Lcom/asus/dmlib/syncml/dm/message/description/Item;

    invoke-direct {v7, p1}, Lcom/asus/dmlib/syncml/dm/message/description/Item;-><init>(Lorg/xmlpull/v1/XmlPullParser;)V

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 170
    .end local v4           #type:I
    :catch_0
    move-exception v6

    move-object v1, v6

    .line 171
    .local v1, e:Lorg/xmlpull/v1/XmlPullParserException;
    invoke-static {v1}, Lcom/asus/dmlib/util/DMLog;->logException(Ljava/lang/Throwable;)V

    .line 175
    .end local v1           #e:Lorg/xmlpull/v1/XmlPullParserException;
    :cond_1
    :goto_1
    return-void

    .line 126
    .restart local v4       #type:I
    :cond_2
    :try_start_1
    const-string v6, "Cred"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 127
    new-instance v6, Lcom/asus/dmlib/syncml/message/common/Cred;

    invoke-direct {v6, p1}, Lcom/asus/dmlib/syncml/message/common/Cred;-><init>(Lorg/xmlpull/v1/XmlPullParser;)V

    iput-object v6, p0, Lcom/asus/dmlib/syncml/message/management/Status;->mCred:Lcom/asus/dmlib/syncml/message/common/Cred;
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 172
    .end local v4           #type:I
    :catch_1
    move-exception v6

    move-object v1, v6

    .line 173
    .local v1, e:Ljava/io/IOException;
    invoke-static {v1}, Lcom/asus/dmlib/util/DMLog;->logException(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 128
    .end local v1           #e:Ljava/io/IOException;
    .restart local v4       #type:I
    :cond_3
    :try_start_2
    const-string v6, "Chal"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 129
    new-instance v6, Lcom/asus/dmlib/syncml/common/Chal;

    invoke-direct {v6, p1}, Lcom/asus/dmlib/syncml/common/Chal;-><init>(Lorg/xmlpull/v1/XmlPullParser;)V

    iput-object v6, p0, Lcom/asus/dmlib/syncml/message/management/Status;->mChal:Lcom/asus/dmlib/syncml/common/Chal;

    goto :goto_0

    .line 133
    :sswitch_1
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "Status"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 134
    const/4 v2, 0x0

    goto :goto_0

    .line 139
    :sswitch_2
    const/4 v5, 0x0

    .line 140
    .local v5, value:Ljava/lang/String;
    instance-of v6, p1, Lorg/kxml2/io/KXmlParser;

    if-eqz v6, :cond_5

    .line 141
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->isWhitespace()Z

    move-result v6

    if-nez v6, :cond_0

    .line 142
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v5

    .line 152
    :cond_4
    :goto_2
    const-string v6, "CmdID"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 153
    iput-object v5, p0, Lcom/asus/dmlib/syncml/message/management/Status;->mCmdID:Ljava/lang/String;

    goto :goto_0

    .line 146
    :cond_5
    instance-of v6, p1, Lorg/kxml2/wap/WbxmlParser;

    if-eqz v6, :cond_4

    .line 147
    move-object v0, p1

    check-cast v0, Lorg/kxml2/wap/WbxmlParser;

    move-object v6, v0

    invoke-virtual {v6}, Lorg/kxml2/wap/WbxmlParser;->getWapCode()I

    move-result v6

    const/16 v7, 0xc3

    if-ne v6, v7, :cond_4

    .line 148
    new-instance v5, Ljava/lang/String;

    .end local v5           #value:Ljava/lang/String;
    move-object v0, p1

    check-cast v0, Lorg/kxml2/wap/WbxmlParser;

    move-object v6, v0

    invoke-virtual {v6}, Lorg/kxml2/wap/WbxmlParser;->getWapExtensionData()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [B

    check-cast v6, [B

    invoke-direct {v5, v6}, Ljava/lang/String;-><init>([B)V

    .restart local v5       #value:Ljava/lang/String;
    goto :goto_2

    .line 154
    :cond_6
    const-string v6, "MsgRef"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 155
    iput-object v5, p0, Lcom/asus/dmlib/syncml/message/management/Status;->mMsgRef:Ljava/lang/String;

    goto/16 :goto_0

    .line 156
    :cond_7
    const-string v6, "CmdRef"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 157
    iput-object v5, p0, Lcom/asus/dmlib/syncml/message/management/Status;->mCmdRef:Ljava/lang/String;

    goto/16 :goto_0

    .line 158
    :cond_8
    const-string v6, "Cmd"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 159
    iput-object v5, p0, Lcom/asus/dmlib/syncml/message/management/Status;->mCmd:Ljava/lang/String;

    goto/16 :goto_0

    .line 160
    :cond_9
    const-string v6, "TargetRef"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 161
    iget-object v6, p0, Lcom/asus/dmlib/syncml/message/management/Status;->mTargetRefList:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 162
    :cond_a
    const-string v6, "SourceRef"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 163
    iget-object v6, p0, Lcom/asus/dmlib/syncml/message/management/Status;->mSourceRefList:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 164
    :cond_b
    const-string v6, "Data"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 165
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Lcom/asus/dmlib/syncml/message/management/Status;->mStatusCode:I
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    .line 121
    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_0
        0x3 -> :sswitch_1
        0x4 -> :sswitch_2
        0x5 -> :sswitch_2
        0x40 -> :sswitch_2
    .end sparse-switch
.end method


# virtual methods
.method public addItem(Lcom/asus/dmlib/syncml/dm/message/description/Item;)V
    .locals 2
    .parameter "item"

    .prologue
    .line 339
    if-nez p1, :cond_0

    .line 340
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot add a null item"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 342
    :cond_0
    iget-object v0, p0, Lcom/asus/dmlib/syncml/message/management/Status;->mItemList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 343
    return-void
.end method

.method public addSourceRef(Ljava/lang/String;)V
    .locals 2
    .parameter "sourceRef"

    .prologue
    .line 285
    if-nez p1, :cond_0

    .line 286
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot add a null sourceRef"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 288
    :cond_0
    iget-object v0, p0, Lcom/asus/dmlib/syncml/message/management/Status;->mSourceRefList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 289
    return-void
.end method

.method public addTargetRef(Ljava/lang/String;)V
    .locals 2
    .parameter "targetRef"

    .prologue
    .line 300
    if-nez p1, :cond_0

    .line 301
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot add a null targetRef"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 303
    :cond_0
    iget-object v0, p0, Lcom/asus/dmlib/syncml/message/management/Status;->mTargetRefList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 304
    return-void
.end method

.method public getAppCommandRef()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 353
    iget-object v0, p0, Lcom/asus/dmlib/syncml/message/management/Status;->mAppCommandRef:Ljava/lang/Object;

    return-object v0
.end method

.method public getChal()Lcom/asus/dmlib/syncml/common/Chal;
    .locals 1

    .prologue
    .line 311
    iget-object v0, p0, Lcom/asus/dmlib/syncml/message/management/Status;->mChal:Lcom/asus/dmlib/syncml/common/Chal;

    return-object v0
.end method

.method public getCmd()Ljava/lang/String;
    .locals 1

    .prologue
    .line 273
    iget-object v0, p0, Lcom/asus/dmlib/syncml/message/management/Status;->mCmd:Ljava/lang/String;

    return-object v0
.end method

.method public getCmdID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 249
    iget-object v0, p0, Lcom/asus/dmlib/syncml/message/management/Status;->mCmdID:Ljava/lang/String;

    return-object v0
.end method

.method public getCmdRef()Ljava/lang/String;
    .locals 1

    .prologue
    .line 265
    iget-object v0, p0, Lcom/asus/dmlib/syncml/message/management/Status;->mCmdRef:Ljava/lang/String;

    return-object v0
.end method

.method public getCred()Lcom/asus/dmlib/syncml/message/common/Cred;
    .locals 1

    .prologue
    .line 319
    iget-object v0, p0, Lcom/asus/dmlib/syncml/message/management/Status;->mCred:Lcom/asus/dmlib/syncml/message/common/Cred;

    return-object v0
.end method

.method public getItems()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/asus/dmlib/syncml/dm/message/description/Item;",
            ">;"
        }
    .end annotation

    .prologue
    .line 335
    iget-object v0, p0, Lcom/asus/dmlib/syncml/message/management/Status;->mItemList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getLength(Ljava/lang/String;)I
    .locals 10
    .parameter "xmlType"

    .prologue
    const/4 v9, 0x2

    .line 473
    const/4 v4, 0x0

    .line 475
    .local v4, length:I
    const-string v7, "application/vnd.syncml.dm+xml"

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 477
    :try_start_0
    invoke-virtual {p0}, Lcom/asus/dmlib/syncml/message/management/Status;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "utf-8"

    invoke-virtual {v7, v8}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v7

    array-length v4, v7
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    move v7, v4

    .line 515
    :goto_1
    return v7

    .line 478
    :catch_0
    move-exception v7

    move-object v0, v7

    .line 479
    .local v0, e:Ljava/io/UnsupportedEncodingException;
    const-string v7, "Status"

    invoke-static {v7, v0}, Lcom/asus/dmlib/util/DMLog;->logW(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0

    .line 481
    .end local v0           #e:Ljava/io/UnsupportedEncodingException;
    :cond_1
    const-string v7, "application/vnd.syncml.dm+wbxml"

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 482
    add-int/lit8 v4, v4, 0x2

    .line 484
    :try_start_1
    iget-object v7, p0, Lcom/asus/dmlib/syncml/message/management/Status;->mCmdID:Ljava/lang/String;

    if-nez v7, :cond_2

    move v7, v9

    :goto_2
    add-int/lit8 v7, v7, 0x2

    add-int/lit8 v4, v7, 0x2

    .line 485
    iget-object v7, p0, Lcom/asus/dmlib/syncml/message/management/Status;->mMsgRef:Ljava/lang/String;

    if-nez v7, :cond_3

    move v7, v9

    :goto_3
    add-int/lit8 v7, v7, 0x2

    add-int/2addr v4, v7

    .line 486
    iget-object v7, p0, Lcom/asus/dmlib/syncml/message/management/Status;->mCmdRef:Ljava/lang/String;

    if-nez v7, :cond_4

    move v7, v9

    :goto_4
    add-int/lit8 v7, v7, 0x2

    add-int/2addr v4, v7

    .line 487
    iget-object v7, p0, Lcom/asus/dmlib/syncml/message/management/Status;->mCmd:Ljava/lang/String;

    const-string v8, "utf-8"

    invoke-virtual {v7, v8}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v7

    array-length v7, v7

    add-int/lit8 v7, v7, 0x2

    add-int/2addr v4, v7

    .line 488
    iget v7, p0, Lcom/asus/dmlib/syncml/message/management/Status;->mStatusCode:I

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    const-string v8, "utf-8"

    invoke-virtual {v7, v8}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v7

    array-length v7, v7
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    add-int/lit8 v7, v7, 0x2

    add-int/2addr v4, v7

    .line 492
    :goto_5
    iget-object v7, p0, Lcom/asus/dmlib/syncml/message/management/Status;->mTargetRefList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 494
    .local v6, targetRef:Ljava/lang/String;
    :try_start_2
    const-string v7, "utf-8"

    invoke-virtual {v6, v7}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v7

    array-length v7, v7
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_2

    add-int/lit8 v7, v7, 0x2

    add-int/2addr v4, v7

    goto :goto_6

    .line 484
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v6           #targetRef:Ljava/lang/String;
    :cond_2
    :try_start_3
    iget-object v7, p0, Lcom/asus/dmlib/syncml/message/management/Status;->mCmdID:Ljava/lang/String;

    const-string v8, "utf-8"

    invoke-virtual {v7, v8}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v7

    array-length v7, v7

    goto :goto_2

    .line 485
    :cond_3
    iget-object v7, p0, Lcom/asus/dmlib/syncml/message/management/Status;->mMsgRef:Ljava/lang/String;

    const-string v8, "utf-8"

    invoke-virtual {v7, v8}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v7

    array-length v7, v7

    goto :goto_3

    .line 486
    :cond_4
    iget-object v7, p0, Lcom/asus/dmlib/syncml/message/management/Status;->mCmdRef:Ljava/lang/String;

    const-string v8, "utf-8"

    invoke-virtual {v7, v8}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v7

    array-length v7, v7
    :try_end_3
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_4

    .line 489
    :catch_1
    move-exception v7

    move-object v0, v7

    .line 490
    .restart local v0       #e:Ljava/io/UnsupportedEncodingException;
    const-string v7, "Status"

    invoke-static {v7, v0}, Lcom/asus/dmlib/util/DMLog;->logW(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_5

    .line 495
    .end local v0           #e:Ljava/io/UnsupportedEncodingException;
    .restart local v2       #i$:Ljava/util/Iterator;
    .restart local v6       #targetRef:Ljava/lang/String;
    :catch_2
    move-exception v7

    move-object v1, v7

    .line 496
    .local v1, e1:Ljava/io/UnsupportedEncodingException;
    const-string v7, "Status"

    invoke-static {v7, v1}, Lcom/asus/dmlib/util/DMLog;->logW(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_6

    .line 499
    .end local v1           #e1:Ljava/io/UnsupportedEncodingException;
    .end local v6           #targetRef:Ljava/lang/String;
    :cond_5
    iget-object v7, p0, Lcom/asus/dmlib/syncml/message/management/Status;->mSourceRefList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 501
    .local v5, srcRef:Ljava/lang/String;
    :try_start_4
    const-string v7, "utf-8"

    invoke-virtual {v5, v7}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v7

    array-length v7, v7
    :try_end_4
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_4 .. :try_end_4} :catch_3

    add-int/lit8 v7, v7, 0x2

    add-int/2addr v4, v7

    goto :goto_7

    .line 502
    :catch_3
    move-exception v7

    move-object v1, v7

    .line 503
    .restart local v1       #e1:Ljava/io/UnsupportedEncodingException;
    const-string v7, "Status"

    invoke-static {v7, v1}, Lcom/asus/dmlib/util/DMLog;->logW(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_7

    .line 506
    .end local v1           #e1:Ljava/io/UnsupportedEncodingException;
    .end local v5           #srcRef:Ljava/lang/String;
    :cond_6
    iget-object v7, p0, Lcom/asus/dmlib/syncml/message/management/Status;->mItemList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/asus/dmlib/syncml/dm/message/description/Item;

    .line 507
    .local v3, item:Lcom/asus/dmlib/syncml/dm/message/description/Item;
    invoke-virtual {v3, p1}, Lcom/asus/dmlib/syncml/dm/message/description/Item;->getLength(Ljava/lang/String;)I

    move-result v7

    add-int/2addr v4, v7

    goto :goto_8

    .line 509
    .end local v3           #item:Lcom/asus/dmlib/syncml/dm/message/description/Item;
    :cond_7
    iget-object v7, p0, Lcom/asus/dmlib/syncml/message/management/Status;->mChal:Lcom/asus/dmlib/syncml/common/Chal;

    if-eqz v7, :cond_0

    .line 510
    iget-object v7, p0, Lcom/asus/dmlib/syncml/message/management/Status;->mChal:Lcom/asus/dmlib/syncml/common/Chal;

    invoke-virtual {v7, p1}, Lcom/asus/dmlib/syncml/common/Chal;->getLength(Ljava/lang/String;)I

    move-result v7

    add-int/2addr v4, v7

    goto/16 :goto_0

    .line 513
    .end local v2           #i$:Ljava/util/Iterator;
    :cond_8
    const/4 v7, -0x1

    goto/16 :goto_1
.end method

.method public getMsgRef()Ljava/lang/String;
    .locals 1

    .prologue
    .line 257
    iget-object v0, p0, Lcom/asus/dmlib/syncml/message/management/Status;->mMsgRef:Ljava/lang/String;

    return-object v0
.end method

.method public getSourceRefs()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 281
    iget-object v0, p0, Lcom/asus/dmlib/syncml/message/management/Status;->mSourceRefList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getStatusCode()I
    .locals 1

    .prologue
    .line 327
    iget v0, p0, Lcom/asus/dmlib/syncml/message/management/Status;->mStatusCode:I

    return v0
.end method

.method public getTargetRefs()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 296
    iget-object v0, p0, Lcom/asus/dmlib/syncml/message/management/Status;->mTargetRefList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public removeSourceRef(Ljava/lang/String;)Z
    .locals 1
    .parameter "sourceRef"

    .prologue
    .line 292
    iget-object v0, p0, Lcom/asus/dmlib/syncml/message/management/Status;->mSourceRefList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public removeTargetRef(Ljava/lang/String;)Z
    .locals 1
    .parameter "targetRef"

    .prologue
    .line 307
    iget-object v0, p0, Lcom/asus/dmlib/syncml/message/management/Status;->mTargetRefList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public setAppCommandRef(Ljava/lang/Object;)V
    .locals 2
    .parameter "pAppCommandRef"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 346
    if-nez p1, :cond_0

    .line 347
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot set a null appCommandRef."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 349
    :cond_0
    iput-object p1, p0, Lcom/asus/dmlib/syncml/message/management/Status;->mAppCommandRef:Ljava/lang/Object;

    .line 350
    return-void
.end method

.method public setChal(Lcom/asus/dmlib/syncml/common/Chal;)V
    .locals 0
    .parameter "chal"

    .prologue
    .line 315
    iput-object p1, p0, Lcom/asus/dmlib/syncml/message/management/Status;->mChal:Lcom/asus/dmlib/syncml/common/Chal;

    .line 316
    return-void
.end method

.method public setCmd(Ljava/lang/String;)V
    .locals 0
    .parameter "cmd"

    .prologue
    .line 277
    iput-object p1, p0, Lcom/asus/dmlib/syncml/message/management/Status;->mCmd:Ljava/lang/String;

    .line 278
    return-void
.end method

.method public setCmdID(Ljava/lang/String;)V
    .locals 0
    .parameter "cmdID"

    .prologue
    .line 253
    iput-object p1, p0, Lcom/asus/dmlib/syncml/message/management/Status;->mCmdID:Ljava/lang/String;

    .line 254
    return-void
.end method

.method public setCmdRef(Ljava/lang/String;)V
    .locals 0
    .parameter "cmdRef"

    .prologue
    .line 269
    iput-object p1, p0, Lcom/asus/dmlib/syncml/message/management/Status;->mCmdRef:Ljava/lang/String;

    .line 270
    return-void
.end method

.method public setCred(Lcom/asus/dmlib/syncml/message/common/Cred;)V
    .locals 0
    .parameter "cred"

    .prologue
    .line 323
    iput-object p1, p0, Lcom/asus/dmlib/syncml/message/management/Status;->mCred:Lcom/asus/dmlib/syncml/message/common/Cred;

    .line 324
    return-void
.end method

.method public setMsgRef(Ljava/lang/String;)V
    .locals 0
    .parameter "msgRef"

    .prologue
    .line 261
    iput-object p1, p0, Lcom/asus/dmlib/syncml/message/management/Status;->mMsgRef:Ljava/lang/String;

    .line 262
    return-void
.end method

.method public setStatusCode(I)V
    .locals 0
    .parameter "statusCode"

    .prologue
    .line 331
    iput p1, p0, Lcom/asus/dmlib/syncml/message/management/Status;->mStatusCode:I

    .line 332
    return-void
.end method

.method public toByteArray(Ljava/lang/String;)[B
    .locals 6
    .parameter "charset"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v5, -0x3d

    const/4 v4, 0x1

    .line 383
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 385
    .local v0, baos:Ljava/io/ByteArrayOutputStream;
    const/16 v3, 0x69

    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 387
    iget-object v3, p0, Lcom/asus/dmlib/syncml/message/management/Status;->mCmdID:Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 388
    const/16 v3, 0x4b

    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 390
    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 391
    iget-object v3, p0, Lcom/asus/dmlib/syncml/message/management/Status;->mCmdID:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    array-length v3, v3

    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 392
    iget-object v3, p0, Lcom/asus/dmlib/syncml/message/management/Status;->mCmdID:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 394
    invoke-virtual {v0, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 399
    :goto_0
    iget-object v3, p0, Lcom/asus/dmlib/syncml/message/management/Status;->mMsgRef:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 400
    const/16 v3, 0x5c

    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 402
    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 403
    iget-object v3, p0, Lcom/asus/dmlib/syncml/message/management/Status;->mMsgRef:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    array-length v3, v3

    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 404
    iget-object v3, p0, Lcom/asus/dmlib/syncml/message/management/Status;->mMsgRef:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 406
    invoke-virtual {v0, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 409
    :cond_0
    iget-object v3, p0, Lcom/asus/dmlib/syncml/message/management/Status;->mCmdRef:Ljava/lang/String;

    if-eqz v3, :cond_2

    .line 410
    const/16 v3, 0x4c

    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 412
    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 413
    iget-object v3, p0, Lcom/asus/dmlib/syncml/message/management/Status;->mCmdRef:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    array-length v3, v3

    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 414
    iget-object v3, p0, Lcom/asus/dmlib/syncml/message/management/Status;->mCmdRef:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 416
    invoke-virtual {v0, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 421
    :goto_1
    iget-object v3, p0, Lcom/asus/dmlib/syncml/message/management/Status;->mCmd:Ljava/lang/String;

    if-eqz v3, :cond_3

    .line 422
    const/16 v3, 0x4a

    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 424
    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 425
    iget-object v3, p0, Lcom/asus/dmlib/syncml/message/management/Status;->mCmd:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    array-length v3, v3

    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 426
    iget-object v3, p0, Lcom/asus/dmlib/syncml/message/management/Status;->mCmd:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 428
    invoke-virtual {v0, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 433
    :goto_2
    const/4 v1, 0x0

    .local v1, c:I
    :goto_3
    iget-object v3, p0, Lcom/asus/dmlib/syncml/message/management/Status;->mTargetRefList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_4

    .line 434
    const/16 v3, 0x6f

    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 436
    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 437
    iget-object v3, p0, Lcom/asus/dmlib/syncml/message/management/Status;->mTargetRefList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    array-length v3, v3

    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 438
    iget-object v3, p0, Lcom/asus/dmlib/syncml/message/management/Status;->mTargetRefList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 440
    invoke-virtual {v0, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 433
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 396
    .end local v1           #c:I
    :cond_1
    const/16 v3, 0xb

    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto/16 :goto_0

    .line 418
    :cond_2
    const/16 v3, 0xc

    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_1

    .line 430
    :cond_3
    const/16 v3, 0xa

    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_2

    .line 442
    .restart local v1       #c:I
    :cond_4
    const/4 v1, 0x0

    :goto_4
    iget-object v3, p0, Lcom/asus/dmlib/syncml/message/management/Status;->mSourceRefList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_5

    .line 443
    const/16 v3, 0x68

    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 445
    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 446
    iget-object v3, p0, Lcom/asus/dmlib/syncml/message/management/Status;->mSourceRefList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    array-length v3, v3

    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 447
    iget-object v3, p0, Lcom/asus/dmlib/syncml/message/management/Status;->mSourceRefList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 449
    invoke-virtual {v0, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 442
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 451
    :cond_5
    iget-object v3, p0, Lcom/asus/dmlib/syncml/message/management/Status;->mChal:Lcom/asus/dmlib/syncml/common/Chal;

    if-eqz v3, :cond_6

    .line 452
    iget-object v3, p0, Lcom/asus/dmlib/syncml/message/management/Status;->mChal:Lcom/asus/dmlib/syncml/common/Chal;

    invoke-virtual {v3, p1}, Lcom/asus/dmlib/syncml/common/Chal;->toByteArray(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 455
    :cond_6
    const/16 v3, 0x4f

    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 457
    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 458
    iget v3, p0, Lcom/asus/dmlib/syncml/message/management/Status;->mStatusCode:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    array-length v3, v3

    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 459
    iget v3, p0, Lcom/asus/dmlib/syncml/message/management/Status;->mStatusCode:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 461
    invoke-virtual {v0, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 463
    const/4 v1, 0x0

    :goto_5
    iget-object v3, p0, Lcom/asus/dmlib/syncml/message/management/Status;->mItemList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_7

    .line 464
    iget-object v3, p0, Lcom/asus/dmlib/syncml/message/management/Status;->mItemList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/asus/dmlib/syncml/dm/message/description/Item;

    .line 465
    .local v2, temp:Lcom/asus/dmlib/syncml/dm/message/description/Item;
    invoke-virtual {v2, p1}, Lcom/asus/dmlib/syncml/dm/message/description/Item;->toByteArray(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 463
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 468
    .end local v2           #temp:Lcom/asus/dmlib/syncml/dm/message/description/Item;
    :cond_7
    invoke-virtual {v0, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 469
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    return-object v3
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 357
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 358
    .local v1, sb:Ljava/lang/StringBuilder;
    const-string v2, "<Status>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 359
    const-string v2, "<CmdID>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/asus/dmlib/syncml/message/management/Status;->mCmdID:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "</CmdID>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 360
    const-string v2, "<MsgRef>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/asus/dmlib/syncml/message/management/Status;->mMsgRef:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "</MsgRef>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 361
    const-string v2, "<CmdRef>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/asus/dmlib/syncml/message/management/Status;->mCmdRef:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "</CmdRef>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 362
    const-string v2, "<Cmd>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/asus/dmlib/syncml/message/management/Status;->mCmd:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "</Cmd>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 363
    const/4 v0, 0x0

    .local v0, c:I
    :goto_0
    iget-object v2, p0, Lcom/asus/dmlib/syncml/message/management/Status;->mTargetRefList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 364
    const-string v2, "<TargetRef>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v2, p0, Lcom/asus/dmlib/syncml/message/management/Status;->mTargetRefList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "</TargetRef>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 363
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 366
    :cond_0
    const/4 v0, 0x0

    :goto_1
    iget-object v2, p0, Lcom/asus/dmlib/syncml/message/management/Status;->mSourceRefList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 367
    const-string v2, "<SourceRef>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v2, p0, Lcom/asus/dmlib/syncml/message/management/Status;->mSourceRefList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "</SourceRef>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 366
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 369
    :cond_1
    iget-object v2, p0, Lcom/asus/dmlib/syncml/message/management/Status;->mCred:Lcom/asus/dmlib/syncml/message/common/Cred;

    if-eqz v2, :cond_2

    .line 370
    iget-object v2, p0, Lcom/asus/dmlib/syncml/message/management/Status;->mCred:Lcom/asus/dmlib/syncml/message/common/Cred;

    invoke-virtual {v2}, Lcom/asus/dmlib/syncml/message/common/Cred;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 371
    :cond_2
    iget-object v2, p0, Lcom/asus/dmlib/syncml/message/management/Status;->mChal:Lcom/asus/dmlib/syncml/common/Chal;

    if-eqz v2, :cond_3

    .line 372
    iget-object v2, p0, Lcom/asus/dmlib/syncml/message/management/Status;->mChal:Lcom/asus/dmlib/syncml/common/Chal;

    invoke-virtual {v2}, Lcom/asus/dmlib/syncml/common/Chal;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 373
    :cond_3
    const-string v2, "<Data>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/asus/dmlib/syncml/message/management/Status;->mStatusCode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "</Data>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 374
    const/4 v0, 0x0

    :goto_2
    iget-object v2, p0, Lcom/asus/dmlib/syncml/message/management/Status;->mItemList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_4

    .line 375
    iget-object v2, p0, Lcom/asus/dmlib/syncml/message/management/Status;->mItemList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/asus/dmlib/syncml/dm/message/description/Item;

    invoke-virtual {v2}, Lcom/asus/dmlib/syncml/dm/message/description/Item;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 374
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 378
    :cond_4
    const-string v2, "</Status>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 379
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
