.class public Lcom/google/android/gm/HtmlConversationBuilder;
.super Ljava/lang/Object;
.source "HtmlConversationBuilder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gm/HtmlConversationBuilder$EmailAddress;,
        Lcom/google/android/gm/HtmlConversationBuilder$RenderedState;
    }
.end annotation


# static fields
.field private static final AUTHOR_COLORS:[Ljava/lang/String;

.field private static final EXCLUDED_CONVERSATION_LABELS:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static INLINE_IMAGE_PATTERN:Ljava/util/regex/Pattern;

.field private static final MESSAGE_PREFIX_LENGTH:I


# instance fields
.field private final mAccount:Ljava/lang/String;

.field private final mContext:Landroid/content/Context;

.field private final mCurrentColorMap:Ljava/util/Map;
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

.field private final mEmailCache:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gm/HtmlConversationBuilder$EmailAddress;",
            ">;"
        }
    .end annotation
.end field

.field private final mHasImages:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final mTemplates:Lcom/google/android/gm/template/GeneratedCompiledTemplates;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 102
    const-string v0, "<img\\s+[^>]*src=(\"|\')\\?"

    const/16 v1, 0xa

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/gm/HtmlConversationBuilder;->INLINE_IMAGE_PATTERN:Ljava/util/regex/Pattern;

    .line 108
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "^all"

    aput-object v1, v0, v2

    const-string v1, "^io_im"

    aput-object v1, v0, v3

    const-string v1, "^t"

    aput-object v1, v0, v4

    const-string v1, "^f"

    aput-object v1, v0, v5

    invoke-static {v0}, Lcom/google/common/collect/Sets;->newHashSet([Ljava/lang/Object;)Ljava/util/HashSet;

    move-result-object v0

    sput-object v0, Lcom/google/android/gm/HtmlConversationBuilder;->EXCLUDED_CONVERSATION_LABELS:Ljava/util/HashSet;

    .line 119
    const-string v0, "m"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    sput v0, Lcom/google/android/gm/HtmlConversationBuilder;->MESSAGE_PREFIX_LENGTH:I

    .line 1464
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "#00681c"

    aput-object v1, v0, v2

    const-string v1, "#790619"

    aput-object v1, v0, v3

    const-string v1, "#5b1094"

    aput-object v1, v0, v4

    const-string v1, "#c88900"

    aput-object v1, v0, v5

    const-string v1, "#cc0060"

    aput-object v1, v0, v6

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

    sput-object v0, Lcom/google/android/gm/HtmlConversationBuilder;->AUTHOR_COLORS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .parameter "context"
    .parameter "account"

    .prologue
    .line 516
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 127
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gm/HtmlConversationBuilder;->mEmailCache:Ljava/util/concurrent/ConcurrentHashMap;

    .line 133
    invoke-static {}, Lcom/google/common/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gm/HtmlConversationBuilder;->mCurrentColorMap:Ljava/util/Map;

    .line 511
    invoke-static {}, Lcom/google/common/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gm/HtmlConversationBuilder;->mHasImages:Ljava/util/HashMap;

    .line 517
    iput-object p1, p0, Lcom/google/android/gm/HtmlConversationBuilder;->mContext:Landroid/content/Context;

    .line 518
    iput-object p2, p0, Lcom/google/android/gm/HtmlConversationBuilder;->mAccount:Ljava/lang/String;

    .line 520
    invoke-static {p1}, Lcom/google/android/gm/template/GeneratedCompiledTemplates;->getTemplates(Landroid/content/Context;)Lcom/google/android/gm/template/GeneratedCompiledTemplates;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gm/HtmlConversationBuilder;->mTemplates:Lcom/google/android/gm/template/GeneratedCompiledTemplates;

    .line 521
    return-void
.end method

.method private static bodyContainsSearchQueryTerm(Ljava/lang/String;Ljava/util/List;)Z
    .locals 6
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1256
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v0, v5, :cond_1

    :cond_0
    move v0, v4

    .line 1270
    :goto_0
    return v0

    .line 1260
    :cond_1
    invoke-static {p0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1261
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 1264
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "(?<!\\w)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "(?!\\w)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    invoke-static {v2, v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 1266
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_2

    move v0, v5

    .line 1267
    goto :goto_0

    :cond_3
    move v0, v4

    .line 1270
    goto :goto_0
.end method

.method private buildAddressData([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ZLcom/google/common/collect/ImmutableMap$Builder;)V
    .locals 7
    .parameter "toAddresses"
    .parameter "ccAddresses"
    .parameter "bccAddresses"
    .parameter "showDetails"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Z",
            "Lcom/google/common/collect/ImmutableMap$Builder",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p5, mb:Lcom/google/common/collect/ImmutableMap$Builder;,"Lcom/google/common/collect/ImmutableMap$Builder<Ljava/lang/String;Ljava/lang/Object;>;"
    const v6, 0x7f0d008e

    const v5, 0x7f0d008d

    const v4, 0x7f0d008c

    .line 1066
    if-eqz p4, :cond_3

    .line 1067
    if-eqz p1, :cond_0

    array-length v2, p1

    if-lez v2, :cond_0

    .line 1068
    const-string v2, "toString"

    iget-object v3, p0, Lcom/google/android/gm/HtmlConversationBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p5, v2, v3}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v2

    const-string v3, "toAddresses"

    invoke-direct {p0, p1}, Lcom/google/android/gm/HtmlConversationBuilder;->getRecipientDetails([Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    .line 1072
    :cond_0
    if-eqz p2, :cond_1

    array-length v2, p2

    if-lez v2, :cond_1

    .line 1073
    const-string v2, "ccString"

    iget-object v3, p0, Lcom/google/android/gm/HtmlConversationBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p5, v2, v3}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v2

    const-string v3, "ccAddresses"

    invoke-direct {p0, p2}, Lcom/google/android/gm/HtmlConversationBuilder;->getRecipientDetails([Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    .line 1077
    :cond_1
    if-eqz p3, :cond_2

    array-length v2, p3

    if-lez v2, :cond_2

    .line 1078
    const-string v2, "bccString"

    iget-object v3, p0, Lcom/google/android/gm/HtmlConversationBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p5, v2, v3}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v2

    const-string v3, "bccAddresses"

    invoke-direct {p0, p3}, Lcom/google/android/gm/HtmlConversationBuilder;->getRecipientDetails([Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    .line 1105
    :cond_2
    :goto_0
    return-void

    .line 1089
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1090
    .local v1, sb:Ljava/lang/StringBuilder;
    const/16 v0, 0x32

    .line 1091
    .local v0, max:I
    if-eqz p1, :cond_4

    .line 1092
    invoke-direct {p0, p1, v0, v4}, Lcom/google/android/gm/HtmlConversationBuilder;->getRecipientsSummary([Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1093
    array-length v2, p1

    sub-int/2addr v0, v2

    .line 1096
    :cond_4
    if-lez v0, :cond_5

    if-eqz p2, :cond_5

    .line 1097
    invoke-direct {p0, p2, v0, v5}, Lcom/google/android/gm/HtmlConversationBuilder;->getRecipientsSummary([Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1098
    array-length v2, p2

    sub-int/2addr v0, v2

    .line 1101
    :cond_5
    if-lez v0, :cond_6

    if-eqz p3, :cond_6

    .line 1102
    invoke-direct {p0, p3, v0, v6}, Lcom/google/android/gm/HtmlConversationBuilder;->getRecipientsSummary([Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1104
    :cond_6
    const-string v2, "recipients"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p5, v2, v3}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    goto :goto_0
.end method

.method private defaultReplyAction()Z
    .locals 2

    .prologue
    .line 535
    invoke-static {}, Lcom/google/android/gm/Persistence;->getInstance()Lcom/google/android/gm/Persistence;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gm/HtmlConversationBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/google/android/gm/Persistence;->getActionStripActionReplyAll(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private disableSnapHeaders()Z
    .locals 3

    .prologue
    .line 527
    iget-object v0, p0, Lcom/google/android/gm/HtmlConversationBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "gmail_disable_snapheaders"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/google/android/gsf/Gservices;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static domIdForMessageId(J)Ljava/lang/String;
    .locals 2
    .parameter "messageId"

    .prologue
    .line 1497
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "m"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getAddressData(Lcom/google/android/gm/provider/Gmail$MessageCursor;Z)Ljava/util/Map;
    .locals 13
    .parameter "messageCursor"
    .parameter "showDetails"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gm/provider/Gmail$MessageCursor;",
            "Z)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 1031
    new-instance v9, Lcom/google/common/collect/ImmutableMap$Builder;

    invoke-direct {v9}, Lcom/google/common/collect/ImmutableMap$Builder;-><init>()V

    .line 1032
    .local v9, mb:Lcom/google/common/collect/ImmutableMap$Builder;,"Lcom/google/common/collect/ImmutableMap$Builder<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-virtual {p1}, Lcom/google/android/gm/provider/Gmail$MessageCursor;->getToAddresses()[Ljava/lang/String;

    move-result-object v12

    .line 1033
    .local v12, toAddresses:[Ljava/lang/String;
    invoke-virtual {p1}, Lcom/google/android/gm/provider/Gmail$MessageCursor;->getCcAddresses()[Ljava/lang/String;

    move-result-object v10

    .line 1034
    .local v10, ccAddresses:[Ljava/lang/String;
    invoke-direct {p0, p1}, Lcom/google/android/gm/HtmlConversationBuilder;->getBccAddresses(Lcom/google/android/gm/provider/Gmail$MessageCursor;)[Ljava/lang/String;

    move-result-object v7

    .line 1036
    .local v7, bccAddresses:[Ljava/lang/String;
    if-eqz p2, :cond_0

    .line 1037
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 1038
    .local v11, dateBuilder:Ljava/lang/StringBuilder;
    new-instance v1, Ljava/util/Formatter;

    invoke-direct {v1, v11}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;)V

    .line 1040
    .local v1, dateFormatter:Ljava/util/Formatter;
    invoke-virtual {p1}, Lcom/google/android/gm/provider/Gmail$MessageCursor;->getDateReceivedMs()J

    move-result-wide v2

    .line 1041
    .local v2, ms:J
    iget-object v0, p0, Lcom/google/android/gm/HtmlConversationBuilder;->mContext:Landroid/content/Context;

    const/16 v6, 0x16

    move-wide v4, v2

    invoke-static/range {v0 .. v6}, Landroid/text/format/DateUtils;->formatDateRange(Landroid/content/Context;Ljava/util/Formatter;JJI)Ljava/util/Formatter;

    .line 1043
    const-string v0, "date"

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v9, v0, v4}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    .line 1044
    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1045
    iget-object v0, p0, Lcom/google/android/gm/HtmlConversationBuilder;->mContext:Landroid/content/Context;

    const/4 v6, 0x1

    move-wide v4, v2

    invoke-static/range {v0 .. v6}, Landroid/text/format/DateUtils;->formatDateRange(Landroid/content/Context;Ljava/util/Formatter;JJI)Ljava/util/Formatter;

    .line 1046
    const-string v0, "time"

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v9, v0, v4}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    .line 1047
    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1049
    const-string v0, "dateString"

    iget-object v4, p0, Lcom/google/android/gm/HtmlConversationBuilder;->mContext:Landroid/content/Context;

    const v5, 0x7f0d008b

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v9, v0, v4}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    .end local v1           #dateFormatter:Ljava/util/Formatter;
    .end local v2           #ms:J
    .end local v11           #dateBuilder:Ljava/lang/StringBuilder;
    :cond_0
    move-object v4, p0

    move-object v5, v12

    move-object v6, v10

    move v8, p2

    .line 1052
    invoke-direct/range {v4 .. v9}, Lcom/google/android/gm/HtmlConversationBuilder;->buildAddressData([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ZLcom/google/common/collect/ImmutableMap$Builder;)V

    .line 1053
    invoke-virtual {v9}, Lcom/google/common/collect/ImmutableMap$Builder;->build()Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    return-object v0
.end method

.method private getAttachmentData(Ljava/util/List;J)Ljava/util/List;
    .locals 12
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gm/provider/Gmail$Attachment;",
            ">;J)",
            "Ljava/util/List",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 1215
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    .line 1216
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v7

    move v8, v5

    .line 1218
    :goto_0
    if-ge v8, v6, :cond_1

    .line 1219
    invoke-interface {p1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gm/provider/Gmail$Attachment;

    .line 1220
    const-string v0, "file:///android_res/drawable/ic_menu_attachment_holo_light.png"

    .line 1223
    iget-object v1, v3, Lcom/google/android/gm/provider/Gmail$Attachment;->contentType:Ljava/lang/String;

    const-string v2, "image/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1224
    iget-object v0, p0, Lcom/google/android/gm/HtmlConversationBuilder;->mAccount:Ljava/lang/String;

    sget-object v4, Lcom/google/android/gm/provider/Gmail$AttachmentRendition;->SIMPLE:Lcom/google/android/gm/provider/Gmail$AttachmentRendition;

    move-wide v1, p2

    invoke-static/range {v0 .. v5}, Lcom/google/android/gm/provider/Gmail;->getAttachmentUri(Ljava/lang/String;JLcom/google/android/gm/provider/Gmail$Attachment;Lcom/google/android/gm/provider/Gmail$AttachmentRendition;Z)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1228
    :cond_0
    iget-object v1, v3, Lcom/google/android/gm/provider/Gmail$Attachment;->name:Ljava/lang/String;

    .line 1229
    iget-object v2, p0, Lcom/google/android/gm/HtmlConversationBuilder;->mContext:Landroid/content/Context;

    iget v4, v3, Lcom/google/android/gm/provider/Gmail$Attachment;->size:I

    int-to-long v9, v4

    invoke-static {v2, v9, v10}, Lcom/google/android/gm/AttachmentUtils;->convertToHumanReadableSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v2

    .line 1231
    iget-object v4, p0, Lcom/google/android/gm/HtmlConversationBuilder;->mContext:Landroid/content/Context;

    invoke-static {v4, v3}, Lcom/google/android/gm/AttachmentUtils;->getDisplayType(Landroid/content/Context;Lcom/google/android/gm/provider/Gmail$Attachment;)Ljava/lang/String;

    move-result-object v4

    .line 1233
    new-instance v9, Lcom/google/common/collect/ImmutableMap$Builder;

    invoke-direct {v9}, Lcom/google/common/collect/ImmutableMap$Builder;-><init>()V

    const-string v10, "uri"

    invoke-virtual {v9, v10, v0}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    const-string v9, "name"

    invoke-virtual {v0, v9, v1}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    const-string v1, "type"

    invoke-virtual {v0, v1, v4}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    const-string v1, "size"

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    const-string v1, "canPreview"

    iget-object v2, p0, Lcom/google/android/gm/HtmlConversationBuilder;->mContext:Landroid/content/Context;

    iget-object v4, v3, Lcom/google/android/gm/provider/Gmail$Attachment;->contentType:Ljava/lang/String;

    invoke-static {v2, v4}, Lcom/google/android/gm/provider/MimeType;->isPreviewable(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v9

    const-string v10, "canView"

    iget-object v11, p0, Lcom/google/android/gm/HtmlConversationBuilder;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/google/android/gm/HtmlConversationBuilder;->mAccount:Ljava/lang/String;

    sget-object v4, Lcom/google/android/gm/provider/Gmail$AttachmentRendition;->BEST:Lcom/google/android/gm/provider/Gmail$AttachmentRendition;

    move-wide v1, p2

    invoke-static/range {v0 .. v5}, Lcom/google/android/gm/provider/Gmail;->getAttachmentUri(Ljava/lang/String;JLcom/google/android/gm/provider/Gmail$Attachment;Lcom/google/android/gm/provider/Gmail$AttachmentRendition;Z)Landroid/net/Uri;

    move-result-object v0

    iget-object v1, v3, Lcom/google/android/gm/provider/Gmail$Attachment;->contentType:Ljava/lang/String;

    invoke-static {v11, v0, v1}, Lcom/google/android/gm/provider/MimeType;->isViewable(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v9, v10, v0}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    const-string v1, "canPlay"

    iget-object v2, v3, Lcom/google/android/gm/provider/Gmail$Attachment;->contentType:Ljava/lang/String;

    invoke-static {v2}, Lcom/google/android/gm/provider/MimeType;->isPlayable(Ljava/lang/String;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    const-string v1, "canInstall"

    iget-object v2, v3, Lcom/google/android/gm/provider/Gmail$Attachment;->contentType:Ljava/lang/String;

    invoke-static {v2}, Lcom/google/android/gm/provider/MimeType;->isInstallable(Ljava/lang/String;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    const-string v1, "partId"

    iget-object v2, v3, Lcom/google/android/gm/provider/Gmail$Attachment;->partId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableMap$Builder;->build()Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1218
    add-int/lit8 v0, v8, 0x1

    move v8, v0

    goto/16 :goto_0

    .line 1248
    :cond_1
    return-object v7
.end method

.method private getBccAddresses(Lcom/google/android/gm/provider/Gmail$MessageCursor;)[Ljava/lang/String;
    .locals 2
    .parameter "messageCursor"

    .prologue
    .line 1003
    invoke-virtual {p1}, Lcom/google/android/gm/provider/Gmail$MessageCursor;->getLabels()Ljava/util/Map;

    move-result-object v0

    .line 1004
    .local v0, allLabels:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lcom/google/android/gm/provider/Label;>;"
    const-string v1, "^f"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1005
    invoke-virtual {p1}, Lcom/google/android/gm/provider/Gmail$MessageCursor;->getBccAddresses()[Ljava/lang/String;

    move-result-object v1

    .line 1007
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    goto :goto_0
.end method

.method private getDateFlags(J)I
    .locals 7
    .parameter "millis"

    .prologue
    .line 905
    const v1, 0x80008

    .line 906
    .local v1, dateFlags:I
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, p1, p2}, Ljava/util/Date;-><init>(J)V

    .line 907
    .local v2, messageDate:Ljava/util/Date;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 908
    .local v0, calendar:Ljava/util/Calendar;
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v3

    .line 909
    .local v3, today:Ljava/util/Date;
    const/4 v5, 0x5

    const/4 v6, 0x0

    invoke-virtual {v0, v5, v6}, Ljava/util/Calendar;->roll(IZ)V

    .line 910
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v4

    .line 911
    .local v4, yesterday:Ljava/util/Date;
    invoke-virtual {v2, v4}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 912
    or-int/lit8 v1, v1, 0x1

    .line 916
    :goto_0
    return v1

    .line 914
    :cond_0
    or-int/lit8 v1, v1, 0x10

    goto :goto_0
.end method

.method private getLabelList(Ljava/util/Map;)Ljava/util/ArrayList;
    .locals 14
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gm/provider/Label;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .prologue
    const/4 v13, 0x0

    .line 1172
    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-static {v1}, Lcom/google/common/collect/Lists;->newArrayList(Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object v9

    .line 1174
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v10

    .line 1175
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11, v10}, Ljava/util/ArrayList;-><init>(I)V

    move v12, v13

    .line 1177
    :goto_0
    if-ge v12, v10, :cond_2

    .line 1178
    invoke-interface {v9, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/google/android/gm/provider/Label;

    move-object v8, v0

    .line 1179
    invoke-virtual {v8}, Lcom/google/android/gm/provider/Label;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    .line 1183
    invoke-virtual {v8}, Lcom/google/android/gm/provider/Label;->getHidden()Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Lcom/google/android/gm/HtmlConversationBuilder;->EXCLUDED_CONVERSATION_LABELS:Ljava/util/HashSet;

    invoke-virtual {v2, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1185
    const-string v2, "^g"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1187
    const-string v1, "#fff"

    .line 1188
    const-string v2, "#063"

    move-object v6, v2

    move-object v4, v2

    move-object v2, v1

    .line 1195
    :goto_1
    const-string v1, "background"

    const-string v3, "borderColor"

    const-string v5, "color"

    const-string v7, "name"

    invoke-virtual {v8}, Lcom/google/android/gm/provider/Label;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-static/range {v1 .. v8}, Lcom/google/common/collect/ImmutableMap;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap;

    move-result-object v1

    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1177
    :cond_0
    add-int/lit8 v1, v12, 0x1

    move v12, v1

    goto :goto_0

    .line 1190
    :cond_1
    invoke-virtual {v8}, Lcom/google/android/gm/provider/Label;->getColor()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gm/HtmlConversationBuilder;->mAccount:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/android/gm/utils/LabelColorUtils;->getLabelColorStrings(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 1192
    aget-object v2, v1, v13

    .line 1193
    const/4 v3, 0x1

    aget-object v1, v1, v3

    move-object v6, v1

    move-object v4, v2

    goto :goto_1

    .line 1203
    :cond_2
    return-object v11
.end method

.method private getMessageData(Lcom/google/android/gm/provider/Gmail$MessageCursor;ZZ)Ljava/util/Map;
    .locals 7
    .parameter "messageCursor"
    .parameter "isExpanded"
    .parameter "safeForImages"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gm/provider/Gmail$MessageCursor;",
            "ZZ)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 930
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 931
    .local v5, dateBuilder:Ljava/lang/StringBuilder;
    new-instance v4, Ljava/util/Formatter;

    invoke-direct {v4, v5}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;)V

    .line 932
    .local v4, dateFormatter:Ljava/util/Formatter;
    invoke-virtual {p0}, Lcom/google/android/gm/HtmlConversationBuilder;->getZoomValue()F

    move-result v6

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gm/HtmlConversationBuilder;->getMessageData(Lcom/google/android/gm/provider/Gmail$MessageCursor;ZZLjava/util/Formatter;Ljava/lang/StringBuilder;F)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method private getMessageData(Lcom/google/android/gm/provider/Gmail$MessageCursor;ZZLjava/util/Formatter;Ljava/lang/StringBuilder;F)Ljava/util/Map;
    .locals 26
    .parameter "messageCursor"
    .parameter "isExpanded"
    .parameter "safeForImages"
    .parameter "dateFormatter"
    .parameter "dateBuilder"
    .parameter "zoomValue"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gm/provider/Gmail$MessageCursor;",
            "ZZ",
            "Ljava/util/Formatter;",
            "Ljava/lang/StringBuilder;",
            "F)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 794
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gm/provider/Gmail$MessageCursor;->getLocalId()J

    move-result-wide v16

    .line 795
    .local v16, id:J
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gm/provider/Gmail$MessageCursor;->position()I

    move-result v18

    .line 797
    .local v18, index:I
    new-instance v4, Lcom/google/common/collect/ImmutableMap$Builder;

    invoke-direct {v4}, Lcom/google/common/collect/ImmutableMap$Builder;-><init>()V

    const-string v5, "isExpanded"

    invoke-static/range {p2 .. p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v4

    const-string v5, "useReplyDefault"

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gm/HtmlConversationBuilder;->defaultReplyAction()Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v4

    const-string v5, "forwardString"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/HtmlConversationBuilder;->mContext:Landroid/content/Context;

    move-object v6, v0

    const v7, 0x7f0d0037

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v4

    const-string v5, "replyString"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/HtmlConversationBuilder;->mContext:Landroid/content/Context;

    move-object v6, v0

    const v7, 0x7f0d0034

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v4

    const-string v5, "replyAllString"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/HtmlConversationBuilder;->mContext:Landroid/content/Context;

    move-object v6, v0

    const v7, 0x7f0d0035

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v4

    const-string v5, "resumeDraftString"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/HtmlConversationBuilder;->mContext:Landroid/content/Context;

    move-object v6, v0

    const v7, 0x7f0d0036

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v4

    const-string v5, "messageId"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "m"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-wide/from16 v1, v16

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v4

    const-string v5, "serverMessageId"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "m"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gm/provider/Gmail$MessageCursor;->getMessageId()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v4

    const-string v5, "index"

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v22

    .line 808
    .local v22, mb:Lcom/google/common/collect/ImmutableMap$Builder;,"Lcom/google/common/collect/ImmutableMap$Builder<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gm/provider/Gmail$MessageCursor;->getIsDraft()Z

    move-result v19

    .line 809
    .local v19, isDraft:Z
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gm/provider/Gmail$MessageCursor;->getIsInOutbox()Z

    move-result v20

    .line 810
    .local v20, isSending:Z
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gm/provider/Gmail$MessageCursor;->getIsStarred()Z

    move-result v21

    .line 812
    .local v21, isStarred:Z
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gm/provider/Gmail$MessageCursor;->getAttachmentInfos()Ljava/util/ArrayList;

    move-result-object v11

    .line 813
    .local v11, attachments:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/gm/provider/Gmail$Attachment;>;"
    invoke-interface {v11}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_7

    const/4 v4, 0x1

    move v14, v4

    .line 814
    .local v14, hasAttachments:Z
    :goto_0
    if-eqz v14, :cond_0

    .line 815
    const-string v4, "attachments"

    move-object/from16 v0, p0

    move-object v1, v11

    move-wide/from16 v2, v16

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gm/HtmlConversationBuilder;->getAttachmentData(Ljava/util/List;J)Ljava/util/List;

    move-result-object v5

    move-object/from16 v0, v22

    move-object v1, v4

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v4

    const-string v5, "previewString"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/HtmlConversationBuilder;->mContext:Landroid/content/Context;

    move-object v6, v0

    const v7, 0x7f0d00dd

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v4

    const-string v5, "viewString"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/HtmlConversationBuilder;->mContext:Landroid/content/Context;

    move-object v6, v0

    const v7, 0x7f0d00de

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v4

    const-string v5, "saveString"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/HtmlConversationBuilder;->mContext:Landroid/content/Context;

    move-object v6, v0

    const v7, 0x7f0d00df

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v4

    const-string v5, "infoString"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/HtmlConversationBuilder;->mContext:Landroid/content/Context;

    move-object v6, v0

    const v7, 0x7f0d00e0

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v4

    const-string v5, "playString"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/HtmlConversationBuilder;->mContext:Landroid/content/Context;

    move-object v6, v0

    const v7, 0x7f0d00e1

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v4

    const-string v5, "installString"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/HtmlConversationBuilder;->mContext:Landroid/content/Context;

    move-object v6, v0

    const v7, 0x7f0d00e2

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v4

    const-string v5, "cancelString"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/HtmlConversationBuilder;->mContext:Landroid/content/Context;

    move-object v6, v0

    const v7, 0x7f0d00e3

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v4

    const-string v5, "defaultUri"

    const-string v6, "file:///android_res/drawable/ic_menu_attachment_holo_light.png"

    invoke-virtual {v4, v5, v6}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    .line 826
    :cond_0
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 827
    .local v12, classNames:Ljava/lang/StringBuilder;
    if-eqz p2, :cond_8

    .line 828
    const-string v4, " gm-expanded"

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 832
    :goto_1
    if-eqz v19, :cond_1

    .line 833
    const-string v4, " gm-draft"

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 835
    :cond_1
    if-eqz v20, :cond_2

    .line 836
    const-string v4, " gm-sending"

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 838
    :cond_2
    if-eqz v21, :cond_3

    .line 839
    const-string v4, " gm-starred"

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 841
    :cond_3
    if-eqz v14, :cond_4

    .line 842
    const-string v4, " gm-attachment"

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 844
    :cond_4
    const-string v4, "classNames"

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v22

    move-object v1, v4

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    .line 846
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gm/provider/Gmail$MessageCursor;->getDateReceivedMs()J

    move-result-wide v6

    .line 847
    .local v6, millis:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/HtmlConversationBuilder;->mContext:Landroid/content/Context;

    move-object v4, v0

    move-object/from16 v0, p0

    move-wide v1, v6

    invoke-direct {v0, v1, v2}, Lcom/google/android/gm/HtmlConversationBuilder;->getDateFlags(J)I

    move-result v10

    move-object/from16 v5, p4

    move-wide v8, v6

    invoke-static/range {v4 .. v10}, Landroid/text/format/DateUtils;->formatDateRange(Landroid/content/Context;Ljava/util/Formatter;JJI)Ljava/util/Formatter;

    .line 849
    const-string v4, "dateTimeString"

    invoke-virtual/range {p5 .. p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v22

    move-object v1, v4

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    .line 850
    const/4 v4, 0x0

    move-object/from16 v0, p5

    move v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 852
    if-eqz v19, :cond_9

    .line 853
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/HtmlConversationBuilder;->mContext:Landroid/content/Context;

    move-object v4, v0

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0f0003

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Landroid/content/res/Resources;->getQuantityText(II)Ljava/lang/CharSequence;

    .end local v6           #millis:J
    move-result-object v13

    .line 854
    .local v13, draft:Ljava/lang/CharSequence;
    const-string v4, "personal"

    move-object/from16 v0, v22

    move-object v1, v4

    move-object v2, v13

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v4

    const-string v5, "color"

    const-string v6, "red"

    invoke-virtual {v4, v5, v6}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    .line 864
    .end local v13           #draft:Ljava/lang/CharSequence;
    :goto_2
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gm/provider/Gmail$MessageCursor;->getBody()Ljava/lang/String;

    move-result-object v23

    .line 865
    .local v23, messageBody:Ljava/lang/String;
    const-string v4, "messageBody"

    move-object/from16 v0, v22

    move-object v1, v4

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v4

    const-string v5, "zoom"

    invoke-static/range {p6 .. p6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    .line 867
    const-string v4, "snippet"

    if-nez v19, :cond_5

    if-eqz v20, :cond_b

    :cond_5
    invoke-static/range {v23 .. v23}, Lcom/google/android/gm/HtmlConversationBuilder;->makeSnippet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    :goto_3
    move-object/from16 v0, v22

    move-object v1, v4

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    .line 870
    if-eqz p3, :cond_c

    .line 871
    const-string v4, "showImages"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    move-object/from16 v0, v22

    move-object v1, v4

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    .line 893
    .end local p2
    :cond_6
    :goto_4
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v4

    invoke-direct {v0, v1, v2}, Lcom/google/android/gm/HtmlConversationBuilder;->getAddressData(Lcom/google/android/gm/provider/Gmail$MessageCursor;Z)Ljava/util/Map;

    move-result-object v4

    move-object/from16 v0, v22

    move-object v1, v4

    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableMap$Builder;->putAll(Ljava/util/Map;)Lcom/google/common/collect/ImmutableMap$Builder;

    .line 895
    invoke-virtual/range {v22 .. v22}, Lcom/google/common/collect/ImmutableMap$Builder;->build()Lcom/google/common/collect/ImmutableMap;

    move-result-object v4

    return-object v4

    .line 813
    .end local v12           #classNames:Ljava/lang/StringBuilder;
    .end local v14           #hasAttachments:Z
    .end local v23           #messageBody:Ljava/lang/String;
    .restart local p2
    :cond_7
    const/4 v4, 0x0

    move v14, v4

    goto/16 :goto_0

    .line 830
    .restart local v12       #classNames:Ljava/lang/StringBuilder;
    .restart local v14       #hasAttachments:Z
    :cond_8
    const-string v4, " gm-collapsed"

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 855
    .restart local v6       #millis:J
    :cond_9
    if-eqz v20, :cond_a

    .line 856
    const-string v4, "personal"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/HtmlConversationBuilder;->mContext:Landroid/content/Context;

    move-object v5, v0

    const v6, 0x7f0d007d

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .end local v6           #millis:J
    move-result-object v5

    move-object/from16 v0, v22

    move-object v1, v4

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v4

    const-string v5, "color"

    const-string v6, "red"

    invoke-virtual {v4, v5, v6}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    goto :goto_2

    .line 858
    .restart local v6       #millis:J
    :cond_a
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gm/provider/Gmail$MessageCursor;->getFromAddress()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    move-object v1, v4

    invoke-virtual {v0, v1}, Lcom/google/android/gm/HtmlConversationBuilder;->getEmailAddress(Ljava/lang/String;)Lcom/google/android/gm/HtmlConversationBuilder$EmailAddress;

    move-result-object v24

    .line 859
    .local v24, sender:Lcom/google/android/gm/HtmlConversationBuilder$EmailAddress;
    const-string v4, "email"

    invoke-virtual/range {v24 .. v24}, Lcom/google/android/gm/HtmlConversationBuilder$EmailAddress;->getAddress()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v22

    move-object v1, v4

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v4

    const-string v5, "clickSafeEmail"

    invoke-virtual/range {v24 .. v24}, Lcom/google/android/gm/HtmlConversationBuilder$EmailAddress;->getClickSafeAddress()Ljava/lang/String;

    move-result-object v6

    .end local v6           #millis:J
    invoke-virtual {v4, v5, v6}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v4

    const-string v5, "personal"

    invoke-virtual/range {v24 .. v24}, Lcom/google/android/gm/HtmlConversationBuilder$EmailAddress;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    goto/16 :goto_2

    .line 867
    .end local v24           #sender:Lcom/google/android/gm/HtmlConversationBuilder$EmailAddress;
    .restart local v23       #messageBody:Ljava/lang/String;
    :cond_b
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gm/provider/Gmail$MessageCursor;->getSnippet()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_3

    .line 876
    :cond_c
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gm/provider/Gmail$MessageCursor;->getBodyEmbedsExternalResources()Z

    move-result v4

    if-eqz v4, :cond_d

    .line 877
    const/16 v25, 0x1

    .line 887
    .end local p2
    .local v25, showPrompt:Z
    :goto_5
    if-eqz v25, :cond_6

    .line 888
    const-string v4, "showPrompt"

    invoke-static/range {v25 .. v25}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    move-object/from16 v0, v22

    move-object v1, v4

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v4

    const-string v5, "button"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/HtmlConversationBuilder;->mContext:Landroid/content/Context;

    move-object v6, v0

    const v7, 0x7f0d0084

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    goto/16 :goto_4

    .line 879
    .end local v25           #showPrompt:Z
    .restart local p2
    :cond_d
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gm/provider/Gmail$MessageCursor;->getConversationId()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gm/provider/Gmail$MessageCursor;->getLocalId()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 881
    .local v15, hashKey:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/HtmlConversationBuilder;->mHasImages:Ljava/util/HashMap;

    move-object v4, v0

    invoke-virtual {v4, v15}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_e

    .line 882
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/HtmlConversationBuilder;->mHasImages:Ljava/util/HashMap;

    move-object v4, v0

    sget-object v5, Lcom/google/android/gm/HtmlConversationBuilder;->INLINE_IMAGE_PATTERN:Ljava/util/regex/Pattern;

    move-object v0, v5

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/regex/Matcher;->find()Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v4, v15, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 884
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/HtmlConversationBuilder;->mHasImages:Ljava/util/HashMap;

    move-object v4, v0

    invoke-virtual {v4, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    .end local p2
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v25

    .restart local v25       #showPrompt:Z
    goto :goto_5
.end method

.method private getRecipientDetails([Ljava/lang/String;)Ljava/util/List;
    .locals 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 1152
    new-instance v0, Lcom/google/common/collect/ImmutableList$Builder;

    invoke-direct {v0}, Lcom/google/common/collect/ImmutableList$Builder;-><init>()V

    .line 1154
    array-length v1, p1

    .line 1155
    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 1156
    aget-object v3, p1, v2

    invoke-virtual {p0, v3}, Lcom/google/android/gm/HtmlConversationBuilder;->getEmailAddress(Ljava/lang/String;)Lcom/google/android/gm/HtmlConversationBuilder$EmailAddress;

    move-result-object v3

    .line 1157
    const-string v4, "name"

    invoke-virtual {v3}, Lcom/google/android/gm/HtmlConversationBuilder$EmailAddress;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "email"

    invoke-virtual {v3}, Lcom/google/android/gm/HtmlConversationBuilder$EmailAddress;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v5, v6, v3}, Lcom/google/common/collect/ImmutableMap;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 1155
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1161
    :cond_0
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList$Builder;->build()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    return-object v0
.end method

.method private getRecipientsSummary([Ljava/lang/String;II)Ljava/lang/String;
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1111
    array-length v0, p1

    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 1112
    if-nez v0, :cond_0

    .line 1113
    const-string v0, ""

    .line 1130
    :goto_0
    return-object v0

    .line 1116
    :cond_0
    iget-object v1, p0, Lcom/google/android/gm/HtmlConversationBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1117
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1118
    const/4 v3, 0x0

    :goto_1
    if-ge v3, v0, :cond_2

    .line 1119
    if-eqz v3, :cond_1

    .line 1120
    iget-object v4, p0, Lcom/google/android/gm/HtmlConversationBuilder;->mContext:Landroid/content/Context;

    const v5, 0x7f0d015a

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0x20

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1122
    :cond_1
    aget-object v4, p1, v3

    invoke-virtual {p0, v4}, Lcom/google/android/gm/HtmlConversationBuilder;->getEmailAddress(Ljava/lang/String;)Lcom/google/android/gm/HtmlConversationBuilder$EmailAddress;

    move-result-object v4

    .line 1123
    invoke-direct {p0, v4}, Lcom/google/android/gm/HtmlConversationBuilder;->getSimplifiedName(Lcom/google/android/gm/HtmlConversationBuilder$EmailAddress;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1118
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1126
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1127
    iget-object v3, p0, Lcom/google/android/gm/HtmlConversationBuilder;->mTemplates:Lcom/google/android/gm/template/GeneratedCompiledTemplates;

    const-string v4, "heading"

    const-string v5, "recipients"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v1, v5, v2}, Lcom/google/common/collect/ImmutableMap;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Lcom/google/android/gm/template/GeneratedCompiledTemplates;->renderRecipientSummary(Ljava/lang/Appendable;Ljava/util/Map;)V

    .line 1130
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private getSimplifiedName(Lcom/google/android/gm/HtmlConversationBuilder$EmailAddress;)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    .line 1139
    invoke-virtual {p1}, Lcom/google/android/gm/HtmlConversationBuilder$EmailAddress;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 1140
    iget-object v1, p0, Lcom/google/android/gm/HtmlConversationBuilder;->mAccount:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gm/HtmlConversationBuilder;->mContext:Landroid/content/Context;

    const v1, 0x7f0d0076

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gm/HtmlConversationBuilder$EmailAddress;->getSimplifiedName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->htmlEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getZoomValue(Landroid/content/Context;)F
    .locals 3
    .parameter "context"

    .prologue
    .line 1457
    invoke-static {}, Lcom/google/android/gm/Persistence;->getInstance()Lcom/google/android/gm/Persistence;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/google/android/gm/Persistence;->getMessageTextSize(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v1

    .line 1459
    .local v1, rawZoomSetting:F
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v0, v2, Landroid/util/DisplayMetrics;->density:F

    .line 1460
    .local v0, density:F
    mul-float v2, v1, v0

    return v2
.end method

.method static makeSnippet(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .parameter

    .prologue
    const/16 v8, 0x3c

    const/16 v7, 0x3b

    const/16 v6, 0x26

    const/4 v5, -0x1

    .line 1282
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1284
    new-instance v1, Ljava/io/StringReader;

    invoke-direct {v1, p0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    .line 1287
    :cond_0
    :goto_0
    :try_start_0
    invoke-virtual {v1}, Ljava/io/StringReader;->read()I

    move-result v2

    if-eq v2, v5, :cond_2

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    const/16 v4, 0x64

    if-ge v3, v4, :cond_2

    .line 1289
    invoke-static {v2}, Ljava/lang/Character;->isWhitespace(I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1290
    const/16 v2, 0x20

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1292
    :cond_1
    invoke-virtual {v1}, Ljava/io/StringReader;->read()I

    move-result v2

    .line 1293
    invoke-static {v2}, Ljava/lang/Character;->isWhitespace(I)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-nez v3, :cond_1

    .line 1294
    if-ne v2, v5, :cond_3

    .line 1357
    :cond_2
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1299
    :cond_3
    if-ne v2, v8, :cond_6

    .line 1301
    :cond_4
    :try_start_1
    invoke-virtual {v1}, Ljava/io/StringReader;->read()I

    move-result v2

    if-eq v2, v5, :cond_5

    .line 1302
    const/16 v3, 0x3e

    if-ne v2, v3, :cond_4

    .line 1308
    :cond_5
    if-ne v2, v5, :cond_0

    goto :goto_1

    .line 1311
    :cond_6
    if-ne v2, v6, :cond_11

    .line 1313
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1315
    :goto_2
    invoke-virtual {v1}, Ljava/io/StringReader;->read()I

    move-result v3

    if-eq v3, v5, :cond_7

    .line 1316
    if-ne v3, v7, :cond_9

    .line 1322
    :cond_7
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1323
    const-string v4, "nbsp"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 1324
    const/16 v2, 0x20

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1344
    :cond_8
    :goto_3
    if-ne v3, v5, :cond_0

    goto :goto_1

    .line 1319
    :cond_9
    int-to-char v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 1353
    :catch_0
    move-exception v1

    .line 1354
    const-string v2, "Gmail"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Really? IOException while reading a freaking string?!? "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1325
    :cond_a
    :try_start_2
    const-string v4, "lt"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 1326
    const/16 v2, 0x3c

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 1327
    :cond_b
    const-string v4, "gt"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 1328
    const/16 v2, 0x3e

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 1329
    :cond_c
    const-string v4, "amp"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 1330
    const/16 v2, 0x26

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 1331
    :cond_d
    const-string v4, "quot"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 1332
    const/16 v2, 0x22

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 1333
    :cond_e
    const-string v4, "apos"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_f

    const-string v4, "#39"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 1334
    :cond_f
    const/16 v2, 0x27

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 1337
    :cond_10
    const/16 v4, 0x26

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1338
    if-ne v3, v7, :cond_8

    .line 1339
    const/16 v2, 0x3b

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 1350
    :cond_11
    int-to-char v2, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0
.end method

.method public static messageIdForDomId(Ljava/lang/String;)J
    .locals 2
    .parameter "messageId"

    .prologue
    .line 1504
    sget v0, Lcom/google/android/gm/HtmlConversationBuilder;->MESSAGE_PREFIX_LENGTH:I

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 1505
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method


# virtual methods
.method public getCollapsedHeadersHtml(Lcom/google/android/gm/provider/Gmail$MessageCursor;Lcom/google/android/gm/HtmlConversationBuilder$RenderedState;II)Ljava/lang/String;
    .locals 14
    .parameter "messageCursor"
    .parameter "renderInfo"
    .parameter "first"
    .parameter "last"

    .prologue
    .line 959
    new-instance v11, Ljava/lang/StringBuilder;

    sub-int v2, p4, p3

    add-int/lit8 v2, v2, 0x1

    mul-int/lit16 v2, v2, 0x960

    invoke-direct {v11, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 963
    .local v11, sb:Ljava/lang/StringBuilder;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 964
    .local v7, dateBuilder:Ljava/lang/StringBuilder;
    new-instance v6, Ljava/util/Formatter;

    invoke-direct {v6, v7}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;)V

    .line 965
    .local v6, dateFormatter:Ljava/util/Formatter;
    invoke-static {}, Lcom/google/android/gm/Persistence;->getInstance()Lcom/google/android/gm/Persistence;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gm/HtmlConversationBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lcom/google/android/gm/Persistence;->getSenderWhitelist(Landroid/content/Context;)Ljava/util/Set;

    move-result-object v13

    .line 966
    .local v13, senderWhitelist:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    move/from16 v9, p3

    .local v9, i:I
    :goto_0
    move v0, v9

    move/from16 v1, p4

    if-gt v0, v1, :cond_0

    .line 967
    invoke-virtual {p1, v9}, Lcom/google/android/gm/provider/Gmail$MessageCursor;->moveTo(I)Z

    .line 968
    invoke-virtual {p1}, Lcom/google/android/gm/provider/Gmail$MessageCursor;->getFromAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/gm/HtmlConversationBuilder;->getEmailAddress(Ljava/lang/String;)Lcom/google/android/gm/HtmlConversationBuilder$EmailAddress;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gm/HtmlConversationBuilder$EmailAddress;->getAddress()Ljava/lang/String;

    move-result-object v12

    .line 969
    .local v12, sender:Ljava/lang/String;
    const/4 v4, 0x0

    invoke-interface {v13, v12}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    invoke-virtual {p0}, Lcom/google/android/gm/HtmlConversationBuilder;->getZoomValue()F

    move-result v8

    move-object v2, p0

    move-object v3, p1

    invoke-direct/range {v2 .. v8}, Lcom/google/android/gm/HtmlConversationBuilder;->getMessageData(Lcom/google/android/gm/provider/Gmail$MessageCursor;ZZLjava/util/Formatter;Ljava/lang/StringBuilder;F)Ljava/util/Map;

    move-result-object v10

    .line 973
    .local v10, messageData:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v2, p0, Lcom/google/android/gm/HtmlConversationBuilder;->mTemplates:Lcom/google/android/gm/template/GeneratedCompiledTemplates;

    invoke-virtual {v2, v11, v10}, Lcom/google/android/gm/template/GeneratedCompiledTemplates;->renderMessage(Ljava/lang/Appendable;Ljava/util/Map;)V

    .line 966
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 976
    .end local v10           #messageData:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v12           #sender:Ljava/lang/String;
    :cond_0
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method getColor(Ljava/lang/String;I)Ljava/lang/String;
    .locals 4
    .parameter "senderEmail"
    .parameter "position"

    .prologue
    .line 1483
    iget-object v2, p0, Lcom/google/android/gm/HtmlConversationBuilder;->mCurrentColorMap:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1484
    .local v0, result:Ljava/lang/String;
    if-eqz v0, :cond_0

    move-object v1, v0

    .line 1489
    .end local v0           #result:Ljava/lang/String;
    .local v1, result:Ljava/lang/String;
    :goto_0
    return-object v1

    .line 1487
    .end local v1           #result:Ljava/lang/String;
    .restart local v0       #result:Ljava/lang/String;
    :cond_0
    sget-object v2, Lcom/google/android/gm/HtmlConversationBuilder;->AUTHOR_COLORS:[Ljava/lang/String;

    sget-object v3, Lcom/google/android/gm/HtmlConversationBuilder;->AUTHOR_COLORS:[Ljava/lang/String;

    array-length v3, v3

    rem-int v3, p2, v3

    aget-object v0, v2, v3

    .line 1488
    iget-object v2, p0, Lcom/google/android/gm/HtmlConversationBuilder;->mCurrentColorMap:Ljava/util/Map;

    invoke-interface {v2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v0

    .line 1489
    .end local v0           #result:Ljava/lang/String;
    .restart local v1       #result:Ljava/lang/String;
    goto :goto_0
.end method

.method public getConversationHtml(Lcom/google/android/gm/provider/Gmail$MessageCursor;Lcom/google/android/gm/ConversationInfo;Ljava/util/List;Lcom/google/android/gm/HtmlConversationBuilder$RenderedState;Z)Lcom/google/android/gm/HtmlConversationBuilder$RenderedState;
    .locals 54
    .parameter "messageCursor"
    .parameter "conversationInfo"
    .parameter
    .parameter "previousState"
    .parameter "resetUnread"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gm/provider/Gmail$MessageCursor;",
            "Lcom/google/android/gm/ConversationInfo;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/google/android/gm/HtmlConversationBuilder$RenderedState;",
            "Z)",
            "Lcom/google/android/gm/HtmlConversationBuilder$RenderedState;"
        }
    .end annotation

    .prologue
    .line 553
    .local p3, searchQueryTerms:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const-string v5, "HCB.generateHtml"

    invoke-static {v5}, Lcom/google/android/gm/perf/Timer;->startTiming(Ljava/lang/String;)V

    .line 557
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    .line 558
    .local v27, dateBuilder:Ljava/lang/StringBuilder;
    new-instance v28, Ljava/util/Formatter;

    move-object/from16 v0, v28

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;)V

    .line 560
    .local v28, dateFormatter:Ljava/util/Formatter;
    new-instance v41, Lcom/google/common/collect/ImmutableList$Builder;

    invoke-direct/range {v41 .. v41}, Lcom/google/common/collect/ImmutableList$Builder;-><init>()V

    .line 562
    .local v41, messageListBuilder:Lcom/google/common/collect/ImmutableList$Builder;,"Lcom/google/common/collect/ImmutableList$Builder<Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    new-instance v25, Lcom/google/common/collect/ImmutableMap$Builder;

    invoke-direct/range {v25 .. v25}, Lcom/google/common/collect/ImmutableMap$Builder;-><init>()V

    .line 565
    .local v25, conversationBuilder:Lcom/google/common/collect/ImmutableMap$Builder;,"Lcom/google/common/collect/ImmutableMap$Builder<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v5, "baseUri"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/HtmlConversationBuilder;->mAccount:Ljava/lang/String;

    move-object v6, v0

    invoke-static {v6}, Lcom/google/android/gm/provider/Urls;->getUri(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v6

    move-object/from16 v0, v25

    move-object v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v5

    const-string v6, "useSnapHeader"

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gm/HtmlConversationBuilder;->disableSnapHeaders()Z

    move-result v7

    if-nez v7, :cond_b

    const/4 v7, 0x1

    :goto_0
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v5

    const-string v6, "useReplyDefault"

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gm/HtmlConversationBuilder;->defaultReplyAction()Z

    move-result v7

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v5

    const-string v6, "loadingString"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/HtmlConversationBuilder;->mContext:Landroid/content/Context;

    move-object v7, v0

    const v8, 0x7f0d0085

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v5

    const-string v6, "hideElidedString"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/HtmlConversationBuilder;->mContext:Landroid/content/Context;

    move-object v7, v0

    const v8, 0x7f0d0090

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v5

    const-string v6, "showElidedString"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/HtmlConversationBuilder;->mContext:Landroid/content/Context;

    move-object v7, v0

    const v8, 0x7f0d008f

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    .line 574
    const/4 v5, -0x1

    move-object/from16 v0, p1

    move v1, v5

    invoke-virtual {v0, v1}, Lcom/google/android/gm/provider/Gmail$MessageCursor;->moveTo(I)Z

    .line 576
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gm/provider/Gmail$MessageCursor;->count()I

    move-result v26

    .line 577
    .local v26, count:I
    const/4 v5, 0x1

    sub-int v40, v26, v5

    .line 578
    .local v40, lastMessage:I
    const/16 v52, 0x0

    .line 579
    .local v52, whichMessage:I
    const/16 v29, -0x1

    .line 580
    .local v29, firstCollapsed:I
    invoke-static {}, Lcom/google/android/gm/Persistence;->getInstance()Lcom/google/android/gm/Persistence;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/HtmlConversationBuilder;->mContext:Landroid/content/Context;

    move-object v6, v0

    invoke-virtual {v5, v6}, Lcom/google/android/gm/Persistence;->getSenderWhitelist(Landroid/content/Context;)Ljava/util/Set;

    move-result-object v49

    .line 582
    .local v49, senderWhitelist:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    const/16 v44, 0x0

    .line 586
    .local v44, prevSafeForImages:Z
    if-eqz p4, :cond_c

    move-object/from16 v45, p4

    .line 588
    .local v45, renderState:Lcom/google/android/gm/HtmlConversationBuilder$RenderedState;
    :goto_1
    if-eqz p5, :cond_d

    .line 589
    move-object/from16 v0, v45

    iget-object v0, v0, Lcom/google/android/gm/HtmlConversationBuilder$RenderedState;->mInitialUnreadMessages:Ljava/util/ArrayList;

    move-object v5, v0

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 604
    :cond_0
    const-string v5, "HCB.messageIteration"

    invoke-static {v5}, Lcom/google/android/gm/perf/Timer;->startTiming(Ljava/lang/String;)V

    .line 605
    const/16 v22, 0x0

    .line 606
    .local v22, bodySizes:I
    const/16 v43, 0x0

    .line 607
    .local v43, numExpandedHeaders:I
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gm/HtmlConversationBuilder;->getZoomValue()F

    move-result v53

    .line 608
    .local v53, zoomValue:F
    move-object/from16 v0, v45

    move/from16 v1, v53

    invoke-virtual {v0, v1}, Lcom/google/android/gm/HtmlConversationBuilder$RenderedState;->setZoomValue(F)V

    .line 610
    move-object/from16 v0, v45

    iget-object v0, v0, Lcom/google/android/gm/HtmlConversationBuilder$RenderedState;->mSendersToShowImagesFor:Ljava/util/Map;

    move-object v5, v0

    invoke-interface {v5}, Ljava/util/Map;->clear()V

    .line 611
    move-object/from16 v0, v45

    iget-object v0, v0, Lcom/google/android/gm/HtmlConversationBuilder$RenderedState;->mSendingMessageIds:Ljava/util/HashSet;

    move-object v5, v0

    invoke-virtual {v5}, Ljava/util/HashSet;->clear()V

    .line 612
    move-object/from16 v0, v45

    iget-object v0, v0, Lcom/google/android/gm/HtmlConversationBuilder$RenderedState;->mDraftMessageIds:Ljava/util/HashSet;

    move-object v5, v0

    invoke-virtual {v5}, Ljava/util/HashSet;->clear()V

    .line 614
    :goto_2
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gm/provider/Gmail$MessageCursor;->next()Z

    move-result v5

    if-eqz v5, :cond_17

    .line 615
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gm/provider/Gmail$MessageCursor;->getFromAddress()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/google/android/gm/HtmlConversationBuilder;->getEmailAddress(Ljava/lang/String;)Lcom/google/android/gm/HtmlConversationBuilder$EmailAddress;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gm/HtmlConversationBuilder$EmailAddress;->getAddress()Ljava/lang/String;

    move-result-object v48

    .line 617
    .local v48, sender:Ljava/lang/String;
    if-nez v52, :cond_1

    .line 618
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gm/provider/Gmail$MessageCursor;->getSubject()Ljava/lang/String;

    move-result-object v51

    .line 619
    .local v51, subject:Ljava/lang/String;
    const-string v5, "zoom"

    invoke-static/range {v53 .. v53}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    move-object/from16 v0, v25

    move-object v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v5

    const-string v6, "subject"

    move-object v0, v5

    move-object v1, v6

    move-object/from16 v2, v51

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v5

    const-string v6, "labels"

    invoke-virtual/range {p2 .. p2}, Lcom/google/android/gm/ConversationInfo;->getLabels()Ljava/util/Map;

    move-result-object v7

    move-object/from16 v0, p0

    move-object v1, v7

    invoke-direct {v0, v1}, Lcom/google/android/gm/HtmlConversationBuilder;->getLabelList(Ljava/util/Map;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v5

    const-string v6, "isImportant"

    invoke-virtual/range {p2 .. p2}, Lcom/google/android/gm/ConversationInfo;->isImportant()Z

    move-result v7

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v5

    const-string v6, "addLabelString"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/HtmlConversationBuilder;->mContext:Landroid/content/Context;

    move-object v7, v0

    const v8, 0x7f0d0088

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    .line 627
    .end local v51           #subject:Ljava/lang/String;
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gm/provider/Gmail$MessageCursor;->getMessageId()J

    move-result-wide v9

    .line 628
    .local v9, serverMessageId:J
    move-object/from16 v0, v45

    iget-object v0, v0, Lcom/google/android/gm/HtmlConversationBuilder$RenderedState;->mMessageIds:Ljava/util/Set;

    move-object v5, v0

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 630
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gm/provider/Gmail$MessageCursor;->getLocalId()J

    move-result-wide v7

    .line 632
    .local v7, localMessageId:J
    if-eqz p5, :cond_2

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gm/provider/Gmail$MessageCursor;->getIsUnread()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 633
    new-instance v4, Lcom/google/android/gm/ConversationInfo;

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gm/provider/Gmail$MessageCursor;->getConversationId()J

    move-result-wide v5

    const-wide/16 v11, 0x0

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gm/provider/Gmail$MessageCursor;->getLabels()Ljava/util/Map;

    move-result-object v13

    invoke-direct/range {v4 .. v13}, Lcom/google/android/gm/ConversationInfo;-><init>(JJJJLjava/util/Map;)V

    .line 636
    .local v4, unreadInfo:Lcom/google/android/gm/ConversationInfo;
    move-object/from16 v0, v45

    iget-object v0, v0, Lcom/google/android/gm/HtmlConversationBuilder$RenderedState;->mInitialUnreadMessages:Ljava/util/ArrayList;

    move-object v5, v0

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 640
    .end local v4           #unreadInfo:Lcom/google/android/gm/ConversationInfo;
    :cond_2
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gm/provider/Gmail$MessageCursor;->getIsDraft()Z

    move-result v33

    .line 641
    .local v33, isDraft:Z
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gm/provider/Gmail$MessageCursor;->getIsInOutbox()Z

    move-result v37

    .line 642
    .local v37, isSending:Z
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gm/provider/Gmail$MessageCursor;->getIsStarred()Z

    move-result v38

    .line 643
    .local v38, isStarred:Z
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gm/provider/Gmail$MessageCursor;->getIsUnread()Z

    move-result v39

    .line 644
    .local v39, isUnread:Z
    move/from16 v0, v52

    move/from16 v1, v40

    if-ne v0, v1, :cond_e

    const/4 v5, 0x1

    move/from16 v34, v5

    .line 645
    .local v34, isLast:Z
    :goto_3
    move-object/from16 v0, v45

    move-wide v1, v7

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gm/HtmlConversationBuilder$RenderedState;->isManuallyExpandedMessageId(J)Z

    move-result v36

    .line 647
    .local v36, isManuallyExpanded:Z
    move-object/from16 v0, v45

    move-wide v1, v7

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gm/HtmlConversationBuilder$RenderedState;->isManuallyCollapsedMessageId(J)Z

    move-result v35

    .line 653
    .local v35, isManuallyCollapsed:Z
    if-nez v33, :cond_3

    if-nez v37, :cond_3

    if-nez v38, :cond_3

    if-nez v39, :cond_3

    if-nez v34, :cond_3

    if-eqz v36, :cond_f

    :cond_3
    const/4 v5, 0x1

    move/from16 v50, v5

    .line 656
    .local v50, showExpanded:Z
    :goto_4
    move-object/from16 v0, v49

    move-object/from16 v1, v48

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v46

    .line 662
    .local v46, safeForImages:Z
    move-object/from16 v0, v45

    iget-object v0, v0, Lcom/google/android/gm/HtmlConversationBuilder$RenderedState;->mSendersToShowImagesFor:Ljava/util/Map;

    move-object v5, v0

    invoke-static/range {v46 .. v46}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    move-object v0, v5

    move-object/from16 v1, v48

    move-object v2, v6

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 666
    if-nez v50, :cond_4

    if-eqz p3, :cond_4

    .line 667
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gm/provider/Gmail$MessageCursor;->getBody()Ljava/lang/String;

    move-result-object v21

    .line 668
    .local v21, body:Ljava/lang/String;
    move-object/from16 v0, v21

    move-object/from16 v1, p3

    invoke-static {v0, v1}, Lcom/google/android/gm/HtmlConversationBuilder;->bodyContainsSearchQueryTerm(Ljava/lang/String;Ljava/util/List;)Z

    move-result v50

    .line 671
    .end local v21           #body:Ljava/lang/String;
    :cond_4
    if-eqz v50, :cond_14

    .line 676
    add-int/lit8 v43, v43, 0x1

    .line 678
    if-eqz v37, :cond_5

    .line 681
    move-object/from16 v0, v45

    iget-object v0, v0, Lcom/google/android/gm/HtmlConversationBuilder$RenderedState;->mSendingMessageIds:Ljava/util/HashSet;

    move-object v5, v0

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 684
    :cond_5
    if-eqz v33, :cond_6

    .line 686
    move-object/from16 v0, v45

    iget-object v0, v0, Lcom/google/android/gm/HtmlConversationBuilder$RenderedState;->mDraftMessageIds:Ljava/util/HashSet;

    move-object v5, v0

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 690
    :cond_6
    const/4 v5, -0x1

    move/from16 v0, v29

    move v1, v5

    if-eq v0, v1, :cond_7

    .line 691
    sub-int v42, v52, v29

    .line 692
    .local v42, numCollapsed:I
    const/4 v5, 0x1

    move/from16 v0, v42

    move v1, v5

    if-le v0, v1, :cond_10

    .line 694
    const-string v11, "isSuperCollapsed"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    const-string v13, "firstIndex"

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const-string v15, "lastIndex"

    const/4 v5, 0x1

    sub-int v5, v52, v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    const-string v17, "count"

    invoke-static/range {v42 .. v42}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    const-string v19, "messagesRead"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/HtmlConversationBuilder;->mContext:Landroid/content/Context;

    move-object v5, v0

    const v6, 0x7f0d0089

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v11 .. v20}, Lcom/google/common/collect/ImmutableMap;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap;

    move-result-object v5

    move-object/from16 v0, v41

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 710
    :goto_5
    const/16 v29, -0x1

    .line 715
    .end local v42           #numCollapsed:I
    :cond_7
    if-nez v37, :cond_8

    if-eqz v35, :cond_11

    :cond_8
    const/4 v5, 0x1

    move/from16 v30, v5

    .line 716
    .local v30, hideBody:Z
    :goto_6
    if-eqz v46, :cond_9

    .line 717
    move-object/from16 v0, v45

    move-wide v1, v7

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gm/HtmlConversationBuilder$RenderedState;->showImagesForMessage(J)V

    .line 719
    :cond_9
    if-nez v46, :cond_12

    move-object/from16 v0, v45

    iget-boolean v0, v0, Lcom/google/android/gm/HtmlConversationBuilder$RenderedState;->blockImages:Z

    move v5, v0

    if-eqz v5, :cond_12

    const/4 v5, 0x1

    :goto_7
    move v0, v5

    move-object/from16 v1, v45

    iput-boolean v0, v1, Lcom/google/android/gm/HtmlConversationBuilder$RenderedState;->blockImages:Z

    .line 721
    if-nez v30, :cond_13

    const/4 v5, 0x1

    move v13, v5

    :goto_8
    move-object/from16 v11, p0

    move-object/from16 v12, p1

    move/from16 v14, v46

    move-object/from16 v15, v28

    move-object/from16 v16, v27

    move/from16 v17, v53

    invoke-direct/range {v11 .. v17}, Lcom/google/android/gm/HtmlConversationBuilder;->getMessageData(Lcom/google/android/gm/provider/Gmail$MessageCursor;ZZLjava/util/Formatter;Ljava/lang/StringBuilder;F)Ljava/util/Map;

    move-result-object v5

    move-object/from16 v0, v41

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 725
    if-nez v30, :cond_a

    .line 726
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gm/provider/Gmail$MessageCursor;->getBody()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int v22, v22, v5

    .line 741
    .end local v30           #hideBody:Z
    :cond_a
    :goto_9
    add-int/lit8 v52, v52, 0x1

    .line 742
    goto/16 :goto_2

    .line 565
    .end local v7           #localMessageId:J
    .end local v9           #serverMessageId:J
    .end local v22           #bodySizes:I
    .end local v26           #count:I
    .end local v29           #firstCollapsed:I
    .end local v33           #isDraft:Z
    .end local v34           #isLast:Z
    .end local v35           #isManuallyCollapsed:Z
    .end local v36           #isManuallyExpanded:Z
    .end local v37           #isSending:Z
    .end local v38           #isStarred:Z
    .end local v39           #isUnread:Z
    .end local v40           #lastMessage:I
    .end local v43           #numExpandedHeaders:I
    .end local v44           #prevSafeForImages:Z
    .end local v45           #renderState:Lcom/google/android/gm/HtmlConversationBuilder$RenderedState;
    .end local v46           #safeForImages:Z
    .end local v48           #sender:Ljava/lang/String;
    .end local v49           #senderWhitelist:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    .end local v50           #showExpanded:Z
    .end local v52           #whichMessage:I
    .end local v53           #zoomValue:F
    :cond_b
    const/4 v7, 0x0

    goto/16 :goto_0

    .line 586
    .restart local v26       #count:I
    .restart local v29       #firstCollapsed:I
    .restart local v40       #lastMessage:I
    .restart local v44       #prevSafeForImages:Z
    .restart local v49       #senderWhitelist:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v52       #whichMessage:I
    :cond_c
    new-instance v5, Lcom/google/android/gm/HtmlConversationBuilder$RenderedState;

    move-object v0, v5

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/google/android/gm/HtmlConversationBuilder$RenderedState;-><init>(Lcom/google/android/gm/ConversationInfo;)V

    move-object/from16 v45, v5

    goto/16 :goto_1

    .line 596
    .restart local v45       #renderState:Lcom/google/android/gm/HtmlConversationBuilder$RenderedState;
    :cond_d
    move-object/from16 v0, v45

    iget-object v0, v0, Lcom/google/android/gm/HtmlConversationBuilder$RenderedState;->mInitialUnreadMessages:Ljava/util/ArrayList;

    move-object v5, v0

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual/range {v45 .. v45}, Lcom/google/android/gm/HtmlConversationBuilder$RenderedState;->isCacheable()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 597
    const/4 v5, 0x0

    move-object/from16 v0, v45

    move v1, v5

    invoke-virtual {v0, v1}, Lcom/google/android/gm/HtmlConversationBuilder$RenderedState;->setCacheable(Z)V

    .line 598
    move-object/from16 v0, v45

    iget-object v0, v0, Lcom/google/android/gm/HtmlConversationBuilder$RenderedState;->mInitialUnreadMessages:Ljava/util/ArrayList;

    move-object v5, v0

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v31

    .local v31, i$:Ljava/util/Iterator;
    :goto_a
    invoke-interface/range {v31 .. v31}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface/range {v31 .. v31}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/google/android/gm/ConversationInfo;

    .line 599
    .local v24, ci:Lcom/google/android/gm/ConversationInfo;
    invoke-virtual/range {v24 .. v24}, Lcom/google/android/gm/ConversationInfo;->getLocalMessageId()J

    move-result-wide v5

    const/4 v7, 0x1

    move-object/from16 v0, v45

    move-wide v1, v5

    move v3, v7

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gm/HtmlConversationBuilder$RenderedState;->setExpandedMessageId(JZ)V

    goto :goto_a

    .line 644
    .end local v24           #ci:Lcom/google/android/gm/ConversationInfo;
    .end local v31           #i$:Ljava/util/Iterator;
    .restart local v7       #localMessageId:J
    .restart local v9       #serverMessageId:J
    .restart local v22       #bodySizes:I
    .restart local v33       #isDraft:Z
    .restart local v37       #isSending:Z
    .restart local v38       #isStarred:Z
    .restart local v39       #isUnread:Z
    .restart local v43       #numExpandedHeaders:I
    .restart local v48       #sender:Ljava/lang/String;
    .restart local v53       #zoomValue:F
    :cond_e
    const/4 v5, 0x0

    move/from16 v34, v5

    goto/16 :goto_3

    .line 653
    .restart local v34       #isLast:Z
    .restart local v35       #isManuallyCollapsed:Z
    .restart local v36       #isManuallyExpanded:Z
    :cond_f
    const/4 v5, 0x0

    move/from16 v50, v5

    goto/16 :goto_4

    .line 703
    .restart local v42       #numCollapsed:I
    .restart local v46       #safeForImages:Z
    .restart local v50       #showExpanded:Z
    :cond_10
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gm/provider/Gmail$MessageCursor;->position()I

    move-result v32

    .line 704
    .local v32, index:I
    const/4 v5, 0x1

    sub-int v5, v32, v5

    move-object/from16 v0, p1

    move v1, v5

    invoke-virtual {v0, v1}, Lcom/google/android/gm/provider/Gmail$MessageCursor;->moveTo(I)Z

    .line 705
    const/4 v13, 0x0

    move-object/from16 v11, p0

    move-object/from16 v12, p1

    move/from16 v14, v44

    move-object/from16 v15, v28

    move-object/from16 v16, v27

    move/from16 v17, v53

    invoke-direct/range {v11 .. v17}, Lcom/google/android/gm/HtmlConversationBuilder;->getMessageData(Lcom/google/android/gm/provider/Gmail$MessageCursor;ZZLjava/util/Formatter;Ljava/lang/StringBuilder;F)Ljava/util/Map;

    move-result-object v5

    move-object/from16 v0, v41

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 708
    move-object/from16 v0, p1

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/google/android/gm/provider/Gmail$MessageCursor;->moveTo(I)Z

    goto/16 :goto_5

    .line 715
    .end local v32           #index:I
    .end local v42           #numCollapsed:I
    :cond_11
    const/4 v5, 0x0

    move/from16 v30, v5

    goto/16 :goto_6

    .line 719
    .restart local v30       #hideBody:Z
    :cond_12
    const/4 v5, 0x0

    goto/16 :goto_7

    .line 721
    :cond_13
    const/4 v5, 0x0

    move v13, v5

    goto/16 :goto_8

    .line 728
    .end local v30           #hideBody:Z
    :cond_14
    invoke-virtual/range {v45 .. v45}, Lcom/google/android/gm/HtmlConversationBuilder$RenderedState;->isExpandedHeaders()Z

    move-result v5

    if-eqz v5, :cond_15

    .line 730
    const/4 v13, 0x0

    move-object/from16 v11, p0

    move-object/from16 v12, p1

    move/from16 v14, v46

    move-object/from16 v15, v28

    move-object/from16 v16, v27

    move/from16 v17, v53

    invoke-direct/range {v11 .. v17}, Lcom/google/android/gm/HtmlConversationBuilder;->getMessageData(Lcom/google/android/gm/provider/Gmail$MessageCursor;ZZLjava/util/Formatter;Ljava/lang/StringBuilder;F)Ljava/util/Map;

    move-result-object v5

    move-object/from16 v0, v41

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    goto/16 :goto_9

    .line 735
    :cond_15
    const/4 v5, -0x1

    move/from16 v0, v29

    move v1, v5

    if-ne v0, v1, :cond_16

    .line 737
    move/from16 v29, v52

    .line 739
    :cond_16
    move/from16 v44, v46

    goto/16 :goto_9

    .line 743
    .end local v7           #localMessageId:J
    .end local v9           #serverMessageId:J
    .end local v33           #isDraft:Z
    .end local v34           #isLast:Z
    .end local v35           #isManuallyCollapsed:Z
    .end local v36           #isManuallyExpanded:Z
    .end local v37           #isSending:Z
    .end local v38           #isStarred:Z
    .end local v39           #isUnread:Z
    .end local v46           #safeForImages:Z
    .end local v48           #sender:Ljava/lang/String;
    .end local v50           #showExpanded:Z
    :cond_17
    const-string v5, "HCB.messageIteration"

    invoke-static {v5}, Lcom/google/android/gm/perf/Timer;->stopTiming(Ljava/lang/String;)V

    .line 745
    move/from16 v0, v43

    mul-int/lit16 v0, v0, 0x960

    move v5, v0

    add-int v5, v5, v22

    move v0, v5

    add-int/lit16 v0, v0, 0x1000

    move/from16 v23, v0

    .line 748
    .local v23, bufferSize:I
    new-instance v47, Ljava/lang/StringBuilder;

    move-object/from16 v0, v47

    move/from16 v1, v23

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 749
    .local v47, sb:Ljava/lang/StringBuilder;
    const-string v5, "messages"

    invoke-virtual/range {v41 .. v41}, Lcom/google/common/collect/ImmutableList$Builder;->build()Lcom/google/common/collect/ImmutableList;

    move-result-object v6

    move-object/from16 v0, v25

    move-object v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    .line 751
    const-string v5, "HCB.templateExec"

    invoke-static {v5}, Lcom/google/android/gm/perf/Timer;->startTiming(Ljava/lang/String;)V

    .line 752
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/HtmlConversationBuilder;->mTemplates:Lcom/google/android/gm/template/GeneratedCompiledTemplates;

    move-object v5, v0

    invoke-virtual/range {v25 .. v25}, Lcom/google/common/collect/ImmutableMap$Builder;->build()Lcom/google/common/collect/ImmutableMap;

    move-result-object v6

    move-object v0, v5

    move-object/from16 v1, v47

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gm/template/GeneratedCompiledTemplates;->renderConversation(Ljava/lang/Appendable;Ljava/util/Map;)V

    .line 753
    const-string v5, "HCB.templateExec"

    invoke-static {v5}, Lcom/google/android/gm/perf/Timer;->stopTiming(Ljava/lang/String;)V

    .line 755
    invoke-virtual/range {v47 .. v47}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v45

    move-object v1, v5

    invoke-static {v0, v1}, Lcom/google/android/gm/HtmlConversationBuilder$RenderedState;->access$300(Lcom/google/android/gm/HtmlConversationBuilder$RenderedState;Ljava/lang/String;)V

    .line 756
    const-string v5, "Gmail"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Rendered a message that was "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v45

    iget-object v0, v0, Lcom/google/android/gm/HtmlConversationBuilder$RenderedState;->mHtml:Ljava/lang/String;

    move-object v7, v0

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " and the initial buffer size was "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 760
    const-string v5, "HCB.generateHtml"

    invoke-static {v5}, Lcom/google/android/gm/perf/Timer;->stopTiming(Ljava/lang/String;)V

    .line 762
    return-object v45
.end method

.method public getEmailAddress(Ljava/lang/String;)Lcom/google/android/gm/HtmlConversationBuilder$EmailAddress;
    .locals 2
    .parameter "rawAddress"

    .prologue
    .line 987
    iget-object v1, p0, Lcom/google/android/gm/HtmlConversationBuilder;->mEmailCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gm/HtmlConversationBuilder$EmailAddress;

    .line 988
    .local v0, emailAddress:Lcom/google/android/gm/HtmlConversationBuilder$EmailAddress;
    if-nez v0, :cond_0

    .line 989
    invoke-static {p1}, Lcom/google/android/gm/HtmlConversationBuilder$EmailAddress;->getEmailAddress(Ljava/lang/String;)Lcom/google/android/gm/HtmlConversationBuilder$EmailAddress;

    move-result-object v0

    .line 990
    iget-object v1, p0, Lcom/google/android/gm/HtmlConversationBuilder;->mEmailCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 992
    :cond_0
    return-object v0
.end method

.method public getLabelsHtml(Ljava/util/Map;)Ljava/lang/String;
    .locals 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gm/provider/Label;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 770
    .local p1, labels:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lcom/google/android/gm/provider/Label;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 771
    .local v0, sb:Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/google/android/gm/HtmlConversationBuilder;->mTemplates:Lcom/google/android/gm/template/GeneratedCompiledTemplates;

    const-string v2, "labels"

    invoke-direct {p0, p1}, Lcom/google/android/gm/HtmlConversationBuilder;->getLabelList(Ljava/util/Map;)Ljava/util/ArrayList;

    move-result-object v3

    const-string v4, "addLabelString"

    iget-object v5, p0, Lcom/google/android/gm/HtmlConversationBuilder;->mContext:Landroid/content/Context;

    const v6, 0x7f0d0088

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v3, v4, v5}, Lcom/google/common/collect/ImmutableMap;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/google/android/gm/template/GeneratedCompiledTemplates;->renderLabels(Ljava/lang/Appendable;Ljava/util/Map;)V

    .line 774
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getMessageHtml(Lcom/google/android/gm/provider/Gmail$MessageCursor;ZZ)Ljava/lang/String;
    .locals 4
    .parameter "messageCursor"
    .parameter "isExpanded"
    .parameter "safeForImages"

    .prologue
    .line 941
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gm/HtmlConversationBuilder;->getMessageData(Lcom/google/android/gm/provider/Gmail$MessageCursor;ZZ)Ljava/util/Map;

    move-result-object v1

    .line 942
    .local v1, messageData:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    if-eqz v1, :cond_0

    .line 943
    invoke-virtual {p1}, Lcom/google/android/gm/provider/Gmail$MessageCursor;->getBody()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit16 v3, v3, 0x960

    add-int/lit16 v0, v3, 0x1000

    .line 946
    .local v0, bufferSize:I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 947
    .local v2, sb:Ljava/lang/StringBuilder;
    iget-object v3, p0, Lcom/google/android/gm/HtmlConversationBuilder;->mTemplates:Lcom/google/android/gm/template/GeneratedCompiledTemplates;

    invoke-virtual {v3, v2, v1}, Lcom/google/android/gm/template/GeneratedCompiledTemplates;->renderExpandedBody(Ljava/lang/Appendable;Ljava/util/Map;)V

    .line 948
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 950
    .end local v0           #bufferSize:I
    .end local v2           #sb:Ljava/lang/StringBuilder;
    :goto_0
    return-object v3

    :cond_0
    const-string v3, ""

    goto :goto_0
.end method

.method public getRecipientsHtml(Lcom/google/android/gm/provider/Gmail$MessageCursor;Z)Ljava/lang/String;
    .locals 3
    .parameter "messageCursor"
    .parameter "isExpandable"

    .prologue
    .line 1015
    const/4 v2, 0x1

    invoke-direct {p0, p1, v2}, Lcom/google/android/gm/HtmlConversationBuilder;->getAddressData(Lcom/google/android/gm/provider/Gmail$MessageCursor;Z)Ljava/util/Map;

    move-result-object v0

    .line 1016
    .local v0, recipientData:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    if-eqz v0, :cond_0

    .line 1017
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1018
    .local v1, sb:Ljava/lang/StringBuilder;
    iget-object v2, p0, Lcom/google/android/gm/HtmlConversationBuilder;->mTemplates:Lcom/google/android/gm/template/GeneratedCompiledTemplates;

    invoke-virtual {v2, v1, v0}, Lcom/google/android/gm/template/GeneratedCompiledTemplates;->renderRecipientDetails(Ljava/lang/Appendable;Ljava/util/Map;)V

    .line 1019
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1021
    .end local v1           #sb:Ljava/lang/StringBuilder;
    :goto_0
    return-object v2

    :cond_0
    const-string v2, ""

    goto :goto_0
.end method

.method public getZoomValue()F
    .locals 1

    .prologue
    .line 1447
    iget-object v0, p0, Lcom/google/android/gm/HtmlConversationBuilder;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gm/HtmlConversationBuilder;->getZoomValue(Landroid/content/Context;)F

    move-result v0

    return v0
.end method
