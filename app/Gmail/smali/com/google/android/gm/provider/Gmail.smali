.class public final Lcom/google/android/gm/provider/Gmail;
.super Ljava/lang/Object;
.source "Gmail.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gm/provider/Gmail$1;,
        Lcom/google/android/gm/provider/Gmail$ConversationCursor;,
        Lcom/google/android/gm/provider/Gmail$DetachedConversationCursor;,
        Lcom/google/android/gm/provider/Gmail$MessageModification;,
        Lcom/google/android/gm/provider/Gmail$MessageCursor;,
        Lcom/google/android/gm/provider/Gmail$DetachedMessageCursor;,
        Lcom/google/android/gm/provider/Gmail$CursorError;,
        Lcom/google/android/gm/provider/Gmail$CursorStatus;,
        Lcom/google/android/gm/provider/Gmail$Attachment;,
        Lcom/google/android/gm/provider/Gmail$AttachmentOrigin;,
        Lcom/google/android/gm/provider/Gmail$AttachmentRendition;,
        Lcom/google/android/gm/provider/Gmail$PersonalLevel;,
        Lcom/google/android/gm/provider/Gmail$LabelMap;,
        Lcom/google/android/gm/provider/Gmail$MailCursorObserver;,
        Lcom/google/android/gm/provider/Gmail$MailCursorAdapter;,
        Lcom/google/android/gm/provider/Gmail$MailCursor;,
        Lcom/google/android/gm/provider/Gmail$Settings;,
        Lcom/google/android/gm/provider/Gmail$BecomeActiveNetworkCursor;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field public static final ATTACHMENT_INFO_SEPARATOR_PATTERN:Ljava/util/regex/Pattern;

.field public static final COMMA_SEPARATOR_PATTERN:Ljava/util/regex/Pattern;

