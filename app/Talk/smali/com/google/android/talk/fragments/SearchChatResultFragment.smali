.class public Lcom/google/android/talk/fragments/SearchChatResultFragment;
.super Landroid/app/Fragment;
.source "SearchChatResultFragment.java"

# interfaces
.implements Lcom/google/android/talk/ContactInfoQuery$ContactInfoQueryCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/talk/fragments/SearchChatResultFragment$5;,
        Lcom/google/android/talk/fragments/SearchChatResultFragment$ConversationContentObserver;,
        Lcom/google/android/talk/fragments/SearchChatResultFragment$GmailJsInterface;
    }
.end annotation


# static fields
.field private static final AUTHOR_COLORS:[Ljava/lang/String;

.field private static final MESSAGE_PREFIX_LENGTH:I

.field private static final NAME_ADDR_EMAIL_PATTERN:Ljava/util/regex/Pattern;


# instance fields
.field private mAccount:Ljava/lang/String;

.field private mAccountId:J

.field private mCcHeading:Ljava/lang/String;

.field private mContactInfoQuery:Lcom/google/android/talk/ContactInfoQuery;

.field private mContentObserver:Landroid/database/ContentObserver;

.field private mConversationId:Ljava/lang/Long;

.field private mCurrentColorMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mEmailMatcher:Ljava/util/regex/Matcher;

.field private mExpandedMessageIds:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mForwardString:Ljava/lang/String;

.field private mGmail:Lcom/google/android/talk/GmailProviderWrapper;

.field private mHandler:Landroid/os/Handler;

.field private mHasCcAddresses:Z

.field private mLastFromAddress:Ljava/lang/String;

.field private mLastPresenceEmail:Ljava/lang/String;

.field private mLastPresencePath:Ljava/lang/String;

.field private mLoaded:Z

.field private mMessageCursor:Lcom/google/android/talk/GmailProviderWrapper$MessageCursor;

.field private mPresencePath:Ljava/lang/String;

.field private mProgressMonitor:Lcom/google/android/talk/IProgressMonitor;

.field private mReplyByChatString:Ljava/lang/String;

.field private mReplyString:Ljava/lang/String;

.field private mToHeading:Ljava/lang/String;

.field private mWebView:Landroid/webkit/WebView;

.field private mWebViewY:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 77
    const-string v0, "m"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    sput v0, Lcom/google/android/talk/fragments/SearchChatResultFragment;->MESSAGE_PREFIX_LENGTH:I

    .line 496
    const-string v0, "\\s*(\"[^\"]*\"|[^<>\"]+)\\s*<([^<>]+)>\\s*"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/talk/fragments/SearchChatResultFragment;->NAME_ADDR_EMAIL_PATTERN:Ljava/util/regex/Pattern;

    .line 1285
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "#00681c"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "#790619"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "#5b1094"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "#c88900"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "#cc0060"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "#008391"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "#009486"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "#b90038"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "#846600"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "#330099"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/talk/fragments/SearchChatResultFragment;->AUTHOR_COLORS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 66
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 290
    const-string v0, "\\\"(.*)\\\"\\s*<(.*)>"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/talk/fragments/SearchChatResultFragment;->mEmailMatcher:Ljava/util/regex/Matcher;

    .line 316
    invoke-static {}, Lcom/google/common/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/talk/fragments/SearchChatResultFragment;->mExpandedMessageIds:Ljava/util/Map;

    .line 320
    iput v2, p0, Lcom/google/android/talk/fragments/SearchChatResultFragment;->mWebViewY:I

    .line 336
    new-instance v0, Lcom/google/android/talk/fragments/SearchChatResultFragment$1;

    invoke-direct {v0, p0}, Lcom/google/android/talk/fragments/SearchChatResultFragment$1;-><init>(Lcom/google/android/talk/fragments/SearchChatResultFragment;)V

    iput-object v0, p0, Lcom/google/android/talk/fragments/SearchChatResultFragment;->mHandler:Landroid/os/Handler;

    .line 355
    iput-boolean v2, p0, Lcom/google/android/talk/fragments/SearchChatResultFragment;->mLoaded:Z

    .line 1299
    invoke-static {}, Lcom/google/common/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/talk/fragments/SearchChatResultFragment;->mCurrentColorMap:Ljava/util/Map;

    .line 1326
    const-string v0, "file:///android_asset/presence_offline.png"

    iput-object v0, p0, Lcom/google/android/talk/fragments/SearchChatResultFragment;->mPresencePath:Ljava/lang/String;

    .line 1327
    iget-object v0, p0, Lcom/google/android/talk/fragments/SearchChatResultFragment;->mPresencePath:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/talk/fragments/SearchChatResultFragment;->mLastPresencePath:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/talk/fragments/SearchChatResultFragment;ZLjava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 66
    invoke-direct {p0, p1, p2}, Lcom/google/android/talk/fragments/SearchChatResultFragment;->launchReplyOrForward(ZLjava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/google/android/talk/fragments/SearchChatResultFragment;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lcom/google/android/talk/fragments/SearchChatResultFragment;->launchReplyByChat(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/google/android/talk/fragments/SearchChatResultFragment;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/google/android/talk/fragments/SearchChatResultFragment;->mForwardString:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/google/android/talk/fragments/SearchChatResultFragment;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/google/android/talk/fragments/SearchChatResultFragment;->mReplyByChatString:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/google/android/talk/fragments/SearchChatResultFragment;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"
    .parameter "x6"
    .parameter "x7"
    .parameter "x8"

    .prologue
    .line 66
    invoke-direct/range {p0 .. p8}, Lcom/google/android/talk/fragments/SearchChatResultFragment;->addExpandedBody(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    return-void
.end method

.method static synthetic access$1300(Lcom/google/android/talk/fragments/SearchChatResultFragment;Lcom/google/android/talk/GmailProviderWrapper$MessageCursor;)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lcom/google/android/talk/fragments/SearchChatResultFragment;->getSnippet(Lcom/google/android/talk/GmailProviderWrapper$MessageCursor;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1400(Lcom/google/android/talk/fragments/SearchChatResultFragment;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/google/android/talk/fragments/SearchChatResultFragment;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/google/android/talk/fragments/SearchChatResultFragment;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-boolean v0, p0, Lcom/google/android/talk/fragments/SearchChatResultFragment;->mLoaded:Z

    return v0
.end method

.method static synthetic access$1600(Lcom/google/android/talk/fragments/SearchChatResultFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/google/android/talk/fragments/SearchChatResultFragment;->buildConversationIfLoaded()V

    return-void
.end method

.method static synthetic access$1700(Lcom/google/android/talk/fragments/SearchChatResultFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/google/android/talk/fragments/SearchChatResultFragment;->finish()V

    return-void
.end method

.method static synthetic access$1800(Lcom/google/android/talk/fragments/SearchChatResultFragment;)Lcom/google/android/talk/ContactInfoQuery;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/google/android/talk/fragments/SearchChatResultFragment;->mContactInfoQuery:Lcom/google/android/talk/ContactInfoQuery;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/google/android/talk/fragments/SearchChatResultFragment;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget v0, p0, Lcom/google/android/talk/fragments/SearchChatResultFragment;->mWebViewY:I

    return v0
.end method

.method static synthetic access$1902(Lcom/google/android/talk/fragments/SearchChatResultFragment;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    iput p1, p0, Lcom/google/android/talk/fragments/SearchChatResultFragment;->mWebViewY:I

    return p1
.end method

.method static synthetic access$200(Lcom/google/android/talk/fragments/SearchChatResultFragment;)Lcom/google/android/talk/GmailProviderWrapper$MessageCursor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/google/android/talk/fragments/SearchChatResultFragment;->mMessageCursor:Lcom/google/android/talk/GmailProviderWrapper$MessageCursor;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/google/android/talk/fragments/SearchChatResultFragment;)Landroid/webkit/WebView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/google/android/talk/fragments/SearchChatResultFragment;->mWebView:Landroid/webkit/WebView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/android/talk/fragments/SearchChatResultFragment;Ljava/lang/StringBuilder;Lcom/google/android/talk/GmailProviderWrapper$MessageCursor;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 66
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/talk/fragments/SearchChatResultFragment;->addCollapsedHeaders(Ljava/lang/StringBuilder;Lcom/google/android/talk/GmailProviderWrapper$MessageCursor;II)V

    return-void
.end method

.method static synthetic access$400(Lcom/google/android/talk/fragments/SearchChatResultFragment;Ljava/lang/String;)J
    .locals 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lcom/google/android/talk/fragments/SearchChatResultFragment;->getId(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$500(Lcom/google/android/talk/fragments/SearchChatResultFragment;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/google/android/talk/fragments/SearchChatResultFragment;->mAccount:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/google/android/talk/fragments/SearchChatResultFragment;)Lcom/google/android/talk/GmailProviderWrapper;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/google/android/talk/fragments/SearchChatResultFragment;->mGmail:Lcom/google/android/talk/GmailProviderWrapper;

    return-object v0
.end method

.method static synthetic access$700(Lcom/google/android/talk/fragments/SearchChatResultFragment;Lcom/google/android/talk/GmailProviderWrapper$MessageCursor;)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lcom/google/android/talk/fragments/SearchChatResultFragment;->getAddressesLine(Lcom/google/android/talk/GmailProviderWrapper$MessageCursor;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lcom/google/android/talk/fragments/SearchChatResultFragment;)Ljava/util/Map;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/google/android/talk/fragments/SearchChatResultFragment;->mExpandedMessageIds:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$900(Lcom/google/android/talk/fragments/SearchChatResultFragment;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/google/android/talk/fragments/SearchChatResultFragment;->mReplyString:Ljava/lang/String;

    return-object v0
.end method

.method private addAddresses(Ljava/lang/StringBuilder;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1212
    array-length v0, p3

    .line 1214
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1216
    const/4 v1, 0x1

    sub-int v1, v0, v1

    .line 1217
    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 1218
    aget-object v3, p3, v2

    .line 1219
    invoke-direct {p0, v3}, Lcom/google/android/talk/fragments/SearchChatResultFragment;->getDisplayAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1220
    if-ge v2, v1, :cond_0

    .line 1221
    const-string v3, ", "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1217
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1224
    :cond_1
    return-void
.end method

.method private addCollapsedHeaders(Ljava/lang/StringBuilder;Lcom/google/android/talk/GmailProviderWrapper$MessageCursor;II)V
    .locals 22
    .parameter "sb"
    .parameter "messageCursor"
    .parameter "firstCollapsed"
    .parameter "lastCollapsed"

    .prologue
    .line 869
    const/16 v20, 0x0

    .line 870
    .local v20, lastLabelIds:Ljava/lang/String;
    invoke-static {}, Lcom/google/android/talk/GmailProviderWrapper;->newMessageLabelIdsSplitter()Landroid/text/TextUtils$StringSplitter;

    move-result-object v19

    .line 873
    .local v19, labelIdsSplitter:Landroid/text/TextUtils$StringSplitter;
    move/from16 v16, p3

    .local v16, i:I
    :goto_0
    move/from16 v0, v16

    move/from16 v1, p4

    if-gt v0, v1, :cond_1

    .line 874
    move-object/from16 v0, p2

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/google/android/talk/GmailProviderWrapper$MessageCursor;->moveTo(I)Z

    .line 876
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/talk/GmailProviderWrapper$MessageCursor;->getMessageId()J

    move-result-wide v17

    .line 877
    .local v17, id:J
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "m"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move-wide/from16 v1, v17

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 878
    .local v7, messageId:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/talk/GmailProviderWrapper$MessageCursor;->getRawLabelIds()Ljava/lang/String;

    move-result-object v21

    .line 879
    .local v21, rawLabelIds:Ljava/lang/String;
    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 880
    move-object/from16 v20, v21

    .line 881
    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Landroid/text/TextUtils$StringSplitter;->setString(Ljava/lang/String;)V

    .line 884
    :cond_0
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/talk/GmailProviderWrapper$MessageCursor;->getDateReceivedMs()J

    move-result-wide v13

    .line 885
    .local v13, date:J
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/talk/fragments/SearchChatResultFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5, v13, v14}, Landroid/text/format/DateUtils;->getRelativeTimeSpanString(Landroid/content/Context;J)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    .line 888
    .local v11, dateStr:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/google/android/talk/fragments/SearchChatResultFragment;->getSenderPersonal(Lcom/google/android/talk/GmailProviderWrapper$MessageCursor;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p2 .. p2}, Lcom/google/android/talk/GmailProviderWrapper$MessageCursor;->getFromAddress()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    move-object v1, v6

    invoke-direct {v0, v1}, Lcom/google/android/talk/fragments/SearchChatResultFragment;->getUnencodedSenderEmail(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object v2, v5

    move-object v3, v6

    move-object v4, v7

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/talk/fragments/SearchChatResultFragment;->buildFromDiv(Lcom/google/android/talk/GmailProviderWrapper$MessageCursor;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v15

    .line 895
    .local v15, fromDiv:Ljava/lang/CharSequence;
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/google/android/talk/fragments/SearchChatResultFragment;->getSnippet(Lcom/google/android/talk/GmailProviderWrapper$MessageCursor;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->htmlEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 897
    .local v10, snippet:Ljava/lang/String;
    const-string v12, "toggleHeader"

    .line 899
    .local v12, headerTapFunction:Ljava/lang/String;
    invoke-virtual {v15}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, "snippetDiv"

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    invoke-direct/range {v5 .. v12}, Lcom/google/android/talk/fragments/SearchChatResultFragment;->addCollapsedMessage(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 873
    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_0

    .line 907
    .end local v7           #messageId:Ljava/lang/String;
    .end local v10           #snippet:Ljava/lang/String;
    .end local v11           #dateStr:Ljava/lang/String;
    .end local v12           #headerTapFunction:Ljava/lang/String;
    .end local v13           #date:J
    .end local v15           #fromDiv:Ljava/lang/CharSequence;
    .end local v17           #id:J
    .end local v21           #rawLabelIds:Ljava/lang/String;
    :cond_1
    return-void
.end method

.method private addCollapsedMessage(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "sb"
    .parameter "messageId"
    .parameter "fromDiv"
    .parameter "style"
    .parameter "line2Str"
    .parameter "dateStr"
    .parameter "headerTapFunction"

    .prologue
    .line 1069
    const-string v0, "<table class=\"tableHeader\" id=\""

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1070
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1071
    const-string v0, "\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"100%\"><tr><td>"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1072
    invoke-direct/range {p0 .. p7}, Lcom/google/android/talk/fragments/SearchChatResultFragment;->addMessageHeader(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1073
    const-string v0, "</td><tr><td  class=\"bodyCell\"><div id=\"a:body\"></div></td></tr></table>"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1074
    return-void
.end method

.method private addExpandedBody(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V
    .locals 7
    .parameter "sb"
    .parameter "body"
    .parameter "messageId"
    .parameter "replyStr"
    .parameter "forwardStr"
    .parameter "replyByChatStr"
    .parameter "containsExternalResources"
    .parameter "isLastMessage"

    .prologue
    .line 1021
    const-string v0, "<div class=\"bodyDiv\">"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1022
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1023
    const-string v0, "</div>"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    move v6, p8

    .line 1026
    invoke-direct/range {v0 .. v6}, Lcom/google/android/talk/fragments/SearchChatResultFragment;->addFooter(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1027
    return-void
.end method

.method private addExpandedMessage(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V
    .locals 9
    .parameter "sb"
    .parameter "messageId"
    .parameter "fromDiv"
    .parameter "style"
    .parameter "line2Str"
    .parameter "dateStr"
    .parameter "body"
    .parameter "replyStr"
    .parameter "forwardStr"
    .parameter "replyByChatStr"
    .parameter "containsExternalResources"
    .parameter "isLastMessage"

    .prologue
    .line 1000
    const-string v0, "<table id=\""

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1001
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1002
    const-string v0, "\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"100%\"><tr><td>"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1003
    const-string v7, "toggleHeader"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v7}, Lcom/google/android/talk/fragments/SearchChatResultFragment;->addMessageHeader(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1005
    const-string v0, "</td><tr><td  class=\"bodyCell\"><div id=\"a:body\">"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p7

    move-object v3, p2

    move-object/from16 v4, p8

    move-object/from16 v5, p9

    move-object/from16 v6, p10

    move/from16 v7, p11

    move/from16 v8, p12

    .line 1007
    invoke-direct/range {v0 .. v8}, Lcom/google/android/talk/fragments/SearchChatResultFragment;->addExpandedBody(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 1010
    const-string v0, "</div></td></tr></table>"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1011
    return-void
.end method

.method private addFooter(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1
    .parameter "sb"
    .parameter "messageId"
    .parameter "replyStr"
    .parameter "forwardStr"
    .parameter "replyByChatStr"
    .parameter "isLastMessage"

    .prologue
    .line 1032
    if-eqz p6, :cond_1

    const-string v0, "<div class=\"messageFooterDiv2\">"

    :goto_0
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1033
    iget-boolean v0, p0, Lcom/google/android/talk/fragments/SearchChatResultFragment;->mHasCcAddresses:Z

    if-nez v0, :cond_0

    .line 1035
    const-string v0, "<table width=\"100%\"><tr><td><button class=\"footerButton\" onClick=\"window.gmail.replyByChat(\'"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1036
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1037
    const-string v0, "\')\"><div class=\"footerTextElementDiv\">"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1038
    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1040
    :cond_0
    const-string v0, "</div></button><button class=\"footerButton\" onClick=\"window.gmail.reply(\'"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1041
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1042
    const-string v0, "\')\"><div class=\"footerTextElementDiv\">"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1043
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1044
    const-string v0, "</div></button><button class=\"footerButton\" onClick=\"window.gmail.forward(\'"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1045
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1046
    const-string v0, "\')\"><div class=\"footerTextElementDiv\">"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1047
    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1048
    const-string v0, "</div></button></td></tr></table></div>"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1049
    return-void

    .line 1032
    :cond_1
    const-string v0, "<div class=\"messageFooterDiv1\">"

    goto :goto_0
.end method

.method private addMessageHeader(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "sb"
    .parameter "messageId"
    .parameter "fromDiv"
    .parameter "style"
    .parameter "line2Str"
    .parameter "dateStr"
    .parameter "toggleFunction"

    .prologue
    .line 970
    const-string v0, "<div class=\"headerDiv\"><table border=\"0\" cellpadding=\"0\"><tr>%s</tr></table><table border=\"0\" cellspacing=\"0\" cellpadding=\"0\"><tr><td width=\'99%%\' class=\"%s\"><div id=\"a:line2\">%s</div></td><td style=\'white-space: nowrap; float:right\' valign=\'top\' align=\"right\">%s</td></tr></table></div>"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p3, v1, v2

    const/4 v2, 0x1

    aput-object p4, v1, v2

    const/4 v2, 0x2

    aput-object p5, v1, v2

    const/4 v2, 0x3

    aput-object p6, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 973
    return-void
.end method

.method private buildConversationIfLoaded()V
    .locals 36

    .prologue
    .line 681
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/talk/fragments/SearchChatResultFragment;->getActivity()Landroid/app/Activity;

    move-result-object v22

    .line 682
    .local v22, activity:Landroid/app/Activity;
    if-nez v22, :cond_1

    .line 837
    :cond_0
    :goto_0
    return-void

    .line 685
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/talk/fragments/SearchChatResultFragment;->mMessageCursor:Lcom/google/android/talk/GmailProviderWrapper$MessageCursor;

    move-object/from16 v33, v0

    .line 686
    .local v33, messageCursor:Lcom/google/android/talk/GmailProviderWrapper$MessageCursor;
    invoke-virtual/range {v33 .. v33}, Lcom/google/android/talk/GmailProviderWrapper$MessageCursor;->count()I

    move-result v23

    .line 688
    .local v23, count:I
    sget-object v5, Lcom/google/android/talk/fragments/SearchChatResultFragment$5;->$SwitchMap$com$google$android$talk$GmailProviderWrapper$CursorStatus:[I

    invoke-virtual/range {v33 .. v33}, Lcom/google/android/talk/GmailProviderWrapper$MessageCursor;->getStatus()Lcom/google/android/talk/GmailProviderWrapper$CursorStatus;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/talk/GmailProviderWrapper$CursorStatus;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    .line 711
    :cond_2
    :goto_1
    new-instance v6, Ljava/lang/StringBuilder;

    const v5, 0x8000

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 712
    .local v6, sb:Ljava/lang/StringBuilder;
    const/4 v5, -0x1

    move-object/from16 v0, v33

    move v1, v5

    invoke-virtual {v0, v1}, Lcom/google/android/talk/GmailProviderWrapper$MessageCursor;->moveTo(I)Z

    .line 714
    const-string v5, "<html><head><link type=\"text/css\" rel=\"stylesheet\" href=\"file:///android_asset/styles.css\"><script type=\"text/javascript\" src=\"file:///android_asset/script.js\"></script></head><body>"

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 716
    const/16 v31, 0x0

    .line 717
    .local v31, lastLabelIds:Ljava/lang/String;
    const/4 v5, 0x1

    sub-int v32, v23, v5

    .line 718
    .local v32, lastMessage:I
    const/16 v35, 0x0

    .line 720
    .local v35, whichMessage:I
    const v5, 0x7f0c00d4

    move-object/from16 v0, v22

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/talk/fragments/SearchChatResultFragment;->mReplyString:Ljava/lang/String;

    .line 721
    const v5, 0x7f0c00d5

    move-object/from16 v0, v22

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/talk/fragments/SearchChatResultFragment;->mForwardString:Ljava/lang/String;

    .line 722
    const v5, 0x7f0c00d6

    move-object/from16 v0, v22

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/talk/fragments/SearchChatResultFragment;->mReplyByChatString:Ljava/lang/String;

    .line 723
    const v5, 0x7f0c00d8

    move-object/from16 v0, v22

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/talk/fragments/SearchChatResultFragment;->mToHeading:Ljava/lang/String;

    .line 724
    const v5, 0x7f0c00d9

    move-object/from16 v0, v22

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/talk/fragments/SearchChatResultFragment;->mCcHeading:Ljava/lang/String;

    .line 726
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/talk/fragments/SearchChatResultFragment;->mReplyString:Ljava/lang/String;

    move-object v13, v0

    .line 727
    .local v13, replyStr:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/talk/fragments/SearchChatResultFragment;->mReplyByChatString:Ljava/lang/String;

    move-object v15, v0

    .line 728
    .local v15, replyByChatStr:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/talk/fragments/SearchChatResultFragment;->mForwardString:Ljava/lang/String;

    move-object v14, v0

    .line 730
    .local v14, forwardStr:Ljava/lang/String;
    invoke-static {}, Lcom/google/android/talk/GmailProviderWrapper;->newMessageLabelIdsSplitter()Landroid/text/TextUtils$StringSplitter;

    move-result-object v30

    .line 733
    .local v30, labelIdsSplitter:Landroid/text/TextUtils$StringSplitter;
    const/16 v26, -0x1

    .line 739
    .local v26, firstCollapsed:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/talk/fragments/SearchChatResultFragment;->mWebViewY:I

    move v5, v0

    if-nez v5, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/talk/fragments/SearchChatResultFragment;->mWebView:Landroid/webkit/WebView;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/webkit/WebView;->getScrollY()I

    move-result v5

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/talk/fragments/SearchChatResultFragment;->mWebViewY:I

    .line 740
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/talk/fragments/SearchChatResultFragment;->mWebView:Landroid/webkit/WebView;

    move-object v5, v0

    new-instance v7, Lcom/google/android/talk/fragments/SearchChatResultFragment$4;

    move-object v0, v7

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/google/android/talk/fragments/SearchChatResultFragment$4;-><init>(Lcom/google/android/talk/fragments/SearchChatResultFragment;)V

    invoke-virtual {v5, v7}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 777
    :goto_2
    invoke-virtual/range {v33 .. v33}, Lcom/google/android/talk/GmailProviderWrapper$MessageCursor;->next()Z

    move-result v5

    if-eqz v5, :cond_9

    .line 788
    invoke-virtual/range {v33 .. v33}, Lcom/google/android/talk/GmailProviderWrapper$MessageCursor;->getMessageId()J

    move-result-wide v28

    .line 789
    .local v28, id:J
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "m"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move-wide/from16 v1, v28

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 790
    .local v7, messageId:Ljava/lang/String;
    invoke-virtual/range {v33 .. v33}, Lcom/google/android/talk/GmailProviderWrapper$MessageCursor;->getBody()Ljava/lang/String;

    move-result-object v12

    .line 791
    .local v12, body:Ljava/lang/String;
    invoke-virtual/range {v33 .. v33}, Lcom/google/android/talk/GmailProviderWrapper$MessageCursor;->getRawLabelIds()Ljava/lang/String;

    move-result-object v34

    .line 792
    .local v34, rawLabelIds:Ljava/lang/String;
    move-object/from16 v0, v34

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 793
    move-object/from16 v31, v34

    .line 794
    move-object/from16 v0, v30

    move-object/from16 v1, v34

    invoke-interface {v0, v1}, Landroid/text/TextUtils$StringSplitter;->setString(Ljava/lang/String;)V

    .line 797
    :cond_4
    invoke-virtual/range {v33 .. v33}, Lcom/google/android/talk/GmailProviderWrapper$MessageCursor;->getDateReceivedMs()J

    move-result-wide v24

    .line 798
    .local v24, date:J
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/talk/fragments/SearchChatResultFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    move-object v0, v5

    move-wide/from16 v1, v24

    invoke-static {v0, v1, v2}, Landroid/text/format/DateUtils;->getRelativeTimeSpanString(Landroid/content/Context;J)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    .line 801
    .local v11, dateStr:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-direct {v0, v1}, Lcom/google/android/talk/fragments/SearchChatResultFragment;->getSenderPersonal(Lcom/google/android/talk/GmailProviderWrapper$MessageCursor;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v33 .. v33}, Lcom/google/android/talk/GmailProviderWrapper$MessageCursor;->getFromAddress()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p0

    move-object v1, v8

    invoke-direct {v0, v1}, Lcom/google/android/talk/fragments/SearchChatResultFragment;->getUnencodedSenderEmail(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    move-object v2, v5

    move-object v3, v8

    move-object v4, v7

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/talk/fragments/SearchChatResultFragment;->buildFromDiv(Lcom/google/android/talk/GmailProviderWrapper$MessageCursor;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v27

    .line 806
    .local v27, fromDiv:Ljava/lang/CharSequence;
    move/from16 v0, v35

    move/from16 v1, v32

    if-ne v0, v1, :cond_8

    .line 807
    if-ltz v26, :cond_5

    .line 808
    move-object/from16 v0, p0

    move-object/from16 v1, v33

    move-object v2, v6

    move/from16 v3, v35

    move/from16 v4, v26

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/talk/fragments/SearchChatResultFragment;->maybeGenerateSuperCollapse(Lcom/google/android/talk/GmailProviderWrapper$MessageCursor;Ljava/lang/StringBuilder;II)V

    .line 809
    const/16 v26, -0x1

    .line 811
    :cond_5
    invoke-virtual/range {v27 .. v27}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, "addressDiv"

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-direct {v0, v1}, Lcom/google/android/talk/fragments/SearchChatResultFragment;->getAddressesLine(Lcom/google/android/talk/GmailProviderWrapper$MessageCursor;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual/range {v33 .. v33}, Lcom/google/android/talk/GmailProviderWrapper$MessageCursor;->getBodyEmbedsExternalResources()Z

    move-result v16

    move/from16 v0, v32

    move/from16 v1, v35

    if-ne v0, v1, :cond_7

    const/4 v5, 0x1

    move/from16 v17, v5

    :goto_3
    move-object/from16 v5, p0

    invoke-direct/range {v5 .. v17}, Lcom/google/android/talk/fragments/SearchChatResultFragment;->addExpandedMessage(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 828
    :cond_6
    :goto_4
    add-int/lit8 v35, v35, 0x1

    .line 829
    goto/16 :goto_2

    .line 691
    .end local v6           #sb:Ljava/lang/StringBuilder;
    .end local v7           #messageId:Ljava/lang/String;
    .end local v11           #dateStr:Ljava/lang/String;
    .end local v12           #body:Ljava/lang/String;
    .end local v13           #replyStr:Ljava/lang/String;
    .end local v14           #forwardStr:Ljava/lang/String;
    .end local v15           #replyByChatStr:Ljava/lang/String;
    .end local v24           #date:J
    .end local v26           #firstCollapsed:I
    .end local v27           #fromDiv:Ljava/lang/CharSequence;
    .end local v28           #id:J
    .end local v30           #labelIdsSplitter:Landroid/text/TextUtils$StringSplitter;
    .end local v31           #lastLabelIds:Ljava/lang/String;
    .end local v32           #lastMessage:I
    .end local v34           #rawLabelIds:Ljava/lang/String;
    .end local v35           #whichMessage:I
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/talk/fragments/SearchChatResultFragment;->mProgressMonitor:Lcom/google/android/talk/IProgressMonitor;

    move-object v5, v0

    if-nez v5, :cond_0

    .line 692
    new-instance v5, Lcom/google/android/talk/NetworkProgressMonitor;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/talk/fragments/SearchChatResultFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    const/4 v7, 0x0

    invoke-direct {v5, v6, v7}, Lcom/google/android/talk/NetworkProgressMonitor;-><init>(Landroid/app/Activity;Ljava/lang/Runnable;)V

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/talk/fragments/SearchChatResultFragment;->mProgressMonitor:Lcom/google/android/talk/IProgressMonitor;

    .line 694
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/talk/fragments/SearchChatResultFragment;->mProgressMonitor:Lcom/google/android/talk/IProgressMonitor;

    move-object v5, v0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-interface {v5, v6, v7}, Lcom/google/android/talk/IProgressMonitor;->beginTask(Ljava/lang/CharSequence;I)V

    goto/16 :goto_0

    .line 699
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/talk/fragments/SearchChatResultFragment;->mProgressMonitor:Lcom/google/android/talk/IProgressMonitor;

    move-object v5, v0

    if-eqz v5, :cond_2

    .line 700
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/talk/fragments/SearchChatResultFragment;->mProgressMonitor:Lcom/google/android/talk/IProgressMonitor;

    move-object v5, v0

    invoke-interface {v5}, Lcom/google/android/talk/IProgressMonitor;->done()V

    .line 701
    const/4 v5, 0x0

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/talk/fragments/SearchChatResultFragment;->mProgressMonitor:Lcom/google/android/talk/IProgressMonitor;

    goto/16 :goto_1

    .line 705
    :pswitch_2
    invoke-direct/range {p0 .. p0}, Lcom/google/android/talk/fragments/SearchChatResultFragment;->showRetryAlert()V

    goto/16 :goto_1

    .line 811
    .restart local v6       #sb:Ljava/lang/StringBuilder;
    .restart local v7       #messageId:Ljava/lang/String;
    .restart local v11       #dateStr:Ljava/lang/String;
    .restart local v12       #body:Ljava/lang/String;
    .restart local v13       #replyStr:Ljava/lang/String;
    .restart local v14       #forwardStr:Ljava/lang/String;
    .restart local v15       #replyByChatStr:Ljava/lang/String;
    .restart local v24       #date:J
    .restart local v26       #firstCollapsed:I
    .restart local v27       #fromDiv:Ljava/lang/CharSequence;
    .restart local v28       #id:J
    .restart local v30       #labelIdsSplitter:Landroid/text/TextUtils$StringSplitter;
    .restart local v31       #lastLabelIds:Ljava/lang/String;
    .restart local v32       #lastMessage:I
    .restart local v34       #rawLabelIds:Ljava/lang/String;
    .restart local v35       #whichMessage:I
    :cond_7
    const/4 v5, 0x0

    move/from16 v17, v5

    goto :goto_3

    .line 824
    :cond_8
    if-gez v26, :cond_6

    .line 825
    invoke-virtual/range {v33 .. v33}, Lcom/google/android/talk/GmailProviderWrapper$MessageCursor;->position()I

    move-result v26

    goto :goto_4

    .line 831
    .end local v7           #messageId:Ljava/lang/String;
    .end local v11           #dateStr:Ljava/lang/String;
    .end local v12           #body:Ljava/lang/String;
    .end local v24           #date:J
    .end local v27           #fromDiv:Ljava/lang/CharSequence;
    .end local v28           #id:J
    .end local v34           #rawLabelIds:Ljava/lang/String;
    :cond_9
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "x-thread://"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/talk/fragments/SearchChatResultFragment;->mConversationId:Ljava/lang/Long;

    move-object v7, v0

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 834
    .local v17, url:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/talk/fragments/SearchChatResultFragment;->mWebView:Landroid/webkit/WebView;

    move-object/from16 v16, v0

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    const-string v19, "text/html"

    const-string v20, "utf-8"

    const/16 v21, 0x0

    invoke-virtual/range {v16 .. v21}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 836
    const/4 v5, 0x1

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/google/android/talk/fragments/SearchChatResultFragment;->mLoaded:Z

    goto/16 :goto_0

    .line 688
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private buildFromDiv(Lcom/google/android/talk/GmailProviderWrapper$MessageCursor;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1269
    const-string v0, "<td><div onClick=\"contactSender(\'%s\', \'%s\')\" ><img class=\"presenceImg\"id=\"a:presence\" src=\"%s\"/></div></td><td align=\'left\' width=\'99%%\' onClick=\"toggleHeader(\'%s\')\" width=\"50\"><div class=\"fromDiv\"> %s </div></td>"

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    const/4 v2, 0x1

    aput-object p3, v1, v2

    const/4 v2, 0x2

    invoke-direct {p0, p3}, Lcom/google/android/talk/fragments/SearchChatResultFragment;->getPresenceImage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    aput-object p4, v1, v2

    const/4 v2, 0x4

    invoke-virtual {p1}, Lcom/google/android/talk/GmailProviderWrapper$MessageCursor;->position()I

    move-result v3

    invoke-direct {p0, p2, v3}, Lcom/google/android/talk/fragments/SearchChatResultFragment;->colorizePersonal(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1273
    return-object v0
.end method

.method private colorizePersonal(Ljava/lang/String;I)Ljava/lang/String;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 1280
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<span style=\'color:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0, p1, p2}, Lcom/google/android/talk/fragments/SearchChatResultFragment;->getColor(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "</span>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static ellipsize(Ljava/lang/String;I)Ljava/lang/String;
    .locals 6
    .parameter "text"
    .parameter "maxCharacters"

    .prologue
    .line 915
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 916
    .local v2, length:I
    if-ge v2, p1, :cond_0

    move-object v4, p0

    .line 930
    :goto_0
    return-object v4

    .line 918
    :cond_0
    invoke-static {p1, v2}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 920
    .local v3, realMax:I
    const-string v4, "."

    invoke-virtual {p0, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    .line 921
    .local v1, index:I
    const-string v0, "\u2026"

    .line 922
    .local v0, extension:Ljava/lang/String;
    if-ltz v1, :cond_1

    .line 924
    sub-int v4, v2, v1

    const/4 v5, 0x5

    if-ge v4, v5, :cond_1

    .line 925
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    add-int/lit8 v5, v1, 0x1

    invoke-virtual {p0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 928
    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v3, v4

    .line 929
    if-gez v3, :cond_2

    const/4 v3, 0x0

    .line 930
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v5, 0x0

    invoke-virtual {p0, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method

.method private static extractAddrSpec(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "address"

    .prologue
    .line 500
    sget-object v1, Lcom/google/android/talk/fragments/SearchChatResultFragment;->NAME_ADDR_EMAIL_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 502
    .local v0, match:Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 503
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    .line 505
    :goto_0
    return-object v1

    :cond_0
    move-object v1, p0

    goto :goto_0
.end method

.method private finish()V
    .locals 0

    .prologue
    .line 1103
    return-void
.end method

.method private getAddressesLine(Lcom/google/android/talk/GmailProviderWrapper$MessageCursor;)Ljava/lang/String;
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1190
    invoke-virtual {p1}, Lcom/google/android/talk/GmailProviderWrapper$MessageCursor;->getToAddresses()[Ljava/lang/String;

    move-result-object v0

    .line 1191
    invoke-virtual {p1}, Lcom/google/android/talk/GmailProviderWrapper$MessageCursor;->getCcAddresses()[Ljava/lang/String;

    move-result-object v1

    .line 1192
    invoke-virtual {p1}, Lcom/google/android/talk/GmailProviderWrapper$MessageCursor;->getFromAddress()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/talk/fragments/SearchChatResultFragment;->mLastFromAddress:Ljava/lang/String;

    .line 1194
    array-length v2, v0

    if-lez v2, :cond_3

    move v2, v5

    .line 1195
    :goto_0
    array-length v3, v1

    if-lez v3, :cond_4

    move v3, v5

    :goto_1
    iput-boolean v3, p0, Lcom/google/android/talk/fragments/SearchChatResultFragment;->mHasCcAddresses:Z

    .line 1197
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "<div class=\"addressDiv\">"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1198
    if-eqz v2, :cond_0

    .line 1199
    iget-object v4, p0, Lcom/google/android/talk/fragments/SearchChatResultFragment;->mToHeading:Ljava/lang/String;

    invoke-direct {p0, v3, v4, v0}, Lcom/google/android/talk/fragments/SearchChatResultFragment;->addAddresses(Ljava/lang/StringBuilder;Ljava/lang/String;[Ljava/lang/String;)V

    .line 1201
    :cond_0
    iget-boolean v0, p0, Lcom/google/android/talk/fragments/SearchChatResultFragment;->mHasCcAddresses:Z

    if-eqz v0, :cond_2

    .line 1202
    if-eqz v2, :cond_1

    .line 1203
    const-string v0, "<br/>"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1205
    :cond_1
    iget-object v0, p0, Lcom/google/android/talk/fragments/SearchChatResultFragment;->mCcHeading:Ljava/lang/String;

    invoke-direct {p0, v3, v0, v1}, Lcom/google/android/talk/fragments/SearchChatResultFragment;->addAddresses(Ljava/lang/StringBuilder;Ljava/lang/String;[Ljava/lang/String;)V

    .line 1207
    :cond_2
    const-string v0, "</div>"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1208
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_3
    move v2, v4

    .line 1194
    goto :goto_0

    :cond_4
    move v3, v4

    .line 1195
    goto :goto_1
.end method

.method private getColor(Ljava/lang/String;I)Ljava/lang/String;
    .locals 4
    .parameter "senderPersonal"
    .parameter "position"

    .prologue
    .line 1306
    iget-object v2, p0, Lcom/google/android/talk/fragments/SearchChatResultFragment;->mCurrentColorMap:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1307
    .local v0, result:Ljava/lang/String;
    if-eqz v0, :cond_0

    move-object v1, v0

    .line 1312
    .end local v0           #result:Ljava/lang/String;
    .local v1, result:Ljava/lang/String;
    :goto_0
    return-object v1

    .line 1310
    .end local v1           #result:Ljava/lang/String;
    .restart local v0       #result:Ljava/lang/String;
    :cond_0
    sget-object v2, Lcom/google/android/talk/fragments/SearchChatResultFragment;->AUTHOR_COLORS:[Ljava/lang/String;

    sget-object v3, Lcom/google/android/talk/fragments/SearchChatResultFragment;->AUTHOR_COLORS:[Ljava/lang/String;

    array-length v3, v3

    rem-int v3, p2, v3

    aget-object v0, v2, v3

    .line 1311
    iget-object v2, p0, Lcom/google/android/talk/fragments/SearchChatResultFragment;->mCurrentColorMap:Ljava/util/Map;

    invoke-interface {v2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v0

    .line 1312
    .end local v0           #result:Ljava/lang/String;
    .restart local v1       #result:Ljava/lang/String;
    goto :goto_0
.end method

.method private getDisplayAddress(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "address"

    .prologue
    .line 1141
    invoke-direct {p0, p1}, Lcom/google/android/talk/fragments/SearchChatResultFragment;->getUnencodedDisplayAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->htmlEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getId(Ljava/lang/String;)J
    .locals 2
    .parameter "messageId"

    .prologue
    .line 360
    sget v0, Lcom/google/android/talk/fragments/SearchChatResultFragment;->MESSAGE_PREFIX_LENGTH:I

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 361
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method private getPresenceImage(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "email"

    .prologue
    .line 946
    iget-object v0, p0, Lcom/google/android/talk/fragments/SearchChatResultFragment;->mLastPresenceEmail:Ljava/lang/String;

    if-eq v0, p1, :cond_0

    .line 947
    iput-object p1, p0, Lcom/google/android/talk/fragments/SearchChatResultFragment;->mLastPresenceEmail:Ljava/lang/String;

    .line 948
    iget-object v0, p0, Lcom/google/android/talk/fragments/SearchChatResultFragment;->mContactInfoQuery:Lcom/google/android/talk/ContactInfoQuery;

    iget-wide v1, p0, Lcom/google/android/talk/fragments/SearchChatResultFragment;->mAccountId:J

    invoke-virtual {v0, v1, v2, p1}, Lcom/google/android/talk/ContactInfoQuery;->setContactInfo(JLjava/lang/String;)V

    .line 949
    iget-object v0, p0, Lcom/google/android/talk/fragments/SearchChatResultFragment;->mContactInfoQuery:Lcom/google/android/talk/ContactInfoQuery;

    invoke-virtual {v0}, Lcom/google/android/talk/ContactInfoQuery;->startQueryForContactInfo()V

    .line 951
    :cond_0
    iget-object v0, p0, Lcom/google/android/talk/fragments/SearchChatResultFragment;->mPresencePath:Ljava/lang/String;

    return-object v0
.end method

.method private getSenderPersonal(Lcom/google/android/talk/GmailProviderWrapper$MessageCursor;)Ljava/lang/String;
    .locals 1
    .parameter "messageCursor"

    .prologue
    .line 1185
    invoke-virtual {p1}, Lcom/google/android/talk/GmailProviderWrapper$MessageCursor;->getFromAddress()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/talk/fragments/SearchChatResultFragment;->getDisplayAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getSnippet(Lcom/google/android/talk/GmailProviderWrapper$MessageCursor;)Ljava/lang/String;
    .locals 2
    .parameter "cursor"

    .prologue
    .line 934
    invoke-virtual {p1}, Lcom/google/android/talk/GmailProviderWrapper$MessageCursor;->getSnippet()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x23

    invoke-static {v0, v1}, Lcom/google/android/talk/fragments/SearchChatResultFragment;->ellipsize(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getUnencodedDisplayAddress(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "address"

    .prologue
    .line 1145
    iget-object v2, p0, Lcom/google/android/talk/fragments/SearchChatResultFragment;->mEmailMatcher:Ljava/util/regex/Matcher;

    invoke-virtual {v2, p1}, Ljava/util/regex/Matcher;->reset(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 1147
    .local v0, m:Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-nez v2, :cond_0

    move-object v2, p1

    .line 1157
    :goto_0
    return-object v2

    .line 1151
    :cond_0
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    .line 1153
    .local v1, s:Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    move-object v2, v1

    .line 1154
    goto :goto_0

    .line 1157
    :cond_1
    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method private getUnencodedSenderEmail(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "address"

    .prologue
    .line 1166
    iget-object v2, p0, Lcom/google/android/talk/fragments/SearchChatResultFragment;->mEmailMatcher:Ljava/util/regex/Matcher;

    invoke-virtual {v2, p1}, Ljava/util/regex/Matcher;->reset(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 1168
    .local v0, m:Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-nez v2, :cond_0

    move-object v2, p1

    .line 1178
    :goto_0
    return-object v2

    .line 1172
    :cond_0
    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    .line 1174
    .local v1, s:Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    move-object v2, v1

    .line 1175
    goto :goto_0

    :cond_1
    move-object v2, p1

    .line 1178
    goto :goto_0
.end method

.method private launchReplyByChat(Ljava/lang/String;)V
    .locals 5
    .parameter "messageId"

    .prologue
    .line 510
    iget-object v2, p0, Lcom/google/android/talk/fragments/SearchChatResultFragment;->mLastFromAddress:Ljava/lang/String;

    invoke-static {v2}, Lcom/google/android/talk/fragments/SearchChatResultFragment;->extractAddrSpec(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 512
    .local v0, emailReplyAddress:Ljava/lang/String;
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.SENDTO"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "imto://gtalk/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 515
    .local v1, intent:Landroid/content/Intent;
    invoke-virtual {p0, v1}, Lcom/google/android/talk/fragments/SearchChatResultFragment;->startActivity(Landroid/content/Intent;)V

    .line 516
    return-void
.end method

.method private launchReplyOrForward(ZLjava/lang/String;)V
    .locals 5
    .parameter "forward"
    .parameter "messageId"

    .prologue
    .line 477
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.SENDTO"

    const-string v4, "mailto:"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 478
    .local v2, intent:Landroid/content/Intent;
    const-string v3, "action"

    if-eqz p1, :cond_1

    const/4 v4, 0x2

    :goto_0
    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 480
    invoke-direct {p0, p2}, Lcom/google/android/talk/fragments/SearchChatResultFragment;->getId(Ljava/lang/String;)J

    move-result-wide v0

    .line 481
    .local v0, id:J
    const-string v3, "in-reference-to"

    invoke-virtual {v2, v3, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 482
    const-string v3, "account"

    iget-object v4, p0, Lcom/google/android/talk/fragments/SearchChatResultFragment;->mAccount:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 483
    if-nez p1, :cond_0

    .line 484
    const-string v3, "to"

    iget-object v4, p0, Lcom/google/android/talk/fragments/SearchChatResultFragment;->mLastFromAddress:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 486
    :cond_0
    const/high16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 488
    invoke-virtual {p0, v2}, Lcom/google/android/talk/fragments/SearchChatResultFragment;->startActivity(Landroid/content/Intent;)V

    .line 489
    return-void

    .line 478
    .end local v0           #id:J
    :cond_1
    const/4 v4, 0x1

    goto :goto_0
.end method

.method private maybeGenerateSuperCollapse(Lcom/google/android/talk/GmailProviderWrapper$MessageCursor;Ljava/lang/StringBuilder;II)V
    .locals 9
    .parameter "messageCursor"
    .parameter "sb"
    .parameter "whichMessage"
    .parameter "firstCollapsed"

    .prologue
    const/4 v7, 0x1

    .line 842
    invoke-virtual {p1}, Lcom/google/android/talk/GmailProviderWrapper$MessageCursor;->position()I

    move-result v5

    sub-int v2, v5, v7

    .line 843
    .local v2, lastCollapsed:I
    sub-int v5, v2, p4

    add-int/lit8 v0, v5, 0x1

    .line 844
    .local v0, collapsedCount:I
    if-lt v0, v7, :cond_0

    .line 845
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "_collapsed"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 846
    .local v1, collapsedId:Ljava/lang/String;
    const-string v5, "<div id=\""

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 847
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 848
    const-string v5, "\"><a onClick=\"uncollapse(\'"

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 849
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 850
    const-string v5, "\', "

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 851
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 852
    const-string v5, ", "

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 853
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 854
    const-string v5, ")\"><div class=\"superCollapsedDiv size"

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 855
    sub-int v3, p3, p4

    .line 856
    .local v3, readMessages:I
    if-ne v3, v7, :cond_1

    const-string v5, "1"

    :goto_0
    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 857
    const-string v5, "\"><div class=\"superCollapsedLabel\">"

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 858
    invoke-virtual {p0}, Lcom/google/android/talk/fragments/SearchChatResultFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0d0002

    invoke-virtual {v5, v6, v3}, Landroid/content/res/Resources;->getQuantityText(II)Ljava/lang/CharSequence;

    move-result-object v4

    .line 860
    .local v4, template:Ljava/lang/CharSequence;
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v6, v7, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 861
    const-string v5, "</div></div></a></div>"

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 864
    .end local v1           #collapsedId:Ljava/lang/String;
    .end local v3           #readMessages:I
    .end local v4           #template:Ljava/lang/CharSequence;
    :cond_0
    return-void

    .line 856
    .restart local v1       #collapsedId:Ljava/lang/String;
    .restart local v3       #readMessages:I
    :cond_1
    const/4 v5, 0x2

    if-ne v3, v5, :cond_2

    const-string v5, "2"

    goto :goto_0

    :cond_2
    const-string v5, "n"

    goto :goto_0
.end method

.method public static restrictWebView(Landroid/webkit/WebView;)V
    .locals 2
    .parameter "webView"

    .prologue
    const/4 v1, 0x0

    .line 647
    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    .line 648
    .local v0, webSettings:Landroid/webkit/WebSettings;
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setSavePassword(Z)V

    .line 649
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setSaveFormData(Z)V

    .line 650
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 651
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 652
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setBlockNetworkImage(Z)V

    .line 653
    return-void
.end method

.method private showRetryAlert()V
    .locals 4

    .prologue
    .line 656
    new-instance v0, Lcom/google/android/talk/fragments/SearchChatResultFragment$2;

    invoke-direct {v0, p0}, Lcom/google/android/talk/fragments/SearchChatResultFragment$2;-><init>(Lcom/google/android/talk/fragments/SearchChatResultFragment;)V

    .line 663
    .local v0, buttonListener:Landroid/content/DialogInterface$OnClickListener;
    new-instance v1, Lcom/google/android/talk/fragments/SearchChatResultFragment$3;

    invoke-direct {v1, p0}, Lcom/google/android/talk/fragments/SearchChatResultFragment$3;-><init>(Lcom/google/android/talk/fragments/SearchChatResultFragment;)V

    .line 669
    .local v1, cancelListener:Landroid/content/DialogInterface$OnCancelListener;
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/google/android/talk/fragments/SearchChatResultFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0c00cc

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0c00cd

    invoke-virtual {v2, v3, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 674
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    .prologue
    .line 637
    iget-object v0, p0, Lcom/google/android/talk/fragments/SearchChatResultFragment;->mWebView:Landroid/webkit/WebView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 639
    iget-object v0, p0, Lcom/google/android/talk/fragments/SearchChatResultFragment;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->clearView()V

    .line 640
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 13
    .parameter "icicle"

    .prologue
    const-wide/16 v4, 0x0

    const/4 v3, 0x0

    .line 563
    invoke-super {p0, p1}, Landroid/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 565
    invoke-virtual {p0}, Lcom/google/android/talk/fragments/SearchChatResultFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/google/android/talk/SearchActivity;

    .line 567
    .local v1, activity:Lcom/google/android/talk/SearchActivity;
    invoke-virtual {v1}, Lcom/google/android/talk/SearchActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0c00d3

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 572
    .local v12, s:Ljava/lang/String;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 573
    .local v11, loading:Ljava/lang/StringBuilder;
    const/4 v10, 0x0

    .local v10, i:I
    :goto_0
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v10, v0, :cond_1

    .line 574
    invoke-virtual {v12, v10}, Ljava/lang/String;->charAt(I)C

    move-result v8

    .line 576
    .local v8, c:C
    const/16 v0, 0x7e

    if-gt v8, v0, :cond_0

    .line 577
    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 573
    :goto_1
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 579
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "&#"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ";"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 583
    .end local v8           #c:C
    :cond_1
    iget-object v0, p0, Lcom/google/android/talk/fragments/SearchChatResultFragment;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, v3}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 584
    iget-object v0, p0, Lcom/google/android/talk/fragments/SearchChatResultFragment;->mWebView:Landroid/webkit/WebView;

    invoke-static {v0}, Lcom/google/android/talk/fragments/SearchChatResultFragment;->restrictWebView(Landroid/webkit/WebView;)V

    .line 586
    iget-object v0, p0, Lcom/google/android/talk/fragments/SearchChatResultFragment;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {p0, v0}, Lcom/google/android/talk/fragments/SearchChatResultFragment;->registerForContextMenu(Landroid/view/View;)V

    .line 588
    iget-object v0, p0, Lcom/google/android/talk/fragments/SearchChatResultFragment;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, v3}, Landroid/webkit/WebView;->setScrollBarStyle(I)V

    .line 590
    invoke-virtual {v1}, Lcom/google/android/talk/SearchActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v9

    .line 591
    .local v9, extras:Landroid/os/Bundle;
    const-string v0, "account"

    invoke-virtual {v9, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/talk/fragments/SearchChatResultFragment;->mAccount:Ljava/lang/String;

    .line 592
    const-string v0, "accountId"

    invoke-virtual {v9, v0, v4, v5}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/android/talk/fragments/SearchChatResultFragment;->mAccountId:J

    .line 593
    const-string v0, "thread-id"

    invoke-virtual {v9, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/talk/fragments/SearchChatResultFragment;->mConversationId:Ljava/lang/Long;

    .line 595
    iget-object v0, p0, Lcom/google/android/talk/fragments/SearchChatResultFragment;->mAccount:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 596
    invoke-virtual {v1}, Lcom/google/android/talk/SearchActivity;->getUsername()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/talk/fragments/SearchChatResultFragment;->mAccount:Ljava/lang/String;

    .line 598
    :cond_2
    iget-object v0, p0, Lcom/google/android/talk/fragments/SearchChatResultFragment;->mConversationId:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v0, v2, v4

    if-nez v0, :cond_3

    .line 599
    invoke-virtual {v1}, Lcom/google/android/talk/SearchActivity;->getConversationId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/talk/fragments/SearchChatResultFragment;->mConversationId:Ljava/lang/Long;

    .line 602
    :cond_3
    invoke-static {v1}, Lcom/google/android/talk/TalkApp;->getApplication(Landroid/app/Activity;)Lcom/google/android/talk/TalkApp;

    move-result-object v7

    .line 603
    .local v7, app:Lcom/google/android/talk/TalkApp;
    invoke-virtual {v7}, Lcom/google/android/talk/TalkApp;->getGmailProvider()Lcom/google/android/talk/GmailProviderWrapper;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/talk/fragments/SearchChatResultFragment;->mGmail:Lcom/google/android/talk/GmailProviderWrapper;

    .line 606
    :try_start_0
    iget-object v0, p0, Lcom/google/android/talk/fragments/SearchChatResultFragment;->mGmail:Lcom/google/android/talk/GmailProviderWrapper;

    iget-object v2, p0, Lcom/google/android/talk/fragments/SearchChatResultFragment;->mAccount:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/talk/fragments/SearchChatResultFragment;->mConversationId:Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v0, v2, v3, v4}, Lcom/google/android/talk/GmailProviderWrapper;->getMessageCursorForConversationId(Ljava/lang/String;J)Lcom/google/android/talk/GmailProviderWrapper$MessageCursor;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/talk/fragments/SearchChatResultFragment;->mMessageCursor:Lcom/google/android/talk/GmailProviderWrapper$MessageCursor;

    .line 607
    iget-object v0, p0, Lcom/google/android/talk/fragments/SearchChatResultFragment;->mMessageCursor:Lcom/google/android/talk/GmailProviderWrapper$MessageCursor;

    invoke-virtual {v0}, Lcom/google/android/talk/GmailProviderWrapper$MessageCursor;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/android/talk/SearchActivity;->startManagingCursor(Landroid/database/Cursor;)V

    .line 609
    iget-object v0, p0, Lcom/google/android/talk/fragments/SearchChatResultFragment;->mWebView:Landroid/webkit/WebView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<h3><p align=\"center\">"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "</p></h3>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "text/html"

    const-string v4, "utf-8"

    invoke-virtual {v0, v2, v3, v4}, Landroid/webkit/WebView;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 614
    new-instance v0, Lcom/google/android/talk/fragments/SearchChatResultFragment$ConversationContentObserver;

    invoke-direct {v0, p0}, Lcom/google/android/talk/fragments/SearchChatResultFragment$ConversationContentObserver;-><init>(Lcom/google/android/talk/fragments/SearchChatResultFragment;)V

    iput-object v0, p0, Lcom/google/android/talk/fragments/SearchChatResultFragment;->mContentObserver:Landroid/database/ContentObserver;

    .line 615
    iget-object v0, p0, Lcom/google/android/talk/fragments/SearchChatResultFragment;->mMessageCursor:Lcom/google/android/talk/GmailProviderWrapper$MessageCursor;

    iget-object v2, p0, Lcom/google/android/talk/fragments/SearchChatResultFragment;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v2}, Lcom/google/android/talk/GmailProviderWrapper$MessageCursor;->registerContentObserver(Landroid/database/ContentObserver;)V

    .line 617
    iget-object v0, p0, Lcom/google/android/talk/fragments/SearchChatResultFragment;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 619
    iget-object v0, p0, Lcom/google/android/talk/fragments/SearchChatResultFragment;->mWebView:Landroid/webkit/WebView;

    new-instance v2, Lcom/google/android/talk/fragments/SearchChatResultFragment$GmailJsInterface;

    invoke-direct {v2, p0}, Lcom/google/android/talk/fragments/SearchChatResultFragment$GmailJsInterface;-><init>(Lcom/google/android/talk/fragments/SearchChatResultFragment;)V

    const-string v3, "gmail"

    invoke-virtual {v0, v2, v3}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 621
    if-eqz p1, :cond_4

    .line 622
    const-string v0, "webview-y"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/talk/fragments/SearchChatResultFragment;->mWebViewY:I

    .line 626
    :cond_4
    new-instance v0, Lcom/google/android/talk/ContactInfoQuery;

    iget-wide v2, p0, Lcom/google/android/talk/fragments/SearchChatResultFragment;->mAccountId:J

    iget-object v4, p0, Lcom/google/android/talk/fragments/SearchChatResultFragment;->mAccount:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/android/talk/fragments/SearchChatResultFragment;->mContentObserver:Landroid/database/ContentObserver;

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/google/android/talk/ContactInfoQuery;-><init>(Landroid/content/Context;JLjava/lang/String;Landroid/database/ContentObserver;Z)V

    iput-object v0, p0, Lcom/google/android/talk/fragments/SearchChatResultFragment;->mContactInfoQuery:Lcom/google/android/talk/ContactInfoQuery;

    .line 627
    iget-object v0, p0, Lcom/google/android/talk/fragments/SearchChatResultFragment;->mContactInfoQuery:Lcom/google/android/talk/ContactInfoQuery;

    invoke-virtual {v0, p0}, Lcom/google/android/talk/ContactInfoQuery;->setContactInfoCallback(Lcom/google/android/talk/ContactInfoQuery$ContactInfoQueryCallback;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 631
    :goto_2
    return-void

    .line 628
    :catch_0
    move-exception v0

    goto :goto_2
.end method

.method public onContactInfoLoaded()V
    .locals 2

    .prologue
    .line 1330
    iget-object v0, p0, Lcom/google/android/talk/fragments/SearchChatResultFragment;->mContactInfoQuery:Lcom/google/android/talk/ContactInfoQuery;

    invoke-virtual {v0}, Lcom/google/android/talk/ContactInfoQuery;->getPresenceStatus()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 1353
    const-string v0, "file:///android_asset/presence_offline.png"

    iput-object v0, p0, Lcom/google/android/talk/fragments/SearchChatResultFragment;->mPresencePath:Ljava/lang/String;

    .line 1356
    :goto_0
    iget-object v0, p0, Lcom/google/android/talk/fragments/SearchChatResultFragment;->mLastPresencePath:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/talk/fragments/SearchChatResultFragment;->mPresencePath:Ljava/lang/String;

    if-eq v0, v1, :cond_0

    .line 1357
    iget-object v0, p0, Lcom/google/android/talk/fragments/SearchChatResultFragment;->mPresencePath:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/talk/fragments/SearchChatResultFragment;->mLastPresencePath:Ljava/lang/String;

    .line 1358
    invoke-direct {p0}, Lcom/google/android/talk/fragments/SearchChatResultFragment;->buildConversationIfLoaded()V

    .line 1360
    :cond_0
    return-void

    .line 1332
    :pswitch_0
    const-string v0, "file:///android_asset/presence_online.png"

    iput-object v0, p0, Lcom/google/android/talk/fragments/SearchChatResultFragment;->mPresencePath:Ljava/lang/String;

    goto :goto_0

    .line 1336
    :pswitch_1
    const-string v0, "file:///android_asset/presence_away.png"

    iput-object v0, p0, Lcom/google/android/talk/fragments/SearchChatResultFragment;->mPresencePath:Ljava/lang/String;

    goto :goto_0

    .line 1340
    :pswitch_2
    const-string v0, "file:///android_asset/presence_away.png"

    iput-object v0, p0, Lcom/google/android/talk/fragments/SearchChatResultFragment;->mPresencePath:Ljava/lang/String;

    goto :goto_0

    .line 1344
    :pswitch_3
    const-string v0, "file:///android_asset/presence_busy.png"

    iput-object v0, p0, Lcom/google/android/talk/fragments/SearchChatResultFragment;->mPresencePath:Ljava/lang/String;

    goto :goto_0

    .line 1348
    :pswitch_4
    const-string v0, "file:///android_asset/presence_invisible.png"

    iput-object v0, p0, Lcom/google/android/talk/fragments/SearchChatResultFragment;->mPresencePath:Ljava/lang/String;

    goto :goto_0

    .line 1330
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_0
    .end packed-switch
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 555
    invoke-super {p0, p1, p2, p3}, Landroid/app/Fragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    .line 556
    invoke-virtual {p0}, Lcom/google/android/talk/fragments/SearchChatResultFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 557
    .local v0, activity:Landroid/app/Activity;
    const v1, 0x7f040029

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/webkit/WebView;

    iput-object v1, p0, Lcom/google/android/talk/fragments/SearchChatResultFragment;->mWebView:Landroid/webkit/WebView;

    .line 558
    iget-object v1, p0, Lcom/google/android/talk/fragments/SearchChatResultFragment;->mWebView:Landroid/webkit/WebView;

    return-object v1
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 1115
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 1116
    iget-object v0, p0, Lcom/google/android/talk/fragments/SearchChatResultFragment;->mMessageCursor:Lcom/google/android/talk/GmailProviderWrapper$MessageCursor;

    if-eqz v0, :cond_0

    .line 1117
    iget-object v0, p0, Lcom/google/android/talk/fragments/SearchChatResultFragment;->mMessageCursor:Lcom/google/android/talk/GmailProviderWrapper$MessageCursor;

    invoke-virtual {v0}, Lcom/google/android/talk/GmailProviderWrapper$MessageCursor;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0}, Landroid/database/Cursor;->deactivate()V

    .line 1119
    :cond_0
    const-string v0, "talk"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " onPause() finished"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1125
    return-void
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 1078
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 1079
    iget-object v2, p0, Lcom/google/android/talk/fragments/SearchChatResultFragment;->mMessageCursor:Lcom/google/android/talk/GmailProviderWrapper$MessageCursor;

    if-eqz v2, :cond_0

    .line 1083
    iget-object v2, p0, Lcom/google/android/talk/fragments/SearchChatResultFragment;->mMessageCursor:Lcom/google/android/talk/GmailProviderWrapper$MessageCursor;

    invoke-virtual {v2}, Lcom/google/android/talk/GmailProviderWrapper$MessageCursor;->count()I

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/google/android/talk/fragments/SearchChatResultFragment;->mMessageCursor:Lcom/google/android/talk/GmailProviderWrapper$MessageCursor;

    invoke-virtual {v2}, Lcom/google/android/talk/GmailProviderWrapper$MessageCursor;->getStatus()Lcom/google/android/talk/GmailProviderWrapper$CursorStatus;

    move-result-object v2

    sget-object v3, Lcom/google/android/talk/GmailProviderWrapper$CursorStatus;->LOADING:Lcom/google/android/talk/GmailProviderWrapper$CursorStatus;

    if-eq v2, v3, :cond_1

    .line 1085
    invoke-direct {p0}, Lcom/google/android/talk/fragments/SearchChatResultFragment;->finish()V

    .line 1099
    :cond_0
    :goto_0
    return-void

    .line 1089
    :cond_1
    iget-object v2, p0, Lcom/google/android/talk/fragments/SearchChatResultFragment;->mMessageCursor:Lcom/google/android/talk/GmailProviderWrapper$MessageCursor;

    invoke-virtual {v2}, Lcom/google/android/talk/GmailProviderWrapper$MessageCursor;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 1090
    .local v0, cursor:Landroid/database/Cursor;
    invoke-interface {v0}, Landroid/database/Cursor;->requery()Z

    move-result v1

    .line 1091
    .local v1, success:Z
    if-nez v1, :cond_2

    .line 1093
    invoke-direct {p0}, Lcom/google/android/talk/fragments/SearchChatResultFragment;->finish()V

    goto :goto_0

    .line 1096
    :cond_2
    invoke-direct {p0}, Lcom/google/android/talk/fragments/SearchChatResultFragment;->buildConversationIfLoaded()V

    goto :goto_0
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 1107
    invoke-super {p0}, Landroid/app/Fragment;->onStop()V

    .line 1108
    iget-object v0, p0, Lcom/google/android/talk/fragments/SearchChatResultFragment;->mContactInfoQuery:Lcom/google/android/talk/ContactInfoQuery;

    if-eqz v0, :cond_0

    .line 1109
    iget-object v0, p0, Lcom/google/android/talk/fragments/SearchChatResultFragment;->mContactInfoQuery:Lcom/google/android/talk/ContactInfoQuery;

    invoke-virtual {v0}, Lcom/google/android/talk/ContactInfoQuery;->cleanupContactInfoCursor()V

    .line 1111
    :cond_0
    return-void
.end method
