.class public Lcom/google/android/gsf/talk/TalkProvider;
.super Landroid/content/ContentProvider;
.source "TalkProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gsf/talk/TalkProvider$DatabaseHelper;
    }
.end annotation


# static fields
.field private static final CONTACT_ID_PROJECTION:[Ljava/lang/String;

.field private static final LOOKUP_CHATS_PROJECTION:[Ljava/lang/String;

.field private static final MESSAGE_IN_MEMORY_WHERE_CLAUSE_FORMAT:Ljava/lang/String;

.field private static final MESSAGE_WHERE_CLAUSE_FORMAT:Ljava/lang/String;

.field private static final NON_BLOCKED_CONTACTS_WHERE_CLAUSE:Ljava/lang/String;

.field private static final sAccountsStatusProjectionMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final sContactsProjectionMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final sInMemoryMessagesProjectionMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final sMessagesProjectionMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final sSearchSuggestionsProjectionMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mApplyingBatch:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field final mContactIdArgument:[Ljava/lang/String;

.field private mCreatedMessagesAndChatsTable:Z

.field private final mDatabaseName:Ljava/lang/String;

.field private final mDatabaseVersion:I

.field private volatile mNotifyChange:Z

.field protected mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

.field private mQueryContactIdSelectionArgs2:[Ljava/lang/String;

.field private final mThreadLocalNotifyUris:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/util/HashSet",
            "<",
            "Landroid/net/Uri;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mTransientDbName:Ljava/lang/String;

.field protected final mUrlMatcher:Landroid/content/UriMatcher;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 176
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "(type IS NULL OR type!="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gsf/talk/TalkProvider;->NON_BLOCKED_CONTACTS_WHERE_CLAUSE:Ljava/lang/String;

    .line 197
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    sput-object v0, Lcom/google/android/gsf/talk/TalkProvider;->CONTACT_ID_PROJECTION:[Ljava/lang/String;

    .line 209
    invoke-static {}, Lcom/google/android/gsf/talk/TalkProvider;->buildSuggestionsProjectionMap()Ljava/util/HashMap;

    move-result-object v0

    sput-object v0, Lcom/google/android/gsf/talk/TalkProvider;->sSearchSuggestionsProjectionMap:Ljava/util/HashMap;

    .line 215
    const-string v0, "(%s.consolidation_key isnull OR %s.err_code != 0)"

    new-array v1, v5, [Ljava/lang/Object;

    const-string v2, "messages"

    aput-object v2, v1, v3

    const-string v2, "messages"

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gsf/talk/TalkProvider;->MESSAGE_WHERE_CLAUSE_FORMAT:Ljava/lang/String;

    .line 220
    const-string v0, "(%s.consolidation_key isnull OR %s.err_code != 0)"

    new-array v1, v5, [Ljava/lang/Object;

    const-string v2, "inMemoryMessages"

    aput-object v2, v1, v3

    const-string v2, "inMemoryMessages"

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gsf/talk/TalkProvider;->MESSAGE_IN_MEMORY_WHERE_CLAUSE_FORMAT:Ljava/lang/String;

    .line 1080
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/android/gsf/talk/TalkProvider;->sAccountsStatusProjectionMap:Ljava/util/HashMap;

    .line 1081
    sget-object v0, Lcom/google/android/gsf/talk/TalkProvider;->sAccountsStatusProjectionMap:Ljava/util/HashMap;

    const-string v1, "_id"

    const-string v2, "accounts._id AS _id"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1083
    sget-object v0, Lcom/google/android/gsf/talk/TalkProvider;->sAccountsStatusProjectionMap:Ljava/util/HashMap;

    const-string v1, "username"

    const-string v2, "accounts.username AS username"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1085
    sget-object v0, Lcom/google/android/gsf/talk/TalkProvider;->sAccountsStatusProjectionMap:Ljava/util/HashMap;

    const-string v1, "account_connStatus"

    const-string v2, "accountStatus.connStatus AS account_connStatus"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1089
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/android/gsf/talk/TalkProvider;->sContactsProjectionMap:Ljava/util/HashMap;

    .line 1092
    sget-object v0, Lcom/google/android/gsf/talk/TalkProvider;->sContactsProjectionMap:Ljava/util/HashMap;

    const-string v1, "_id"

    const-string v2, "contacts._id AS _id"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1093
    sget-object v0, Lcom/google/android/gsf/talk/TalkProvider;->sContactsProjectionMap:Ljava/util/HashMap;

    const-string v1, "_count"

    const-string v2, "COUNT(*) AS _count"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1096
    sget-object v0, Lcom/google/android/gsf/talk/TalkProvider;->sContactsProjectionMap:Ljava/util/HashMap;

    const-string v1, "_id"

    const-string v2, "contacts._id as _id"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1097
    sget-object v0, Lcom/google/android/gsf/talk/TalkProvider;->sContactsProjectionMap:Ljava/util/HashMap;

    const-string v1, "username"

    const-string v2, "contacts.username as username"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1098
    sget-object v0, Lcom/google/android/gsf/talk/TalkProvider;->sContactsProjectionMap:Ljava/util/HashMap;

    const-string v1, "nickname"

    const-string v2, "contacts.nickname as nickname"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1099
    sget-object v0, Lcom/google/android/gsf/talk/TalkProvider;->sContactsProjectionMap:Ljava/util/HashMap;

    const-string v1, "account"

    const-string v2, "contacts.account as account"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1100
    sget-object v0, Lcom/google/android/gsf/talk/TalkProvider;->sContactsProjectionMap:Ljava/util/HashMap;

    const-string v1, "contactList"

    const-string v2, "contacts.contactList as contactList"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1101
    sget-object v0, Lcom/google/android/gsf/talk/TalkProvider;->sContactsProjectionMap:Ljava/util/HashMap;

    const-string v1, "type"

    const-string v2, "contacts.type as type"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1102
    sget-object v0, Lcom/google/android/gsf/talk/TalkProvider;->sContactsProjectionMap:Ljava/util/HashMap;

    const-string v1, "subscriptionStatus"

    const-string v2, "contacts.subscriptionStatus as subscriptionStatus"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1104
    sget-object v0, Lcom/google/android/gsf/talk/TalkProvider;->sContactsProjectionMap:Ljava/util/HashMap;

    const-string v1, "subscriptionType"

    const-string v2, "contacts.subscriptionType as subscriptionType"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1106
    sget-object v0, Lcom/google/android/gsf/talk/TalkProvider;->sContactsProjectionMap:Ljava/util/HashMap;

    const-string v1, "qc"

    const-string v2, "contacts.qc as qc"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1107
    sget-object v0, Lcom/google/android/gsf/talk/TalkProvider;->sContactsProjectionMap:Ljava/util/HashMap;

    const-string v1, "rejected"

    const-string v2, "contacts.rejected as rejected"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1110
    sget-object v0, Lcom/google/android/gsf/talk/TalkProvider;->sContactsProjectionMap:Ljava/util/HashMap;

    const-string v1, "contact_id"

    const-string v2, "presence.contact_id AS contact_id"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1112
    sget-object v0, Lcom/google/android/gsf/talk/TalkProvider;->sContactsProjectionMap:Ljava/util/HashMap;

    const-string v1, "mode"

    const-string v2, "presence.mode AS mode"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1114
    sget-object v0, Lcom/google/android/gsf/talk/TalkProvider;->sContactsProjectionMap:Ljava/util/HashMap;

    const-string v1, "status"

    const-string v2, "presence.status AS status"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1116
    sget-object v0, Lcom/google/android/gsf/talk/TalkProvider;->sContactsProjectionMap:Ljava/util/HashMap;

    const-string v1, "client_type"

    const-string v2, "presence.client_type AS client_type"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1118
    sget-object v0, Lcom/google/android/gsf/talk/TalkProvider;->sContactsProjectionMap:Ljava/util/HashMap;

    const-string v1, "cap"

    const-string v2, "presence.cap AS cap"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1122
    sget-object v0, Lcom/google/android/gsf/talk/TalkProvider;->sContactsProjectionMap:Ljava/util/HashMap;

    const-string v1, "chats_contact"

    const-string v2, "chats.contact_id AS chats_contact_id"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1124
    sget-object v0, Lcom/google/android/gsf/talk/TalkProvider;->sContactsProjectionMap:Ljava/util/HashMap;

    const-string v1, "jid_resource"

    const-string v2, "chats.jid_resource AS jid_resource"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1126
    sget-object v0, Lcom/google/android/gsf/talk/TalkProvider;->sContactsProjectionMap:Ljava/util/HashMap;

    const-string v1, "groupchat"

    const-string v2, "chats.groupchat AS groupchat"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1128
    sget-object v0, Lcom/google/android/gsf/talk/TalkProvider;->sContactsProjectionMap:Ljava/util/HashMap;

    const-string v1, "last_unread_message"

    const-string v2, "chats.last_unread_message AS last_unread_message"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1130
    sget-object v0, Lcom/google/android/gsf/talk/TalkProvider;->sContactsProjectionMap:Ljava/util/HashMap;

    const-string v1, "last_message_date"

    const-string v2, "chats.last_message_date AS last_message_date"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1132
    sget-object v0, Lcom/google/android/gsf/talk/TalkProvider;->sContactsProjectionMap:Ljava/util/HashMap;

    const-string v1, "unsent_composed_message"

    const-string v2, "chats.unsent_composed_message AS unsent_composed_message"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1134
    sget-object v0, Lcom/google/android/gsf/talk/TalkProvider;->sContactsProjectionMap:Ljava/util/HashMap;

    const-string v1, "shortcut"

    const-string v2, "chats.SHORTCUT AS shortcut"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1137
    sget-object v0, Lcom/google/android/gsf/talk/TalkProvider;->sContactsProjectionMap:Ljava/util/HashMap;

    const-string v1, "avatars_hash"

    const-string v2, "avatars.hash AS avatars_hash"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1138
    sget-object v0, Lcom/google/android/gsf/talk/TalkProvider;->sContactsProjectionMap:Ljava/util/HashMap;

    const-string v1, "avatars_data"

    const-string v2, "avatars.data AS avatars_data"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1141
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/android/gsf/talk/TalkProvider;->sMessagesProjectionMap:Ljava/util/HashMap;

    .line 1142
    sget-object v0, Lcom/google/android/gsf/talk/TalkProvider;->sMessagesProjectionMap:Ljava/util/HashMap;

    const-string v1, "_id"

    const-string v2, "messages._id AS _id"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1143
    sget-object v0, Lcom/google/android/gsf/talk/TalkProvider;->sMessagesProjectionMap:Ljava/util/HashMap;

    const-string v1, "_count"

    const-string v2, "COUNT(*) AS _count"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1144
    sget-object v0, Lcom/google/android/gsf/talk/TalkProvider;->sMessagesProjectionMap:Ljava/util/HashMap;

    const-string v1, "thread_id"

    const-string v2, "messages.thread_id AS thread_id"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1145
    sget-object v0, Lcom/google/android/gsf/talk/TalkProvider;->sMessagesProjectionMap:Ljava/util/HashMap;

    const-string v1, "packet_id"

    const-string v2, "messages.packet_id AS packet_id"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1146
    sget-object v0, Lcom/google/android/gsf/talk/TalkProvider;->sMessagesProjectionMap:Ljava/util/HashMap;

    const-string v1, "nickname"

    const-string v2, "messages.nickname AS nickname"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1147
    sget-object v0, Lcom/google/android/gsf/talk/TalkProvider;->sMessagesProjectionMap:Ljava/util/HashMap;

    const-string v1, "body"

    const-string v2, "messages.body AS body"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1148
    sget-object v0, Lcom/google/android/gsf/talk/TalkProvider;->sMessagesProjectionMap:Ljava/util/HashMap;

    const-string v1, "date"

    const-string v2, "messages.date AS date"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1149
    sget-object v0, Lcom/google/android/gsf/talk/TalkProvider;->sMessagesProjectionMap:Ljava/util/HashMap;

    const-string v1, "type"

    const-string v2, "messages.type AS type"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1150
    sget-object v0, Lcom/google/android/gsf/talk/TalkProvider;->sMessagesProjectionMap:Ljava/util/HashMap;

    const-string v1, "err_code"

    const-string v2, "messages.err_code AS err_code"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1151
    sget-object v0, Lcom/google/android/gsf/talk/TalkProvider;->sMessagesProjectionMap:Ljava/util/HashMap;

    const-string v1, "err_msg"

    const-string v2, "messages.err_msg AS err_msg"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1152
    sget-object v0, Lcom/google/android/gsf/talk/TalkProvider;->sMessagesProjectionMap:Ljava/util/HashMap;

    const-string v1, "is_muc"

    const-string v2, "messages.is_muc AS is_muc"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1153
    sget-object v0, Lcom/google/android/gsf/talk/TalkProvider;->sMessagesProjectionMap:Ljava/util/HashMap;

    const-string v1, "show_ts"

    const-string v2, "messages.show_ts AS show_ts"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1155
    sget-object v0, Lcom/google/android/gsf/talk/TalkProvider;->sMessagesProjectionMap:Ljava/util/HashMap;

    const-string v1, "contact"

    const-string v2, "contacts.username AS contact"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1156
    sget-object v0, Lcom/google/android/gsf/talk/TalkProvider;->sMessagesProjectionMap:Ljava/util/HashMap;

    const-string v1, "account"

    const-string v2, "contacts.account AS account"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1157
    sget-object v0, Lcom/google/android/gsf/talk/TalkProvider;->sMessagesProjectionMap:Ljava/util/HashMap;

    const-string v1, "contact_type"

    const-string v2, "contacts.type AS contact_type"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1158
    sget-object v0, Lcom/google/android/gsf/talk/TalkProvider;->sMessagesProjectionMap:Ljava/util/HashMap;

    const-string v1, "consolidation_key"

    const-string v2, "messages.consolidation_key as consolidation_key"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1161
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/android/gsf/talk/TalkProvider;->sInMemoryMessagesProjectionMap:Ljava/util/HashMap;

    .line 1162
    sget-object v0, Lcom/google/android/gsf/talk/TalkProvider;->sInMemoryMessagesProjectionMap:Ljava/util/HashMap;

    const-string v1, "_id"

    const-string v2, "inMemoryMessages._id AS _id"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1164
    sget-object v0, Lcom/google/android/gsf/talk/TalkProvider;->sInMemoryMessagesProjectionMap:Ljava/util/HashMap;

    const-string v1, "_count"

    const-string v2, "COUNT(*) AS _count"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1166
    sget-object v0, Lcom/google/android/gsf/talk/TalkProvider;->sInMemoryMessagesProjectionMap:Ljava/util/HashMap;

    const-string v1, "thread_id"

    const-string v2, "inMemoryMessages.thread_id AS thread_id"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1168
    sget-object v0, Lcom/google/android/gsf/talk/TalkProvider;->sInMemoryMessagesProjectionMap:Ljava/util/HashMap;

    const-string v1, "packet_id"

    const-string v2, "inMemoryMessages.packet_id AS packet_id"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1170
    sget-object v0, Lcom/google/android/gsf/talk/TalkProvider;->sInMemoryMessagesProjectionMap:Ljava/util/HashMap;

    const-string v1, "nickname"

    const-string v2, "inMemoryMessages.nickname AS nickname"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1172
    sget-object v0, Lcom/google/android/gsf/talk/TalkProvider;->sInMemoryMessagesProjectionMap:Ljava/util/HashMap;

    const-string v1, "body"

    const-string v2, "inMemoryMessages.body AS body"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1174
    sget-object v0, Lcom/google/android/gsf/talk/TalkProvider;->sInMemoryMessagesProjectionMap:Ljava/util/HashMap;

    const-string v1, "date"

    const-string v2, "inMemoryMessages.date AS date"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1176
    sget-object v0, Lcom/google/android/gsf/talk/TalkProvider;->sInMemoryMessagesProjectionMap:Ljava/util/HashMap;

    const-string v1, "type"

    const-string v2, "inMemoryMessages.type AS type"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1178
    sget-object v0, Lcom/google/android/gsf/talk/TalkProvider;->sInMemoryMessagesProjectionMap:Ljava/util/HashMap;

    const-string v1, "err_code"

    const-string v2, "inMemoryMessages.err_code AS err_code"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1180
    sget-object v0, Lcom/google/android/gsf/talk/TalkProvider;->sInMemoryMessagesProjectionMap:Ljava/util/HashMap;

    const-string v1, "err_msg"

    const-string v2, "inMemoryMessages.err_msg AS err_msg"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1182
    sget-object v0, Lcom/google/android/gsf/talk/TalkProvider;->sInMemoryMessagesProjectionMap:Ljava/util/HashMap;

    const-string v1, "is_muc"

    const-string v2, "inMemoryMessages.is_muc AS is_muc"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1184
    sget-object v0, Lcom/google/android/gsf/talk/TalkProvider;->sInMemoryMessagesProjectionMap:Ljava/util/HashMap;

    const-string v1, "show_ts"

    const-string v2, "inMemoryMessages.show_ts AS show_ts"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1187
    sget-object v0, Lcom/google/android/gsf/talk/TalkProvider;->sInMemoryMessagesProjectionMap:Ljava/util/HashMap;

    const-string v1, "contact"

    const-string v2, "contacts.username AS contact"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1188
    sget-object v0, Lcom/google/android/gsf/talk/TalkProvider;->sInMemoryMessagesProjectionMap:Ljava/util/HashMap;

    const-string v1, "account"

    const-string v2, "contacts.account AS account"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1189
    sget-object v0, Lcom/google/android/gsf/talk/TalkProvider;->sInMemoryMessagesProjectionMap:Ljava/util/HashMap;

    const-string v1, "contact_type"

    const-string v2, "contacts.type AS contact_type"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1190
    sget-object v0, Lcom/google/android/gsf/talk/TalkProvider;->sInMemoryMessagesProjectionMap:Ljava/util/HashMap;

    const-string v1, "consolidation_key"

    const-string v2, "inMemoryMessages.consolidation_key as consolidation_key"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1935
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    sput-object v0, Lcom/google/android/gsf/talk/TalkProvider;->LOOKUP_CHATS_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 1195
    const-string v0, "talk.db"

    const/16 v1, 0x3f

    invoke-direct {p0, v0, v1}, Lcom/google/android/gsf/talk/TalkProvider;-><init>(Ljava/lang/String;I)V

    .line 1197
    const-string v0, "com.google.android.providers.talk"

    invoke-direct {p0, v0}, Lcom/google/android/gsf/talk/TalkProvider;->setupImUrlMatchers(Ljava/lang/String;)V

    .line 1198
    const-string v0, "com.google.android.providers.talk"

    invoke-direct {p0, v0}, Lcom/google/android/gsf/talk/TalkProvider;->setupMcsUrlMatchers(Ljava/lang/String;)V

    .line 1199
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;I)V
    .locals 3
    .parameter "dbName"
    .parameter "dbVersion"

    .prologue
    .line 1201
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 138
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/gsf/talk/TalkProvider;->mUrlMatcher:Landroid/content/UriMatcher;

    .line 207
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gsf/talk/TalkProvider;->mQueryContactIdSelectionArgs2:[Ljava/lang/String;

    .line 234
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object v0, p0, Lcom/google/android/gsf/talk/TalkProvider;->mThreadLocalNotifyUris:Ljava/lang/ThreadLocal;

    .line 237
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object v0, p0, Lcom/google/android/gsf/talk/TalkProvider;->mApplyingBatch:Ljava/lang/ThreadLocal;

    .line 1937
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gsf/talk/TalkProvider;->mContactIdArgument:[Ljava/lang/String;

    .line 1202
    iput-object p1, p0, Lcom/google/android/gsf/talk/TalkProvider;->mDatabaseName:Ljava/lang/String;

    .line 1203
    iput p2, p0, Lcom/google/android/gsf/talk/TalkProvider;->mDatabaseVersion:I

    .line 1204
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "transient_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    const-string v2, "_"

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gsf/talk/TalkProvider;->mTransientDbName:Ljava/lang/String;

    .line 1205
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/gsf/talk/TalkProvider;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/google/android/gsf/talk/TalkProvider;->mDatabaseName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/gsf/talk/TalkProvider;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget v0, p0, Lcom/google/android/gsf/talk/TalkProvider;->mDatabaseVersion:I

    return v0
.end method

.method static synthetic access$200(Lcom/google/android/gsf/talk/TalkProvider;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-boolean v0, p0, Lcom/google/android/gsf/talk/TalkProvider;->mCreatedMessagesAndChatsTable:Z

    return v0
.end method

.method static synthetic access$202(Lcom/google/android/gsf/talk/TalkProvider;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 56
    iput-boolean p1, p0, Lcom/google/android/gsf/talk/TalkProvider;->mCreatedMessagesAndChatsTable:Z

    return p1
.end method

.method static synthetic access$300(Lcom/google/android/gsf/talk/TalkProvider;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/google/android/gsf/talk/TalkProvider;->mTransientDbName:Ljava/lang/String;

    return-object v0
.end method

.method private addToNotifyUris(Landroid/net/Uri;)V
    .locals 2
    .parameter "uri"

    .prologue
    .line 1315
    invoke-direct {p0}, Lcom/google/android/gsf/talk/TalkProvider;->getNotifyUris()Ljava/util/HashSet;

    move-result-object v0

    .line 1316
    .local v0, notifyUris:Ljava/util/HashSet;,"Ljava/util/HashSet<Landroid/net/Uri;>;"
    if-nez v0, :cond_0

    .line 1317
    new-instance v0, Ljava/util/HashSet;

    .end local v0           #notifyUris:Ljava/util/HashSet;,"Ljava/util/HashSet<Landroid/net/Uri;>;"
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 1319
    .restart local v0       #notifyUris:Ljava/util/HashSet;,"Ljava/util/HashSet<Landroid/net/Uri;>;"
    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1320
    iget-object v1, p0, Lcom/google/android/gsf/talk/TalkProvider;->mThreadLocalNotifyUris:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 1321
    return-void
.end method

.method private varargs appendValuesFromUrl(Landroid/content/ContentValues;Landroid/net/Uri;[Ljava/lang/String;)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2232
    invoke-virtual {p2}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    array-length v1, p3

    if-gt v0, v1, :cond_0

    .line 2233
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Not enough values in url"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2235
    :cond_0
    const/4 v0, 0x0

    :goto_0
    array-length v1, p3

    if-ge v0, v1, :cond_2

    .line 2236
    aget-object v1, p3, v0

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2237
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot override the value for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v0, p3, v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2240
    :cond_1
    aget-object v1, p3, v0

    invoke-virtual {p2}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    add-int/lit8 v3, v0, 0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Lcom/google/android/gsf/talk/TalkProvider;->decodeURLSegment(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2235
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2242
    :cond_2
    return-void
.end method

.method private static appendWhere(Ljava/lang/StringBuilder;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 2967
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 2968
    const-string v0, " AND "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2970
    :cond_0
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2971
    return-void
.end method

.method private static appendWhere(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2957
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 2958
    const-string v0, " AND "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2960
    :cond_0
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2961
    if-eqz p3, :cond_1

    .line 2962
    invoke-static {p0, p3}, Landroid/database/DatabaseUtils;->appendValueToSql(Ljava/lang/StringBuilder;Ljava/lang/Object;)V

    .line 2964
    :cond_1
    return-void
.end method

.method private applyingBatch()Z
    .locals 1

    .prologue
    .line 1307
    iget-object v0, p0, Lcom/google/android/gsf/talk/TalkProvider;->mApplyingBatch:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gsf/talk/TalkProvider;->mApplyingBatch:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private buildContactIdSelection(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 2328
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2330
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2331
    const-string v1, " in (select "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2332
    const-string v1, "_id"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2333
    const-string v1, " from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2334
    const-string v1, "contacts"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2335
    const-string v1, " where "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2336
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2337
    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2339
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static buildSuggestionsProjectionMap()Ljava/util/HashMap;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2927
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2928
    const-string v1, "_id"

    const-string v2, "contacts._id"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2929
    const-string v1, "suggest_text_1"

    const-string v2, "nickname AS suggest_text_1"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2931
    const-string v1, "suggest_text_2"

    const-string v2, "NULL AS suggest_text_2"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2933
    const-string v1, "suggest_intent_data"

    const-string v2, "\'%s://%s/messagesByAcctAndContact/\' || account || \'/\' || username AS %s"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "content"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "com.google.android.providers.talk"

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-string v5, "suggest_intent_data"

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2938
    const-string v1, "suggest_icon_2"

    const-string v2, "NULL AS suggest_icon_2"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2940
    const-string v1, "userID"

    const-string v2, "username AS userID"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2942
    const-string v1, "presenceStatus"

    const-string v2, "presence.status AS presenceStatus"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2944
    const-string v1, "presenceMode"

    const-string v2, "presence.mode AS presenceMode"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2946
    return-object v0
.end method

.method private clearNotifyUrls()V
    .locals 1

    .prologue
    .line 1529
    invoke-direct {p0}, Lcom/google/android/gsf/talk/TalkProvider;->getNotifyUris()Ljava/util/HashSet;

    move-result-object v0

    .line 1531
    .local v0, notifyUris:Ljava/util/HashSet;,"Ljava/util/HashSet<Landroid/net/Uri;>;"
    if-nez v0, :cond_0

    .line 1541
    :goto_0
    return-void

    .line 1535
    :cond_0
    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    goto :goto_0
.end method

.method private static decodeURLSegment(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 2975
    :try_start_0
    const-string v0, "UTF-8"

    invoke-static {p0, v0}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 2978
    :goto_0
    return-object v0

    .line 2976
    :catch_0
    move-exception v0

    move-object v0, p0

    .line 2978
    goto :goto_0
.end method

.method private deleteInternal(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 24
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2348
    const/4 v4, 0x0

    .line 2349
    const/4 v5, 0x0

    .line 2350
    const/4 v6, 0x0

    .line 2356
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 2357
    if-eqz p2, :cond_0

    .line 2358
    move-object v0, v7

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2361
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gsf/talk/TalkProvider;->mUrlMatcher:Landroid/content/UriMatcher;

    move-object v8, v0

    move-object v0, v8

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v8

    .line 2363
    const/4 v9, 0x0

    .line 2364
    const-wide/16 v10, 0x0

    .line 2366
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gsf/talk/TalkProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    move-object v12, v0

    invoke-virtual {v12}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v12

    .line 2368
    sparse-switch v8, :sswitch_data_0

    .line 2633
    new-instance v4, Ljava/lang/UnsupportedOperationException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Cannot delete that URL: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 2370
    :sswitch_0
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v6

    const/4 v8, 0x1

    invoke-interface {v6, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    move-object/from16 v6, p1

    .line 2373
    :sswitch_1
    const-string v8, "accounts"

    .line 2374
    sget-object v13, Lcom/google/android/gsf/TalkContract$AccountStatus;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    move-object v1, v13

    invoke-direct {v0, v1}, Lcom/google/android/gsf/talk/TalkProvider;->addToNotifyUris(Landroid/net/Uri;)V

    move-wide/from16 v21, v10

    move-object v10, v4

    move-object v11, v8

    move-object v8, v6

    move v6, v9

    move-object v9, v5

    move-wide/from16 v4, v21

    .line 2636
    :goto_0
    if-nez v9, :cond_1

    .line 2637
    const-string v9, "_id"

    .line 2640
    :cond_1
    if-eqz v8, :cond_2

    .line 2641
    const-string v13, "="

    invoke-static {v7, v9, v13, v8}, Lcom/google/android/gsf/talk/TalkProvider;->appendWhere(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2646
    :cond_2
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    move-object v0, v12

    move-object v1, v11

    move-object v2, v8

    move-object/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v8

    .line 2649
    if-eqz v10, :cond_4

    .line 2650
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object v0, v12

    move-object v1, v10

    move-object v2, v7

    move-object/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v7

    add-int/2addr v7, v8

    .line 2653
    :goto_1
    if-eqz v6, :cond_3

    if-lez v7, :cond_3

    .line 2656
    move-object/from16 v0, p0

    move-wide v1, v4

    invoke-direct {v0, v1, v2}, Lcom/google/android/gsf/talk/TalkProvider;->performContactRemovalCleanup(J)V

    .line 2659
    :cond_3
    return v7

    .line 2378
    :sswitch_2
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v6

    const/4 v8, 0x1

    invoke-interface {v6, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    move-object/from16 v6, p1

    .line 2381
    :sswitch_3
    const-string v8, "accountStatus"

    .line 2382
    sget-object v13, Lcom/google/android/gsf/TalkContract$AccountStatus;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    move-object v1, v13

    invoke-direct {v0, v1}, Lcom/google/android/gsf/talk/TalkProvider;->addToNotifyUris(Landroid/net/Uri;)V

    move-wide/from16 v21, v10

    move-object v10, v4

    move-object v11, v8

    move-object v8, v6

    move v6, v9

    move-object v9, v5

    move-wide/from16 v4, v21

    .line 2383
    goto :goto_0

    .line 2387
    :sswitch_4
    const-string v8, "contacts"

    .line 2388
    const/4 v9, 0x1

    .line 2389
    sget-object v13, Lcom/google/android/gsf/TalkContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    move-object v1, v13

    invoke-direct {v0, v1}, Lcom/google/android/gsf/talk/TalkProvider;->addToNotifyUris(Landroid/net/Uri;)V

    .line 2390
    sget-object v13, Lcom/google/android/gsf/TalkContract$Contacts;->CONTENT_URI_CONTACTS_BAREBONE:Landroid/net/Uri;

    move-object/from16 v0, p0

    move-object v1, v13

    invoke-direct {v0, v1}, Lcom/google/android/gsf/talk/TalkProvider;->addToNotifyUris(Landroid/net/Uri;)V

    move-wide/from16 v21, v10

    move-object v10, v4

    move-object v11, v8

    move-object v8, v6

    move v6, v9

    move-object v9, v5

    move-wide/from16 v4, v21

    .line 2391
    goto :goto_0

    .line 2394
    :sswitch_5
    const-string v6, "contacts"

    .line 2395
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v8

    const/4 v9, 0x1

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 2398
    :try_start_0
    invoke-static/range {p1 .. p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v8

    .line 2403
    const/4 v10, 0x1

    .line 2404
    sget-object v11, Lcom/google/android/gsf/TalkContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    move-object v1, v11

    invoke-direct {v0, v1}, Lcom/google/android/gsf/talk/TalkProvider;->addToNotifyUris(Landroid/net/Uri;)V

    .line 2405
    sget-object v11, Lcom/google/android/gsf/TalkContract$Contacts;->CONTENT_URI_CONTACTS_BAREBONE:Landroid/net/Uri;

    move-object/from16 v0, p0

    move-object v1, v11

    invoke-direct {v0, v1}, Lcom/google/android/gsf/talk/TalkProvider;->addToNotifyUris(Landroid/net/Uri;)V

    move-object v11, v6

    move v6, v10

    move-object v10, v4

    move-object/from16 v21, v5

    move-wide v4, v8

    move-object/from16 v8, p1

    move-object/from16 v9, v21

    .line 2406
    goto/16 :goto_0

    .line 2399
    :catch_0
    move-exception v4

    .line 2400
    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-direct {v4}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v4

    .line 2409
    :sswitch_6
    const-string v8, "contactsEtag"

    move-wide/from16 v21, v10

    move-object v10, v4

    move-object v11, v8

    move-object v8, v6

    move v6, v9

    move-object v9, v5

    move-wide/from16 v4, v21

    .line 2410
    goto/16 :goto_0

    .line 2413
    :sswitch_7
    const-string v6, "contactsEtag"

    .line 2414
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v8

    const/4 v13, 0x1

    invoke-interface {v8, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    move-object/from16 v8, p1

    move/from16 v21, v9

    move-object v9, v5

    move-wide/from16 v22, v10

    move-object v10, v4

    move-object v11, v6

    move-wide/from16 v4, v22

    move/from16 v6, v21

    .line 2415
    goto/16 :goto_0

    .line 2418
    :sswitch_8
    const-string v8, "messages"

    move-wide/from16 v21, v10

    move-object v10, v4

    move-object v11, v8

    move-object v8, v6

    move v6, v9

    move-object v9, v5

    move-wide/from16 v4, v21

    .line 2419
    goto/16 :goto_0

    .line 2422
    :sswitch_9
    const-string v4, "messages"

    .line 2423
    const-string v8, "inMemoryMessages"

    .line 2425
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v13

    const/4 v14, 0x1

    invoke-interface {v13, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-static/range {p2 .. p2}, Lcom/google/android/gsf/talk/TalkProvider;->decodeURLSegment(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 2427
    :try_start_1
    invoke-static {v13}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    .line 2432
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v14

    const/4 v15, 0x2

    invoke-interface {v14, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static/range {p1 .. p1}, Lcom/google/android/gsf/talk/TalkProvider;->decodeURLSegment(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 2433
    const-string v15, "thread_id"

    const-string v16, "="

    move-object/from16 v0, p0

    move-object v1, v12

    move-object v2, v13

    move-object v3, v14

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gsf/talk/TalkProvider;->getContactId(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v13

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    move-object v0, v7

    move-object v1, v15

    move-object/from16 v2, v16

    move-object v3, v13

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/gsf/talk/TalkProvider;->appendWhere(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2436
    sget-object v13, Lcom/google/android/gsf/TalkContract$Messages;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    move-object v1, v13

    invoke-direct {v0, v1}, Lcom/google/android/gsf/talk/TalkProvider;->addToNotifyUris(Landroid/net/Uri;)V

    move-wide/from16 v21, v10

    move-object v10, v8

    move-object v11, v4

    move-object v8, v6

    move v6, v9

    move-object v9, v5

    move-wide/from16 v4, v21

    .line 2437
    goto/16 :goto_0

    .line 2428
    :catch_1
    move-exception v4

    .line 2429
    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-direct {v4}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v4

    .line 2440
    :sswitch_a
    const-string v4, "messages"

    .line 2441
    const-string v8, "inMemoryMessages"

    .line 2444
    :try_start_2
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v13

    const/4 v14, 0x1

    invoke-interface {v13, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static/range {p1 .. p1}, Lcom/google/android/gsf/talk/TalkProvider;->decodeURLSegment(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    move-result-wide v13

    .line 2449
    const-string v15, "thread_id"

    const-string v16, "="

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    move-object v0, v7

    move-object v1, v15

    move-object/from16 v2, v16

    move-object v3, v13

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/gsf/talk/TalkProvider;->appendWhere(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2450
    sget-object v13, Lcom/google/android/gsf/TalkContract$Messages;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    move-object v1, v13

    invoke-direct {v0, v1}, Lcom/google/android/gsf/talk/TalkProvider;->addToNotifyUris(Landroid/net/Uri;)V

    move-wide/from16 v21, v10

    move-object v10, v8

    move-object v11, v4

    move-object v8, v6

    move v6, v9

    move-object v9, v5

    move-wide/from16 v4, v21

    .line 2451
    goto/16 :goto_0

    .line 2445
    :catch_2
    move-exception v4

    .line 2446
    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-direct {v4}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v4

    .line 2454
    :sswitch_b
    const-string v8, "messages"

    .line 2456
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v13

    const/4 v14, 0x1

    invoke-interface {v13, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static/range {p1 .. p1}, Lcom/google/android/gsf/talk/TalkProvider;->decodeURLSegment(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 2457
    const-string v14, "thread_id"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "account=\'"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v15, "\'"

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    move-object v1, v14

    move-object v2, v13

    invoke-direct {v0, v1, v2}, Lcom/google/android/gsf/talk/TalkProvider;->buildContactIdSelection(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v7, v13}, Lcom/google/android/gsf/talk/TalkProvider;->appendWhere(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 2459
    sget-object v13, Lcom/google/android/gsf/TalkContract$Messages;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    move-object v1, v13

    invoke-direct {v0, v1}, Lcom/google/android/gsf/talk/TalkProvider;->addToNotifyUris(Landroid/net/Uri;)V

    move-wide/from16 v21, v10

    move-object v10, v4

    move-object v11, v8

    move-object v8, v6

    move v6, v9

    move-object v9, v5

    move-wide/from16 v4, v21

    .line 2460
    goto/16 :goto_0

    .line 2463
    :sswitch_c
    const-string v6, "messages"

    .line 2464
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v8

    const/4 v13, 0x1

    invoke-interface {v8, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 2465
    sget-object v8, Lcom/google/android/gsf/TalkContract$Messages;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    move-object v1, v8

    invoke-direct {v0, v1}, Lcom/google/android/gsf/talk/TalkProvider;->addToNotifyUris(Landroid/net/Uri;)V

    move-object/from16 v8, p1

    move/from16 v21, v9

    move-object v9, v5

    move-wide/from16 v22, v10

    move-object v10, v4

    move-object v11, v6

    move-wide/from16 v4, v22

    move/from16 v6, v21

    .line 2466
    goto/16 :goto_0

    .line 2469
    :sswitch_d
    const-string v8, "inMemoryMessages"

    move-wide/from16 v21, v10

    move-object v10, v4

    move-object v11, v8

    move-object v8, v6

    move v6, v9

    move-object v9, v5

    move-wide/from16 v4, v21

    .line 2470
    goto/16 :goto_0

    .line 2473
    :sswitch_e
    const-string v8, "inMemoryMessages"

    .line 2475
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v13

    const/4 v14, 0x1

    invoke-interface {v13, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-static/range {p2 .. p2}, Lcom/google/android/gsf/talk/TalkProvider;->decodeURLSegment(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 2477
    :try_start_3
    invoke-static {v13}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_3

    move-result-wide v14

    .line 2482
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v16

    const/16 v17, 0x2

    invoke-interface/range {v16 .. v17}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static/range {p1 .. p1}, Lcom/google/android/gsf/talk/TalkProvider;->decodeURLSegment(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 2483
    const-string v17, "thread_id"

    const-string v18, "="

    move-object/from16 v0, p0

    move-object v1, v12

    move-object v2, v13

    move-object/from16 v3, v16

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gsf/talk/TalkProvider;->getContactId(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v19

    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    move-object v0, v7

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    move-object v3, v13

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/gsf/talk/TalkProvider;->appendWhere(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2486
    sget-object v13, Lcom/google/android/gsf/TalkContract$Messages;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    move-object v1, v13

    invoke-direct {v0, v1}, Lcom/google/android/gsf/talk/TalkProvider;->addToNotifyUris(Landroid/net/Uri;)V

    .line 2487
    invoke-static/range {v14 .. v16}, Lcom/google/android/gsf/TalkContract$Messages;->getContentUriByContact(JLjava/lang/String;)Landroid/net/Uri;

    move-result-object v13

    move-object/from16 v0, p0

    move-object v1, v13

    invoke-direct {v0, v1}, Lcom/google/android/gsf/talk/TalkProvider;->addToNotifyUris(Landroid/net/Uri;)V

    move-wide/from16 v21, v10

    move-object v10, v4

    move-object v11, v8

    move-object v8, v6

    move v6, v9

    move-object v9, v5

    move-wide/from16 v4, v21

    .line 2488
    goto/16 :goto_0

    .line 2478
    :catch_3
    move-exception v4

    .line 2479
    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-direct {v4}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v4

    .line 2491
    :sswitch_f
    const-string v8, "inMemoryMessages"

    .line 2494
    :try_start_4
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v13

    const/4 v14, 0x1

    invoke-interface {v13, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static/range {p1 .. p1}, Lcom/google/android/gsf/talk/TalkProvider;->decodeURLSegment(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_4

    move-result-wide v13

    .line 2499
    const-string v15, "thread_id"

    const-string v16, "="

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    move-object v0, v7

    move-object v1, v15

    move-object/from16 v2, v16

    move-object/from16 v3, v17

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/gsf/talk/TalkProvider;->appendWhere(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2501
    sget-object v15, Lcom/google/android/gsf/TalkContract$Messages;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    move-object v1, v15

    invoke-direct {v0, v1}, Lcom/google/android/gsf/talk/TalkProvider;->addToNotifyUris(Landroid/net/Uri;)V

    .line 2502
    invoke-static {v13, v14}, Lcom/google/android/gsf/TalkContract$Messages;->getContentUriByThreadId(J)Landroid/net/Uri;

    move-result-object v13

    move-object/from16 v0, p0

    move-object v1, v13

    invoke-direct {v0, v1}, Lcom/google/android/gsf/talk/TalkProvider;->addToNotifyUris(Landroid/net/Uri;)V

    move-wide/from16 v21, v10

    move-object v10, v4

    move-object v11, v8

    move-object v8, v6

    move v6, v9

    move-object v9, v5

    move-wide/from16 v4, v21

    .line 2503
    goto/16 :goto_0

    .line 2495
    :catch_4
    move-exception v4

    .line 2496
    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-direct {v4}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v4

    .line 2506
    :sswitch_10
    const-string v8, "inMemoryMessages"

    .line 2508
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v13

    const/4 v14, 0x1

    invoke-interface {v13, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static/range {p1 .. p1}, Lcom/google/android/gsf/talk/TalkProvider;->decodeURLSegment(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 2509
    const-string v14, "thread_id"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "account=\'"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v15, "\'"

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    move-object v1, v14

    move-object v2, v13

    invoke-direct {v0, v1, v2}, Lcom/google/android/gsf/talk/TalkProvider;->buildContactIdSelection(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v7, v13}, Lcom/google/android/gsf/talk/TalkProvider;->appendWhere(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 2513
    sget-object v13, Lcom/google/android/gsf/TalkContract$Messages;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    move-object v1, v13

    invoke-direct {v0, v1}, Lcom/google/android/gsf/talk/TalkProvider;->addToNotifyUris(Landroid/net/Uri;)V

    move-wide/from16 v21, v10

    move-object v10, v4

    move-object v11, v8

    move-object v8, v6

    move v6, v9

    move-object v9, v5

    move-wide/from16 v4, v21

    .line 2514
    goto/16 :goto_0

    .line 2517
    :sswitch_11
    const-string v6, "inMemoryMessages"

    .line 2518
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v8

    const/4 v13, 0x1

    invoke-interface {v8, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 2519
    sget-object v8, Lcom/google/android/gsf/TalkContract$Messages;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    move-object v1, v8

    invoke-direct {v0, v1}, Lcom/google/android/gsf/talk/TalkProvider;->addToNotifyUris(Landroid/net/Uri;)V

    move-object/from16 v8, p1

    move/from16 v21, v9

    move-object v9, v5

    move-wide/from16 v22, v10

    move-object v10, v4

    move-object v11, v6

    move-wide/from16 v4, v22

    move/from16 v6, v21

    .line 2520
    goto/16 :goto_0

    .line 2523
    :sswitch_12
    const-string v8, "groupMembers"

    move-wide/from16 v21, v10

    move-object v10, v4

    move-object v11, v8

    move-object v8, v6

    move v6, v9

    move-object v9, v5

    move-wide/from16 v4, v21

    .line 2524
    goto/16 :goto_0

    .line 2527
    :sswitch_13
    const-string v8, "groupMembers"

    .line 2528
    const-string v13, "groupId"

    const-string v14, "="

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v15

    const/16 v16, 0x1

    invoke-interface/range {v15 .. v16}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    invoke-static {v7, v13, v14, v15}, Lcom/google/android/gsf/talk/TalkProvider;->appendWhere(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    move-wide/from16 v21, v10

    move-object v10, v4

    move-object v11, v8

    move-object v8, v6

    move v6, v9

    move-object v9, v5

    move-wide/from16 v4, v21

    .line 2529
    goto/16 :goto_0

    .line 2532
    :sswitch_14
    const-string v8, "invitations"

    move-wide/from16 v21, v10

    move-object v10, v4

    move-object v11, v8

    move-object v8, v6

    move v6, v9

    move-object v9, v5

    move-wide/from16 v4, v21

    .line 2533
    goto/16 :goto_0

    .line 2536
    :sswitch_15
    const-string v6, "invitations"

    .line 2537
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v8

    const/4 v13, 0x1

    invoke-interface {v8, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    move-object/from16 v8, p1

    move/from16 v21, v9

    move-object v9, v5

    move-wide/from16 v22, v10

    move-object v10, v4

    move-object v11, v6

    move-wide/from16 v4, v22

    move/from16 v6, v21

    .line 2538
    goto/16 :goto_0

    .line 2541
    :sswitch_16
    const-string v8, "avatars"

    move-wide/from16 v21, v10

    move-object v10, v4

    move-object v11, v8

    move-object v8, v6

    move v6, v9

    move-object v9, v5

    move-wide/from16 v4, v21

    .line 2542
    goto/16 :goto_0

    .line 2545
    :sswitch_17
    const-string v6, "avatars"

    .line 2546
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v8

    const/4 v13, 0x1

    invoke-interface {v8, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    move-object/from16 v8, p1

    move/from16 v21, v9

    move-object v9, v5

    move-wide/from16 v22, v10

    move-object v10, v4

    move-object v11, v6

    move-wide/from16 v4, v22

    move/from16 v6, v21

    .line 2547
    goto/16 :goto_0

    .line 2550
    :sswitch_18
    const-string v5, "avatars"

    .line 2551
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v6

    const/4 v8, 0x1

    invoke-interface {v6, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 2552
    const-string v6, "account_id"

    move-object/from16 v8, p1

    move/from16 v21, v9

    move-object v9, v6

    move/from16 v6, v21

    move-wide/from16 v22, v10

    move-object v10, v4

    move-object v11, v5

    move-wide/from16 v4, v22

    .line 2553
    goto/16 :goto_0

    .line 2556
    :sswitch_19
    const-string v8, "chats"

    .line 2557
    sget-object v13, Lcom/google/android/gsf/TalkContract$Contacts;->CONTENT_URI_CHAT_CONTACTS:Landroid/net/Uri;

    move-object/from16 v0, p0

    move-object v1, v13

    invoke-direct {v0, v1}, Lcom/google/android/gsf/talk/TalkProvider;->addToNotifyUris(Landroid/net/Uri;)V

    move-wide/from16 v21, v10

    move-object v10, v4

    move-object v11, v8

    move-object v8, v6

    move v6, v9

    move-object v9, v5

    move-wide/from16 v4, v21

    .line 2558
    goto/16 :goto_0

    .line 2561
    :sswitch_1a
    const-string v6, "chats"

    .line 2563
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/google/android/gsf/talk/TalkProvider;->decodeURLSegment(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 2564
    const-string v13, "contact_id"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "account=\'"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v14, "\'"

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p0

    move-object v1, v13

    move-object v2, v8

    invoke-direct {v0, v1, v2}, Lcom/google/android/gsf/talk/TalkProvider;->buildContactIdSelection(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/google/android/gsf/talk/TalkProvider;->appendWhere(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 2569
    const/4 v8, 0x0

    .line 2570
    sget-object v13, Lcom/google/android/gsf/TalkContract$Contacts;->CONTENT_URI_CHAT_CONTACTS:Landroid/net/Uri;

    move-object/from16 v0, p0

    move-object v1, v13

    invoke-direct {v0, v1}, Lcom/google/android/gsf/talk/TalkProvider;->addToNotifyUris(Landroid/net/Uri;)V

    move-wide/from16 v21, v10

    move-object v10, v4

    move-object v11, v6

    move v6, v9

    move-object v9, v5

    move-wide/from16 v4, v21

    .line 2571
    goto/16 :goto_0

    .line 2574
    :sswitch_1b
    const-string v5, "chats"

    .line 2575
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v6

    const/4 v8, 0x1

    invoke-interface {v6, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 2576
    const-string v6, "contact_id"

    .line 2577
    sget-object v8, Lcom/google/android/gsf/TalkContract$Contacts;->CONTENT_URI_CHAT_CONTACTS:Landroid/net/Uri;

    move-object/from16 v0, p0

    move-object v1, v8

    invoke-direct {v0, v1}, Lcom/google/android/gsf/talk/TalkProvider;->addToNotifyUris(Landroid/net/Uri;)V

    move-object/from16 v8, p1

    move/from16 v21, v9

    move-object v9, v6

    move/from16 v6, v21

    move-wide/from16 v22, v10

    move-object v10, v4

    move-object v11, v5

    move-wide/from16 v4, v22

    .line 2578
    goto/16 :goto_0

    .line 2581
    :sswitch_1c
    const-string v8, "presence"

    .line 2582
    sget-object v13, Lcom/google/android/gsf/TalkContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    move-object v1, v13

    invoke-direct {v0, v1}, Lcom/google/android/gsf/talk/TalkProvider;->addToNotifyUris(Landroid/net/Uri;)V

    move-wide/from16 v21, v10

    move-object v10, v4

    move-object v11, v8

    move-object v8, v6

    move v6, v9

    move-object v9, v5

    move-wide/from16 v4, v21

    .line 2583
    goto/16 :goto_0

    .line 2586
    :sswitch_1d
    const-string v5, "presence"

    .line 2587
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v6

    const/4 v8, 0x1

    invoke-interface {v6, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 2588
    const-string v6, "contact_id"

    .line 2589
    sget-object v8, Lcom/google/android/gsf/TalkContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    move-object v1, v8

    invoke-direct {v0, v1}, Lcom/google/android/gsf/talk/TalkProvider;->addToNotifyUris(Landroid/net/Uri;)V

    move-object/from16 v8, p1

    move/from16 v21, v9

    move-object v9, v6

    move/from16 v6, v21

    move-wide/from16 v22, v10

    move-object v10, v4

    move-object v11, v5

    move-wide/from16 v4, v22

    .line 2590
    goto/16 :goto_0

    .line 2593
    :sswitch_1e
    const-string v6, "presence"

    .line 2595
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/google/android/gsf/talk/TalkProvider;->decodeURLSegment(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 2596
    const-string v13, "contact_id"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "account=\'"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v14, "\'"

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p0

    move-object v1, v13

    move-object v2, v8

    invoke-direct {v0, v1, v2}, Lcom/google/android/gsf/talk/TalkProvider;->buildContactIdSelection(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/google/android/gsf/talk/TalkProvider;->appendWhere(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 2600
    const/4 v8, 0x0

    move-wide/from16 v21, v10

    move-object v10, v4

    move-object v11, v6

    move v6, v9

    move-object v9, v5

    move-wide/from16 v4, v21

    .line 2601
    goto/16 :goto_0

    .line 2604
    :sswitch_1f
    const-string v5, "accountSettings"

    .line 2605
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v6

    const/4 v8, 0x1

    invoke-interface {v6, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 2606
    const-string v6, "account_id"

    move-object/from16 v8, p1

    move/from16 v21, v9

    move-object v9, v6

    move/from16 v6, v21

    move-wide/from16 v22, v10

    move-object v10, v4

    move-object v11, v5

    move-wide/from16 v4, v22

    .line 2607
    goto/16 :goto_0

    .line 2610
    :sswitch_20
    const-string v8, "accountSettings"

    .line 2612
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v13

    const/4 v14, 0x1

    invoke-interface {v13, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 2613
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v13

    const/4 v14, 0x2

    invoke-interface {v13, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 2615
    const-string v13, "account_id"

    const-string v14, "="

    move-object v0, v7

    move-object v1, v13

    move-object v2, v14

    move-object/from16 v3, p2

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/gsf/talk/TalkProvider;->appendWhere(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2616
    const-string v13, "name"

    const-string v14, "="

    move-object v0, v7

    move-object v1, v13

    move-object v2, v14

    move-object/from16 v3, p1

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/gsf/talk/TalkProvider;->appendWhere(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    move-wide/from16 v21, v10

    move-object v10, v4

    move-object v11, v8

    move-object v8, v6

    move v6, v9

    move-object v9, v5

    move-wide/from16 v4, v21

    .line 2617
    goto/16 :goto_0

    .line 2621
    :sswitch_21
    const-string v8, "outgoingRmqMessages"

    move-wide/from16 v21, v10

    move-object v10, v4

    move-object v11, v8

    move-object v8, v6

    move v6, v9

    move-object v9, v5

    move-wide/from16 v4, v21

    .line 2622
    goto/16 :goto_0

    .line 2625
    :sswitch_22
    const-string v8, "lastrmqid"

    move-wide/from16 v21, v10

    move-object v10, v4

    move-object v11, v8

    move-object v8, v6

    move v6, v9

    move-object v9, v5

    move-wide/from16 v4, v21

    .line 2626
    goto/16 :goto_0

    .line 2629
    :sswitch_23
    const-string v8, "s2dRmqIds"

    move-wide/from16 v21, v10

    move-object v10, v4

    move-object v11, v8

    move-object v8, v6

    move v6, v9

    move-object v9, v5

    move-wide/from16 v4, v21

    .line 2630
    goto/16 :goto_0

    :cond_4
    move v7, v8

    goto/16 :goto_1

    .line 2368
    nop

    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_1
        0xb -> :sswitch_0
        0x14 -> :sswitch_4
        0x15 -> :sswitch_4
        0x18 -> :sswitch_5
        0x25 -> :sswitch_6
        0x26 -> :sswitch_7
        0x28 -> :sswitch_1c
        0x29 -> :sswitch_1d
        0x2a -> :sswitch_1e
        0x32 -> :sswitch_8
        0x33 -> :sswitch_9
        0x34 -> :sswitch_a
        0x35 -> :sswitch_b
        0x36 -> :sswitch_c
        0x37 -> :sswitch_d
        0x38 -> :sswitch_e
        0x39 -> :sswitch_f
        0x3a -> :sswitch_10
        0x3b -> :sswitch_11
        0x41 -> :sswitch_12
        0x42 -> :sswitch_13
        0x46 -> :sswitch_16
        0x47 -> :sswitch_17
        0x48 -> :sswitch_18
        0x50 -> :sswitch_19
        0x51 -> :sswitch_1a
        0x52 -> :sswitch_1b
        0x5b -> :sswitch_1f
        0x5c -> :sswitch_20
        0x64 -> :sswitch_14
        0x65 -> :sswitch_15
        0x68 -> :sswitch_3
        0x69 -> :sswitch_2
        0xc8 -> :sswitch_21
        0xcb -> :sswitch_22
        0xcc -> :sswitch_23
    .end sparse-switch
.end method

.method private deleteWithSelection(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 1
    .parameter "db"
    .parameter "tableName"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 2323
    invoke-virtual {p1, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 2325
    .local v0, count:I
    return-void
.end method

.method private getContactId(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)J
    .locals 9
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v5, 0x0

    .line 2246
    new-instance v0, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v0}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 2247
    const-string v1, "contacts"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 2248
    sget-object v1, Lcom/google/android/gsf/talk/TalkProvider;->sContactsProjectionMap:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 2250
    iget-object v1, p0, Lcom/google/android/gsf/talk/TalkProvider;->mQueryContactIdSelectionArgs2:[Ljava/lang/String;

    aput-object p2, v1, v2

    .line 2251
    iget-object v1, p0, Lcom/google/android/gsf/talk/TalkProvider;->mQueryContactIdSelectionArgs2:[Ljava/lang/String;

    const/4 v2, 0x1

    aput-object p3, v1, v2

    .line 2253
    sget-object v2, Lcom/google/android/gsf/talk/TalkProvider;->CONTACT_ID_PROJECTION:[Ljava/lang/String;

    const-string v3, "account=? AND username LIKE ?"

    iget-object v4, p0, Lcom/google/android/gsf/talk/TalkProvider;->mQueryContactIdSelectionArgs2:[Ljava/lang/String;

    move-object v1, p1

    move-object v6, v5

    move-object v7, v5

    move-object v8, v5

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 2259
    const-wide/16 v1, 0x0

    .line 2262
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2263
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v1

    .line 2266
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 2269
    return-wide v1

    .line 2266
    :catchall_0
    move-exception v1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v1
.end method

.method private getNotifyUris()Ljava/util/HashSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashSet",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1311
    iget-object v0, p0, Lcom/google/android/gsf/talk/TalkProvider;->mThreadLocalNotifyUris:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/util/HashSet;

    return-object p0
.end method

.method private getSuggestions(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    .locals 10
    .parameter
    .parameter

    .prologue
    const/4 v9, 0x0

    const/4 v3, 0x0

    .line 2893
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "search_suggest_query"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move-object v0, v3

    .line 2923
    :goto_0
    return-object v0

    .line 2898
    :cond_1
    new-instance v0, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v0}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 2899
    const-string v1, "contacts LEFT OUTER JOIN presence ON (contacts._id = presence.contact_id)"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 2900
    sget-object v1, Lcom/google/android/gsf/talk/TalkProvider;->sSearchSuggestionsProjectionMap:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 2909
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "( \' \' || nickname LIKE \'% "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "%\' OR username LIKE \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "%\') AND "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "type!=3 AND subscriptionType>=4"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 2913
    iget-object v1, p0, Lcom/google/android/gsf/talk/TalkProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 2914
    const-string v8, "10"

    move-object v2, p2

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    move-object v7, v3

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 2917
    invoke-virtual {p0}, Lcom/google/android/gsf/talk/TalkProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f080039

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v9

    invoke-virtual {v0, v1, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 2918
    const/16 v0, 0xa

    invoke-virtual {v4, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    .line 2920
    new-instance v0, Lcom/google/android/gsf/talk/SuggestionFooterCursor;

    invoke-virtual {p0}, Lcom/google/android/gsf/talk/TalkProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v4, v9, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    const-string v6, "search"

    move-object v5, p1

    move-object v7, p1

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gsf/talk/SuggestionFooterCursor;-><init>(Landroid/content/Context;Landroid/database/Cursor;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private insertChat(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 12
    .parameter
    .parameter

    .prologue
    const-wide/16 v10, -0x1

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 1940
    const-string v0, "shortcut"

    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1943
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1945
    :try_start_0
    const-string v0, "contact_id"

    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1946
    iget-object v1, p0, Lcom/google/android/gsf/talk/TalkProvider;->mContactIdArgument:[Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    .line 1947
    const-string v1, "chats"

    sget-object v2, Lcom/google/android/gsf/talk/TalkProvider;->LOOKUP_CHATS_PROJECTION:[Ljava/lang/String;

    const-string v3, "contact_id=?"

    iget-object v4, p0, Lcom/google/android/gsf/talk/TalkProvider;->mContactIdArgument:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v0

    .line 1949
    if-eqz v0, :cond_5

    .line 1951
    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-le v1, v9, :cond_0

    .line 1952
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "got cursor with count > 1 : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1966
    :catchall_0
    move-exception v1

    :try_start_2
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1975
    :catchall_1
    move-exception v0

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 1976
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0

    .line 1955
    :cond_0
    :try_start_3
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1956
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 1958
    const-string v3, "chats"

    const-string v4, "contact_id=?"

    iget-object v5, p0, Lcom/google/android/gsf/talk/TalkProvider;->mContactIdArgument:[Ljava/lang/String;

    invoke-virtual {p1, v3, p2, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    .line 1960
    if-eq v3, v9, :cond_2

    .line 1961
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unable to properly update chats table: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_1
    move-wide v1, v10

    .line 1966
    :cond_2
    :try_start_4
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    move-wide v0, v1

    .line 1969
    :goto_0
    cmp-long v2, v0, v10

    if-nez v2, :cond_3

    .line 1970
    const-string v0, "chats"

    const-string v1, "contact_id"

    invoke-virtual {p1, v0, v1, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    .line 1972
    sget-object v2, Lcom/google/android/gsf/TalkContract$Contacts;->CONTENT_URI_CHAT_CONTACTS:Landroid/net/Uri;

    invoke-direct {p0, v2}, Lcom/google/android/gsf/talk/TalkProvider;->addToNotifyUris(Landroid/net/Uri;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1975
    :cond_3
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 1976
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1979
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_4

    .line 1980
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/google/android/gsf/TalkContract$Chats;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 1984
    :goto_1
    return-object v0

    :cond_4
    move-object v0, v8

    goto :goto_1

    :cond_5
    move-wide v0, v10

    goto :goto_0
.end method

.method private insertInternal(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 10
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v8, 0x0

    const-wide/16 v6, 0x0

    .line 1988
    .line 1993
    iget-object v0, p0, Lcom/google/android/gsf/talk/TalkProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 1994
    iget-object v0, p0, Lcom/google/android/gsf/talk/TalkProvider;->mUrlMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    .line 1997
    sparse-switch v0, :sswitch_data_0

    .line 2225
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot insert into URL: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2000
    :sswitch_0
    const-string v0, "accounts"

    const-string v2, "name"

    invoke-virtual {v1, v0, v2, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    .line 2001
    cmp-long v2, v0, v6

    if-lez v2, :cond_6

    .line 2002
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/google/android/gsf/TalkContract$Account;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 2004
    :goto_0
    sget-object v1, Lcom/google/android/gsf/TalkContract$Account;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {p0, v1}, Lcom/google/android/gsf/talk/TalkProvider;->addToNotifyUris(Landroid/net/Uri;)V

    .line 2228
    :goto_1
    return-object v0

    .line 2010
    :sswitch_1
    const-string v0, "contacts"

    const-string v2, "username"

    invoke-virtual {v1, v0, v2, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    .line 2011
    cmp-long v2, v0, v6

    if-lez v2, :cond_5

    .line 2012
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/google/android/gsf/TalkContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 2015
    :goto_2
    sget-object v1, Lcom/google/android/gsf/TalkContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {p0, v1}, Lcom/google/android/gsf/talk/TalkProvider;->addToNotifyUris(Landroid/net/Uri;)V

    .line 2016
    sget-object v1, Lcom/google/android/gsf/TalkContract$Contacts;->CONTENT_URI_CONTACTS_BAREBONE:Landroid/net/Uri;

    invoke-direct {p0, v1}, Lcom/google/android/gsf/talk/TalkProvider;->addToNotifyUris(Landroid/net/Uri;)V

    goto :goto_1

    .line 2020
    :sswitch_2
    const-string v0, "contactsEtag"

    const-string v2, "etag"

    invoke-virtual {v1, v0, v2, p2}, Landroid/database/sqlite/SQLiteDatabase;->replace(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    .line 2022
    cmp-long v2, v0, v6

    if-lez v2, :cond_2

    .line 2023
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/google/android/gsf/TalkContract$ContactsEtag;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_1

    .line 2028
    :sswitch_3
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gsf/talk/TalkProvider;->decodeURLSegment(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2030
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gsf/talk/TalkProvider;->decodeURLSegment(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2031
    const-string v3, "thread_id"

    invoke-direct {p0, v1, v2, v0}, Lcom/google/android/gsf/talk/TalkProvider;->getContactId(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p2, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2034
    sget-object v0, Lcom/google/android/gsf/TalkContract$Messages;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {p0, v0}, Lcom/google/android/gsf/talk/TalkProvider;->addToNotifyUris(Landroid/net/Uri;)V

    .line 2038
    :try_start_0
    const-string v0, "messages"

    const-string v2, "thread_id"

    invoke-virtual {v1, v0, v2, p2}, Landroid/database/sqlite/SQLiteDatabase;->insertOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    .line 2039
    cmp-long v2, v0, v6

    if-lez v2, :cond_2

    .line 2040
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/google/android/gsf/TalkContract$Messages;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto/16 :goto_1

    .line 2042
    :catch_0
    move-exception v0

    .line 2043
    const-string v1, "TalkProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[TalkProvider] caught "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " inserting message"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v8

    .line 2046
    goto/16 :goto_1

    .line 2049
    :sswitch_4
    new-array v0, v2, [Ljava/lang/String;

    const-string v2, "thread_id"

    aput-object v2, v0, v3

    invoke-direct {p0, p2, p1, v0}, Lcom/google/android/gsf/talk/TalkProvider;->appendValuesFromUrl(Landroid/content/ContentValues;Landroid/net/Uri;[Ljava/lang/String;)V

    .line 2054
    :sswitch_5
    sget-object v0, Lcom/google/android/gsf/TalkContract$Messages;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {p0, v0}, Lcom/google/android/gsf/talk/TalkProvider;->addToNotifyUris(Landroid/net/Uri;)V

    .line 2057
    :try_start_1
    const-string v0, "messages"

    const-string v2, "thread_id"

    invoke-virtual {v1, v0, v2, p2}, Landroid/database/sqlite/SQLiteDatabase;->insertOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    .line 2058
    cmp-long v2, v0, v6

    if-lez v2, :cond_2

    .line 2059
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/google/android/gsf/TalkContract$Messages;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
    :try_end_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    goto/16 :goto_1

    .line 2061
    :catch_1
    move-exception v0

    .line 2062
    const-string v1, "TalkProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[TalkProvider] caught "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " inserting message"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v8

    .line 2065
    goto/16 :goto_1

    .line 2068
    :sswitch_6
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gsf/talk/TalkProvider;->decodeURLSegment(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2070
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gsf/talk/TalkProvider;->decodeURLSegment(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2071
    const-string v3, "thread_id"

    invoke-direct {p0, v1, v2, v0}, Lcom/google/android/gsf/talk/TalkProvider;->getContactId(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p2, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2074
    sget-object v0, Lcom/google/android/gsf/TalkContract$Messages;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {p0, v0}, Lcom/google/android/gsf/talk/TalkProvider;->addToNotifyUris(Landroid/net/Uri;)V

    .line 2078
    :try_start_2
    const-string v0, "inMemoryMessages"

    const-string v2, "thread_id"

    invoke-virtual {v1, v0, v2, p2}, Landroid/database/sqlite/SQLiteDatabase;->insertOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    .line 2079
    cmp-long v2, v0, v6

    if-lez v2, :cond_2

    .line 2080
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/google/android/gsf/TalkContract$Messages;->OTR_MESSAGES_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
    :try_end_2
    .catch Landroid/database/SQLException; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v0

    goto/16 :goto_1

    .line 2083
    :catch_2
    move-exception v0

    .line 2084
    const-string v1, "TalkProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[TalkProvider] caught "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " inserting message"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v8

    .line 2087
    goto/16 :goto_1

    .line 2091
    :sswitch_7
    :try_start_3
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    const/4 v2, 0x1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gsf/talk/TalkProvider;->decodeURLSegment(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_3

    move-result-wide v2

    .line 2096
    const-string v0, "thread_id"

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p2, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2098
    sget-object v0, Lcom/google/android/gsf/TalkContract$Messages;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {p0, v0}, Lcom/google/android/gsf/talk/TalkProvider;->addToNotifyUris(Landroid/net/Uri;)V

    .line 2104
    :sswitch_8
    :try_start_4
    const-string v0, "inMemoryMessages"

    const-string v2, "thread_id"

    invoke-virtual {v1, v0, v2, p2}, Landroid/database/sqlite/SQLiteDatabase;->insertOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    .line 2105
    cmp-long v2, v0, v6

    if-lez v2, :cond_2

    .line 2106
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/google/android/gsf/TalkContract$Messages;->OTR_MESSAGES_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
    :try_end_4
    .catch Landroid/database/SQLException; {:try_start_4 .. :try_end_4} :catch_4

    move-result-object v0

    goto/16 :goto_1

    .line 2092
    :catch_3
    move-exception v0

    .line 2093
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 2109
    :catch_4
    move-exception v0

    .line 2110
    const-string v1, "TalkProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[TalkProvider] caught "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " inserting message"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v8

    .line 2113
    goto/16 :goto_1

    .line 2116
    :sswitch_9
    const-string v0, "invitations"

    invoke-virtual {v1, v0, v8, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    .line 2117
    cmp-long v2, v0, v6

    if-lez v2, :cond_2

    .line 2118
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/google/android/gsf/TalkContract$Invitation;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto/16 :goto_1

    .line 2123
    :sswitch_a
    const-string v0, "groupMembers"

    const-string v2, "nickname"

    invoke-virtual {v1, v0, v2, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    .line 2124
    cmp-long v2, v0, v6

    if-lez v2, :cond_2

    .line 2125
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/google/android/gsf/TalkContract$GroupMembers;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto/16 :goto_1

    .line 2130
    :sswitch_b
    new-array v0, v2, [Ljava/lang/String;

    const-string v2, "groupId"

    aput-object v2, v0, v3

    invoke-direct {p0, p2, p1, v0}, Lcom/google/android/gsf/talk/TalkProvider;->appendValuesFromUrl(Landroid/content/ContentValues;Landroid/net/Uri;[Ljava/lang/String;)V

    .line 2131
    const-string v0, "groupMembers"

    const-string v2, "nickname"

    invoke-virtual {v1, v0, v2, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    .line 2132
    cmp-long v2, v0, v6

    if-lez v2, :cond_2

    .line 2133
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/google/android/gsf/TalkContract$GroupMembers;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto/16 :goto_1

    .line 2138
    :sswitch_c
    new-array v0, v2, [Ljava/lang/String;

    const-string v2, "account_id"

    aput-object v2, v0, v3

    invoke-direct {p0, p2, p1, v0}, Lcom/google/android/gsf/talk/TalkProvider;->appendValuesFromUrl(Landroid/content/ContentValues;Landroid/net/Uri;[Ljava/lang/String;)V

    .line 2142
    :sswitch_d
    const-string v0, "avatars"

    const-string v2, "contact"

    invoke-virtual {v1, v0, v2, p2}, Landroid/database/sqlite/SQLiteDatabase;->replace(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    .line 2143
    cmp-long v2, v0, v6

    if-lez v2, :cond_2

    .line 2144
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/google/android/gsf/TalkContract$Avatars;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto/16 :goto_1

    .line 2149
    :sswitch_e
    new-array v0, v2, [Ljava/lang/String;

    const-string v2, "contact_id"

    aput-object v2, v0, v3

    invoke-direct {p0, p2, p1, v0}, Lcom/google/android/gsf/talk/TalkProvider;->appendValuesFromUrl(Landroid/content/ContentValues;Landroid/net/Uri;[Ljava/lang/String;)V

    .line 2150
    invoke-direct {p0, v1, p2}, Lcom/google/android/gsf/talk/TalkProvider;->insertChat(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    goto/16 :goto_1

    .line 2157
    :sswitch_f
    invoke-direct {p0, v1, p2}, Lcom/google/android/gsf/talk/TalkProvider;->replaceContactWithContactId(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2158
    const-string v0, "TalkProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "insert chats failed for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v8

    .line 2159
    goto/16 :goto_1

    .line 2161
    :cond_0
    invoke-direct {p0, v1, p2}, Lcom/google/android/gsf/talk/TalkProvider;->insertChat(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    goto/16 :goto_1

    .line 2168
    :sswitch_10
    :try_start_5
    invoke-direct {p0, v1, p2}, Lcom/google/android/gsf/talk/TalkProvider;->replaceContactWithContactId(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2169
    const-string v0, "TalkProvider"

    const-string v1, "insert presence failed"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v8

    .line 2170
    goto/16 :goto_1

    .line 2173
    :cond_1
    const-string v0, "presence"

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2, p2}, Landroid/database/sqlite/SQLiteDatabase;->replace(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    .line 2177
    cmp-long v2, v0, v6

    if-lez v2, :cond_4

    .line 2178
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/google/android/gsf/TalkContract$Presence;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
    :try_end_5
    .catch Landroid/database/sqlite/SQLiteConstraintException; {:try_start_5 .. :try_end_5} :catch_6

    move-result-object v0

    .line 2180
    :goto_3
    :try_start_6
    sget-object v1, Lcom/google/android/gsf/TalkContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {p0, v1}, Lcom/google/android/gsf/talk/TalkProvider;->addToNotifyUris(Landroid/net/Uri;)V
    :try_end_6
    .catch Landroid/database/sqlite/SQLiteConstraintException; {:try_start_6 .. :try_end_6} :catch_5

    goto/16 :goto_1

    .line 2181
    :catch_5
    move-exception v1

    move-object v9, v1

    move-object v1, v0

    move-object v0, v9

    .line 2182
    :goto_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "internalInsert: replace presence caught "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gsf/talk/TalkProvider;->log(Ljava/lang/String;)V

    move-object v0, v1

    .line 2185
    goto/16 :goto_1

    .line 2188
    :sswitch_11
    const-string v0, "accountSettings"

    invoke-virtual {v1, v0, v8, p2}, Landroid/database/sqlite/SQLiteDatabase;->replace(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    .line 2189
    cmp-long v2, v0, v6

    if-lez v2, :cond_2

    .line 2190
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/google/android/gsf/TalkContract$AccountSettings;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto/16 :goto_1

    .line 2195
    :sswitch_12
    const-string v0, "accountStatus"

    invoke-virtual {v1, v0, v8, p2}, Landroid/database/sqlite/SQLiteDatabase;->replace(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    .line 2196
    cmp-long v2, v0, v6

    if-lez v2, :cond_3

    .line 2197
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/google/android/gsf/TalkContract$AccountStatus;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 2199
    :goto_5
    sget-object v1, Lcom/google/android/gsf/TalkContract$AccountStatus;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {p0, v1}, Lcom/google/android/gsf/talk/TalkProvider;->addToNotifyUris(Landroid/net/Uri;)V

    goto/16 :goto_1

    .line 2204
    :sswitch_13
    const-string v0, "outgoingRmqMessages"

    invoke-virtual {v1, v0, v8, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    .line 2205
    cmp-long v2, v0, v6

    if-lez v2, :cond_2

    .line 2206
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/google/android/gsf/TalkContract$OutgoingRmq;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto/16 :goto_1

    .line 2211
    :sswitch_14
    const-string v0, "lastrmqid"

    invoke-virtual {v1, v0, v8, p2}, Landroid/database/sqlite/SQLiteDatabase;->replace(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    .line 2212
    cmp-long v2, v0, v6

    if-lez v2, :cond_2

    .line 2213
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/google/android/gsf/TalkContract$LastRmqId;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto/16 :goto_1

    .line 2218
    :sswitch_15
    const-string v0, "s2dRmqIds"

    invoke-virtual {v1, v0, v8, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    .line 2219
    cmp-long v2, v0, v6

    if-lez v2, :cond_2

    .line 2220
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/google/android/gsf/TalkContract$ServerToDeviceRmqIds;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto/16 :goto_1

    .line 2181
    :catch_6
    move-exception v0

    move-object v1, v8

    goto/16 :goto_4

    :cond_2
    move-object v0, v8

    goto/16 :goto_1

    :cond_3
    move-object v0, v8

    goto/16 :goto_5

    :cond_4
    move-object v0, v8

    goto/16 :goto_3

    :cond_5
    move-object v0, v8

    goto/16 :goto_2

    :cond_6
    move-object v0, v8

    goto/16 :goto_0

    .line 1997
    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_0
        0x14 -> :sswitch_1
        0x15 -> :sswitch_1
        0x25 -> :sswitch_2
        0x28 -> :sswitch_10
        0x32 -> :sswitch_5
        0x33 -> :sswitch_3
        0x34 -> :sswitch_4
        0x37 -> :sswitch_8
        0x38 -> :sswitch_6
        0x39 -> :sswitch_7
        0x41 -> :sswitch_a
        0x42 -> :sswitch_b
        0x46 -> :sswitch_d
        0x48 -> :sswitch_c
        0x50 -> :sswitch_f
        0x52 -> :sswitch_e
        0x5a -> :sswitch_11
        0x64 -> :sswitch_9
        0x68 -> :sswitch_12
        0xc8 -> :sswitch_13
        0xcb -> :sswitch_14
        0xcc -> :sswitch_15
    .end sparse-switch
.end method

.method static log(Ljava/lang/String;)V
    .locals 1
    .parameter "message"

    .prologue
    .line 2983
    const-string v0, "TalkProvider"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2984
    return-void
.end method

.method private notifyChange()V
    .locals 6

    .prologue
    .line 1503
    invoke-virtual {p0}, Lcom/google/android/gsf/talk/TalkProvider;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 1504
    .local v2, resolver:Landroid/content/ContentResolver;
    invoke-direct {p0}, Lcom/google/android/gsf/talk/TalkProvider;->getNotifyUris()Ljava/util/HashSet;

    move-result-object v1

    .line 1506
    .local v1, notifyUris:Ljava/util/HashSet;,"Ljava/util/HashSet<Landroid/net/Uri;>;"
    if-nez v1, :cond_1

    .line 1518
    :cond_0
    return-void

    .line 1515
    :cond_1
    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/Uri;

    .line 1516
    .local v3, uri:Landroid/net/Uri;
    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V

    goto :goto_0
.end method

.method private onEndTransaction()V
    .locals 1

    .prologue
    .line 1495
    iget-boolean v0, p0, Lcom/google/android/gsf/talk/TalkProvider;->mNotifyChange:Z

    if-eqz v0, :cond_0

    .line 1496
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gsf/talk/TalkProvider;->mNotifyChange:Z

    .line 1497
    invoke-direct {p0}, Lcom/google/android/gsf/talk/TalkProvider;->notifyChange()V

    .line 1499
    :cond_0
    invoke-direct {p0}, Lcom/google/android/gsf/talk/TalkProvider;->clearNotifyUrls()V

    .line 1500
    return-void
.end method

.method private performContactRemovalCleanup(J)V
    .locals 6
    .parameter

    .prologue
    const/16 v5, 0x3d

    const/4 v4, 0x0

    .line 2298
    iget-object v0, p0, Lcom/google/android/gsf/talk/TalkProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 2300
    const-wide/16 v1, 0x0

    cmp-long v1, p1, v1

    if-lez v1, :cond_0

    .line 2301
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 2304
    const-string v2, "contact_id"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 2305
    const-string v2, "presence"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v0, v2, v3, v4}, Lcom/google/android/gsf/talk/TalkProvider;->deleteWithSelection(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 2308
    const/4 v2, 0x0

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 2309
    const-string v2, "groupId"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 2310
    const-string v2, "groupMembers"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v2, v1, v4}, Lcom/google/android/gsf/talk/TalkProvider;->deleteWithSelection(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 2318
    :goto_0
    return-void

    .line 2313
    :cond_0
    const-string v1, "presence"

    const-string v2, "contact_id in (select presence.contact_id from presence left outer join contacts on presence.contact_id=contacts._id where contacts._id IS NULL)"

    invoke-direct {p0, v0, v1, v2, v4}, Lcom/google/android/gsf/talk/TalkProvider;->deleteWithSelection(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 2316
    const-string v1, "groupMembers"

    const-string v2, "groupId in (select groupMembers.groupId from groupMembers left outer join contacts on groupMembers.groupId=contacts._id where contacts._id IS NULL)"

    invoke-direct {p0, v0, v1, v2, v4}, Lcom/google/android/gsf/talk/TalkProvider;->deleteWithSelection(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_0
.end method

.method private renameOldImDatabaseFileIfFound(Landroid/content/Context;)V
    .locals 6
    .parameter "context"

    .prologue
    .line 1283
    if-nez p1, :cond_1

    .line 1284
    const-string v3, "TalkProvider"

    const-string v4, "renameOldImDatabaseFileIfFound: null context"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1304
    :cond_0
    :goto_0
    return-void

    .line 1288
    :cond_1
    const-string v3, "im.db"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 1289
    .local v2, oldFile:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1294
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "##### FOUND old database file "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/gsf/talk/TalkProvider;->log(Ljava/lang/String;)V

    .line 1297
    :try_start_0
    iget-object v3, p0, Lcom/google/android/gsf/talk/TalkProvider;->mDatabaseName:Ljava/lang/String;

    invoke-virtual {p1, v3}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 1298
    .local v1, newFile:Ljava/io/File;
    invoke-virtual {v2, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 1299
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Done renaming "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/gsf/talk/TalkProvider;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1300
    .end local v1           #newFile:Ljava/io/File;
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 1301
    .local v0, ex:Ljava/lang/Exception;
    const-string v3, "TalkProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "renameOldImDatabaseFileIfFound: failed to rename "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private replaceContactWithContactId(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;)Z
    .locals 7
    .parameter "db"
    .parameter "values"

    .prologue
    .line 1915
    const-string v4, "username"

    invoke-virtual {p2, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1916
    .local v3, username:Ljava/lang/String;
    const-string v4, "account"

    invoke-virtual {p2, v4}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    .line 1918
    .local v0, accountId:Ljava/lang/Long;
    if-eqz v3, :cond_1

    if-eqz v0, :cond_1

    .line 1919
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, p1, v4, v3}, Lcom/google/android/gsf/talk/TalkProvider;->getContactId(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v1

    .line 1921
    .local v1, contactId:J
    const-wide/16 v4, 0x0

    cmp-long v4, v1, v4

    if-nez v4, :cond_0

    .line 1922
    const-string v4, "TalkProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "replaceContactWithContactId: contactId==0!!! "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", acct="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1924
    const/4 v4, 0x0

    .line 1932
    .end local v1           #contactId:J
    :goto_0
    return v4

    .line 1927
    .restart local v1       #contactId:J
    :cond_0
    const-string v4, "contact_id"

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {p2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1928
    const-string v4, "username"

    invoke-virtual {p2, v4}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 1929
    const-string v4, "account"

    invoke-virtual {p2, v4}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 1932
    .end local v1           #contactId:J
    :cond_1
    const/4 v4, 0x1

    goto :goto_0
.end method

.method private setupImUrlMatchers(Ljava/lang/String;)V
    .locals 4
    .parameter "authority"

    .prologue
    const/16 v3, 0x82

    .line 1208
    iget-object v0, p0, Lcom/google/android/gsf/talk/TalkProvider;->mUrlMatcher:Landroid/content/UriMatcher;

    const-string v1, "accounts"

    const/16 v2, 0xa

    invoke-virtual {v0, p1, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1209
    iget-object v0, p0, Lcom/google/android/gsf/talk/TalkProvider;->mUrlMatcher:Landroid/content/UriMatcher;

    const-string v1, "accounts/#"

    const/16 v2, 0xb

    invoke-virtual {v0, p1, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1210
    iget-object v0, p0, Lcom/google/android/gsf/talk/TalkProvider;->mUrlMatcher:Landroid/content/UriMatcher;

    const-string v1, "accounts/status"

    const/16 v2, 0xc

    invoke-virtual {v0, p1, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1212
    iget-object v0, p0, Lcom/google/android/gsf/talk/TalkProvider;->mUrlMatcher:Landroid/content/UriMatcher;

    const-string v1, "contacts"

    const/16 v2, 0x14

    invoke-virtual {v0, p1, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1213
    iget-object v0, p0, Lcom/google/android/gsf/talk/TalkProvider;->mUrlMatcher:Landroid/content/UriMatcher;

    const-string v1, "contacts_barebone"

    const/16 v2, 0x15

    invoke-virtual {v0, p1, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1214
    iget-object v0, p0, Lcom/google/android/gsf/talk/TalkProvider;->mUrlMatcher:Landroid/content/UriMatcher;

    const-string v1, "contacts_chatting"

    const/16 v2, 0x16

    invoke-virtual {v0, p1, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1215
    iget-object v0, p0, Lcom/google/android/gsf/talk/TalkProvider;->mUrlMatcher:Landroid/content/UriMatcher;

    const-string v1, "contacts/blocked"

    const/16 v2, 0x17

    invoke-virtual {v0, p1, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1216
    iget-object v0, p0, Lcom/google/android/gsf/talk/TalkProvider;->mUrlMatcher:Landroid/content/UriMatcher;

    const-string v1, "contacts/#"

    const/16 v2, 0x18

    invoke-virtual {v0, p1, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1218
    iget-object v0, p0, Lcom/google/android/gsf/talk/TalkProvider;->mUrlMatcher:Landroid/content/UriMatcher;

    const-string v1, "contactsEtag"

    const/16 v2, 0x25

    invoke-virtual {v0, p1, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1219
    iget-object v0, p0, Lcom/google/android/gsf/talk/TalkProvider;->mUrlMatcher:Landroid/content/UriMatcher;

    const-string v1, "contactsEtag/#"

    const/16 v2, 0x26

    invoke-virtual {v0, p1, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1221
    iget-object v0, p0, Lcom/google/android/gsf/talk/TalkProvider;->mUrlMatcher:Landroid/content/UriMatcher;

    const-string v1, "presence"

    const/16 v2, 0x28

    invoke-virtual {v0, p1, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1222
    iget-object v0, p0, Lcom/google/android/gsf/talk/TalkProvider;->mUrlMatcher:Landroid/content/UriMatcher;

    const-string v1, "presence/#"

    const/16 v2, 0x29

    invoke-virtual {v0, p1, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1223
    iget-object v0, p0, Lcom/google/android/gsf/talk/TalkProvider;->mUrlMatcher:Landroid/content/UriMatcher;

    const-string v1, "presence/account/#"

    const/16 v2, 0x2a

    invoke-virtual {v0, p1, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1225
    iget-object v0, p0, Lcom/google/android/gsf/talk/TalkProvider;->mUrlMatcher:Landroid/content/UriMatcher;

    const-string v1, "messages"

    const/16 v2, 0x32

    invoke-virtual {v0, p1, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1226
    iget-object v0, p0, Lcom/google/android/gsf/talk/TalkProvider;->mUrlMatcher:Landroid/content/UriMatcher;

    const-string v1, "messagesByAcctAndContact/#/*"

    const/16 v2, 0x33

    invoke-virtual {v0, p1, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1227
    iget-object v0, p0, Lcom/google/android/gsf/talk/TalkProvider;->mUrlMatcher:Landroid/content/UriMatcher;

    const-string v1, "messagesByThreadId/#"

    const/16 v2, 0x34

    invoke-virtual {v0, p1, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1228
    iget-object v0, p0, Lcom/google/android/gsf/talk/TalkProvider;->mUrlMatcher:Landroid/content/UriMatcher;

    const-string v1, "messagesByAccount/#"

    const/16 v2, 0x35

    invoke-virtual {v0, p1, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1229
    iget-object v0, p0, Lcom/google/android/gsf/talk/TalkProvider;->mUrlMatcher:Landroid/content/UriMatcher;

    const-string v1, "messages/#"

    const/16 v2, 0x36

    invoke-virtual {v0, p1, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1231
    iget-object v0, p0, Lcom/google/android/gsf/talk/TalkProvider;->mUrlMatcher:Landroid/content/UriMatcher;

    const-string v1, "otrMessages"

    const/16 v2, 0x37

    invoke-virtual {v0, p1, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1232
    iget-object v0, p0, Lcom/google/android/gsf/talk/TalkProvider;->mUrlMatcher:Landroid/content/UriMatcher;

    const-string v1, "otrMessagesByAcctAndContact/#/*"

    const/16 v2, 0x38

    invoke-virtual {v0, p1, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1234
    iget-object v0, p0, Lcom/google/android/gsf/talk/TalkProvider;->mUrlMatcher:Landroid/content/UriMatcher;

    const-string v1, "otrMessagesByThreadId/#"

    const/16 v2, 0x39

    invoke-virtual {v0, p1, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1235
    iget-object v0, p0, Lcom/google/android/gsf/talk/TalkProvider;->mUrlMatcher:Landroid/content/UriMatcher;

    const-string v1, "otrMessagesByAccount/#"

    const/16 v2, 0x3a

    invoke-virtual {v0, p1, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1236
    iget-object v0, p0, Lcom/google/android/gsf/talk/TalkProvider;->mUrlMatcher:Landroid/content/UriMatcher;

    const-string v1, "otrMessages/#"

    const/16 v2, 0x3b

    invoke-virtual {v0, p1, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1238
    iget-object v0, p0, Lcom/google/android/gsf/talk/TalkProvider;->mUrlMatcher:Landroid/content/UriMatcher;

    const-string v1, "groupMembers"

    const/16 v2, 0x41

    invoke-virtual {v0, p1, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1239
    iget-object v0, p0, Lcom/google/android/gsf/talk/TalkProvider;->mUrlMatcher:Landroid/content/UriMatcher;

    const-string v1, "groupMembers/#"

    const/16 v2, 0x42

    invoke-virtual {v0, p1, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1241
    iget-object v0, p0, Lcom/google/android/gsf/talk/TalkProvider;->mUrlMatcher:Landroid/content/UriMatcher;

    const-string v1, "avatars"

    const/16 v2, 0x46

    invoke-virtual {v0, p1, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1242
    iget-object v0, p0, Lcom/google/android/gsf/talk/TalkProvider;->mUrlMatcher:Landroid/content/UriMatcher;

    const-string v1, "avatars/#"

    const/16 v2, 0x47

    invoke-virtual {v0, p1, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1243
    iget-object v0, p0, Lcom/google/android/gsf/talk/TalkProvider;->mUrlMatcher:Landroid/content/UriMatcher;

    const-string v1, "avatarsBy/#"

    const/16 v2, 0x48

    invoke-virtual {v0, p1, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1244
    iget-object v0, p0, Lcom/google/android/gsf/talk/TalkProvider;->mUrlMatcher:Landroid/content/UriMatcher;

    const-string v1, "chats"

    const/16 v2, 0x50

    invoke-virtual {v0, p1, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1245
    iget-object v0, p0, Lcom/google/android/gsf/talk/TalkProvider;->mUrlMatcher:Landroid/content/UriMatcher;

    const-string v1, "chats/account/#"

    const/16 v2, 0x51

    invoke-virtual {v0, p1, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1246
    iget-object v0, p0, Lcom/google/android/gsf/talk/TalkProvider;->mUrlMatcher:Landroid/content/UriMatcher;

    const-string v1, "chats/#"

    const/16 v2, 0x52

    invoke-virtual {v0, p1, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1248
    iget-object v0, p0, Lcom/google/android/gsf/talk/TalkProvider;->mUrlMatcher:Landroid/content/UriMatcher;

    const-string v1, "accountSettings"

    const/16 v2, 0x5a

    invoke-virtual {v0, p1, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1249
    iget-object v0, p0, Lcom/google/android/gsf/talk/TalkProvider;->mUrlMatcher:Landroid/content/UriMatcher;

    const-string v1, "accountSettings/#"

    const/16 v2, 0x5b

    invoke-virtual {v0, p1, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1250
    iget-object v0, p0, Lcom/google/android/gsf/talk/TalkProvider;->mUrlMatcher:Landroid/content/UriMatcher;

    const-string v1, "accountSettings/#/*"

    const/16 v2, 0x5c

    invoke-virtual {v0, p1, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1253
    iget-object v0, p0, Lcom/google/android/gsf/talk/TalkProvider;->mUrlMatcher:Landroid/content/UriMatcher;

    const-string v1, "invitations"

    const/16 v2, 0x64

    invoke-virtual {v0, p1, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1254
    iget-object v0, p0, Lcom/google/android/gsf/talk/TalkProvider;->mUrlMatcher:Landroid/content/UriMatcher;

    const-string v1, "invitations/#"

    const/16 v2, 0x65

    invoke-virtual {v0, p1, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1256
    iget-object v0, p0, Lcom/google/android/gsf/talk/TalkProvider;->mUrlMatcher:Landroid/content/UriMatcher;

    const-string v1, "accountStatus"

    const/16 v2, 0x68

    invoke-virtual {v0, p1, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1257
    iget-object v0, p0, Lcom/google/android/gsf/talk/TalkProvider;->mUrlMatcher:Landroid/content/UriMatcher;

    const-string v1, "accountStatus/#"

    const/16 v2, 0x69

    invoke-virtual {v0, p1, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1258
    iget-object v0, p0, Lcom/google/android/gsf/talk/TalkProvider;->mUrlMatcher:Landroid/content/UriMatcher;

    const-string v1, "accountStatus/new_messages"

    const/16 v2, 0x6a

    invoke-virtual {v0, p1, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1260
    iget-object v0, p0, Lcom/google/android/gsf/talk/TalkProvider;->mUrlMatcher:Landroid/content/UriMatcher;

    const-string v1, "search_suggest_query"

    invoke-virtual {v0, p1, v1, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1262
    iget-object v0, p0, Lcom/google/android/gsf/talk/TalkProvider;->mUrlMatcher:Landroid/content/UriMatcher;

    const-string v1, "search_suggest_query/*"

    invoke-virtual {v0, p1, v1, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1264
    return-void
.end method

.method private setupMcsUrlMatchers(Ljava/lang/String;)V
    .locals 3
    .parameter "authority"

    .prologue
    .line 1267
    iget-object v0, p0, Lcom/google/android/gsf/talk/TalkProvider;->mUrlMatcher:Landroid/content/UriMatcher;

    const-string v1, "outgoingRmqMessages"

    const/16 v2, 0xc8

    invoke-virtual {v0, p1, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1268
    iget-object v0, p0, Lcom/google/android/gsf/talk/TalkProvider;->mUrlMatcher:Landroid/content/UriMatcher;

    const-string v1, "outgoingRmqMessages/#"

    const/16 v2, 0xc9

    invoke-virtual {v0, p1, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1269
    iget-object v0, p0, Lcom/google/android/gsf/talk/TalkProvider;->mUrlMatcher:Landroid/content/UriMatcher;

    const-string v1, "outgoingHighestRmqId"

    const/16 v2, 0xca

    invoke-virtual {v0, p1, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1270
    iget-object v0, p0, Lcom/google/android/gsf/talk/TalkProvider;->mUrlMatcher:Landroid/content/UriMatcher;

    const-string v1, "lastRmqId"

    const/16 v2, 0xcb

    invoke-virtual {v0, p1, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1271
    iget-object v0, p0, Lcom/google/android/gsf/talk/TalkProvider;->mUrlMatcher:Landroid/content/UriMatcher;

    const-string v1, "s2dids"

    const/16 v2, 0xcc

    invoke-virtual {v0, p1, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1272
    return-void
.end method

.method private updateInternal(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 19
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2665
    const/4 v5, 0x0

    .line 2666
    const/4 v6, 0x0

    .line 2673
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 2674
    if-eqz p3, :cond_0

    .line 2675
    move-object v0, v7

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2678
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gsf/talk/TalkProvider;->mUrlMatcher:Landroid/content/UriMatcher;

    move-object v8, v0

    move-object v0, v8

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v8

    .line 2679
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gsf/talk/TalkProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    move-object v9, v0

    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v9

    .line 2681
    sparse-switch v8, :sswitch_data_0

    .line 2875
    new-instance v5, Ljava/lang/UnsupportedOperationException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Cannot update URL: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 2683
    :sswitch_0
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v6

    const/4 v8, 0x1

    invoke-interface {v6, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    move-object/from16 v6, p1

    .line 2686
    :sswitch_1
    const-string v8, "accounts"

    .line 2687
    sget-object v10, Lcom/google/android/gsf/TalkContract$AccountStatus;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    move-object v1, v10

    invoke-direct {v0, v1}, Lcom/google/android/gsf/talk/TalkProvider;->addToNotifyUris(Landroid/net/Uri;)V

    move-object/from16 v18, v6

    move-object v6, v5

    move-object/from16 v5, v18

    .line 2878
    :goto_0
    if-nez v6, :cond_1

    .line 2879
    const-string v6, "_id"

    .line 2881
    :cond_1
    if-eqz v5, :cond_2

    .line 2882
    const-string v10, "="

    invoke-static {v7, v6, v10, v5}, Lcom/google/android/gsf/talk/TalkProvider;->appendWhere(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2887
    :cond_2
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v0, v9

    move-object v1, v8

    move-object/from16 v2, p2

    move-object v3, v5

    move-object/from16 v4, p4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v5

    return v5

    .line 2691
    :sswitch_2
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v6

    const/4 v8, 0x1

    invoke-interface {v6, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    move-object/from16 v6, p1

    .line 2694
    :sswitch_3
    const-string v8, "accountStatus"

    .line 2695
    sget-object v10, Lcom/google/android/gsf/TalkContract$AccountStatus;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    move-object v1, v10

    invoke-direct {v0, v1}, Lcom/google/android/gsf/talk/TalkProvider;->addToNotifyUris(Landroid/net/Uri;)V

    move-object/from16 v18, v6

    move-object v6, v5

    move-object/from16 v5, v18

    .line 2696
    goto :goto_0

    .line 2700
    :sswitch_4
    const-string v8, "contacts"

    .line 2701
    sget-object v10, Lcom/google/android/gsf/TalkContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    move-object v1, v10

    invoke-direct {v0, v1}, Lcom/google/android/gsf/talk/TalkProvider;->addToNotifyUris(Landroid/net/Uri;)V

    .line 2702
    sget-object v10, Lcom/google/android/gsf/TalkContract$Contacts;->CONTENT_URI_CONTACTS_BAREBONE:Landroid/net/Uri;

    move-object/from16 v0, p0

    move-object v1, v10

    invoke-direct {v0, v1}, Lcom/google/android/gsf/talk/TalkProvider;->addToNotifyUris(Landroid/net/Uri;)V

    move-object/from16 v18, v6

    move-object v6, v5

    move-object/from16 v5, v18

    .line 2703
    goto :goto_0

    .line 2706
    :sswitch_5
    const-string v6, "contacts"

    .line 2707
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v8

    const/4 v10, 0x1

    invoke-interface {v8, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 2708
    sget-object v8, Lcom/google/android/gsf/TalkContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    move-object v1, v8

    invoke-direct {v0, v1}, Lcom/google/android/gsf/talk/TalkProvider;->addToNotifyUris(Landroid/net/Uri;)V

    .line 2709
    sget-object v8, Lcom/google/android/gsf/TalkContract$Contacts;->CONTENT_URI_CONTACTS_BAREBONE:Landroid/net/Uri;

    move-object/from16 v0, p0

    move-object v1, v8

    invoke-direct {v0, v1}, Lcom/google/android/gsf/talk/TalkProvider;->addToNotifyUris(Landroid/net/Uri;)V

    move-object v8, v6

    move-object v6, v5

    move-object/from16 v5, p1

    .line 2710
    goto :goto_0

    .line 2713
    :sswitch_6
    const-string v8, "contactsEtag"

    move-object/from16 v18, v6

    move-object v6, v5

    move-object/from16 v5, v18

    .line 2714
    goto :goto_0

    .line 2717
    :sswitch_7
    const-string v6, "contactsEtag"

    .line 2718
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v8

    const/4 v10, 0x1

    invoke-interface {v8, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    move-object v8, v6

    move-object v6, v5

    move-object/from16 v5, p0

    .line 2719
    goto/16 :goto_0

    .line 2722
    :sswitch_8
    const-string v8, "messages"

    move-object/from16 v18, v6

    move-object v6, v5

    move-object/from16 v5, v18

    .line 2723
    goto/16 :goto_0

    .line 2726
    :sswitch_9
    const-string v8, "messages"

    .line 2728
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v10

    const/4 v11, 0x1

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    invoke-static/range {p3 .. p3}, Lcom/google/android/gsf/talk/TalkProvider;->decodeURLSegment(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 2730
    :try_start_0
    invoke-static {v10}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2735
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v11

    const/4 v12, 0x2

    invoke-interface {v11, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static/range {p1 .. p1}, Lcom/google/android/gsf/talk/TalkProvider;->decodeURLSegment(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 2736
    const-string v12, "thread_id"

    const-string v13, "="

    move-object/from16 v0, p0

    move-object v1, v9

    move-object v2, v10

    move-object v3, v11

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gsf/talk/TalkProvider;->getContactId(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-static {v7, v12, v13, v10}, Lcom/google/android/gsf/talk/TalkProvider;->appendWhere(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2738
    sget-object v10, Lcom/google/android/gsf/TalkContract$Messages;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    move-object v1, v10

    invoke-direct {v0, v1}, Lcom/google/android/gsf/talk/TalkProvider;->addToNotifyUris(Landroid/net/Uri;)V

    move-object/from16 v18, v6

    move-object v6, v5

    move-object/from16 v5, v18

    .line 2739
    goto/16 :goto_0

    .line 2731
    :catch_0
    move-exception v5

    .line 2732
    new-instance v5, Ljava/lang/IllegalArgumentException;

    invoke-direct {v5}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v5

    .line 2742
    :sswitch_a
    const-string v8, "messages"

    .line 2745
    :try_start_1
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v10

    const/4 v11, 0x1

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static/range {p1 .. p1}, Lcom/google/android/gsf/talk/TalkProvider;->decodeURLSegment(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-wide v10

    .line 2750
    const-string v12, "thread_id"

    const-string v13, "="

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-static {v7, v12, v13, v10}, Lcom/google/android/gsf/talk/TalkProvider;->appendWhere(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2751
    sget-object v10, Lcom/google/android/gsf/TalkContract$Messages;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    move-object v1, v10

    invoke-direct {v0, v1}, Lcom/google/android/gsf/talk/TalkProvider;->addToNotifyUris(Landroid/net/Uri;)V

    move-object/from16 v18, v6

    move-object v6, v5

    move-object/from16 v5, v18

    .line 2752
    goto/16 :goto_0

    .line 2746
    :catch_1
    move-exception v5

    .line 2747
    new-instance v5, Ljava/lang/IllegalArgumentException;

    invoke-direct {v5}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v5

    .line 2755
    :sswitch_b
    const-string v6, "messages"

    .line 2756
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v8

    const/4 v10, 0x1

    invoke-interface {v8, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 2757
    sget-object v8, Lcom/google/android/gsf/TalkContract$Messages;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    move-object v1, v8

    invoke-direct {v0, v1}, Lcom/google/android/gsf/talk/TalkProvider;->addToNotifyUris(Landroid/net/Uri;)V

    move-object v8, v6

    move-object v6, v5

    move-object/from16 v5, p1

    .line 2758
    goto/16 :goto_0

    .line 2761
    :sswitch_c
    const-string v8, "inMemoryMessages"

    move-object/from16 v18, v6

    move-object v6, v5

    move-object/from16 v5, v18

    .line 2762
    goto/16 :goto_0

    .line 2765
    :sswitch_d
    const-string v8, "inMemoryMessages"

    .line 2767
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v10

    const/4 v11, 0x1

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    invoke-static/range {p3 .. p3}, Lcom/google/android/gsf/talk/TalkProvider;->decodeURLSegment(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 2769
    :try_start_2
    invoke-static {v10}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    move-result-wide v11

    .line 2774
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v13

    const/4 v14, 0x2

    invoke-interface {v13, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static/range {p1 .. p1}, Lcom/google/android/gsf/talk/TalkProvider;->decodeURLSegment(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 2775
    const-string v14, "thread_id"

    const-string v15, "="

    move-object/from16 v0, p0

    move-object v1, v9

    move-object v2, v10

    move-object v3, v13

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gsf/talk/TalkProvider;->getContactId(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-static {v7, v14, v15, v10}, Lcom/google/android/gsf/talk/TalkProvider;->appendWhere(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2778
    sget-object v10, Lcom/google/android/gsf/TalkContract$Messages;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    move-object v1, v10

    invoke-direct {v0, v1}, Lcom/google/android/gsf/talk/TalkProvider;->addToNotifyUris(Landroid/net/Uri;)V

    .line 2779
    invoke-static {v11, v12, v13}, Lcom/google/android/gsf/TalkContract$Messages;->getContentUriByContact(JLjava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    move-object/from16 v0, p0

    move-object v1, v10

    invoke-direct {v0, v1}, Lcom/google/android/gsf/talk/TalkProvider;->addToNotifyUris(Landroid/net/Uri;)V

    move-object/from16 v18, v6

    move-object v6, v5

    move-object/from16 v5, v18

    .line 2780
    goto/16 :goto_0

    .line 2770
    :catch_2
    move-exception v5

    .line 2771
    new-instance v5, Ljava/lang/IllegalArgumentException;

    invoke-direct {v5}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v5

    .line 2783
    :sswitch_e
    const-string v8, "inMemoryMessages"

    .line 2786
    :try_start_3
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v10

    const/4 v11, 0x1

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static/range {p1 .. p1}, Lcom/google/android/gsf/talk/TalkProvider;->decodeURLSegment(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_3

    move-result-wide v10

    .line 2791
    const-string v12, "thread_id"

    const-string v13, "="

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-static {v7, v12, v13, v14}, Lcom/google/android/gsf/talk/TalkProvider;->appendWhere(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2793
    sget-object v12, Lcom/google/android/gsf/TalkContract$Messages;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    move-object v1, v12

    invoke-direct {v0, v1}, Lcom/google/android/gsf/talk/TalkProvider;->addToNotifyUris(Landroid/net/Uri;)V

    .line 2794
    invoke-static {v10, v11}, Lcom/google/android/gsf/TalkContract$Messages;->getContentUriByThreadId(J)Landroid/net/Uri;

    move-result-object v10

    move-object/from16 v0, p0

    move-object v1, v10

    invoke-direct {v0, v1}, Lcom/google/android/gsf/talk/TalkProvider;->addToNotifyUris(Landroid/net/Uri;)V

    move-object/from16 v18, v6

    move-object v6, v5

    move-object/from16 v5, v18

    .line 2795
    goto/16 :goto_0

    .line 2787
    :catch_3
    move-exception v5

    .line 2788
    new-instance v5, Ljava/lang/IllegalArgumentException;

    invoke-direct {v5}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v5

    .line 2798
    :sswitch_f
    const-string v6, "inMemoryMessages"

    .line 2799
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v8

    const/4 v10, 0x1

    invoke-interface {v8, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 2800
    sget-object v8, Lcom/google/android/gsf/TalkContract$Messages;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    move-object v1, v8

    invoke-direct {v0, v1}, Lcom/google/android/gsf/talk/TalkProvider;->addToNotifyUris(Landroid/net/Uri;)V

    move-object v8, v6

    move-object v6, v5

    move-object/from16 v5, p1

    .line 2801
    goto/16 :goto_0

    .line 2804
    :sswitch_10
    const-string v8, "avatars"

    move-object/from16 v18, v6

    move-object v6, v5

    move-object/from16 v5, v18

    .line 2805
    goto/16 :goto_0

    .line 2808
    :sswitch_11
    const-string v6, "avatars"

    .line 2809
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v8

    const/4 v10, 0x1

    invoke-interface {v8, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    move-object v8, v6

    move-object v6, v5

    move-object/from16 v5, p0

    .line 2810
    goto/16 :goto_0

    .line 2813
    :sswitch_12
    const-string v5, "avatars"

    .line 2814
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v6

    const/4 v8, 0x1

    invoke-interface {v6, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 2815
    const-string v6, "account_id"

    move-object v8, v5

    move-object/from16 v5, p0

    .line 2816
    goto/16 :goto_0

    .line 2819
    :sswitch_13
    const-string v8, "chats"

    move-object/from16 v18, v6

    move-object v6, v5

    move-object/from16 v5, v18

    .line 2820
    goto/16 :goto_0

    .line 2823
    :sswitch_14
    const-string v5, "chats"

    .line 2824
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v6

    const/4 v8, 0x1

    invoke-interface {v6, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 2825
    const-string v6, "contact_id"

    move-object v8, v5

    move-object/from16 v5, p0

    .line 2826
    goto/16 :goto_0

    .line 2830
    :sswitch_15
    const-string v8, "presence"

    .line 2831
    sget-object v10, Lcom/google/android/gsf/TalkContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    move-object v1, v10

    invoke-direct {v0, v1}, Lcom/google/android/gsf/talk/TalkProvider;->addToNotifyUris(Landroid/net/Uri;)V

    move-object/from16 v18, v6

    move-object v6, v5

    move-object/from16 v5, v18

    .line 2832
    goto/16 :goto_0

    .line 2835
    :sswitch_16
    const-string v5, "presence"

    .line 2836
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v6

    const/4 v8, 0x1

    invoke-interface {v6, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 2837
    const-string v6, "contact_id"

    .line 2838
    sget-object v8, Lcom/google/android/gsf/TalkContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    move-object v1, v8

    invoke-direct {v0, v1}, Lcom/google/android/gsf/talk/TalkProvider;->addToNotifyUris(Landroid/net/Uri;)V

    move-object v8, v5

    move-object/from16 v5, p1

    .line 2839
    goto/16 :goto_0

    .line 2842
    :sswitch_17
    const-string v6, "invitations"

    .line 2843
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v8

    const/4 v10, 0x1

    invoke-interface {v8, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    move-object v8, v6

    move-object v6, v5

    move-object/from16 v5, p0

    .line 2844
    goto/16 :goto_0

    .line 2847
    :sswitch_18
    const-string v8, "accountSettings"

    .line 2849
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v10

    const/4 v11, 0x1

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 2850
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v10

    const/4 v11, 0x2

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 2852
    const-string v10, "account_id"

    move-object/from16 v0, p2

    move-object v1, v10

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_3

    const-string v10, "name"

    move-object/from16 v0, p2

    move-object v1, v10

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 2854
    :cond_3
    new-instance v5, Ljava/lang/SecurityException;

    const-string v6, "Cannot override the value for account_id|name"

    invoke-direct {v5, v6}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 2857
    :cond_4
    const-string v10, "account_id"

    const-string v11, "="

    move-object v0, v7

    move-object v1, v10

    move-object v2, v11

    move-object/from16 v3, p0

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/gsf/talk/TalkProvider;->appendWhere(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2858
    const-string v10, "name"

    const-string v11, "="

    move-object v0, v7

    move-object v1, v10

    move-object v2, v11

    move-object/from16 v3, p1

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/gsf/talk/TalkProvider;->appendWhere(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    move-object/from16 v18, v6

    move-object v6, v5

    move-object/from16 v5, v18

    .line 2860
    goto/16 :goto_0

    .line 2863
    :sswitch_19
    const-string v8, "outgoingRmqMessages"

    move-object/from16 v18, v6

    move-object v6, v5

    move-object/from16 v5, v18

    .line 2864
    goto/16 :goto_0

    .line 2867
    :sswitch_1a
    const-string v8, "lastrmqid"

    move-object/from16 v18, v6

    move-object v6, v5

    move-object/from16 v5, v18

    .line 2868
    goto/16 :goto_0

    .line 2871
    :sswitch_1b
    const-string v8, "s2dRmqIds"

    move-object/from16 v18, v6

    move-object v6, v5

    move-object/from16 v5, v18

    .line 2872
    goto/16 :goto_0

    .line 2681
    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_1
        0xb -> :sswitch_0
        0x14 -> :sswitch_4
        0x15 -> :sswitch_4
        0x18 -> :sswitch_5
        0x25 -> :sswitch_6
        0x26 -> :sswitch_7
        0x28 -> :sswitch_15
        0x29 -> :sswitch_16
        0x32 -> :sswitch_8
        0x33 -> :sswitch_9
        0x34 -> :sswitch_a
        0x36 -> :sswitch_b
        0x37 -> :sswitch_c
        0x38 -> :sswitch_d
        0x39 -> :sswitch_e
        0x3b -> :sswitch_f
        0x46 -> :sswitch_10
        0x47 -> :sswitch_11
        0x48 -> :sswitch_12
        0x50 -> :sswitch_13
        0x52 -> :sswitch_14
        0x5c -> :sswitch_18
        0x65 -> :sswitch_17
        0x68 -> :sswitch_3
        0x69 -> :sswitch_2
        0xc8 -> :sswitch_19
        0xcb -> :sswitch_1a
        0xcc -> :sswitch_1b
    .end sparse-switch
.end method


# virtual methods
.method public applyBatch(Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    .locals 14
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;)[",
            "Landroid/content/ContentProviderResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/OperationApplicationException;
        }
    .end annotation

    .prologue
    .local p1, operations:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    const/4 v13, 0x0

    .line 1447
    const/4 v7, 0x0

    .line 1448
    .local v7, ypCount:I
    const/4 v4, 0x0

    .line 1449
    .local v4, opCount:I
    iget-object v8, p0, Lcom/google/android/gsf/talk/TalkProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 1450
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1452
    :try_start_0
    iget-object v8, p0, Lcom/google/android/gsf/talk/TalkProvider;->mApplyingBatch:Ljava/lang/ThreadLocal;

    const/4 v9, 0x1

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 1453
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 1457
    .local v3, numOperations:I
    new-array v6, v3, [Landroid/content/ContentProviderResult;

    .line 1458
    .local v6, results:[Landroid/content/ContentProviderResult;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v3, :cond_2

    .line 1459
    add-int/lit8 v4, v4, 0x1

    const/16 v8, 0x1f4

    if-lt v4, v8, :cond_0

    .line 1460
    new-instance v8, Landroid/content/OperationApplicationException;

    const-string v9, "Too many content provider operations between yield points. The maximum number of operations per yield point is 500"

    invoke-direct {v8, v9, v7}, Landroid/content/OperationApplicationException;-><init>(Ljava/lang/String;I)V

    throw v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1488
    .end local v2           #i:I
    .end local v3           #numOperations:I
    .end local v6           #results:[Landroid/content/ContentProviderResult;
    :catchall_0
    move-exception v8

    iget-object v9, p0, Lcom/google/android/gsf/talk/TalkProvider;->mApplyingBatch:Ljava/lang/ThreadLocal;

    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 1489
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1490
    invoke-direct {p0}, Lcom/google/android/gsf/talk/TalkProvider;->onEndTransaction()V

    throw v8

    .line 1465
    .restart local v2       #i:I
    .restart local v3       #numOperations:I
    .restart local v6       #results:[Landroid/content/ContentProviderResult;
    :cond_0
    :try_start_1
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ContentProviderOperation;

    .line 1466
    .local v5, operation:Landroid/content/ContentProviderOperation;
    if-lez v2, :cond_1

    invoke-virtual {v5}, Landroid/content/ContentProviderOperation;->isYieldAllowed()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 1472
    const/4 v4, 0x0

    .line 1473
    const-wide/16 v8, 0xfa0

    invoke-virtual {v0, v8, v9}, Landroid/database/sqlite/SQLiteDatabase;->yieldIfContendedSafely(J)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v8

    if-eqz v8, :cond_1

    .line 1474
    add-int/lit8 v7, v7, 0x1

    .line 1478
    :cond_1
    :try_start_2
    invoke-virtual {v5, p0, v6, v2}, Landroid/content/ContentProviderOperation;->apply(Landroid/content/ContentProvider;[Landroid/content/ContentProviderResult;I)Landroid/content/ContentProviderResult;

    move-result-object v8

    aput-object v8, v6, v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Landroid/content/OperationApplicationException; {:try_start_2 .. :try_end_2} :catch_0

    .line 1458
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1479
    :catch_0
    move-exception v8

    move-object v1, v8

    .line 1480
    .local v1, e:Landroid/content/OperationApplicationException;
    :try_start_3
    const-string v8, "TalkProvider"

    const-string v9, "%s: %s"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-virtual {v1}, Landroid/content/OperationApplicationException;->toString()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    invoke-virtual {v1}, Landroid/content/OperationApplicationException;->getMessage()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1481
    const-string v8, "TalkProvider"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "applyBatch failed for operation["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "], ignore error and continue"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1485
    .end local v1           #e:Landroid/content/OperationApplicationException;
    .end local v5           #operation:Landroid/content/ContentProviderOperation;
    :cond_2
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1488
    iget-object v8, p0, Lcom/google/android/gsf/talk/TalkProvider;->mApplyingBatch:Ljava/lang/ThreadLocal;

    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 1489
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1490
    invoke-direct {p0}, Lcom/google/android/gsf/talk/TalkProvider;->onEndTransaction()V

    return-object v6
.end method

.method public bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I
    .locals 5
    .parameter "url"
    .parameter "values"

    .prologue
    .line 1423
    array-length v2, p2

    .line 1424
    .local v2, numValues:I
    iget-object v4, p0, Lcom/google/android/gsf/talk/TalkProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 1425
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1427
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 1428
    :try_start_0
    aget-object v4, p2, v1

    invoke-direct {p0, p1, v4}, Lcom/google/android/gsf/talk/TalkProvider;->insertInternal(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v3

    .line 1429
    .local v3, result:Landroid/net/Uri;
    if-eqz v3, :cond_0

    .line 1430
    invoke-direct {p0, p1}, Lcom/google/android/gsf/talk/TalkProvider;->addToNotifyUris(Landroid/net/Uri;)V

    .line 1431
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/google/android/gsf/talk/TalkProvider;->mNotifyChange:Z

    .line 1433
    :cond_0
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->yieldIfContendedSafely()Z

    .line 1427
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1435
    .end local v3           #result:Landroid/net/Uri;
    :cond_1
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1437
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1438
    invoke-direct {p0}, Lcom/google/android/gsf/talk/TalkProvider;->onEndTransaction()V

    .line 1441
    return v2

    .line 1437
    :catchall_0
    move-exception v4

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1438
    invoke-direct {p0}, Lcom/google/android/gsf/talk/TalkProvider;->onEndTransaction()V

    throw v4
.end method

.method public final delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 4
    .parameter "url"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    const/4 v3, 0x1

    .line 1358
    const/4 v1, 0x0

    .line 1359
    .local v1, count:I
    invoke-direct {p0}, Lcom/google/android/gsf/talk/TalkProvider;->applyingBatch()Z

    move-result v0

    .line 1360
    .local v0, applyingBatch:Z
    if-nez v0, :cond_2

    .line 1361
    iget-object v3, p0, Lcom/google/android/gsf/talk/TalkProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 1362
    .local v2, db:Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1364
    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gsf/talk/TalkProvider;->deleteInternal(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 1365
    if-lez v1, :cond_0

    .line 1366
    invoke-direct {p0, p1}, Lcom/google/android/gsf/talk/TalkProvider;->addToNotifyUris(Landroid/net/Uri;)V

    .line 1367
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/google/android/gsf/talk/TalkProvider;->mNotifyChange:Z

    .line 1369
    :cond_0
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1371
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1374
    invoke-direct {p0}, Lcom/google/android/gsf/talk/TalkProvider;->onEndTransaction()V

    .line 1384
    .end local v2           #db:Landroid/database/sqlite/SQLiteDatabase;
    :cond_1
    :goto_0
    return v1

    .line 1371
    .restart local v2       #db:Landroid/database/sqlite/SQLiteDatabase;
    :catchall_0
    move-exception v3

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v3

    .line 1378
    .end local v2           #db:Landroid/database/sqlite/SQLiteDatabase;
    :cond_2
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gsf/talk/TalkProvider;->deleteInternal(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 1379
    if-lez v1, :cond_1

    .line 1380
    invoke-direct {p0, p1}, Lcom/google/android/gsf/talk/TalkProvider;->addToNotifyUris(Landroid/net/Uri;)V

    .line 1381
    iput-boolean v3, p0, Lcom/google/android/gsf/talk/TalkProvider;->mNotifyChange:Z

    goto :goto_0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 3
    .parameter "url"

    .prologue
    .line 1839
    iget-object v1, p0, Lcom/google/android/gsf/talk/TalkProvider;->mUrlMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v1, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    .line 1840
    .local v0, match:I
    sparse-switch v0, :sswitch_data_0

    .line 1910
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Unknown URL"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1842
    :sswitch_0
    const-string v1, "vnd.android.cursor.dir/gtalk-accounts"

    .line 1907
    :goto_0
    return-object v1

    .line 1845
    :sswitch_1
    const-string v1, "vnd.android.cursor.item/gtalk-accounts"

    goto :goto_0

    .line 1849
    :sswitch_2
    const-string v1, "vnd.android.cursor.dir/gtalk-contacts"

    goto :goto_0

    .line 1852
    :sswitch_3
    const-string v1, "vnd.android.cursor.item/gtalk-contacts"

    goto :goto_0

    .line 1856
    :sswitch_4
    const-string v1, "vnd.android.cursor.dir/gtalk-contactsEtag"

    goto :goto_0

    .line 1866
    :sswitch_5
    const-string v1, "vnd.android.cursor.dir/gtalk-messages"

    goto :goto_0

    .line 1870
    :sswitch_6
    const-string v1, "vnd.android.cursor.item/gtalk-messages"

    goto :goto_0

    .line 1873
    :sswitch_7
    const-string v1, "vnd.android.cursor.dir/gtalk-presence"

    goto :goto_0

    .line 1876
    :sswitch_8
    const-string v1, "vnd.android.cursor.dir/gtalk-avatars"

    goto :goto_0

    .line 1879
    :sswitch_9
    const-string v1, "vnd.android.cursor.item/gtalk-avatars"

    goto :goto_0

    .line 1882
    :sswitch_a
    const-string v1, "vnd.android.cursor.dir/gtalk-chats"

    goto :goto_0

    .line 1885
    :sswitch_b
    const-string v1, "vnd.android.cursor.item/gtalk-chats"

    goto :goto_0

    .line 1888
    :sswitch_c
    const-string v1, "vnd.android.cursor.dir/gtalk-invitations"

    goto :goto_0

    .line 1891
    :sswitch_d
    const-string v1, "vnd.android.cursor.item/gtalk-invitations"

    goto :goto_0

    .line 1895
    :sswitch_e
    const-string v1, "vnd.android.cursor.dir/gtalk-groupMembers"

    goto :goto_0

    .line 1898
    :sswitch_f
    const-string v1, "vnd.android-dir/gtalk-accountSettings"

    goto :goto_0

    .line 1901
    :sswitch_10
    const-string v1, "vnd.android.cursor.dir/gtalk-account-status"

    goto :goto_0

    .line 1904
    :sswitch_11
    const-string v1, "vnd.android.cursor.item/gtalk-account-status"

    goto :goto_0

    .line 1907
    :sswitch_12
    const-string v1, "vnd.android.cursor.dir/vnd.android.search.suggest"

    goto :goto_0

    .line 1840
    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_0
        0xb -> :sswitch_1
        0x14 -> :sswitch_2
        0x15 -> :sswitch_2
        0x18 -> :sswitch_3
        0x25 -> :sswitch_4
        0x26 -> :sswitch_4
        0x28 -> :sswitch_7
        0x32 -> :sswitch_5
        0x33 -> :sswitch_5
        0x34 -> :sswitch_5
        0x35 -> :sswitch_5
        0x36 -> :sswitch_6
        0x37 -> :sswitch_5
        0x38 -> :sswitch_5
        0x39 -> :sswitch_5
        0x3a -> :sswitch_5
        0x3b -> :sswitch_6
        0x41 -> :sswitch_e
        0x42 -> :sswitch_e
        0x46 -> :sswitch_8
        0x47 -> :sswitch_9
        0x50 -> :sswitch_a
        0x52 -> :sswitch_b
        0x5a -> :sswitch_f
        0x64 -> :sswitch_c
        0x65 -> :sswitch_d
        0x68 -> :sswitch_10
        0x69 -> :sswitch_11
        0x82 -> :sswitch_12
    .end sparse-switch
.end method

.method public final insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 4
    .parameter "url"
    .parameter "values"

    .prologue
    const/4 v3, 0x1

    .line 1391
    invoke-direct {p0}, Lcom/google/android/gsf/talk/TalkProvider;->applyingBatch()Z

    move-result v0

    .line 1392
    .local v0, applyingBatch:Z
    if-nez v0, :cond_2

    .line 1393
    iget-object v3, p0, Lcom/google/android/gsf/talk/TalkProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 1394
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1396
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/google/android/gsf/talk/TalkProvider;->insertInternal(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v2

    .line 1397
    .local v2, result:Landroid/net/Uri;
    if-eqz v2, :cond_0

    .line 1398
    invoke-direct {p0, p1}, Lcom/google/android/gsf/talk/TalkProvider;->addToNotifyUris(Landroid/net/Uri;)V

    .line 1399
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/google/android/gsf/talk/TalkProvider;->mNotifyChange:Z

    .line 1402
    :cond_0
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1404
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1407
    invoke-direct {p0}, Lcom/google/android/gsf/talk/TalkProvider;->onEndTransaction()V

    .line 1418
    .end local v1           #db:Landroid/database/sqlite/SQLiteDatabase;
    :cond_1
    :goto_0
    return-object v2

    .line 1404
    .end local v2           #result:Landroid/net/Uri;
    .restart local v1       #db:Landroid/database/sqlite/SQLiteDatabase;
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v3

    .line 1411
    .end local v1           #db:Landroid/database/sqlite/SQLiteDatabase;
    :cond_2
    invoke-direct {p0, p1, p2}, Lcom/google/android/gsf/talk/TalkProvider;->insertInternal(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v2

    .line 1412
    .restart local v2       #result:Landroid/net/Uri;
    if-eqz v2, :cond_1

    .line 1413
    invoke-direct {p0, p1}, Lcom/google/android/gsf/talk/TalkProvider;->addToNotifyUris(Landroid/net/Uri;)V

    .line 1414
    iput-boolean v3, p0, Lcom/google/android/gsf/talk/TalkProvider;->mNotifyChange:Z

    goto :goto_0
.end method

.method public onCreate()Z
    .locals 2

    .prologue
    .line 1276
    invoke-virtual {p0}, Lcom/google/android/gsf/talk/TalkProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 1277
    .local v0, context:Landroid/content/Context;
    invoke-direct {p0, v0}, Lcom/google/android/gsf/talk/TalkProvider;->renameOldImDatabaseFileIfFound(Landroid/content/Context;)V

    .line 1278
    new-instance v1, Lcom/google/android/gsf/talk/TalkProvider$DatabaseHelper;

    invoke-direct {v1, p0, v0}, Lcom/google/android/gsf/talk/TalkProvider$DatabaseHelper;-><init>(Lcom/google/android/gsf/talk/TalkProvider;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/google/android/gsf/talk/TalkProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    .line 1279
    const/4 v1, 0x1

    return v1
.end method

.method public openFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .locals 1
    .parameter "uri"
    .parameter "mode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 2952
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gsf/talk/TalkProvider;->openFileHelper(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public final query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 1
    .parameter "url"
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sortOrder"

    .prologue
    .line 1547
    invoke-virtual/range {p0 .. p5}, Lcom/google/android/gsf/talk/TalkProvider;->queryInternal(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public queryInternal(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 33
    .parameter "url"
    .parameter "projectionIn"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sort"

    .prologue
    .line 1552
    new-instance v5, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v5}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 1553
    .local v5, qb:Landroid/database/sqlite/SQLiteQueryBuilder;
    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    .line 1554
    .local v32, whereClause:Ljava/lang/StringBuilder;
    if-eqz p3, :cond_0

    .line 1555
    move-object/from16 v0, v32

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1557
    :cond_0
    const/4 v13, 0x0

    .line 1558
    .local v13, groupBy:Ljava/lang/String;
    const/16 v16, 0x0

    .line 1561
    .local v16, limit:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gsf/talk/TalkProvider;->mUrlMatcher:Landroid/content/UriMatcher;

    move-object v6, v0

    move-object v0, v6

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v23

    .line 1572
    .local v23, match:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gsf/talk/TalkProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    move-object v6, v0

    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v20

    .line 1573
    .local v20, db:Landroid/database/sqlite/SQLiteDatabase;
    const/16 v18, 0x0

    .line 1575
    .local v18, c:Landroid/database/Cursor;
    sparse-switch v23, :sswitch_data_0

    .line 1812
    new-instance v6, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unknown URL "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v0, v7

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1577
    :sswitch_0
    const-string v6, "_id"

    const-string v7, "="

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v8

    const/4 v9, 0x1

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    move-object/from16 v0, v32

    move-object v1, v6

    move-object v2, v7

    move-object v3, v8

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/gsf/talk/TalkProvider;->appendWhere(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1580
    :sswitch_1
    const-string v6, "accounts"

    invoke-virtual {v5, v6}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1817
    :goto_0
    :try_start_0
    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v14, 0x0

    move-object v8, v5

    move-object/from16 v9, v20

    move-object/from16 v10, p2

    move-object/from16 v12, p4

    move-object/from16 v15, p5

    invoke-virtual/range {v8 .. v16}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v18

    .line 1819
    if-eqz v18, :cond_1

    .line 1821
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gsf/talk/TalkProvider;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    move-object/from16 v0, v18

    move-object v1, v6

    move-object/from16 v2, p1

    invoke-interface {v0, v1, v2}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_1
    move-object/from16 v6, v18

    .line 1827
    .end local v13           #groupBy:Ljava/lang/String;
    .end local p3
    :goto_2
    return-object v6

    .line 1584
    .restart local v13       #groupBy:Ljava/lang/String;
    .restart local p3
    :sswitch_2
    const-string v6, "accounts LEFT OUTER JOIN accountStatus ON (accounts._id = accountStatus.account)"

    invoke-virtual {v5, v6}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1585
    sget-object v6, Lcom/google/android/gsf/talk/TalkProvider;->sAccountsStatusProjectionMap:Ljava/util/HashMap;

    invoke-virtual {v5, v6}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    goto :goto_0

    .line 1589
    :sswitch_3
    const-string v6, "contacts LEFT OUTER JOIN presence ON (contacts._id = presence.contact_id) LEFT OUTER JOIN chats ON (contacts._id = chats.contact_id) LEFT OUTER JOIN avatars ON (contacts.username = avatars.contact AND contacts.account = avatars.account_id)"

    invoke-virtual {v5, v6}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1590
    sget-object v6, Lcom/google/android/gsf/talk/TalkProvider;->sContactsProjectionMap:Ljava/util/HashMap;

    invoke-virtual {v5, v6}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    goto :goto_0

    .line 1594
    :sswitch_4
    const-string v6, "contacts"

    invoke-virtual {v5, v6}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    goto :goto_0

    .line 1598
    :sswitch_5
    const-string v6, "contacts LEFT OUTER JOIN presence ON (contacts._id = presence.contact_id) LEFT OUTER JOIN chats ON (contacts._id = chats.contact_id) LEFT OUTER JOIN avatars ON (contacts.username = avatars.contact AND contacts.account = avatars.account_id)"

    invoke-virtual {v5, v6}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1599
    sget-object v6, Lcom/google/android/gsf/talk/TalkProvider;->sContactsProjectionMap:Ljava/util/HashMap;

    invoke-virtual {v5, v6}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 1600
    const-string v6, "chats.last_message_date IS NOT NULL"

    move-object/from16 v0, v32

    move-object v1, v6

    invoke-static {v0, v1}, Lcom/google/android/gsf/talk/TalkProvider;->appendWhere(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    goto :goto_0

    .line 1606
    :sswitch_6
    const-string v6, "contacts LEFT OUTER JOIN presence ON (contacts._id = presence.contact_id) LEFT OUTER JOIN chats ON (contacts._id = chats.contact_id) LEFT OUTER JOIN avatars ON (contacts.username = avatars.contact AND contacts.account = avatars.account_id)"

    invoke-virtual {v5, v6}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1607
    sget-object v6, Lcom/google/android/gsf/talk/TalkProvider;->sContactsProjectionMap:Ljava/util/HashMap;

    invoke-virtual {v5, v6}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 1608
    const-string v6, "(contacts.type=3)"

    move-object/from16 v0, v32

    move-object v1, v6

    invoke-static {v0, v1}, Lcom/google/android/gsf/talk/TalkProvider;->appendWhere(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    goto :goto_0

    .line 1612
    :sswitch_7
    const-string v6, "contacts LEFT OUTER JOIN presence ON (contacts._id = presence.contact_id) LEFT OUTER JOIN chats ON (contacts._id = chats.contact_id) LEFT OUTER JOIN avatars ON (contacts.username = avatars.contact AND contacts.account = avatars.account_id)"

    invoke-virtual {v5, v6}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1613
    sget-object v6, Lcom/google/android/gsf/talk/TalkProvider;->sContactsProjectionMap:Ljava/util/HashMap;

    invoke-virtual {v5, v6}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 1614
    const-string v6, "contacts._id"

    const-string v7, "="

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v8

    const/4 v9, 0x1

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    move-object/from16 v0, v32

    move-object v1, v6

    move-object v2, v7

    move-object v3, v8

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/gsf/talk/TalkProvider;->appendWhere(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 1618
    :sswitch_8
    const-string v6, "contactsEtag"

    invoke-virtual {v5, v6}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1622
    :sswitch_9
    const-string v6, "contactsEtag"

    invoke-virtual {v5, v6}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1623
    const-string v6, "_id"

    const-string v7, "="

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v8

    const/4 v9, 0x1

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    move-object/from16 v0, v32

    move-object v1, v6

    move-object v2, v7

    move-object v3, v8

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/gsf/talk/TalkProvider;->appendWhere(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 1627
    :sswitch_a
    const-string v6, "messages"

    invoke-virtual {v5, v6}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1629
    const-string v6, "thread_id"

    const-string v7, "="

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v8

    const/4 v9, 0x1

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    move-object/from16 v0, v32

    move-object v1, v6

    move-object v2, v7

    move-object v3, v8

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/gsf/talk/TalkProvider;->appendWhere(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1632
    const-string v6, "%s AND %s"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    sget-object v9, Lcom/google/android/gsf/talk/TalkProvider;->MESSAGE_WHERE_CLAUSE_FORMAT:Ljava/lang/String;

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 1634
    .local v7, sc1:Ljava/lang/String;
    const-string v6, "%s AND %s"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    sget-object v10, Lcom/google/android/gsf/talk/TalkProvider;->MESSAGE_IN_MEMORY_WHERE_CLAUSE_FORMAT:Ljava/lang/String;

    aput-object v10, v8, v9

    invoke-static {v6, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v30

    .line 1637
    .local v30, sc2:Ljava/lang/String;
    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v6, p2

    invoke-virtual/range {v5 .. v12}, Landroid/database/sqlite/SQLiteQueryBuilder;->buildQuery([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    .line 1641
    .local v28, query1:Ljava/lang/String;
    new-instance v5, Landroid/database/sqlite/SQLiteQueryBuilder;

    .end local v5           #qb:Landroid/database/sqlite/SQLiteQueryBuilder;
    invoke-direct {v5}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 1642
    .restart local v5       #qb:Landroid/database/sqlite/SQLiteQueryBuilder;
    const-string v6, "inMemoryMessages"

    invoke-virtual {v5, v6}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1643
    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object v8, v5

    move-object/from16 v9, p2

    move-object/from16 v10, v30

    invoke-virtual/range {v8 .. v15}, Landroid/database/sqlite/SQLiteQueryBuilder;->buildQuery([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .end local v13           #groupBy:Ljava/lang/String;
    move-result-object v29

    .line 1647
    .local v29, query2:Ljava/lang/String;
    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v28, v6, v7

    .end local v7           #sc1:Ljava/lang/String;
    const/4 v7, 0x1

    aput-object v29, v6, v7

    const/4 v7, 0x0

    move-object v0, v5

    move-object v1, v6

    move-object/from16 v2, p5

    move-object v3, v7

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->buildUnionQuery([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    .line 1648
    .local v27, query:Ljava/lang/String;
    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "messages"

    move-object/from16 v0, v20

    move-object v1, v6

    move-object/from16 v2, v27

    move-object v3, v7

    move-object v4, v8

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQueryWithFactory(Landroid/database/sqlite/SQLiteDatabase$CursorFactory;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v18

    .line 1649
    if-eqz v18, :cond_2

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gsf/talk/TalkProvider;->isTemporary()Z

    move-result v6

    if-nez v6, :cond_2

    .line 1650
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gsf/talk/TalkProvider;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    move-object/from16 v0, v18

    move-object v1, v6

    move-object/from16 v2, p1

    invoke-interface {v0, v1, v2}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    :cond_2
    move-object/from16 v6, v18

    .line 1652
    goto/16 :goto_2

    .line 1656
    .end local v27           #query:Ljava/lang/String;
    .end local v28           #query1:Ljava/lang/String;
    .end local v29           #query2:Ljava/lang/String;
    .end local v30           #sc2:Ljava/lang/String;
    .restart local v13       #groupBy:Ljava/lang/String;
    :sswitch_b
    const-string v6, "messages"

    invoke-virtual {v5, v6}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1660
    :sswitch_c
    const-string v6, "inMemoryMessages"

    invoke-virtual {v5, v6}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1661
    const-string v6, "_id"

    const-string v7, "="

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v8

    const/4 v9, 0x1

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    move-object/from16 v0, v32

    move-object v1, v6

    move-object v2, v7

    move-object v3, v8

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/gsf/talk/TalkProvider;->appendWhere(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 1666
    :sswitch_d
    const-string v6, "messages"

    invoke-virtual {v5, v6}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1667
    const-string v6, "_id"

    const-string v7, "="

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v8

    const/4 v9, 0x1

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    move-object/from16 v0, v32

    move-object v1, v6

    move-object v2, v7

    move-object v3, v8

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/gsf/talk/TalkProvider;->appendWhere(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 1672
    :sswitch_e
    const-string v6, "messages LEFT OUTER JOIN contacts ON (contacts._id = messages.thread_id)"

    invoke-virtual {v5, v6}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1673
    sget-object v6, Lcom/google/android/gsf/talk/TalkProvider;->sMessagesProjectionMap:Ljava/util/HashMap;

    invoke-virtual {v5, v6}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 1675
    const-string v6, "account"

    const-string v7, "="

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v8

    const/4 v9, 0x1

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    move-object/from16 v0, v32

    move-object v1, v6

    move-object v2, v7

    move-object v3, v8

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/gsf/talk/TalkProvider;->appendWhere(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1677
    const-string v6, "contacts.username"

    const-string v7, "="

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v8

    const/4 v9, 0x2

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    .end local p3
    check-cast p3, Ljava/lang/String;

    invoke-static/range {p3 .. p3}, Lcom/google/android/gsf/talk/TalkProvider;->decodeURLSegment(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, v32

    move-object v1, v6

    move-object v2, v7

    move-object v3, v8

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/gsf/talk/TalkProvider;->appendWhere(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1680
    const-string v6, "%s AND %s"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    sget-object v9, Lcom/google/android/gsf/talk/TalkProvider;->MESSAGE_WHERE_CLAUSE_FORMAT:Ljava/lang/String;

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 1682
    .restart local v7       #sc1:Ljava/lang/String;
    const-string v6, "%s AND %s"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    sget-object v10, Lcom/google/android/gsf/talk/TalkProvider;->MESSAGE_IN_MEMORY_WHERE_CLAUSE_FORMAT:Ljava/lang/String;

    aput-object v10, v8, v9

    invoke-static {v6, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v30

    .line 1685
    .restart local v30       #sc2:Ljava/lang/String;
    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v6, p2

    invoke-virtual/range {v5 .. v12}, Landroid/database/sqlite/SQLiteQueryBuilder;->buildQuery([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    .line 1688
    .local v24, q1:Ljava/lang/String;
    new-instance v5, Landroid/database/sqlite/SQLiteQueryBuilder;

    .end local v5           #qb:Landroid/database/sqlite/SQLiteQueryBuilder;
    invoke-direct {v5}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 1689
    .restart local v5       #qb:Landroid/database/sqlite/SQLiteQueryBuilder;
    const-string v6, "inMemoryMessages LEFT OUTER JOIN contacts ON (contacts._id = inMemoryMessages.thread_id)"

    invoke-virtual {v5, v6}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1690
    sget-object v6, Lcom/google/android/gsf/talk/TalkProvider;->sInMemoryMessagesProjectionMap:Ljava/util/HashMap;

    invoke-virtual {v5, v6}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 1691
    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object v8, v5

    move-object/from16 v9, p2

    move-object/from16 v10, v30

    invoke-virtual/range {v8 .. v15}, Landroid/database/sqlite/SQLiteQueryBuilder;->buildQuery([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .end local v13           #groupBy:Ljava/lang/String;
    move-result-object v25

    .line 1694
    .local v25, q2:Ljava/lang/String;
    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v24, v6, v7

    .end local v7           #sc1:Ljava/lang/String;
    const/4 v7, 0x1

    aput-object v25, v6, v7

    const/4 v7, 0x0

    move-object v0, v5

    move-object v1, v6

    move-object/from16 v2, p5

    move-object v3, v7

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->buildUnionQuery([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    .line 1695
    .local v26, q3:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gsf/talk/TalkProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    move-object v6, v0

    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v21

    .line 1696
    .local v21, db2:Landroid/database/sqlite/SQLiteDatabase;
    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "messages LEFT OUTER JOIN contacts ON (contacts._id = messages.thread_id)"

    move-object/from16 v0, v21

    move-object v1, v6

    move-object/from16 v2, v26

    move-object v3, v7

    move-object v4, v8

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQueryWithFactory(Landroid/database/sqlite/SQLiteDatabase$CursorFactory;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v19

    .line 1697
    .local v19, c2:Landroid/database/Cursor;
    if-eqz v19, :cond_3

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gsf/talk/TalkProvider;->isTemporary()Z

    move-result v6

    if-nez v6, :cond_3

    .line 1698
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gsf/talk/TalkProvider;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    move-object/from16 v0, v19

    move-object v1, v6

    move-object/from16 v2, p1

    invoke-interface {v0, v1, v2}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    :cond_3
    move-object/from16 v6, v19

    .line 1700
    goto/16 :goto_2

    .line 1703
    .end local v19           #c2:Landroid/database/Cursor;
    .end local v21           #db2:Landroid/database/sqlite/SQLiteDatabase;
    .end local v24           #q1:Ljava/lang/String;
    .end local v25           #q2:Ljava/lang/String;
    .end local v26           #q3:Ljava/lang/String;
    .end local v30           #sc2:Ljava/lang/String;
    .restart local v13       #groupBy:Ljava/lang/String;
    .restart local p3
    :sswitch_f
    const-string v6, "invitations"

    invoke-virtual {v5, v6}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1707
    :sswitch_10
    const-string v6, "invitations"

    invoke-virtual {v5, v6}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1708
    const-string v6, "_id"

    const-string v7, "="

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v8

    const/4 v9, 0x1

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    move-object/from16 v0, v32

    move-object v1, v6

    move-object v2, v7

    move-object v3, v8

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/gsf/talk/TalkProvider;->appendWhere(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 1712
    :sswitch_11
    const-string v6, "groupMembers"

    invoke-virtual {v5, v6}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1716
    :sswitch_12
    const-string v6, "groupMembers"

    invoke-virtual {v5, v6}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1717
    const-string v6, "groupId"

    const-string v7, "="

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v8

    const/4 v9, 0x1

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    move-object/from16 v0, v32

    move-object v1, v6

    move-object v2, v7

    move-object v3, v8

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/gsf/talk/TalkProvider;->appendWhere(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 1721
    :sswitch_13
    const-string v6, "avatars"

    invoke-virtual {v5, v6}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1725
    :sswitch_14
    const-string v6, "avatars"

    invoke-virtual {v5, v6}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1726
    const-string v6, "account_id"

    const-string v7, "="

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v8

    const/4 v9, 0x1

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    move-object/from16 v0, v32

    move-object v1, v6

    move-object v2, v7

    move-object v3, v8

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/gsf/talk/TalkProvider;->appendWhere(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 1730
    :sswitch_15
    const-string v6, "chats"

    invoke-virtual {v5, v6}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1734
    :sswitch_16
    const-string v6, "chats"

    invoke-virtual {v5, v6}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1735
    const-string v6, "contact_id"

    const-string v7, "="

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v8

    const/4 v9, 0x1

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    move-object/from16 v0, v32

    move-object v1, v6

    move-object v2, v7

    move-object v3, v8

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/gsf/talk/TalkProvider;->appendWhere(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 1739
    :sswitch_17
    const-string v6, "chats"

    invoke-virtual {v5, v6}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1740
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/google/android/gsf/talk/TalkProvider;->decodeURLSegment(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 1741
    .local v17, accountStr:Ljava/lang/String;
    const-string v6, "contact_id"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "account=\'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v0, v7

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p0

    move-object v1, v6

    move-object v2, v7

    invoke-direct {v0, v1, v2}, Lcom/google/android/gsf/talk/TalkProvider;->buildContactIdSelection(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v32

    move-object v1, v6

    invoke-static {v0, v1}, Lcom/google/android/gsf/talk/TalkProvider;->appendWhere(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1746
    .end local v17           #accountStr:Ljava/lang/String;
    :sswitch_18
    const-string v6, "presence"

    invoke-virtual {v5, v6}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1750
    :sswitch_19
    const-string v6, "presence"

    invoke-virtual {v5, v6}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1751
    const-string v6, "contact_id"

    const-string v7, "="

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v8

    const/4 v9, 0x1

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    move-object/from16 v0, v32

    move-object v1, v6

    move-object v2, v7

    move-object v3, v8

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/gsf/talk/TalkProvider;->appendWhere(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 1755
    :sswitch_1a
    const-string v6, "name"

    const-string v7, "="

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v8

    const/4 v9, 0x2

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    move-object/from16 v0, v32

    move-object v1, v6

    move-object v2, v7

    move-object v3, v8

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/gsf/talk/TalkProvider;->appendWhere(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1758
    :sswitch_1b
    const-string v6, "account_id"

    const-string v7, "="

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v8

    const/4 v9, 0x1

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    move-object/from16 v0, v32

    move-object v1, v6

    move-object v2, v7

    move-object v3, v8

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/gsf/talk/TalkProvider;->appendWhere(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1761
    :sswitch_1c
    const-string v6, "accountSettings"

    invoke-virtual {v5, v6}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1765
    :sswitch_1d
    const-string v6, "accountStatus"

    invoke-virtual {v5, v6}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1769
    :sswitch_1e
    const-string v6, "accountStatus"

    invoke-virtual {v5, v6}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1770
    const-string v6, "account"

    const-string v7, "="

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v8

    const/4 v9, 0x1

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    move-object/from16 v0, v32

    move-object v1, v6

    move-object v2, v7

    move-object v3, v8

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/gsf/talk/TalkProvider;->appendWhere(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 1780
    :sswitch_1f
    const-string v27, "select contacts.account, count(last_unread_message) as active_count from chats,contacts where chats.contact_id = contacts._id group by contacts.account order by contacts.account;"

    .line 1784
    .restart local v27       #query:Ljava/lang/String;
    const/4 v6, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v27

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v18

    move-object/from16 v6, v18

    .line 1785
    goto/16 :goto_2

    .line 1789
    .end local v27           #query:Ljava/lang/String;
    :sswitch_20
    const-string v6, "outgoingRmqMessages"

    invoke-virtual {v5, v6}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1793
    :sswitch_21
    const-string v6, "outgoingRmqMessages"

    invoke-virtual {v5, v6}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1794
    const-string p5, "rmq_id DESC"

    .line 1795
    const-string v16, "1"

    .line 1796
    goto/16 :goto_0

    .line 1799
    :sswitch_22
    const-string v6, "lastrmqid"

    invoke-virtual {v5, v6}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1800
    const-string v16, "1"

    .line 1801
    goto/16 :goto_0

    .line 1804
    :sswitch_23
    const-string v6, "s2dRmqIds"

    invoke-virtual {v5, v6}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1808
    :sswitch_24
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v31

    .line 1809
    .local v31, searchQuery:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v31

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2}, Lcom/google/android/gsf/talk/TalkProvider;->getSuggestions(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    goto/16 :goto_2

    .line 1823
    .end local v31           #searchQuery:Ljava/lang/String;
    :catch_0
    move-exception v6

    move-object/from16 v22, v6

    .line 1824
    .local v22, ex:Ljava/lang/Exception;
    const-string v6, "TalkProvider"

    const-string v7, "query db caught "

    move-object v0, v6

    move-object v1, v7

    move-object/from16 v2, v22

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1

    .line 1575
    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_1
        0xb -> :sswitch_0
        0xc -> :sswitch_2
        0x14 -> :sswitch_3
        0x15 -> :sswitch_4
        0x16 -> :sswitch_5
        0x17 -> :sswitch_6
        0x18 -> :sswitch_7
        0x25 -> :sswitch_8
        0x26 -> :sswitch_9
        0x28 -> :sswitch_18
        0x29 -> :sswitch_19
        0x32 -> :sswitch_b
        0x33 -> :sswitch_e
        0x34 -> :sswitch_a
        0x36 -> :sswitch_d
        0x37 -> :sswitch_b
        0x3b -> :sswitch_c
        0x41 -> :sswitch_11
        0x42 -> :sswitch_12
        0x46 -> :sswitch_13
        0x48 -> :sswitch_14
        0x50 -> :sswitch_15
        0x51 -> :sswitch_17
        0x52 -> :sswitch_16
        0x5a -> :sswitch_1c
        0x5b -> :sswitch_1b
        0x5c -> :sswitch_1a
        0x64 -> :sswitch_f
        0x65 -> :sswitch_10
        0x68 -> :sswitch_1d
        0x69 -> :sswitch_1e
        0x6a -> :sswitch_1f
        0x82 -> :sswitch_24
        0xc8 -> :sswitch_20
        0xca -> :sswitch_21
        0xcb -> :sswitch_22
        0xcc -> :sswitch_23
    .end sparse-switch
.end method

.method public final update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 4
    .parameter "url"
    .parameter "values"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    const/4 v3, 0x1

    .line 1326
    const/4 v1, 0x0

    .line 1327
    .local v1, count:I
    invoke-direct {p0}, Lcom/google/android/gsf/talk/TalkProvider;->applyingBatch()Z

    move-result v0

    .line 1328
    .local v0, applyingBatch:Z
    if-nez v0, :cond_2

    .line 1329
    iget-object v3, p0, Lcom/google/android/gsf/talk/TalkProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 1330
    .local v2, db:Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1332
    :try_start_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/gsf/talk/TalkProvider;->updateInternal(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 1333
    if-lez v1, :cond_0

    .line 1334
    invoke-direct {p0, p1}, Lcom/google/android/gsf/talk/TalkProvider;->addToNotifyUris(Landroid/net/Uri;)V

    .line 1335
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/google/android/gsf/talk/TalkProvider;->mNotifyChange:Z

    .line 1337
    :cond_0
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1339
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1342
    invoke-direct {p0}, Lcom/google/android/gsf/talk/TalkProvider;->onEndTransaction()V

    .line 1353
    .end local v2           #db:Landroid/database/sqlite/SQLiteDatabase;
    :cond_1
    :goto_0
    return v1

    .line 1339
    .restart local v2       #db:Landroid/database/sqlite/SQLiteDatabase;
    :catchall_0
    move-exception v3

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v3

    .line 1346
    .end local v2           #db:Landroid/database/sqlite/SQLiteDatabase;
    :cond_2
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/gsf/talk/TalkProvider;->updateInternal(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 1347
    if-lez v1, :cond_1

    .line 1348
    invoke-direct {p0, p1}, Lcom/google/android/gsf/talk/TalkProvider;->addToNotifyUris(Landroid/net/Uri;)V

    .line 1349
    iput-boolean v3, p0, Lcom/google/android/gsf/talk/TalkProvider;->mNotifyChange:Z

    goto :goto_0
.end method
