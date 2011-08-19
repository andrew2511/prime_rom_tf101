.class public Lcom/google/android/gm/provider/Gmail$MessageModification;
.super Ljava/lang/Object;
.source "Gmail.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gm/provider/Gmail;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MessageModification"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 2979
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static expungeMessage(Landroid/content/ContentResolver;Ljava/lang/String;J)V
    .locals 3
    .parameter "contentResolver"
    .parameter "account"
    .parameter "messageId"

    .prologue
    const/4 v2, 0x0

    .line 3168
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3169
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "account is empty"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3171
    :cond_0
    invoke-static {p1, p2, p3}, Lcom/google/android/gm/provider/Gmail;->getMessageByIdUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v0

    .line 3172
    .local v0, uri:Landroid/net/Uri;
    invoke-virtual {p0, v0, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 3173
    return-void
.end method

.method public static joinedAttachmentsString(Ljava/util/List;)Ljava/lang/String;
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gm/provider/Gmail$Attachment;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 3128
    .local p0, attachments:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/gm/provider/Gmail$Attachment;>;"
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 3129
    .local v1, attachmentsSb:Ljava/lang/StringBuilder;
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gm/provider/Gmail$Attachment;

    .line 3130
    .local v0, attachment:Lcom/google/android/gm/provider/Gmail$Attachment;
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-eqz v3, :cond_0

    .line 3131
    const-string v3, "\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3133
    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gm/provider/Gmail$Attachment;->toJoinedString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 3135
    .end local v0           #attachment:Lcom/google/android/gm/provider/Gmail$Attachment;
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public static parseJoinedAttachmentString(Ljava/lang/String;)Ljava/util/List;
    .locals 9
    .parameter "joinedAttachmentInfo"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gm/provider/Gmail$Attachment;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3140
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v2

    .line 3141
    .local v2, attachments:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/gm/provider/Gmail$Attachment;>;"
    if-eqz p0, :cond_2

    .line 3142
    sget-object v6, Lcom/google/android/gm/provider/Gmail;->ATTACHMENT_INFO_SEPARATOR_PATTERN:Ljava/util/regex/Pattern;

    invoke-static {p0, v6}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/util/regex/Pattern;)[Ljava/lang/String;

    move-result-object v1

    .line 3144
    .local v1, attachmentStrings:[Ljava/lang/String;
    array-length v5, v1

    .line 3145
    .local v5, numAttachments:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v5, :cond_2

    .line 3146
    aget-object v4, v1, v3

    .line 3147
    .local v4, joinedAttachmentString:Ljava/lang/String;
    invoke-static {v4}, Lcom/google/android/gm/provider/Gmail$Attachment;->parseJoinedString(Ljava/lang/String;)Lcom/google/android/gm/provider/Gmail$Attachment;

    move-result-object v0

    .line 3149
    .local v0, attachment:Lcom/google/android/gm/provider/Gmail$Attachment;
    if-eqz v0, :cond_1

    .line 3150
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3145
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 3151
    :cond_1
    const-string v6, "Gmail"

    const/4 v7, 0x3

    invoke-static {v6, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 3152
    const-string v6, "Gmail"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to parse attachment: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 3156
    .end local v0           #attachment:Lcom/google/android/gm/provider/Gmail$Attachment;
    .end local v1           #attachmentStrings:[Ljava/lang/String;
    .end local v3           #i:I
    .end local v4           #joinedAttachmentString:Ljava/lang/String;
    .end local v5           #numAttachments:I
    :cond_2
    return-object v2
.end method

.method public static putAttachments(Landroid/content/ContentValues;Ljava/util/List;)V
    .locals 2
    .parameter "values"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentValues;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gm/provider/Gmail$Attachment;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 3071
    .local p1, attachments:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/gm/provider/Gmail$Attachment;>;"
    const-string v0, "joinedAttachmentInfos"

    invoke-static {p1}, Lcom/google/android/gm/provider/Gmail$MessageModification;->joinedAttachmentsString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3073
    return-void
.end method

.method public static putBccAddresses(Landroid/content/ContentValues;[Ljava/lang/String;)V
    .locals 2
    .parameter "values"
    .parameter "bccAddresses"

    .prologue
    .line 3018
    const-string v0, "bccAddresses"

    const-string v1, "\n"

    invoke-static {v1, p1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3019
    return-void
.end method

.method public static putBody(Landroid/content/ContentValues;Ljava/lang/String;)V
    .locals 1
    .parameter "values"
    .parameter "body"

    .prologue
    .line 3061
    const-string v0, "body"

    invoke-virtual {p0, v0, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3062
    return-void
.end method

.method public static putCcAddresses(Landroid/content/ContentValues;[Ljava/lang/String;)V
    .locals 2
    .parameter "values"
    .parameter "ccAddresses"

    .prologue
    .line 3008
    const-string v0, "ccAddresses"

    const-string v1, "\n"

    invoke-static {v1, p1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3009
    return-void
.end method

.method public static putCustomFromAddress(Landroid/content/ContentValues;Ljava/lang/String;)V
    .locals 1
    .parameter "values"
    .parameter "customFromAddress"

    .prologue
    .line 3083
    const-string v0, "customFromAddress"

    invoke-virtual {p0, v0, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3084
    return-void
.end method

.method public static putForward(Landroid/content/ContentValues;Z)V
    .locals 2
    .parameter "values"
    .parameter "forward"

    .prologue
    .line 3029
    const-string v0, "forward"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 3030
    return-void
.end method

.method public static putIncludeQuotedText(Landroid/content/ContentValues;Z)V
    .locals 2
    .parameter "values"
    .parameter "includeQuotedText"

    .prologue
    .line 3040
    const-string v0, "includeQuotedText"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 3041
    return-void
.end method

.method public static putQuoteStartPos(Landroid/content/ContentValues;J)V
    .locals 2
    .parameter "values"
    .parameter "quoteStartPos"

    .prologue
    .line 3051
    const-string v0, "quoteStartPos"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3052
    return-void
.end method

.method public static putSubject(Landroid/content/ContentValues;Ljava/lang/String;)V
    .locals 1
    .parameter "values"
    .parameter "subject"

    .prologue
    .line 2988
    const-string v0, "subject"

    invoke-virtual {p0, v0, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2989
    return-void
.end method

.method public static putToAddresses(Landroid/content/ContentValues;[Ljava/lang/String;)V
    .locals 2
    .parameter "values"
    .parameter "toAddresses"

    .prologue
    .line 2998
    const-string v0, "toAddresses"

    const-string v1, "\n"

    invoke-static {v1, p1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2999
    return-void
.end method

.method public static sendOrSaveExistingMessage(Landroid/content/ContentResolver;Ljava/lang/String;JLandroid/content/ContentValues;Z)V
    .locals 4
    .parameter "contentResolver"
    .parameter "account"
    .parameter "messageId"
    .parameter "updateValues"
    .parameter "save"

    .prologue
    const/4 v3, 0x0

    .line 3118
    const-string v1, "save"

    invoke-static {p5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p4, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 3119
    const-string v1, "refMessageId"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p4, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3120
    invoke-static {p1, p2, p3}, Lcom/google/android/gm/provider/Gmail;->getMessageByIdUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v0

    .line 3121
    .local v0, uri:Landroid/net/Uri;
    invoke-virtual {p0, v0, p4, v3, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 3122
    return-void
.end method

.method public static sendOrSaveNewMessage(Landroid/content/ContentResolver;Ljava/lang/String;Landroid/content/ContentValues;JZ)J
    .locals 4
    .parameter "contentResolver"
    .parameter "account"
    .parameter "values"
    .parameter "refMessageId"
    .parameter "save"

    .prologue
    .line 3099
    const-string v2, "save"

    invoke-static {p5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {p2, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 3100
    const-string v2, "refMessageId"

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {p2, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3101
    invoke-static {p1}, Lcom/google/android/gm/provider/Gmail;->access$600(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 3102
    .local v1, uri:Landroid/net/Uri;
    invoke-virtual {p0, v1, p2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    .line 3103
    .local v0, result:Landroid/net/Uri;
    invoke-static {v0}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v2

    return-wide v2
.end method