.field static CONVERSATION_PROJECTION:[Ljava/lang/String;

.field private static final DISPLAYABLE_SYSTEM_LABELS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final EMAIL_SEPARATOR_PATTERN:Ljava/util/regex/Pattern;

.field static LABEL_PROJECTION:[Ljava/lang/String;

.field public static final LOCAL_PRIORITY_LABELS:Lcom/google/common/collect/BiMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/BiMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static MESSAGE_PROJECTION:[Ljava/lang/String;

.field private static final NAME_ADDRESS_PATTERN:Ljava/util/regex/Pattern;

.field public static final PRIORITY_MARKERS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final SENDER_LIST_SEPARATOR:Ljava/lang/Character;

.field public static SETTINGS_PROJECTION:[Ljava/lang/String;

.field public static final SPACE_SEPARATOR_PATTERN:Ljava/util/regex/Pattern;

.field private static final SYSTEM_LABELS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final UNNAMED_ADDRESS_PATTERN:Ljava/util/regex/Pattern;

.field private static final USER_SETTABLE_BUILTIN_LABELS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static sAccountUriMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/net/Uri;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final sPriorityToLength:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static sSenderFragments:[Ljava/lang/String;

.field public static final sSenderListSplitter:Landroid/text/TextUtils$SimpleStringSplitter;


# instance fields
.field private final mContentResolver:Landroid/content/ContentResolver;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 61
    const-class v0, Lcom/google/android/gm/provider/Gmail;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v4

    :goto_0
    sput-boolean v0, Lcom/google/android/gm/provider/Gmail;->$assertionsDisabled:Z

    .line 127
    invoke-static {}, Lcom/google/common/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    sput-object v0, Lcom/google/android/gm/provider/Gmail;->sAccountUriMap:Ljava/util/Map;

    .line 131
    const-string v0, "\n"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/gm/provider/Gmail;->EMAIL_SEPARATOR_PATTERN:Ljava/util/regex/Pattern;

    .line 137
    const-string v0, " "

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/gm/provider/Gmail;->SPACE_SEPARATOR_PATTERN:Ljava/util/regex/Pattern;

    .line 158
    const-string v0, ","

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/gm/provider/Gmail;->COMMA_SEPARATOR_PATTERN:Ljava/util/regex/Pattern;

    .line 162
    const-string v0, "\n"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/gm/provider/Gmail;->ATTACHMENT_INFO_SEPARATOR_PATTERN:Ljava/util/regex/Pattern;

    .line 165
    const/16 v0, 0xa

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    sput-object v0, Lcom/google/android/gm/provider/Gmail;->SENDER_LIST_SEPARATOR:Ljava/lang/Character;

    .line 191
    const-string v0, "\"(.*)\""

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/gm/provider/Gmail;->NAME_ADDRESS_PATTERN:Ljava/util/regex/Pattern;

    .line 192
    const-string v0, "([^<]+)@"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/gm/provider/Gmail;->UNNAMED_ADDRESS_PATTERN:Ljava/util/regex/Pattern;

    .line 216
    invoke-static {}, Lcom/google/common/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    sput-object v0, Lcom/google/android/gm/provider/Gmail;->sPriorityToLength:Ljava/util/Map;

    .line 217
    new-instance v0, Landroid/text/TextUtils$SimpleStringSplitter;

    sget-object v1, Lcom/google/android/gm/provider/Gmail;->SENDER_LIST_SEPARATOR:Ljava/lang/Character;

    invoke-virtual {v1}, Ljava/lang/Character;->charValue()C

    move-result v1

    invoke-direct {v0, v1}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    sput-object v0, Lcom/google/android/gm/provider/Gmail;->sSenderListSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

    .line 219
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lcom/google/android/gm/provider/Gmail;->sSenderFragments:[Ljava/lang/String;

    .line 226
    const/16 v0, 0x15

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "^all"

    aput-object v1, v0, v3

    const-string v1, "^b"

    aput-object v1, v0, v4

    const-string v1, "^r"

    aput-object v1, v0, v5

    const-string v1, "^g"

    aput-object v1, v0, v6

    const-string v1, "^i"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "^f"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "^s"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "^t"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "^k"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "^u"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "^vm"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "^io_im"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "^iim"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "^^cached"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "^^out"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "^^important"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "^^unimportant"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "^imi"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "^imn"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "^io_ns"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "^im"

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/common/collect/Sets;->newHashSet([Ljava/lang/Object;)Ljava/util/HashSet;

    move-result-object v0

    sput-object v0, Lcom/google/android/gm/provider/Gmail;->SYSTEM_LABELS:Ljava/util/Set;

    .line 254
    new-array v0, v7, [Ljava/lang/String;

    const-string v1, "^g"

    aput-object v1, v0, v3

    const-string v1, "^i"

    aput-object v1, v0, v4

    const-string v1, "^s"

    aput-object v1, v0, v5

    const-string v1, "^k"

    aput-object v1, v0, v6

    invoke-static {v0}, Lcom/google/common/collect/Sets;->newHashSet([Ljava/lang/Object;)Ljava/util/HashSet;

    move-result-object v0

    sput-object v0, Lcom/google/android/gm/provider/Gmail;->DISPLAYABLE_SYSTEM_LABELS:Ljava/util/Set;

    .line 262
    invoke-static {}, Lcom/google/common/collect/ImmutableBiMap;->builder()Lcom/google/common/collect/ImmutableBiMap$Builder;

    move-result-object v0

    const-wide/16 v1, -0x1f4

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "^imi"

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableBiMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableBiMap$Builder;

    move-result-object v0

    const-wide/16 v1, -0x1f5

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "^imn"

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableBiMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableBiMap$Builder;

    move-result-object v0

    const-wide/16 v1, -0x1f3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "^im"

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableBiMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableBiMap$Builder;

    move-result-object v0

    const-wide/16 v1, -0x1f6

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "^io_ns"

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableBiMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableBiMap$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableBiMap$Builder;->build()Lcom/google/common/collect/ImmutableBiMap;

    move-result-object v0

    sput-object v0, Lcom/google/android/gm/provider/Gmail;->LOCAL_PRIORITY_LABELS:Lcom/google/common/collect/BiMap;

    .line 270
    new-array v0, v7, [Ljava/lang/String;

    const-string v1, "^imi"

    aput-object v1, v0, v3

    const-string v1, "^imn"

    aput-object v1, v0, v4

    const-string v1, "^im"

    aput-object v1, v0, v5

    const-string v1, "^io_ns"

    aput-object v1, v0, v6

    invoke-static {v0}, Lcom/google/common/collect/Sets;->newHashSet([Ljava/lang/Object;)Ljava/util/HashSet;

    move-result-object v0

    sput-object v0, Lcom/google/android/gm/provider/Gmail;->PRIORITY_MARKERS:Ljava/util/Set;

    .line 504
    const/16 v0, 0xe

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "^i"

    aput-object v1, v0, v3

    const-string v1, "^u"

    aput-object v1, v0, v4

    const-string v1, "^k"

    aput-object v1, v0, v5

    const-string v1, "^s"

    aput-object v1, v0, v6

    const-string v1, "^t"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "^g"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "^iim"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "^im"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "^io_im"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "^^important"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "^^unimportant"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "^imi"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "^imn"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "^io_ns"

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/common/collect/Sets;->newHashSet([Ljava/lang/Object;)Ljava/util/HashSet;

    move-result-object v0

    sput-object v0, Lcom/google/android/gm/provider/Gmail;->USER_SETTABLE_BUILTIN_LABELS:Ljava/util/Set;

    .line 742
    const/16 v0, 0xf

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "subject"

    aput-object v1, v0, v4

    const-string v1, "snippet"

    aput-object v1, v0, v5

    const-string v1, "fromAddress"

    aput-object v1, v0, v6

    const-string v1, "date"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "personalLevel"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "labelIds"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "numMessages"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "maxMessageId"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "hasAttachments"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "hasMessagesWithErrors"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "forceAllUnread"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "conversationLabels"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "hasDraftMessage"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "hasOutboxMessage"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/gm/provider/Gmail;->CONVERSATION_PROJECTION:[Ljava/lang/String;

    .line 761
    const/16 v0, 0x1e

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "messageId"

    aput-object v1, v0, v4

    const-string v1, "conversation"

    aput-object v1, v0, v5

    const-string v1, "subject"

    aput-object v1, v0, v6

    const-string v1, "snippet"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "fromAddress"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "customFromAddress"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "toAddresses"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "ccAddresses"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "bccAddresses"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "replyToAddresses"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "dateSentMs"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "dateReceivedMs"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "listInfo"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "personalLevel"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "body"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "bodyEmbedsExternalResources"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "labelIds"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "joinedAttachmentInfos"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "refMessageId"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "error"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "forward"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "includeQuotedText"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "quoteStartPos"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "labelCount"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "messageLabels"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "isStarred"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "isDraft"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "isInOutbox"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "isUnread"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/gm/provider/Gmail;->MESSAGE_PROJECTION:[Ljava/lang/String;

    .line 792
    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "canonicalName"

    aput-object v1, v0, v4

    const-string v1, "name"

    aput-object v1, v0, v5

    const-string v1, "numConversations"

    aput-object v1, v0, v6

    const-string v1, "numUnreadConversations"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "color"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "systemLabel"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "hidden"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "labelCountDisplayBehavior"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "labelSyncPolicy"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "sortOrder"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/gm/provider/Gmail;->LABEL_PROJECTION:[Ljava/lang/String;

    .line 804
    new-array v0, v7, [Ljava/lang/String;

    const-string v1, "labelsIncluded"

    aput-object v1, v0, v3

    const-string v1, "labelsPartial"

    aput-object v1, v0, v4

    const-string v1, "conversationAgeDays"

    aput-object v1, v0, v5

    const-string v1, "maxAttachmentSize"

    aput-object v1, v0, v6

    sput-object v0, Lcom/google/android/gm/provider/Gmail;->SETTINGS_PROJECTION:[Ljava/lang/String;

    return-void

    :cond_0
    move v0, v3

    .line 61
    goto/16 :goto_0
.end method

.method public constructor <init>(Landroid/content/ContentResolver;)V
    .locals 0
    .parameter "contentResolver"

    .prologue
    .line 813
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 814
    iput-object p1, p0, Lcom/google/android/gm/provider/Gmail;->mContentResolver:Landroid/content/ContentResolver;

    .line 815
    return-void
.end method

.method static synthetic access$300(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    invoke-static {p0}, Lcom/google/android/gm/provider/Gmail;->toNonnullString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Ljava/lang/String;)Landroid/net/Uri;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    invoke-static {p0}, Lcom/google/android/gm/provider/Gmail;->getMessagesUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static addOrRemoveLabelOnMessage(Landroid/content/ContentResolver;Ljava/lang/String;JJLjava/lang/String;Z)V
    .locals 3
    .parameter "contentResolver"
    .parameter "account"
    .parameter "conversationId"
    .parameter "messageId"
    .parameter "label"
    .parameter "add"

    .prologue
    const/4 v2, 0x0

    .line 1100
    if-eqz p7, :cond_0

    .line 1101
    invoke-static {p1, p4, p5}, Lcom/google/android/gm/provider/Gmail;->getMessageLabelsUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v0

    .line 1102
    .local v0, uri:Landroid/net/Uri;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 1103
    .local v1, values:Landroid/content/ContentValues;
    const-string v2, "canonicalName"

    invoke-virtual {v1, v2, p6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1104
    invoke-virtual {p0, v0, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 1110
    .end local v1           #values:Landroid/content/ContentValues;
    :goto_0
    return-void

    .line 1106
    .end local v0           #uri:Landroid/net/Uri;
    :cond_0
    invoke-static {p1, p4, p5, p6}, Lcom/google/android/gm/provider/Gmail;->getMessageLabelUri(Ljava/lang/String;JLjava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 1108
    .restart local v0       #uri:Landroid/net/Uri;
    invoke-virtual {p0, v0, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static addStyledFragment(Landroid/text/SpannableStringBuilder;Ljava/lang/String;Landroid/text/style/CharacterStyle;Z)V
    .locals 5
    .parameter "builder"
    .parameter "fragment"
    .parameter "style"
    .parameter "withSpaces"

    .prologue
    const/16 v4, 0x20

    const/4 v3, 0x1

    .line 1287
    if-eqz p3, :cond_0

    .line 1288
    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    .line 1289
    .local v0, pos:I
    invoke-virtual {p0, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1290
    invoke-static {p2}, Landroid/text/style/CharacterStyle;->wrap(Landroid/text/style/CharacterStyle;)Landroid/text/style/CharacterStyle;

    move-result-object v2

    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    const/16 v4, 0x21

    invoke-virtual {p0, v2, v0, v3, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 1312
    :goto_0
    return-void

    .line 1293
    .end local v0           #pos:I
    :cond_0
    const/4 v1, 0x0

    .line 1295
    .local v1, start:I
    :cond_1
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 1296
    .restart local v0       #pos:I
    const/4 v2, -0x1

    if-ne v0, v2, :cond_2

    .line 1297
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2, p2, v3}, Lcom/google/android/gm/provider/Gmail;->addStyledFragment(Landroid/text/SpannableStringBuilder;Ljava/lang/String;Landroid/text/style/CharacterStyle;Z)V

    goto :goto_0

    .line 1300
    :cond_2
    add-int/2addr v0, v1

    .line 1301
    if-ge v1, v0, :cond_3

    .line 1302
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2, p2, v3}, Lcom/google/android/gm/provider/Gmail;->addStyledFragment(Landroid/text/SpannableStringBuilder;Ljava/lang/String;Landroid/text/style/CharacterStyle;Z)V

    .line 1303
    invoke-virtual {p0, v4}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    .line 1305
    :cond_3
    add-int/lit8 v1, v0, 0x1

    .line 1306
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-lt v1, v2, :cond_1

    goto :goto_0
.end method

.method private static declared-synchronized getAccountUriCache(Ljava/lang/String;)Ljava/util/Map;
    .locals 3
    .parameter "account"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    .prologue
    .line 291
    const-class v1, Lcom/google/android/gm/provider/Gmail;

    monitor-enter v1

    :try_start_0
    sget-object v2, Lcom/google/android/gm/provider/Gmail;->sAccountUriMap:Ljava/util/Map;

    invoke-interface {v2, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 292
    .local v0, uriMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Landroid/net/Uri;>;"
    if-nez v0, :cond_0

    .line 293
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .end local v0           #uriMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Landroid/net/Uri;>;"
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 294
    .restart local v0       #uriMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Landroid/net/Uri;>;"
    sget-object v2, Lcom/google/android/gm/provider/Gmail;->sAccountUriMap:Ljava/util/Map;

    invoke-interface {v2, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 296
    :cond_0
    monitor-exit v1

    return-object v0

    .line 291
    .end local v0           #uriMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Landroid/net/Uri;>;"
    :catchall_0
    move-exception v2

    monitor-exit v1

    throw v2
.end method

.method public static getAttachmentDownloadUri(Landroid/net/Uri;)Landroid/net/Uri;
    .locals 3
    .parameter "attachmentUri"

    .prologue
    .line 2454
    const-string v0, "content"

    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2455
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Uri\'s scheme must be \'content\': "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2457
    :cond_0
    invoke-virtual {p0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "download"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static getAttachmentUri(Ljava/lang/String;JLcom/google/android/gm/provider/Gmail$Attachment;Lcom/google/android/gm/provider/Gmail$AttachmentRendition;Z)Landroid/net/Uri;
    .locals 2
    .parameter "account"
    .parameter "messageId"
    .parameter "attachment"
    .parameter "rendition"
    .parameter "saveToSd"

    .prologue
    .line 2425
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2426
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "account is empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2428
    :cond_0
    iget-object v0, p3, Lcom/google/android/gm/provider/Gmail$Attachment;->origin:Lcom/google/android/gm/provider/Gmail$AttachmentOrigin;

    sget-object v1, Lcom/google/android/gm/provider/Gmail$AttachmentOrigin;->LOCAL_FILE:Lcom/google/android/gm/provider/Gmail$AttachmentOrigin;

    if-ne v0, v1, :cond_1

    .line 2429
    iget-object v0, p3, Lcom/google/android/gm/provider/Gmail$Attachment;->originExtras:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 2431
    :goto_0
    return-object v0

    :cond_1
    invoke-static {p0}, Lcom/google/android/gm/provider/Gmail;->getMessagesUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "attachments"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    iget-object v1, p3, Lcom/google/android/gm/provider/Gmail$Attachment;->partId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {p4}, Lcom/google/android/gm/provider/Gmail$AttachmentRendition;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-static {p5}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    goto :goto_0
.end method

.method public static getBaseUri(Ljava/lang/String;)Landroid/net/Uri;
    .locals 4
    .parameter "account"

    .prologue
    .line 318
    invoke-static {p0}, Lcom/google/android/gm/provider/Gmail;->getAccountUriCache(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    .line 319
    .local v1, uriMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Landroid/net/Uri;>;"
    const-string v2, "baseUri"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 320
    .local v0, baseUri:Landroid/net/Uri;
    if-nez v0, :cond_0

    .line 321
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "content://gmail-ls/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 322
    const-string v2, "baseUri"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 324
    :cond_0
    return-object v0
.end method

.method private static getCachedUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    .locals 4
    .parameter "account"
    .parameter "param"

    .prologue
    .line 300
    invoke-static {p0}, Lcom/google/android/gm/provider/Gmail;->getAccountUriCache(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    .line 301
    .local v1, uriMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Landroid/net/Uri;>;"
    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 302
    .local v0, cachedUri:Landroid/net/Uri;
    if-nez v0, :cond_0

    .line 303
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "content://gmail-ls/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 304
    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 306
    :cond_0
    return-object v0
.end method

.method static getConversationLabelUri(Ljava/lang/String;JLjava/lang/String;)Landroid/net/Uri;
    .locals 2
    .parameter "account"
    .parameter "conversationId"
    .parameter "canonicalName"

    .prologue
    .line 355
    invoke-static {p0}, Lcom/google/android/gm/provider/Gmail;->getConversationUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "labels"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-static {p3}, Lcom/google/android/gm/provider/Gmail;->urlEncodeLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method private static getConversationUri(Ljava/lang/String;)Landroid/net/Uri;
    .locals 1
    .parameter "account"

    .prologue
    .line 347
    const-string v0, "/conversation/"

    invoke-static {p0, v0}, Lcom/google/android/gm/provider/Gmail;->getCachedUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static getConversationsUri(Ljava/lang/String;)Landroid/net/Uri;
    .locals 1
    .parameter "account"

    .prologue
    .line 331
    const-string v0, "/conversations/"

    invoke-static {p0, v0}, Lcom/google/android/gm/provider/Gmail;->getCachedUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static getEmailFromAddressString(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "addressString"

    .prologue
    .line 485
    move-object v1, p0

    .line 486
    .local v1, result:Ljava/lang/String;
    sget-object v2, Landroid/util/Patterns;->EMAIL_ADDRESS:Ljava/util/regex/Pattern;

    invoke-virtual {v2, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 487
    .local v0, match:Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 488
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->start()I

    move-result v2

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->end()I

    move-result v3

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 491
    :cond_0
    return-object v1
.end method

.method public static getLabelIdsFromLabelIdsString(Landroid/text/TextUtils$StringSplitter;)Ljava/util/Set;
    .locals 4
    .parameter "splitter"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/text/TextUtils$StringSplitter;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 536
    invoke-static {}, Lcom/google/common/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v2

    .line 537
    .local v2, labelIds:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    invoke-interface {p0}, Landroid/text/TextUtils$StringSplitter;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 538
    .local v1, labelIdString:Ljava/lang/String;
    invoke-static {v1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 540
    .end local v1           #labelIdString:Ljava/lang/String;
    :cond_0
    return-object v2
.end method

.method public static getLabelIdsStringFromLabelIds(Ljava/util/Set;)Ljava/lang/String;
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .local p0, labelIds:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    const/16 v4, 0x2c

    .line 585
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 586
    .local v2, sb:Ljava/lang/StringBuilder;
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 587
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 588
    .local v1, labelId:Ljava/lang/Long;
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 589
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 591
    .end local v1           #labelId:Ljava/lang/Long;
    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public static getLabelTagCanonicalName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "canonicalName"

    .prologue
    .line 548
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "^^unseen-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static getLabelUri(Ljava/lang/String;)Landroid/net/Uri;
    .locals 1
    .parameter "account"

    .prologue
    .line 372
    const-string v0, "/label/"

    invoke-static {p0, v0}, Lcom/google/android/gm/provider/Gmail;->getCachedUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method static getLabelsUri(Ljava/lang/String;)Landroid/net/Uri;
    .locals 1
    .parameter "account"

    .prologue
    .line 365
    const-string v0, "/labels/"

    invoke-static {p0, v0}, Lcom/google/android/gm/provider/Gmail;->getCachedUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static getMessageByIdUri(Ljava/lang/String;J)Landroid/net/Uri;
    .locals 2
    .parameter "account"
    .parameter "localMessageId"

    .prologue
    .line 397
    invoke-static {p0}, Lcom/google/android/gm/provider/Gmail;->getMessagesUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method static getMessageLabelUri(Ljava/lang/String;JLjava/lang/String;)Landroid/net/Uri;
    .locals 2
    .parameter "account"
    .parameter "localMessageId"
    .parameter "canonicalName"

    .prologue
    .line 387
    invoke-static {p0}, Lcom/google/android/gm/provider/Gmail;->getMessagesUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "labels"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-static {p3}, Lcom/google/android/gm/provider/Gmail;->urlEncodeLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method static getMessageLabelsUri(Ljava/lang/String;J)Landroid/net/Uri;
    .locals 2
    .parameter "account"
    .parameter "localMessageId"

    .prologue
    .line 405
    invoke-static {p0}, Lcom/google/android/gm/provider/Gmail;->getMessagesUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "labels"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method private static getMessagesForConversationUri(Ljava/lang/String;J)Landroid/net/Uri;
    .locals 2
    .parameter "account"
    .parameter "conversationId"

    .prologue
    .line 338
    invoke-static {p0}, Lcom/google/android/gm/provider/Gmail;->getConversationsUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "messages"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method private static getMessagesUri(Ljava/lang/String;)Landroid/net/Uri;
    .locals 1
    .parameter "account"

    .prologue
    .line 379
    const-string v0, "/messages/"

    invoke-static {p0, v0}, Lcom/google/android/gm/provider/Gmail;->getCachedUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static getNameFromAddressString(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "addressString"

    .prologue
    const/4 v5, 0x1

    .line 463
    sget-object v3, Lcom/google/android/gm/provider/Gmail;->NAME_ADDRESS_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v3, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 464
    .local v1, namedAddressMatch:Ljava/util/regex/Matcher;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 465
    invoke-virtual {v1, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    .line 466
    .local v0, name:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    move-object v3, v0

    .line 476
    .end local v0           #name:Ljava/lang/String;
    :goto_0
    return-object v3

    .line 467
    .restart local v0       #name:Ljava/lang/String;
    :cond_0
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->end()I

    move-result v3

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 471
    .end local v0           #name:Ljava/lang/String;
    :cond_1
    sget-object v3, Lcom/google/android/gm/provider/Gmail;->UNNAMED_ADDRESS_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v3, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 472
    .local v2, unnamedAddressMatch:Ljava/util/regex/Matcher;
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 473
    invoke-virtual {v2, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_2
    move-object v3, p0

    .line 476
    goto :goto_0
.end method

.method private getRawCursorForConversationId(Ljava/lang/String;J)Landroid/database/Cursor;
    .locals 6
    .parameter "account"
    .parameter "conversationId"

    .prologue
    const/4 v3, 0x0

    .line 1025
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1026
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "account is empty"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1028
    :cond_0
    invoke-static {p1, p2, p3}, Lcom/google/android/gm/provider/Gmail;->getMessagesForConversationUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v1

    .line 1029
    .local v1, uri:Landroid/net/Uri;
    iget-object v0, p0, Lcom/google/android/gm/provider/Gmail;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v2, Lcom/google/android/gm/provider/Gmail;->MESSAGE_PROJECTION:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method private static getSelectionArguments(Lcom/google/android/gm/provider/Gmail$BecomeActiveNetworkCursor;)[Ljava/lang/String;
    .locals 3
    .parameter "becomeActiveNetworkCursor"

    .prologue
    .line 871
    sget-object v0, Lcom/google/android/gm/provider/Gmail$BecomeActiveNetworkCursor;->NO:Lcom/google/android/gm/provider/Gmail$BecomeActiveNetworkCursor;

    if-ne v0, p0, :cond_0

    .line 872
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "SELECTION_ARGUMENT_DO_NOT_BECOME_ACTIVE_NETWORK_CURSOR"

    aput-object v2, v0, v1

    .line 875
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static declared-synchronized getSenderSnippet(Ljava/lang/String;Landroid/text/SpannableStringBuilder;Landroid/text/SpannableStringBuilder;ILandroid/text/style/CharacterStyle;Landroid/text/style/CharacterStyle;Landroid/text/style/CharacterStyle;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)V
    .locals 19
    .parameter "instructions"
    .parameter "senderBuilder"
    .parameter "statusBuilder"
    .parameter "maxChars"
    .parameter "unreadStyle"
    .parameter "readStyle"
    .parameter "draftsStyle"
    .parameter "meString"
    .parameter "draftString"
    .parameter "draftPluralString"
    .parameter "sendingString"
    .parameter "sendFailedString"
    .parameter "forceAllUnread"
    .parameter "forceAllRead"

    .prologue
    .line 1363
    const-class v16, Lcom/google/android/gm/provider/Gmail;

    monitor-enter v16

    :try_start_0
    sget-boolean v5, Lcom/google/android/gm/provider/Gmail;->$assertionsDisabled:Z

    if-nez v5, :cond_0

    if-eqz p12, :cond_0

    if-eqz p13, :cond_0

    new-instance p0, Ljava/lang/AssertionError;

    .end local p0
    invoke-direct/range {p0 .. p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local p4
    .end local p6
    .end local p8
    .end local p9
    .end local p10
    .end local p11
    .end local p12
    .end local p13
    :catchall_0
    move-exception p0

    monitor-exit v16

    throw p0

    .line 1364
    .restart local p0
    .restart local p4
    .restart local p6
    .restart local p8
    .restart local p9
    .restart local p10
    .restart local p11
    .restart local p12
    .restart local p13
    :cond_0
    if-nez p12, :cond_1

    if-eqz p13, :cond_2

    :cond_1
    const/16 p13, 0x1

    move/from16 v15, p13

    .line 1365
    .end local p13
    .local v15, unreadStatusIsForced:Z
    :goto_0
    move/from16 p13, p12

    .line 1369
    .local p13, forcedUnreadStatus:Z
    :try_start_1
    sget-object v12, Lcom/google/android/gm/provider/Gmail;->sPriorityToLength:Ljava/util/Map;

    .line 1370
    .local v12, priorityToLength:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    invoke-interface {v12}, Ljava/util/Map;->clear()V

    .line 1372
    const/high16 v6, -0x8000

    .line 1373
    .local v6, maxFoundPriority:I
    const/4 v10, 0x0

    .line 1374
    .local v10, numMessages:I
    const/4 v7, 0x0

    .line 1375
    .local v7, numDrafts:I
    const-string p12, ""

    .line 1376
    .local p12, draftsFragment:Ljava/lang/CharSequence;
    const-string v13, ""

    .line 1377
    .local v13, sendingFragment:Ljava/lang/CharSequence;
    const-string v11, ""

    .line 1379
    .local v11, sendFailedFragment:Ljava/lang/CharSequence;
    sget-object v5, Lcom/google/android/gm/provider/Gmail;->sSenderListSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

    move-object v0, v5

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/text/TextUtils$SimpleStringSplitter;->setString(Ljava/lang/String;)V

    .line 1380
    const/4 v8, 0x0

    .line 1381
    .local v8, numFragments:I
    sget-object v5, Lcom/google/android/gm/provider/Gmail;->sSenderFragments:[Ljava/lang/String;

    .line 1382
    .local v5, fragments:[Ljava/lang/String;
    move-object v0, v5

    array-length v0, v0

    move/from16 p0, v0

    .local p0, currentSize:I
    move v9, v8

    .line 1383
    .end local v8           #numFragments:I
    .local v9, numFragments:I
    :goto_1
    sget-object v8, Lcom/google/android/gm/provider/Gmail;->sSenderListSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

    invoke-virtual {v8}, Landroid/text/TextUtils$SimpleStringSplitter;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 1384
    add-int/lit8 v8, v9, 0x1

    .end local v9           #numFragments:I
    .restart local v8       #numFragments:I
    sget-object v14, Lcom/google/android/gm/provider/Gmail;->sSenderListSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

    invoke-virtual {v14}, Landroid/text/TextUtils$SimpleStringSplitter;->next()Ljava/lang/String;

    move-result-object v14

    aput-object v14, v5, v9

    .line 1385
    move v0, v8

    move/from16 v1, p0

    if-ne v0, v1, :cond_31

    .line 1386
    mul-int/lit8 v9, p0, 0x2

    new-array v9, v9, [Ljava/lang/String;

    sput-object v9, Lcom/google/android/gm/provider/Gmail;->sSenderFragments:[Ljava/lang/String;

    .line 1387
    const/4 v9, 0x0

    sget-object v14, Lcom/google/android/gm/provider/Gmail;->sSenderFragments:[Ljava/lang/String;

    const/16 v17, 0x0

    move-object v0, v5

    move v1, v9

    move-object v2, v14

    move/from16 v3, v17

    move/from16 v4, p0

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1388
    mul-int/lit8 p0, p0, 0x2

    .line 1389
    sget-object v5, Lcom/google/android/gm/provider/Gmail;->sSenderFragments:[Ljava/lang/String;

    move v9, v8

    .end local v8           #numFragments:I
    .restart local v9       #numFragments:I
    goto :goto_1

    .line 1364
    .end local v5           #fragments:[Ljava/lang/String;
    .end local v6           #maxFoundPriority:I
    .end local v7           #numDrafts:I
    .end local v9           #numFragments:I
    .end local v10           #numMessages:I
    .end local v11           #sendFailedFragment:Ljava/lang/CharSequence;
    .end local v12           #priorityToLength:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    .end local v13           #sendingFragment:Ljava/lang/CharSequence;
    .end local v15           #unreadStatusIsForced:Z
    .local p0, instructions:Ljava/lang/String;
    .local p12, forceAllUnread:Z
    .local p13, forceAllRead:Z
    :cond_2
    const/16 p13, 0x0

    move/from16 v15, p13

    goto :goto_0

    .line 1393
    .restart local v5       #fragments:[Ljava/lang/String;
    .restart local v6       #maxFoundPriority:I
    .restart local v7       #numDrafts:I
    .restart local v9       #numFragments:I
    .restart local v10       #numMessages:I
    .restart local v11       #sendFailedFragment:Ljava/lang/CharSequence;
    .restart local v12       #priorityToLength:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    .restart local v13       #sendingFragment:Ljava/lang/CharSequence;
    .restart local v15       #unreadStatusIsForced:Z
    .local p0, currentSize:I
    .local p12, draftsFragment:Ljava/lang/CharSequence;
    .local p13, forcedUnreadStatus:Z
    :cond_3
    const/16 p0, 0x0

    .local p0, i:I
    move-object v14, v13

    .end local v13           #sendingFragment:Ljava/lang/CharSequence;
    .local v14, sendingFragment:Ljava/lang/CharSequence;
    move v8, v7

    .end local v7           #numDrafts:I
    .local v8, numDrafts:I
    move-object v13, v11

    .end local v11           #sendFailedFragment:Ljava/lang/CharSequence;
    .local v13, sendFailedFragment:Ljava/lang/CharSequence;
    move v7, v6

    .end local v6           #maxFoundPriority:I
    .local v7, maxFoundPriority:I
    move/from16 v18, p0

    .end local p0           #i:I
    .local v18, i:I
    move-object/from16 p0, p12

    .local p0, draftsFragment:Ljava/lang/Object;
    move/from16 p12, v18

    .end local v18           #i:I
    .end local p0           #draftsFragment:Ljava/lang/Object;
    .local p12, i:I
    :goto_2
    move/from16 v0, p12

    move v1, v9

    if-ge v0, v1, :cond_e

    .line 1394
    add-int/lit8 v6, p12, 0x1

    .end local p12           #i:I
    .local v6, i:I
    aget-object p12, v5, p12

    .line 1395
    .local p12, fragment0:Ljava/lang/String;
    const-string v11, ""

    move-object v0, v11

    move-object/from16 v1, p12

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    move/from16 p12, v6

    .end local v6           #i:I
    .local p12, i:I
    move-object v11, v14

    .end local v14           #sendingFragment:Ljava/lang/CharSequence;
    .local v11, sendingFragment:Ljava/lang/CharSequence;
    move v6, v7

    .end local v7           #maxFoundPriority:I
    .local v6, maxFoundPriority:I
    move v7, v8

    .end local v8           #numDrafts:I
    .local v7, numDrafts:I
    move v8, v10

    .end local v10           #numMessages:I
    .local v8, numMessages:I
    move-object v10, v13

    .end local v13           #sendFailedFragment:Ljava/lang/CharSequence;
    .local v10, sendFailedFragment:Ljava/lang/CharSequence;
    :goto_3
    move-object v13, v10

    .end local v10           #sendFailedFragment:Ljava/lang/CharSequence;
    .restart local v13       #sendFailedFragment:Ljava/lang/CharSequence;
    move-object v14, v11

    .end local v11           #sendingFragment:Ljava/lang/CharSequence;
    .restart local v14       #sendingFragment:Ljava/lang/CharSequence;
    move v10, v8

    .end local v8           #numMessages:I
    .local v10, numMessages:I
    move v8, v7

    .end local v7           #numDrafts:I
    .local v8, numDrafts:I
    move v7, v6

    .line 1421
    .end local v6           #maxFoundPriority:I
    .local v7, maxFoundPriority:I
    goto :goto_2

    .line 1397
    .local v6, i:I
    .local p12, fragment0:Ljava/lang/String;
    :cond_4
    const-string v11, "e"

    move-object v0, v11

    move-object/from16 v1, p12

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_5

    move/from16 p12, v6

    .end local v6           #i:I
    .local p12, i:I
    move-object v11, v14

    .end local v14           #sendingFragment:Ljava/lang/CharSequence;
    .restart local v11       #sendingFragment:Ljava/lang/CharSequence;
    move v6, v7

    .end local v7           #maxFoundPriority:I
    .local v6, maxFoundPriority:I
    move v7, v8

    .end local v8           #numDrafts:I
    .local v7, numDrafts:I
    move v8, v10

    .end local v10           #numMessages:I
    .local v8, numMessages:I
    move-object v10, v13

    .end local v13           #sendFailedFragment:Ljava/lang/CharSequence;
    .local v10, sendFailedFragment:Ljava/lang/CharSequence;
    goto :goto_3

    .line 1399
    .end local v11           #sendingFragment:Ljava/lang/CharSequence;
    .local v6, i:I
    .local v7, maxFoundPriority:I
    .local v8, numDrafts:I
    .local v10, numMessages:I
    .restart local v13       #sendFailedFragment:Ljava/lang/CharSequence;
    .restart local v14       #sendingFragment:Ljava/lang/CharSequence;
    .local p12, fragment0:Ljava/lang/String;
    :cond_5
    const-string v11, "n"

    move-object v0, v11

    move-object/from16 v1, p12

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 1400
    add-int/lit8 p12, v6, 0x1

    .end local v6           #i:I
    .local p12, i:I
    aget-object v6, v5, v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .end local v10           #numMessages:I
    .local v6, numMessages:I
    move-object v10, v13

    .end local v13           #sendFailedFragment:Ljava/lang/CharSequence;
    .local v10, sendFailedFragment:Ljava/lang/CharSequence;
    move-object v11, v14

    .end local v14           #sendingFragment:Ljava/lang/CharSequence;
    .restart local v11       #sendingFragment:Ljava/lang/CharSequence;
    move/from16 v18, v8

    .end local v8           #numDrafts:I
    .local v18, numDrafts:I
    move v8, v6

    .end local v6           #numMessages:I
    .local v8, numMessages:I
    move v6, v7

    .end local v7           #maxFoundPriority:I
    .local v6, maxFoundPriority:I
    move/from16 v7, v18

    .end local v18           #numDrafts:I
    .local v7, numDrafts:I
    goto :goto_3

    .line 1401
    .end local v11           #sendingFragment:Ljava/lang/CharSequence;
    .local v6, i:I
    .local v7, maxFoundPriority:I
    .local v8, numDrafts:I
    .local v10, numMessages:I
    .restart local v13       #sendFailedFragment:Ljava/lang/CharSequence;
    .restart local v14       #sendingFragment:Ljava/lang/CharSequence;
    .local p12, fragment0:Ljava/lang/String;
    :cond_6
    const-string v11, "d"

    move-object v0, v11

    move-object/from16 v1, p12

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_8

    .line 1402
    add-int/lit8 p12, v6, 0x1

    .end local v6           #i:I
    .local p12, i:I
    aget-object p0, v5, v6

    .line 1403
    .local p0, numDraftsString:Ljava/lang/String;
    invoke-static/range {p0 .. p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 1404
    .end local v8           #numDrafts:I
    .local v6, numDrafts:I
    const/4 v8, 0x1

    if-ne v6, v8, :cond_7

    move-object/from16 p0, p8

    .local p0, draftsFragment:Ljava/lang/CharSequence;
    :goto_4
    move-object v11, v14

    .end local v14           #sendingFragment:Ljava/lang/CharSequence;
    .restart local v11       #sendingFragment:Ljava/lang/CharSequence;
    move v8, v10

    .end local v10           #numMessages:I
    .local v8, numMessages:I
    move-object v10, v13

    .end local v13           #sendFailedFragment:Ljava/lang/CharSequence;
    .local v10, sendFailedFragment:Ljava/lang/CharSequence;
    move/from16 v18, v6

    .end local v6           #numDrafts:I
    .restart local v18       #numDrafts:I
    move v6, v7

    .end local v7           #maxFoundPriority:I
    .local v6, maxFoundPriority:I
    move/from16 v7, v18

    .line 1406
    .end local v18           #numDrafts:I
    .local v7, numDrafts:I
    goto :goto_3

    .line 1404
    .end local v8           #numMessages:I
    .end local v11           #sendingFragment:Ljava/lang/CharSequence;
    .local v6, numDrafts:I
    .local v7, maxFoundPriority:I
    .local v10, numMessages:I
    .restart local v13       #sendFailedFragment:Ljava/lang/CharSequence;
    .restart local v14       #sendingFragment:Ljava/lang/CharSequence;
    .local p0, numDraftsString:Ljava/lang/String;
    :cond_7
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    move-object v0, v8

    move-object/from16 v1, p9

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v11, " ("

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object v0, v8

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    .end local p0           #numDraftsString:Ljava/lang/String;
    const-string v8, ")"

    move-object/from16 v0, p0

    move-object v1, v8

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual/range {p0 .. p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_4

    .line 1406
    .local v6, i:I
    .local v8, numDrafts:I
    .local p12, fragment0:Ljava/lang/String;
    :cond_8
    const-string v11, "l"

    move-object v0, v11

    move-object/from16 v1, p12

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_a

    .line 1407
    add-int/lit8 p0, v6, 0x1

    .end local v6           #i:I
    .local p0, i:I
    aget-object p0, v5, v6

    .end local p0           #i:I
    invoke-static/range {p0 .. p0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object p0

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1546
    .end local v7           #maxFoundPriority:I
    .end local v8           #numDrafts:I
    .end local v10           #numMessages:I
    .end local v12           #priorityToLength:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    .end local v13           #sendFailedFragment:Ljava/lang/CharSequence;
    .end local p4
    .end local p6
    .end local p8
    .end local p9
    .end local p10
    .end local p11
    .end local p12           #fragment0:Ljava/lang/String;
    :cond_9
    :goto_5
    monitor-exit v16

    return-void

    .line 1409
    .restart local v6       #i:I
    .restart local v7       #maxFoundPriority:I
    .restart local v8       #numDrafts:I
    .restart local v10       #numMessages:I
    .restart local v12       #priorityToLength:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    .restart local v13       #sendFailedFragment:Ljava/lang/CharSequence;
    .restart local p4
    .restart local p6
    .restart local p8
    .restart local p9
    .restart local p10
    .restart local p11
    .restart local p12       #fragment0:Ljava/lang/String;
    :cond_a
    :try_start_2
    const-string v11, "s"

    move-object v0, v11

    move-object/from16 v1, p12

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_b

    .line 1410
    move-object/from16 p12, p10

    .end local v14           #sendingFragment:Ljava/lang/CharSequence;
    .local p12, sendingFragment:Ljava/lang/CharSequence;
    move-object/from16 v11, p12

    .end local p12           #sendingFragment:Ljava/lang/CharSequence;
    .restart local v11       #sendingFragment:Ljava/lang/CharSequence;
    move/from16 p12, v6

    .end local v6           #i:I
    .local p12, i:I
    move v6, v7

    .end local v7           #maxFoundPriority:I
    .local v6, maxFoundPriority:I
    move v7, v8

    .end local v8           #numDrafts:I
    .local v7, numDrafts:I
    move v8, v10

    .end local v10           #numMessages:I
    .local v8, numMessages:I
    move-object v10, v13

    .end local v13           #sendFailedFragment:Ljava/lang/CharSequence;
    .local v10, sendFailedFragment:Ljava/lang/CharSequence;
    goto/16 :goto_3

    .line 1411
    .end local v11           #sendingFragment:Ljava/lang/CharSequence;
    .local v6, i:I
    .local v7, maxFoundPriority:I
    .local v8, numDrafts:I
    .local v10, numMessages:I
    .restart local v13       #sendFailedFragment:Ljava/lang/CharSequence;
    .restart local v14       #sendingFragment:Ljava/lang/CharSequence;
    .local p12, fragment0:Ljava/lang/String;
    :cond_b
    const-string v11, "f"

    move-object v0, v11

    move-object/from16 v1, p12

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p12

    .end local p12           #fragment0:Ljava/lang/String;
    if-eqz p12, :cond_c

    .line 1412
    move-object/from16 p12, p11

    .end local v13           #sendFailedFragment:Ljava/lang/CharSequence;
    .local p12, sendFailedFragment:Ljava/lang/CharSequence;
    move-object v11, v14

    .end local v14           #sendingFragment:Ljava/lang/CharSequence;
    .restart local v11       #sendingFragment:Ljava/lang/CharSequence;
    move-object/from16 v18, p12

    .end local p12           #sendFailedFragment:Ljava/lang/CharSequence;
    .local v18, sendFailedFragment:Ljava/lang/CharSequence;
    move/from16 p12, v6

    .end local v6           #i:I
    .local p12, i:I
    move v6, v7

    .end local v7           #maxFoundPriority:I
    .local v6, maxFoundPriority:I
    move v7, v8

    .end local v8           #numDrafts:I
    .local v7, numDrafts:I
    move v8, v10

    .end local v10           #numMessages:I
    .local v8, numMessages:I
    move-object/from16 v10, v18

    .end local v18           #sendFailedFragment:Ljava/lang/CharSequence;
    .local v10, sendFailedFragment:Ljava/lang/CharSequence;
    goto/16 :goto_3

    .line 1414
    .end local v11           #sendingFragment:Ljava/lang/CharSequence;
    .end local p12           #i:I
    .local v6, i:I
    .local v7, maxFoundPriority:I
    .local v8, numDrafts:I
    .local v10, numMessages:I
    .restart local v13       #sendFailedFragment:Ljava/lang/CharSequence;
    .restart local v14       #sendingFragment:Ljava/lang/CharSequence;
    :cond_c
    add-int/lit8 p12, v6, 0x1

    .end local v6           #i:I
    .restart local p12       #i:I
    aget-object v11, v5, v6

    .line 1415
    .local v11, priorityString:Ljava/lang/String;
    add-int/lit8 v6, p12, 0x1

    .end local p12           #i:I
    .restart local v6       #i:I
    aget-object p12, v5, p12

    .line 1416
    .local p12, nameString:Ljava/lang/CharSequence;
    invoke-interface/range {p12 .. p12}, Ljava/lang/CharSequence;->length()I

    move-result v17

    if-nez v17, :cond_d

    move-object/from16 p12, p7

    .line 1417
    :cond_d
    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    .line 1418
    .local v11, priority:I
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    invoke-interface/range {p12 .. p12}, Ljava/lang/CharSequence;->length()I

    move-result p12

    .end local p12           #nameString:Ljava/lang/CharSequence;
    invoke-static/range {p12 .. p12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p12

    move-object v0, v12

    move-object/from16 v1, v17

    move-object/from16 v2, p12

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1419
    invoke-static {v7, v11}, Ljava/lang/Math;->max(II)I

    move-result p12

    .end local v7           #maxFoundPriority:I
    .local p12, maxFoundPriority:I
    move-object v11, v14

    .end local v14           #sendingFragment:Ljava/lang/CharSequence;
    .local v11, sendingFragment:Ljava/lang/CharSequence;
    move v7, v8

    .end local v8           #numDrafts:I
    .local v7, numDrafts:I
    move v8, v10

    .end local v10           #numMessages:I
    .local v8, numMessages:I
    move-object v10, v13

    .end local v13           #sendFailedFragment:Ljava/lang/CharSequence;
    .local v10, sendFailedFragment:Ljava/lang/CharSequence;
    move/from16 v18, v6

    .end local v6           #i:I
    .local v18, i:I
    move/from16 v6, p12

    .end local p12           #maxFoundPriority:I
    .local v6, maxFoundPriority:I
    move/from16 p12, v18

    .end local v18           #i:I
    .local p12, i:I
    goto/16 :goto_3

    .line 1422
    .end local v6           #maxFoundPriority:I
    .end local v11           #sendingFragment:Ljava/lang/CharSequence;
    .local v7, maxFoundPriority:I
    .local v8, numDrafts:I
    .local v10, numMessages:I
    .restart local v13       #sendFailedFragment:Ljava/lang/CharSequence;
    .restart local v14       #sendingFragment:Ljava/lang/CharSequence;
    :cond_e
    if-eqz v10, :cond_1a

    new-instance p8, Ljava/lang/StringBuilder;

    .end local p8
    invoke-direct/range {p8 .. p8}, Ljava/lang/StringBuilder;-><init>()V

    const-string p9, " \u00a0"

    .end local p9
    invoke-virtual/range {p8 .. p9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p8

    add-int p9, v10, v8

    invoke-static/range {p9 .. p9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p9

    invoke-virtual/range {p8 .. p9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p8

    invoke-virtual/range {p8 .. p8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p8

    move-object/from16 v8, p8

    .line 1426
    .local v8, numMessagesFragment:Ljava/lang/String;
    :goto_6
    const/16 p8, 0x0

    .line 1427
    .local p8, fixedFragment:Landroid/text/SpannableStringBuilder;
    const/16 p9, 0x0

    .line 1428
    .local p9, fixedFragmentLength:I
    invoke-interface/range {p0 .. p0}, Ljava/lang/CharSequence;->length()I

    move-result p10

    .end local p10
    if-eqz p10, :cond_10

    .line 1429
    if-nez p8, :cond_f

    .line 1430
    new-instance p8, Landroid/text/SpannableStringBuilder;

    .end local p8           #fixedFragment:Landroid/text/SpannableStringBuilder;
    invoke-direct/range {p8 .. p8}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 1432
    .restart local p8       #fixedFragment:Landroid/text/SpannableStringBuilder;
    :cond_f
    move-object/from16 v0, p8

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1433
    if-eqz p6, :cond_10

    .line 1434
    invoke-static/range {p6 .. p6}, Landroid/text/style/CharacterStyle;->wrap(Landroid/text/style/CharacterStyle;)Landroid/text/style/CharacterStyle;

    move-result-object p0

    const/16 p6, 0x0

    invoke-virtual/range {p8 .. p8}, Landroid/text/SpannableStringBuilder;->length()I

    .end local p6
    move-result p10

    const/16 p11, 0x21

    move-object/from16 v0, p8

    move-object/from16 v1, p0

    move/from16 v2, p6

    move/from16 v3, p10

    move/from16 v4, p11

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .end local p11
    :cond_10
    move-object/from16 p0, p8

    .line 1439
    .end local p8           #fixedFragment:Landroid/text/SpannableStringBuilder;
    .local p0, fixedFragment:Landroid/text/SpannableStringBuilder;
    invoke-interface {v14}, Ljava/lang/CharSequence;->length()I

    move-result p6

    if-eqz p6, :cond_13

    .line 1440
    if-nez p0, :cond_11

    .line 1441
    new-instance p0, Landroid/text/SpannableStringBuilder;

    .end local p0           #fixedFragment:Landroid/text/SpannableStringBuilder;
    invoke-direct/range {p0 .. p0}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 1443
    .restart local p0       #fixedFragment:Landroid/text/SpannableStringBuilder;
    :cond_11
    invoke-virtual/range {p0 .. p0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result p6

    if-eqz p6, :cond_12

    const-string p6, ", "

    move-object/from16 v0, p0

    move-object/from16 v1, p6

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1444
    :cond_12
    move-object/from16 v0, p0

    move-object v1, v14

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1446
    :cond_13
    invoke-interface {v13}, Ljava/lang/CharSequence;->length()I

    move-result p6

    if-eqz p6, :cond_16

    .line 1447
    if-nez p0, :cond_14

    .line 1448
    new-instance p0, Landroid/text/SpannableStringBuilder;

    .end local p0           #fixedFragment:Landroid/text/SpannableStringBuilder;
    invoke-direct/range {p0 .. p0}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 1450
    .restart local p0       #fixedFragment:Landroid/text/SpannableStringBuilder;
    :cond_14
    invoke-virtual/range {p0 .. p0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result p6

    if-eqz p6, :cond_15

    const-string p6, ", "

    move-object/from16 v0, p0

    move-object/from16 v1, p6

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1451
    :cond_15
    move-object/from16 v0, p0

    move-object v1, v13

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1454
    :cond_16
    if-eqz p0, :cond_30

    .line 1455
    invoke-virtual/range {p0 .. p0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result p6

    .line 1457
    .end local p9           #fixedFragmentLength:I
    .local p6, fixedFragmentLength:I
    :goto_7
    sub-int p3, p3, p6

    .line 1459
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result p8

    if-nez p8, :cond_17

    const/high16 p8, -0x8000

    move v0, v7

    move/from16 v1, p8

    if-eq v0, v1, :cond_1b

    :cond_17
    const/16 p8, 0x1

    .line 1461
    .local p8, normalMessagesExist:Z
    :goto_8
    const/16 p8, -0x1

    .line 1462
    .local p8, maxPriorityToInclude:I
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result p9

    .line 1463
    .local p9, numCharsUsed:I
    const/16 p10, 0x0

    .local p10, numSendersUsed:I
    move/from16 p12, p8

    .line 1464
    .end local p8           #maxPriorityToInclude:I
    .local p12, maxPriorityToInclude:I
    :goto_9
    move/from16 v0, p12

    move v1, v7

    if-ge v0, v1, :cond_19

    .line 1465
    add-int/lit8 p8, p12, 0x1

    invoke-static/range {p8 .. p8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p8

    move-object v0, v12

    move-object/from16 v1, p8

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p8

    if-eqz p8, :cond_1d

    .line 1466
    add-int/lit8 p8, p12, 0x1

    invoke-static/range {p8 .. p8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p8

    move-object v0, v12

    move-object/from16 v1, p8

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p8

    check-cast p8, Ljava/lang/Integer;

    invoke-virtual/range {p8 .. p8}, Ljava/lang/Integer;->intValue()I

    move-result p8

    add-int p8, p8, p9

    .line 1467
    .local p8, length:I
    if-lez p9, :cond_18

    add-int/lit8 p8, p8, 0x2

    .line 1470
    :cond_18
    move/from16 v0, p8

    move/from16 v1, p3

    if-le v0, v1, :cond_1c

    const/16 p11, 0x2

    move/from16 v0, p10

    move/from16 v1, p11

    if-lt v0, v1, :cond_1c

    .line 1479
    .end local p8           #length:I
    :cond_19
    const/16 p8, 0x0

    .line 1480
    .local p8, numCharsToRemovePerWord:I
    move/from16 v0, p9

    move/from16 v1, p3

    if-le v0, v1, :cond_2f

    .line 1481
    sub-int p8, p9, p3

    div-int p8, p8, p10

    move/from16 v6, p8

    .line 1484
    .end local p8           #numCharsToRemovePerWord:I
    .local v6, numCharsToRemovePerWord:I
    :goto_a
    const/16 p9, 0x0

    .line 1485
    .local p9, lastFragment:Ljava/lang/String;
    const/16 p10, 0x0

    .line 1486
    .local p10, lastStyle:Landroid/text/style/CharacterStyle;
    const/16 p8, 0x0

    .local p8, i:I
    move-object/from16 p11, p10

    .end local p10           #lastStyle:Landroid/text/style/CharacterStyle;
    .local p11, lastStyle:Landroid/text/style/CharacterStyle;
    move-object/from16 p10, p9

    .end local v7           #maxFoundPriority:I
    .end local v10           #numMessages:I
    .end local v12           #priorityToLength:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    .end local v13           #sendFailedFragment:Ljava/lang/CharSequence;
    .end local p9           #lastFragment:Ljava/lang/String;
    .local p10, lastFragment:Ljava/lang/String;
    :goto_b
    move/from16 v0, p8

    move v1, v9

    if-ge v0, v1, :cond_2d

    .line 1487
    add-int/lit8 p9, p8, 0x1

    .end local p8           #i:I
    .local p9, i:I
    aget-object p8, v5, p8

    .line 1488
    .local p8, fragment0:Ljava/lang/String;
    const-string v7, ""

    move-object v0, v7

    move-object/from16 v1, p8

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1e

    move/from16 p8, p9

    .end local p9           #i:I
    .local p8, i:I
    move-object/from16 p9, p10

    .end local p10           #lastFragment:Ljava/lang/String;
    .local p9, lastFragment:Ljava/lang/String;
    move-object/from16 p10, p11

    .end local p11           #lastStyle:Landroid/text/style/CharacterStyle;
    .local p10, lastStyle:Landroid/text/style/CharacterStyle;
    :goto_c
    move-object/from16 p11, p10

    .end local p10           #lastStyle:Landroid/text/style/CharacterStyle;
    .restart local p11       #lastStyle:Landroid/text/style/CharacterStyle;
    move-object/from16 p10, p9

    .line 1538
    .end local p9           #lastFragment:Ljava/lang/String;
    .local p10, lastFragment:Ljava/lang/String;
    goto :goto_b

    .line 1422
    .end local v6           #numCharsToRemovePerWord:I
    .end local p0           #fixedFragment:Landroid/text/SpannableStringBuilder;
    .restart local v7       #maxFoundPriority:I
    .local v8, numDrafts:I
    .restart local v10       #numMessages:I
    .restart local v12       #priorityToLength:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    .restart local v13       #sendFailedFragment:Ljava/lang/CharSequence;
    .local p6, draftsStyle:Landroid/text/style/CharacterStyle;
    .local p8, draftString:Ljava/lang/CharSequence;
    .local p9, draftPluralString:Ljava/lang/CharSequence;
    .local p10, sendingString:Ljava/lang/CharSequence;
    .local p11, sendFailedString:Ljava/lang/CharSequence;
    .local p12, i:I
    :cond_1a
    const-string p8, ""

    move-object/from16 v8, p8

    goto/16 :goto_6

    .line 1459
    .end local p8           #draftString:Ljava/lang/CharSequence;
    .end local p9           #draftPluralString:Ljava/lang/CharSequence;
    .end local p10           #sendingString:Ljava/lang/CharSequence;
    .end local p11           #sendFailedString:Ljava/lang/CharSequence;
    .local v8, numMessagesFragment:Ljava/lang/String;
    .restart local p0       #fixedFragment:Landroid/text/SpannableStringBuilder;
    .local p6, fixedFragmentLength:I
    :cond_1b
    const/16 p8, 0x0

    goto/16 :goto_8

    .line 1473
    .local p8, length:I
    .local p9, numCharsUsed:I
    .local p10, numSendersUsed:I
    .local p12, maxPriorityToInclude:I
    :cond_1c
    move/from16 p8, p8

    .line 1474
    .end local p9           #numCharsUsed:I
    .local p8, numCharsUsed:I
    add-int/lit8 p9, p10, 0x1

    .end local p10           #numSendersUsed:I
    .local p9, numSendersUsed:I
    move/from16 p10, p9

    .end local p9           #numSendersUsed:I
    .restart local p10       #numSendersUsed:I
    move/from16 p9, p8

    .line 1476
    .end local p8           #numCharsUsed:I
    .local p9, numCharsUsed:I
    :cond_1d
    add-int/lit8 p8, p12, 0x1

    .end local p12           #maxPriorityToInclude:I
    .local p8, maxPriorityToInclude:I
    move/from16 p12, p8

    .end local p8           #maxPriorityToInclude:I
    .restart local p12       #maxPriorityToInclude:I
    goto/16 :goto_9

    .line 1490
    .end local v7           #maxFoundPriority:I
    .end local v10           #numMessages:I
    .end local v12           #priorityToLength:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    .end local v13           #sendFailedFragment:Ljava/lang/CharSequence;
    .restart local v6       #numCharsToRemovePerWord:I
    .local p8, fragment0:Ljava/lang/String;
    .local p9, i:I
    .local p10, lastFragment:Ljava/lang/String;
    .local p11, lastStyle:Landroid/text/style/CharacterStyle;
    :cond_1e
    const-string v7, "e"

    move-object v0, v7

    move-object/from16 v1, p8

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_20

    .line 1491
    if-eqz p10, :cond_1f

    .line 1492
    const/16 p8, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p10

    move-object/from16 v2, p11

    move/from16 v3, p8

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/gm/provider/Gmail;->addStyledFragment(Landroid/text/SpannableStringBuilder;Ljava/lang/String;Landroid/text/style/CharacterStyle;Z)V

    .line 1493
    .end local p8           #fragment0:Ljava/lang/String;
    const-string p8, " "

    move-object/from16 v0, p1

    move-object/from16 v1, p8

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1494
    const-string p8, ".."

    const/16 p10, 0x1

    move-object/from16 v0, p1

    move-object/from16 v1, p8

    move-object/from16 v2, p11

    move/from16 v3, p10

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/gm/provider/Gmail;->addStyledFragment(Landroid/text/SpannableStringBuilder;Ljava/lang/String;Landroid/text/style/CharacterStyle;Z)V

    .line 1495
    .end local p10           #lastFragment:Ljava/lang/String;
    const-string p8, " "

    move-object/from16 v0, p1

    move-object/from16 v1, p8

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1497
    :cond_1f
    const/16 p8, 0x0

    .local p8, lastFragment:Ljava/lang/String;
    move-object/from16 p10, p11

    .end local p11           #lastStyle:Landroid/text/style/CharacterStyle;
    .local p10, lastStyle:Landroid/text/style/CharacterStyle;
    move/from16 v18, p9

    .end local p9           #i:I
    .restart local v18       #i:I
    move-object/from16 p9, p8

    .end local p8           #lastFragment:Ljava/lang/String;
    .local p9, lastFragment:Ljava/lang/String;
    move/from16 p8, v18

    .end local v18           #i:I
    .local p8, i:I
    goto :goto_c

    .line 1498
    .local p8, fragment0:Ljava/lang/String;
    .local p9, i:I
    .local p10, lastFragment:Ljava/lang/String;
    .restart local p11       #lastStyle:Landroid/text/style/CharacterStyle;
    :cond_20
    const-string v7, "n"

    move-object v0, v7

    move-object/from16 v1, p8

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_21

    .line 1499
    add-int/lit8 p8, p9, 0x1

    .end local p9           #i:I
    .local p8, i:I
    move-object/from16 p9, p10

    .end local p10           #lastFragment:Ljava/lang/String;
    .local p9, lastFragment:Ljava/lang/String;
    move-object/from16 p10, p11

    .end local p11           #lastStyle:Landroid/text/style/CharacterStyle;
    .local p10, lastStyle:Landroid/text/style/CharacterStyle;
    goto :goto_c

    .line 1500
    .local p8, fragment0:Ljava/lang/String;
    .local p9, i:I
    .local p10, lastFragment:Ljava/lang/String;
    .restart local p11       #lastStyle:Landroid/text/style/CharacterStyle;
    :cond_21
    const-string v7, "d"

    move-object v0, v7

    move-object/from16 v1, p8

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_22

    .line 1501
    add-int/lit8 p8, p9, 0x1

    .end local p9           #i:I
    .local p8, i:I
    move-object/from16 p9, p10

    .end local p10           #lastFragment:Ljava/lang/String;
    .local p9, lastFragment:Ljava/lang/String;
    move-object/from16 p10, p11

    .end local p11           #lastStyle:Landroid/text/style/CharacterStyle;
    .local p10, lastStyle:Landroid/text/style/CharacterStyle;
    goto/16 :goto_c

    .line 1502
    .local p8, fragment0:Ljava/lang/String;
    .local p9, i:I
    .local p10, lastFragment:Ljava/lang/String;
    .restart local p11       #lastStyle:Landroid/text/style/CharacterStyle;
    :cond_22
    const-string v7, "s"

    move-object v0, v7

    move-object/from16 v1, p8

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_23

    move/from16 p8, p9

    .end local p9           #i:I
    .local p8, i:I
    move-object/from16 p9, p10

    .end local p10           #lastFragment:Ljava/lang/String;
    .local p9, lastFragment:Ljava/lang/String;
    move-object/from16 p10, p11

    .end local p11           #lastStyle:Landroid/text/style/CharacterStyle;
    .local p10, lastStyle:Landroid/text/style/CharacterStyle;
    goto/16 :goto_c

    .line 1503
    .local p8, fragment0:Ljava/lang/String;
    .local p9, i:I
    .local p10, lastFragment:Ljava/lang/String;
    .restart local p11       #lastStyle:Landroid/text/style/CharacterStyle;
    :cond_23
    const-string v7, "f"

    move-object v0, v7

    move-object/from16 v1, p8

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_24

    move/from16 p8, p9

    .end local p9           #i:I
    .local p8, i:I
    move-object/from16 p9, p10

    .end local p10           #lastFragment:Ljava/lang/String;
    .local p9, lastFragment:Ljava/lang/String;
    move-object/from16 p10, p11

    .end local p11           #lastStyle:Landroid/text/style/CharacterStyle;
    .local p10, lastStyle:Landroid/text/style/CharacterStyle;
    goto/16 :goto_c

    .line 1505
    .local p8, fragment0:Ljava/lang/String;
    .local p9, i:I
    .local p10, lastFragment:Ljava/lang/String;
    .restart local p11       #lastStyle:Landroid/text/style/CharacterStyle;
    :cond_24
    move-object/from16 v10, p8

    .line 1506
    .local v10, unreadString:Ljava/lang/String;
    add-int/lit8 p8, p9, 0x1

    .end local p9           #i:I
    .local p8, i:I
    aget-object v7, v5, p9

    .line 1507
    .local v7, priorityString:Ljava/lang/String;
    add-int/lit8 p9, p8, 0x1

    .end local p8           #i:I
    .restart local p9       #i:I
    aget-object p8, v5, p8

    .line 1508
    .local p8, nameString:Ljava/lang/String;
    invoke-virtual/range {p8 .. p8}, Ljava/lang/String;->length()I

    move-result v11

    if-nez v11, :cond_25

    invoke-virtual/range {p7 .. p7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p8

    .line 1509
    :cond_25
    if-eqz v6, :cond_26

    .line 1510
    const/4 v11, 0x0

    invoke-virtual/range {p8 .. p8}, Ljava/lang/String;->length()I

    move-result v12

    sub-int/2addr v12, v6

    const/4 v13, 0x0

    invoke-static {v12, v13}, Ljava/lang/Math;->max(II)I

    move-result v12

    move-object/from16 v0, p8

    move v1, v11

    move v2, v12

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p8

    .line 1513
    :cond_26
    if-eqz v15, :cond_28

    move/from16 v10, p13

    .line 1515
    .local v10, unread:Z
    :goto_d
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 1516
    .local v7, priority:I
    move v0, v7

    move/from16 v1, p12

    if-gt v0, v1, :cond_2b

    .line 1517
    if-eqz p10, :cond_27

    move-object/from16 v0, p10

    move-object/from16 v1, p8

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    .end local v7           #priority:I
    if-nez v7, :cond_27

    .line 1518
    const-string v7, ","

    move-object/from16 v0, p10

    move-object v1, v7

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p10

    .end local p10           #lastFragment:Ljava/lang/String;
    const/4 v7, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p10

    move-object/from16 v2, p11

    move v3, v7

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/gm/provider/Gmail;->addStyledFragment(Landroid/text/SpannableStringBuilder;Ljava/lang/String;Landroid/text/style/CharacterStyle;Z)V

    .line 1520
    const-string p10, " "

    move-object/from16 v0, p1

    move-object/from16 v1, p10

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1522
    :cond_27
    move-object/from16 p8, p8

    .line 1523
    .local p8, lastFragment:Ljava/lang/String;
    if-eqz v10, :cond_2a

    move-object/from16 p10, p4

    .end local p11           #lastStyle:Landroid/text/style/CharacterStyle;
    .local p10, lastStyle:Landroid/text/style/CharacterStyle;
    :goto_e
    move/from16 v18, p9

    .end local p9           #i:I
    .restart local v18       #i:I
    move-object/from16 p9, p8

    .end local p8           #lastFragment:Ljava/lang/String;
    .local p9, lastFragment:Ljava/lang/String;
    move/from16 p8, v18

    .end local v18           #i:I
    .local p8, i:I
    goto/16 :goto_c

    .line 1513
    .local v7, priorityString:Ljava/lang/String;
    .local v10, unreadString:Ljava/lang/String;
    .local p8, nameString:Ljava/lang/String;
    .local p9, i:I
    .local p10, lastFragment:Ljava/lang/String;
    .restart local p11       #lastStyle:Landroid/text/style/CharacterStyle;
    :cond_28
    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    .end local v10           #unreadString:Ljava/lang/String;
    if-eqz v10, :cond_29

    const/4 v10, 0x1

    goto :goto_d

    :cond_29
    const/4 v10, 0x0

    goto :goto_d

    .end local v7           #priorityString:Ljava/lang/String;
    .end local p10           #lastFragment:Ljava/lang/String;
    .local v10, unread:Z
    .local p8, lastFragment:Ljava/lang/String;
    :cond_2a
    move-object/from16 p10, p5

    .line 1523
    goto :goto_e

    .line 1525
    .local v7, priority:I
    .local p8, nameString:Ljava/lang/String;
    .restart local p10       #lastFragment:Ljava/lang/String;
    :cond_2b
    if-eqz p10, :cond_2c

    .line 1526
    const/16 p8, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p10

    move-object/from16 v2, p11

    move/from16 v3, p8

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/gm/provider/Gmail;->addStyledFragment(Landroid/text/SpannableStringBuilder;Ljava/lang/String;Landroid/text/style/CharacterStyle;Z)V

    .line 1531
    .end local p8           #nameString:Ljava/lang/String;
    const-string p8, " "

    move-object/from16 v0, p1

    move-object/from16 v1, p8

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1532
    const-string p8, ".."

    const/16 p10, 0x1

    move-object/from16 v0, p1

    move-object/from16 v1, p8

    move-object/from16 v2, p11

    move/from16 v3, p10

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/gm/provider/Gmail;->addStyledFragment(Landroid/text/SpannableStringBuilder;Ljava/lang/String;Landroid/text/style/CharacterStyle;Z)V

    .line 1533
    .end local p10           #lastFragment:Ljava/lang/String;
    const-string p8, " "

    move-object/from16 v0, p1

    move-object/from16 v1, p8

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1535
    :cond_2c
    const/16 p8, 0x0

    .local p8, lastFragment:Ljava/lang/String;
    move-object/from16 p10, p11

    .end local p11           #lastStyle:Landroid/text/style/CharacterStyle;
    .local p10, lastStyle:Landroid/text/style/CharacterStyle;
    move/from16 v18, p9

    .end local p9           #i:I
    .restart local v18       #i:I
    move-object/from16 p9, p8

    .end local p8           #lastFragment:Ljava/lang/String;
    .local p9, lastFragment:Ljava/lang/String;
    move/from16 p8, v18

    .end local v18           #i:I
    .local p8, i:I
    goto/16 :goto_c

    .line 1539
    .end local v7           #priority:I
    .end local v10           #unread:Z
    .end local p9           #lastFragment:Ljava/lang/String;
    .local p10, lastFragment:Ljava/lang/String;
    .restart local p11       #lastStyle:Landroid/text/style/CharacterStyle;
    :cond_2d
    if-eqz p10, :cond_2e

    .line 1540
    const/16 p4, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p10

    move-object/from16 v2, p11

    move/from16 v3, p4

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/gm/provider/Gmail;->addStyledFragment(Landroid/text/SpannableStringBuilder;Ljava/lang/String;Landroid/text/style/CharacterStyle;Z)V

    .line 1542
    .end local p4
    :cond_2e
    move-object/from16 v0, p1

    move-object v1, v8

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1543
    if-eqz p6, :cond_9

    .line 1544
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_5

    .end local v6           #numCharsToRemovePerWord:I
    .end local p11           #lastStyle:Landroid/text/style/CharacterStyle;
    .local v7, maxFoundPriority:I
    .local v10, numMessages:I
    .restart local v12       #priorityToLength:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    .restart local v13       #sendFailedFragment:Ljava/lang/CharSequence;
    .restart local p4
    .local p8, numCharsToRemovePerWord:I
    .local p9, numCharsUsed:I
    .local p10, numSendersUsed:I
    :cond_2f
    move/from16 v6, p8

    .end local p8           #numCharsToRemovePerWord:I
    .restart local v6       #numCharsToRemovePerWord:I
    goto/16 :goto_a

    .end local v6           #numCharsToRemovePerWord:I
    .end local p6           #fixedFragmentLength:I
    .end local p10           #numSendersUsed:I
    .local p9, fixedFragmentLength:I
    .local p12, i:I
    :cond_30
    move/from16 p6, p9

    .end local p9           #fixedFragmentLength:I
    .restart local p6       #fixedFragmentLength:I
    goto/16 :goto_7

    .end local v9           #numFragments:I
    .end local v14           #sendingFragment:Ljava/lang/CharSequence;
    .local v6, maxFoundPriority:I
    .local v7, numDrafts:I
    .local v8, numFragments:I
    .local v11, sendFailedFragment:Ljava/lang/CharSequence;
    .local v13, sendingFragment:Ljava/lang/CharSequence;
    .local p0, currentSize:I
    .local p6, draftsStyle:Landroid/text/style/CharacterStyle;
    .local p8, draftString:Ljava/lang/CharSequence;
    .local p9, draftPluralString:Ljava/lang/CharSequence;
    .local p10, sendingString:Ljava/lang/CharSequence;
    .local p11, sendFailedString:Ljava/lang/CharSequence;
    .local p12, draftsFragment:Ljava/lang/CharSequence;
    :cond_31
    move v9, v8

    .end local v8           #numFragments:I
    .restart local v9       #numFragments:I
    goto/16 :goto_1
.end method

.method static getSettingsUri(Ljava/lang/String;)Landroid/net/Uri;
    .locals 1
    .parameter "account"

    .prologue
    .line 414
    const-string v0, "/settings/"

    invoke-static {p0, v0}, Lcom/google/android/gm/provider/Gmail;->getCachedUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static getStatusUri(Ljava/lang/String;)Landroid/net/Uri;
    .locals 1
    .parameter "account"

    .prologue
    .line 421
    const-string v0, "/status/"

    invoke-static {p0, v0}, Lcom/google/android/gm/provider/Gmail;->getCachedUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static isDisplayableSystemLabel(Ljava/lang/String;)Z
    .locals 1
    .parameter "label"

    .prologue
    .line 453
    sget-object v0, Lcom/google/android/gm/provider/Gmail;->DISPLAYABLE_SYSTEM_LABELS:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isImportant(Ljava/util/Map;)Z
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gm/provider/Label;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 445
    .local p0, set:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lcom/google/android/gm/provider/Label;>;"
    const-string v0, "^io_im"

    invoke-interface {p0, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isLabelUserDefined(Ljava/lang/String;)Z
    .locals 1
    .parameter "label"

    .prologue
    .line 501
    if-eqz p0, :cond_0

    const-string v0, "^"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isLabelUserSettable(Ljava/lang/String;)Z
    .locals 1
    .parameter "label"

    .prologue
    .line 525
    sget-object v0, Lcom/google/android/gm/provider/Gmail;->USER_SETTABLE_BUILTIN_LABELS:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/google/android/gm/provider/Gmail;->isLabelUserDefined(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSystemLabel(Ljava/lang/String;)Z
    .locals 1
    .parameter "canonicalName"

    .prologue
    .line 436
    sget-object v0, Lcom/google/android/gm/provider/Gmail;->SYSTEM_LABELS:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static newMessageLabelIdsSplitter()Landroid/text/TextUtils$StringSplitter;
    .locals 2

    .prologue
    .line 555
    new-instance v0, Landroid/text/TextUtils$SimpleStringSplitter;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    return-object v0
.end method

.method private static toNonnullString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "source"

    .prologue
    .line 821
    if-nez p0, :cond_0

    .line 822
    const-string v0, ""

    .line 824
    :goto_0
    return-object v0

    :cond_0
    move-object v0, p0

    goto :goto_0
.end method

.method private static urlEncodeLabel(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "label"

    .prologue
    .line 426
    :try_start_0
    const-string v1, "utf-8"

    invoke-static {p0, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 427
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 428
    .local v0, e:Ljava/io/UnsupportedEncodingException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public addOrRemoveLabelOnConversationBulk(Ljava/lang/String;[Landroid/content/ContentValues;)V
    .locals 3
    .parameter "account"
    .parameter "values"

    .prologue
    .line 1078
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1079
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "account is empty"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1081
    :cond_0
    const-string v1, "/conversations/labels"

    invoke-static {p1, v1}, Lcom/google/android/gm/provider/Gmail;->getCachedUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 1083
    .local v0, uri:Landroid/net/Uri;
    iget-object v1, p0, Lcom/google/android/gm/provider/Gmail;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {v1, v0, p2}, Landroid/content/ContentResolver;->bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I

    .line 1084
    return-void
.end method

.method public addOrRemoveLabelOnMessageBulk(Ljava/lang/String;[Landroid/content/ContentValues;)V
    .locals 3
    .parameter "account"
    .parameter "values"

    .prologue
    .line 1113
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1114
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "account is empty"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1116
    :cond_0
    invoke-static {p1}, Lcom/google/android/gm/provider/Gmail;->getMessagesUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "labels"

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 1118
    .local v0, uri:Landroid/net/Uri;
    iget-object v1, p0, Lcom/google/android/gm/provider/Gmail;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {v1, v0, p2}, Landroid/content/ContentResolver;->bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I

    .line 1119
    return-void
.end method

.method public getConversationCursorForCursor(Ljava/lang/String;Landroid/database/Cursor;)Lcom/google/android/gm/provider/Gmail$ConversationCursor;
    .locals 2
    .parameter "account"
    .parameter "cursor"

    .prologue
    .line 859
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 860
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "account is empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 862
    :cond_0
    new-instance v0, Lcom/google/android/gm/provider/Gmail$ConversationCursor;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/google/android/gm/provider/Gmail$ConversationCursor;-><init>(Lcom/google/android/gm/provider/Gmail;Ljava/lang/String;Landroid/database/Cursor;Lcom/google/android/gm/provider/Gmail$1;)V

    return-object v0
.end method

.method public getConversationCursorForQuery(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gm/provider/Gmail$BecomeActiveNetworkCursor;)Lcom/google/android/gm/provider/Gmail$ConversationCursor;
    .locals 7
    .parameter "account"
    .parameter "query"
    .parameter "becomeActiveNetworkCursor"

    .prologue
    const/4 v5, 0x0

    .line 935
    invoke-static {p3}, Lcom/google/android/gm/provider/Gmail;->getSelectionArguments(Lcom/google/android/gm/provider/Gmail$BecomeActiveNetworkCursor;)[Ljava/lang/String;

    move-result-object v4

    .line 936
    .local v4, selectionArgs:[Ljava/lang/String;
    iget-object v0, p0, Lcom/google/android/gm/provider/Gmail;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {p1}, Lcom/google/android/gm/provider/Gmail;->getConversationsUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcom/google/android/gm/provider/Gmail;->CONVERSATION_PROJECTION:[Ljava/lang/String;

    move-object v3, p2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 939
    .local v6, cursor:Landroid/database/Cursor;
    new-instance v0, Lcom/google/android/gm/provider/Gmail$ConversationCursor;

    invoke-direct {v0, p0, p1, v6, v5}, Lcom/google/android/gm/provider/Gmail$ConversationCursor;-><init>(Lcom/google/android/gm/provider/Gmail;Ljava/lang/String;Landroid/database/Cursor;Lcom/google/android/gm/provider/Gmail$1;)V

    return-object v0
.end method

.method public getConversationCursorLoader(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gm/provider/Gmail$BecomeActiveNetworkCursor;)Lcom/google/android/gm/provider/ConversationCursorLoader;
    .locals 7
    .parameter "context"
    .parameter "account"
    .parameter "query"
    .parameter "becomeActiveNetworkCursor"

    .prologue
    .line 916
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 917
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "account is empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 919
    :cond_0
    invoke-static {p2}, Lcom/google/android/gm/provider/Gmail;->getConversationsUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 920
    .local v4, uri:Landroid/net/Uri;
    invoke-static {p4}, Lcom/google/android/gm/provider/Gmail;->getSelectionArguments(Lcom/google/android/gm/provider/Gmail$BecomeActiveNetworkCursor;)[Ljava/lang/String;

    move-result-object v6

    .line 921
    .local v6, selectionArgs:[Ljava/lang/String;
    new-instance v0, Lcom/google/android/gm/provider/ConversationCursorLoader;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gm/provider/ConversationCursorLoader;-><init>(Lcom/google/android/gm/provider/Gmail;Landroid/content/Context;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    return-object v0
.end method

.method public getDetachedConversationCursorForQuery(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gm/provider/Gmail$BecomeActiveNetworkCursor;)Lcom/google/android/gm/provider/Gmail$ConversationCursor;
    .locals 7
    .parameter "account"
    .parameter "query"
    .parameter "becomeActiveNetworkCursor"

    .prologue
    const/4 v5, 0x0

    .line 954
    invoke-static {p3}, Lcom/google/android/gm/provider/Gmail;->getSelectionArguments(Lcom/google/android/gm/provider/Gmail$BecomeActiveNetworkCursor;)[Ljava/lang/String;

    move-result-object v4

    .line 955
    .local v4, selectionArgs:[Ljava/lang/String;
    iget-object v0, p0, Lcom/google/android/gm/provider/Gmail;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {p1}, Lcom/google/android/gm/provider/Gmail;->getConversationsUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcom/google/android/gm/provider/Gmail;->CONVERSATION_PROJECTION:[Ljava/lang/String;

    move-object v3, p2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 958
    .local v6, cursor:Landroid/database/Cursor;
    new-instance v0, Lcom/google/android/gm/provider/Gmail$DetachedConversationCursor;

    invoke-direct {v0, p0, p1, v6, v5}, Lcom/google/android/gm/provider/Gmail$DetachedConversationCursor;-><init>(Lcom/google/android/gm/provider/Gmail;Ljava/lang/String;Landroid/database/Cursor;Lcom/google/android/gm/provider/Gmail$1;)V

    return-object v0
.end method

.method public getDetachedMessageCursorForConversationId(Ljava/lang/String;J)Lcom/google/android/gm/provider/Gmail$MessageCursor;
    .locals 3
    .parameter "account"
    .parameter "conversationId"

    .prologue
    .line 1020
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gm/provider/Gmail;->getRawCursorForConversationId(Ljava/lang/String;J)Landroid/database/Cursor;

    move-result-object v0

    .line 1021
    .local v0, cursor:Landroid/database/Cursor;
    new-instance v1, Lcom/google/android/gm/provider/Gmail$DetachedMessageCursor;

    iget-object v2, p0, Lcom/google/android/gm/provider/Gmail;->mContentResolver:Landroid/content/ContentResolver;

    invoke-direct {v1, v2, p1, v0}, Lcom/google/android/gm/provider/Gmail$DetachedMessageCursor;-><init>(Landroid/content/ContentResolver;Ljava/lang/String;Landroid/database/Cursor;)V

    return-object v1
.end method

.method public getLabelMap(Ljava/lang/String;)Lcom/google/android/gm/provider/Gmail$LabelMap;
    .locals 1
    .parameter "account"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2197
    invoke-static {}, Lcom/google/android/gm/provider/MailProvider;->getMailProvider()Lcom/google/android/gm/provider/MailProvider;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gm/provider/MailProvider;->getOrMakeMailEngine(Ljava/lang/String;)Lcom/google/android/gm/provider/MailEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gm/provider/MailEngine;->getLabelMap()Lcom/google/android/gm/provider/Gmail$LabelMap;

    move-result-object v0

    return-object v0
.end method

.method public getLocalMessageCursorForQuery(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gm/provider/Gmail$MessageCursor;
    .locals 7
    .parameter "account"
    .parameter "query"

    .prologue
    const/4 v4, 0x0

    .line 989
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 990
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "account is empty"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 992
    :cond_0
    invoke-static {p1}, Lcom/google/android/gm/provider/Gmail;->getMessagesUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 993
    .local v1, uri:Landroid/net/Uri;
    iget-object v0, p0, Lcom/google/android/gm/provider/Gmail;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v2, Lcom/google/android/gm/provider/Gmail;->MESSAGE_PROJECTION:[Ljava/lang/String;

    move-object v3, p2

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 995
    .local v6, cursor:Landroid/database/Cursor;
    new-instance v0, Lcom/google/android/gm/provider/Gmail$MessageCursor;

    iget-object v2, p0, Lcom/google/android/gm/provider/Gmail;->mContentResolver:Landroid/content/ContentResolver;

    invoke-direct {v0, v2, p1, v6, v4}, Lcom/google/android/gm/provider/Gmail$MessageCursor;-><init>(Landroid/content/ContentResolver;Ljava/lang/String;Landroid/database/Cursor;Lcom/google/android/gm/provider/Gmail$1;)V

    return-object v0
.end method

.method public getMessageCursorForConversationId(Ljava/lang/String;J)Lcom/google/android/gm/provider/Gmail$MessageCursor;
    .locals 4
    .parameter "account"
    .parameter "conversationId"

    .prologue
    .line 1006
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gm/provider/Gmail;->getRawCursorForConversationId(Ljava/lang/String;J)Landroid/database/Cursor;

    move-result-object v0

    .line 1007
    .local v0, cursor:Landroid/database/Cursor;
    new-instance v1, Lcom/google/android/gm/provider/Gmail$MessageCursor;

    iget-object v2, p0, Lcom/google/android/gm/provider/Gmail;->mContentResolver:Landroid/content/ContentResolver;

    const/4 v3, 0x0

    invoke-direct {v1, v2, p1, v0, v3}, Lcom/google/android/gm/provider/Gmail$MessageCursor;-><init>(Landroid/content/ContentResolver;Ljava/lang/String;Landroid/database/Cursor;Lcom/google/android/gm/provider/Gmail$1;)V

    return-object v1
.end method

.method public getMessageCursorForMessageId(Ljava/lang/String;J)Lcom/google/android/gm/provider/Gmail$MessageCursor;
    .locals 7
    .parameter "account"
    .parameter "messageId"

    .prologue
    const/4 v3, 0x0

    .line 969
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 970
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "account is empty"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 972
    :cond_0
    invoke-static {p1, p2, p3}, Lcom/google/android/gm/provider/Gmail;->getMessageByIdUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v1

    .line 973
    .local v1, uri:Landroid/net/Uri;
    iget-object v0, p0, Lcom/google/android/gm/provider/Gmail;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v2, Lcom/google/android/gm/provider/Gmail;->MESSAGE_PROJECTION:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 975
    .local v6, cursor:Landroid/database/Cursor;
    new-instance v0, Lcom/google/android/gm/provider/Gmail$MessageCursor;

    iget-object v2, p0, Lcom/google/android/gm/provider/Gmail;->mContentResolver:Landroid/content/ContentResolver;

    invoke-direct {v0, v2, p1, v6, v3}, Lcom/google/android/gm/provider/Gmail$MessageCursor;-><init>(Landroid/content/ContentResolver;Ljava/lang/String;Landroid/database/Cursor;Lcom/google/android/gm/provider/Gmail$1;)V

    return-object v0
.end method

.method public getMessageCursorLoader(Landroid/content/Context;Ljava/lang/String;J)Lcom/google/android/gm/provider/MessageCursorLoader;
    .locals 2
    .parameter "context"
    .parameter "account"
    .parameter "conversationId"

    .prologue
    .line 1061
    invoke-static {p2, p3, p4}, Lcom/google/android/gm/provider/Gmail;->getMessagesForConversationUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v0

    .line 1062
    .local v0, uri:Landroid/net/Uri;
    new-instance v1, Lcom/google/android/gm/provider/MessageCursorLoader;

    invoke-direct {v1, p1, p2, v0}, Lcom/google/android/gm/provider/MessageCursorLoader;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/net/Uri;)V

    return-object v1
.end method

.method public getSettings(Ljava/lang/String;)Lcom/google/android/gm/provider/Gmail$Settings;
    .locals 8
    .parameter "account"

    .prologue
    const/4 v3, 0x0

    .line 1236
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1237
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "account is empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1239
    :cond_0
    new-instance v7, Lcom/google/android/gm/provider/Gmail$Settings;

    invoke-direct {v7}, Lcom/google/android/gm/provider/Gmail$Settings;-><init>()V

    .line 1240
    .local v7, settings:Lcom/google/android/gm/provider/Gmail$Settings;
    iget-object v0, p0, Lcom/google/android/gm/provider/Gmail;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {p1}, Lcom/google/android/gm/provider/Gmail;->getSettingsUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcom/google/android/gm/provider/Gmail;->SETTINGS_PROJECTION:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1242
    .local v6, cursor:Landroid/database/Cursor;
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    .line 1243
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/google/android/gm/provider/Gmail;->SPACE_SEPARATOR_PATTERN:Ljava/util/regex/Pattern;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/util/regex/Pattern;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, v7, Lcom/google/android/gm/provider/Gmail$Settings;->labelsIncluded:[Ljava/lang/String;

    .line 1244
    const/4 v0, 0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/google/android/gm/provider/Gmail;->SPACE_SEPARATOR_PATTERN:Ljava/util/regex/Pattern;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/util/regex/Pattern;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, v7, Lcom/google/android/gm/provider/Gmail$Settings;->labelsPartial:[Ljava/lang/String;

    .line 1245
    const/4 v0, 0x2

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, v7, Lcom/google/android/gm/provider/Gmail$Settings;->conversationAgeDays:J

    .line 1246
    const/4 v0, 0x3

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, v7, Lcom/google/android/gm/provider/Gmail$Settings;->maxAttachmentSizeMb:J

    .line 1247
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1248
    return-object v7
.end method

.method public setSettings(Ljava/lang/String;Lcom/google/android/gm/provider/Gmail$Settings;)V
    .locals 5
    .parameter "account"
    .parameter "settings"

    .prologue
    const/4 v4, 0x0

    .line 1255
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1256
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "account is empty"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1258
    :cond_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1259
    .local v0, values:Landroid/content/ContentValues;
    const-string v1, "labelsIncluded"

    const-string v2, " "

    iget-object v3, p2, Lcom/google/android/gm/provider/Gmail$Settings;->labelsIncluded:[Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1262
    const-string v1, "labelsPartial"

    const-string v2, " "

    iget-object v3, p2, Lcom/google/android/gm/provider/Gmail$Settings;->labelsPartial:[Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1265
    const-string v1, "conversationAgeDays"

    iget-wide v2, p2, Lcom/google/android/gm/provider/Gmail$Settings;->conversationAgeDays:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1268
    const-string v1, "maxAttachmentSize"

    iget-wide v2, p2, Lcom/google/android/gm/provider/Gmail$Settings;->maxAttachmentSizeMb:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1271
    iget-object v1, p0, Lcom/google/android/gm/provider/Gmail;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {p1}, Lcom/google/android/gm/provider/Gmail;->getSettingsUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2, v0, v4, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1273
    const-string v1, "Sync settings "

    invoke-static {v1}, Lcom/google/android/gm/GmailBackupAgent;->dataChanged(Ljava/lang/String;)V

    .line 1274
    return-void
.end method
