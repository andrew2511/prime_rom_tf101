.class public Lcom/google/android/gtalkservice/GTalkServiceConstants;
.super Ljava/lang/Object;
.source "GTalkServiceConstants.java"


# static fields
.field public static final ACTION_AVATAR_CHANGED:Ljava/lang/String; = "android.intent.action.GTALK_AVATAR_CHANGED"

.field public static final ACTION_MANAGE_SUBSCRIPTION:Ljava/lang/String; = "android.intent.action.GTALK_MANAGE_SUBSCRIPTION"

.field public static final CHAT_INCOMING_MESSAGE_INTENT_ACTION:Ljava/lang/String; = "com.google.android.talk.RECEIVE_MESSAGE"

.field public static final ERROR_INVALID_ACCOUNT:Ljava/lang/String; = "invalid_account"

.field public static final ERROR_INVALID_PARAMS:Ljava/lang/String; = "invalid_params"

.field public static final ERROR_NO_CONNECTION:Ljava/lang/String; = "no_connection"

.field public static final ERROR_UNSUPPORTED_MESSAGE_TYPE:Ljava/lang/String; = "unsupported_message_type"

.field public static final ERROR_UNSUPPORTED_PRESENCE:Ljava/lang/String; = "unsupported_presence"

.field public static final EXTRA_APP:Ljava/lang/String; = "app"

.field public static final EXTRA_ERROR:Ljava/lang/String; = "error"

.field public static final EXTRA_ERROR_INTENT:Ljava/lang/String; = "intent"

.field public static final EXTRA_FROM_NOTIFICATION:Ljava/lang/String; = "from_notify"

.field public static final EXTRA_INTENT_ACCOUNT_ID:Ljava/lang/String; = "accountId"

.field public static final EXTRA_INTENT_ERROR:Ljava/lang/String; = "err"

.field public static final EXTRA_INTENT_FROM_ADDRESS:Ljava/lang/String; = "from"

.field public static final EXTRA_INTENT_IS_GROUPCHAT:Ljava/lang/String; = "is_muc"

.field public static final EXTRA_INTENT_MESSAGE_PAYLOAD:Ljava/lang/String; = "message"

.field public static final EXTRA_INTENT_PROVIDER_ID:Ljava/lang/String; = "providerId"

.field public static final EXTRA_INTENT_SHOW_MULTIPLE:Ljava/lang/String; = "show_multiple"

.field public static final EXTRA_INTENT_SIGNUP_URL:Ljava/lang/String; = "signupUrl"

.field public static final EXTRA_INTENT_STATE:Ljava/lang/String; = "state"

.field public static final EXTRA_INTENT_TIMESTAMP:Ljava/lang/String; = "timestamp"

.field public static final EXTRA_INTENT_USERNAME:Ljava/lang/String; = "username"

.field public static final EXTRA_PARAM_ORIGINAL_STANZA:Ljava/lang/String; = "originalStanza"

.field public static final EXTRA_PARAM_STANZA_TYPE:Ljava/lang/String; = "stanzaType"

.field public static final EXTRA_USE_RMQ:Ljava/lang/String; = "use_rmq"

.field public static final EXTRA_XMPP_STANZA_ATTR_FROM:Ljava/lang/String; = "attr:from"

.field public static final EXTRA_XMPP_STANZA_ATTR_ID:Ljava/lang/String; = "attr:id"

.field public static final EXTRA_XMPP_STANZA_ATTR_TO:Ljava/lang/String; = "attr:to"

.field public static final EXTRA_XMPP_STANZA_ATTR_TYPE:Ljava/lang/String; = "attr:type"

.field public static final EXTRA_XMPP_STANZA_EXTENSION:Ljava/lang/String; = "extension"

.field public static final INTENT_MUC_GROUP_ID:Ljava/lang/String; = "muc_group_id"

.field public static final INTENT_MUC_INVITER:Ljava/lang/String; = "muc_inviter"

.field public static final INTENT_MUC_PASSWORD:Ljava/lang/String; = "muc_password"

.field public static final RECEIVE_IQ_RESPONSE_ACTION:Ljava/lang/String; = "com.google.android.gtalkservice.intent.RECEIVE_IQ_RESPONSE"

.field public static final SEND_IQ_STANZA_ACTION:Ljava/lang/String; = "com.google.android.gtalkservice.intent.SEND_IQ_STANZA"

.field public static final SEND_MESSAGE_STANZA_ACTION:Ljava/lang/String; = "com.google.android.gtalkservice.intent.SEND_MESSAGE_STANZA"

.field public static final SEND_PRESENCE_STANZA_ACTION:Ljava/lang/String; = "com.google.android.gtalkservice.intent.SEND_PRESENCE_STANZA"

.field public static final STANZA_TYPE_IQ:Ljava/lang/String; = "iq"

.field public static final STANZA_TYPE_MESSAGE:Ljava/lang/String; = "message"

.field public static final STANZA_TYPE_PRESENCE:Ljava/lang/String; = "presence"

.field public static final TALK_AUTH_TYPE:Ljava/lang/String; = "ac2dm"

.field public static final VIDEO_CHAT_INCOMING_MESSAGE_INTENT_ACTION:Ljava/lang/String; = "com.google.android.videochat.RECEIVED_MESSAGE"

.field public static final XMPP_STANZA_RECEIVE_ACTION:Ljava/lang/String; = "com.google.android.gtalkservice.intent.RECEIVE_XMPP"

.field public static final XMPP_STANZA_SEND_FAILED_ACTION:Ljava/lang/String; = "com.google.android.gtalkservice.intent.SEND_XMPP_FAILED"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
