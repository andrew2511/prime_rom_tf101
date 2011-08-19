.class public final enum Lcom/google/android/apps/books/util/BlockedContentReason;
.super Ljava/lang/Enum;
.source "BlockedContentReason.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/books/util/BlockedContentReason$1;,
        Lcom/google/android/apps/books/util/BlockedContentReason$OfflineLimitException;,
        Lcom/google/android/apps/books/util/BlockedContentReason$BlockedContentException;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/android/apps/books/util/BlockedContentReason;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/apps/books/util/BlockedContentReason; = null

.field public static final enum AccountBlacklisted:Lcom/google/android/apps/books/util/BlockedContentReason; = null

.field public static final enum AccountSharing:Lcom/google/android/apps/books/util/BlockedContentReason; = null

.field public static final enum NotBlocked:Lcom/google/android/apps/books/util/BlockedContentReason; = null

.field public static final enum OfflineLimit:Lcom/google/android/apps/books/util/BlockedContentReason; = null

.field public static final enum ServerBug:Lcom/google/android/apps/books/util/BlockedContentReason; = null

.field private static final TAG:Ljava/lang/String; = "BlockedPageReason"

.field public static final enum TemporaryError:Lcom/google/android/apps/books/util/BlockedContentReason;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 16
    new-instance v0, Lcom/google/android/apps/books/util/BlockedContentReason;

    const-string v1, "NotBlocked"

    invoke-direct {v0, v1, v3}, Lcom/google/android/apps/books/util/BlockedContentReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/apps/books/util/BlockedContentReason;->NotBlocked:Lcom/google/android/apps/books/util/BlockedContentReason;

    .line 17
    new-instance v0, Lcom/google/android/apps/books/util/BlockedContentReason;

    const-string v1, "TemporaryError"

    invoke-direct {v0, v1, v4}, Lcom/google/android/apps/books/util/BlockedContentReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/apps/books/util/BlockedContentReason;->TemporaryError:Lcom/google/android/apps/books/util/BlockedContentReason;

    .line 18
    new-instance v0, Lcom/google/android/apps/books/util/BlockedContentReason;

    const-string v1, "AccountSharing"

    invoke-direct {v0, v1, v5}, Lcom/google/android/apps/books/util/BlockedContentReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/apps/books/util/BlockedContentReason;->AccountSharing:Lcom/google/android/apps/books/util/BlockedContentReason;

    .line 19
    new-instance v0, Lcom/google/android/apps/books/util/BlockedContentReason;

    const-string v1, "OfflineLimit"

    invoke-direct {v0, v1, v6}, Lcom/google/android/apps/books/util/BlockedContentReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/apps/books/util/BlockedContentReason;->OfflineLimit:Lcom/google/android/apps/books/util/BlockedContentReason;

    .line 20
    new-instance v0, Lcom/google/android/apps/books/util/BlockedContentReason;

    const-string v1, "AccountBlacklisted"

    invoke-direct {v0, v1, v7}, Lcom/google/android/apps/books/util/BlockedContentReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/apps/books/util/BlockedContentReason;->AccountBlacklisted:Lcom/google/android/apps/books/util/BlockedContentReason;

    .line 21
    new-instance v0, Lcom/google/android/apps/books/util/BlockedContentReason;

    const-string v1, "ServerBug"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/google/android/apps/books/util/BlockedContentReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/apps/books/util/BlockedContentReason;->ServerBug:Lcom/google/android/apps/books/util/BlockedContentReason;

    .line 15
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/google/android/apps/books/util/BlockedContentReason;

    sget-object v1, Lcom/google/android/apps/books/util/BlockedContentReason;->NotBlocked:Lcom/google/android/apps/books/util/BlockedContentReason;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/apps/books/util/BlockedContentReason;->TemporaryError:Lcom/google/android/apps/books/util/BlockedContentReason;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/android/apps/books/util/BlockedContentReason;->AccountSharing:Lcom/google/android/apps/books/util/BlockedContentReason;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/android/apps/books/util/BlockedContentReason;->OfflineLimit:Lcom/google/android/apps/books/util/BlockedContentReason;

    aput-object v1, v0, v6

    sget-object v1, Lcom/google/android/apps/books/util/BlockedContentReason;->AccountBlacklisted:Lcom/google/android/apps/books/util/BlockedContentReason;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/google/android/apps/books/util/BlockedContentReason;->ServerBug:Lcom/google/android/apps/books/util/BlockedContentReason;

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/apps/books/util/BlockedContentReason;->$VALUES:[Lcom/google/android/apps/books/util/BlockedContentReason;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 15
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 81
    return-void
.end method

.method public static assertNotBlocked(Lorg/json/JSONObject;)V
    .locals 8
    .parameter "header"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/apps/books/util/BlockedContentReason$BlockedContentException;
        }
    .end annotation

    .prologue
    const-string v7, "Page blocked: "

    .line 30
    const-string v4, "reason_content_blocked"

    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 31
    .local v3, reasonBlocked:Lorg/json/JSONObject;
    if-nez v3, :cond_0

    .line 38
    :pswitch_0
    return-void

    .line 33
    :cond_0
    const-string v4, "reason"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    .line 34
    .local v1, r:I
    invoke-static {v1}, Lcom/google/android/apps/books/util/BlockedContentReason;->getBlockedContentReason(I)Lcom/google/android/apps/books/util/BlockedContentReason;

    move-result-object v2

    .line 35
    .local v2, reason:Lcom/google/android/apps/books/util/BlockedContentReason;
    const-string v4, "BlockedPageReason"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "reason blocked: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Lcom/google/android/apps/books/util/BlockedContentReason;->name()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    sget-object v4, Lcom/google/android/apps/books/util/BlockedContentReason$1;->$SwitchMap$com$google$android$apps$books$util$BlockedContentReason:[I

    invoke-virtual {v2}, Lcom/google/android/apps/books/util/BlockedContentReason;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    .line 43
    new-instance v4, Lcom/google/android/apps/books/util/BlockedContentReason$BlockedContentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Page blocked: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Lcom/google/android/apps/books/util/BlockedContentReason;->name()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/google/android/apps/books/util/BlockedContentReason$BlockedContentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 40
    :pswitch_1
    const-string v4, "num_allowed_offline_devices"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    .line 41
    .local v0, numDevicesLimit:I
    new-instance v4, Lcom/google/android/apps/books/util/BlockedContentReason$OfflineLimitException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Page blocked: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Lcom/google/android/apps/books/util/BlockedContentReason;->name()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v0}, Lcom/google/android/apps/books/util/BlockedContentReason$OfflineLimitException;-><init>(Ljava/lang/String;I)V

    throw v4

    .line 36
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static getBlockedContentReason(I)Lcom/google/android/apps/books/util/BlockedContentReason;
    .locals 3
    .parameter "reason"

    .prologue
    .line 53
    packed-switch p0, :pswitch_data_0

    .line 67
    const-string v0, "BlockedPageReason"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown reason: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    sget-object v0, Lcom/google/android/apps/books/util/BlockedContentReason;->NotBlocked:Lcom/google/android/apps/books/util/BlockedContentReason;

    :goto_0
    return-object v0

    .line 55
    :pswitch_0
    sget-object v0, Lcom/google/android/apps/books/util/BlockedContentReason;->NotBlocked:Lcom/google/android/apps/books/util/BlockedContentReason;

    goto :goto_0

    .line 57
    :pswitch_1
    sget-object v0, Lcom/google/android/apps/books/util/BlockedContentReason;->TemporaryError:Lcom/google/android/apps/books/util/BlockedContentReason;

    goto :goto_0

    .line 59
    :pswitch_2
    sget-object v0, Lcom/google/android/apps/books/util/BlockedContentReason;->AccountSharing:Lcom/google/android/apps/books/util/BlockedContentReason;

    goto :goto_0

    .line 61
    :pswitch_3
    sget-object v0, Lcom/google/android/apps/books/util/BlockedContentReason;->OfflineLimit:Lcom/google/android/apps/books/util/BlockedContentReason;

    goto :goto_0

    .line 63
    :pswitch_4
    sget-object v0, Lcom/google/android/apps/books/util/BlockedContentReason;->AccountBlacklisted:Lcom/google/android/apps/books/util/BlockedContentReason;

    goto :goto_0

    .line 65
    :pswitch_5
    sget-object v0, Lcom/google/android/apps/books/util/BlockedContentReason;->ServerBug:Lcom/google/android/apps/books/util/BlockedContentReason;

    goto :goto_0

    .line 53
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/apps/books/util/BlockedContentReason;
    .locals 1
    .parameter "name"

    .prologue
    .line 15
    const-class v0, Lcom/google/android/apps/books/util/BlockedContentReason;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/android/apps/books/util/BlockedContentReason;

    return-object p0
.end method

.method public static values()[Lcom/google/android/apps/books/util/BlockedContentReason;
    .locals 1

    .prologue
    .line 15
    sget-object v0, Lcom/google/android/apps/books/util/BlockedContentReason;->$VALUES:[Lcom/google/android/apps/books/util/BlockedContentReason;

    invoke-virtual {v0}, [Lcom/google/android/apps/books/util/BlockedContentReason;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/apps/books/util/BlockedContentReason;

    return-object v0
.end method
