.class public Lcom/android/emailcommon/utility/ConversionUtilities;
.super Ljava/lang/Object;
.source "ConversionUtilities.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static appendTextPart(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/lang/StringBuffer;
    .locals 1
    .parameter "sb"
    .parameter "newText"

    .prologue
    .line 44
    if-nez p1, :cond_0

    .line 55
    :goto_0
    return-object p0

    .line 47
    :cond_0
    if-nez p0, :cond_1

    .line 48
    new-instance p0, Ljava/lang/StringBuffer;

    .end local p0
    invoke-direct {p0, p1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .restart local p0
    goto :goto_0

    .line 50
    :cond_1
    invoke-virtual {p0}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    if-lez v0, :cond_2

    .line 51
    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 53
    :cond_2
    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0
.end method

.method public static updateBodyFields(Lcom/android/emailcommon/provider/EmailContent$Body;Lcom/android/emailcommon/provider/EmailContent$Message;Ljava/util/ArrayList;)Z
    .locals 11
    .parameter "body"
    .parameter "localMessage"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/emailcommon/provider/EmailContent$Body;",
            "Lcom/android/emailcommon/provider/EmailContent$Message;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/emailcommon/mail/Part;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 65
    .local p2, viewables:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/emailcommon/mail/Part;>;"
    iget-wide v0, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mId:J

    iput-wide v0, p0, Lcom/android/emailcommon/provider/EmailContent$Body;->mMessageKey:J

    .line 67
    const/4 v0, 0x0

    .line 68
    .local v0, sbHtml:Ljava/lang/StringBuffer;
    const/4 v3, 0x0

    .line 69
    .local v3, sbText:Ljava/lang/StringBuffer;
    const/4 v1, 0x0

    .line 70
    .local v1, sbHtmlReply:Ljava/lang/StringBuffer;
    const/4 v4, 0x0

    .line 71
    .local v4, sbTextReply:Ljava/lang/StringBuffer;
    const/4 v2, 0x0

    .line 73
    .local v2, sbIntroText:Ljava/lang/StringBuffer;
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    .local p2, i$:Ljava/util/Iterator;
    move-object v6, v2

    .end local v2           #sbIntroText:Ljava/lang/StringBuffer;
    .local v6, sbIntroText:Ljava/lang/StringBuffer;
    move-object v8, v4

    .end local v4           #sbTextReply:Ljava/lang/StringBuffer;
    .local v8, sbTextReply:Ljava/lang/StringBuffer;
    move-object v5, v1

    .end local v1           #sbHtmlReply:Ljava/lang/StringBuffer;
    .local v5, sbHtmlReply:Ljava/lang/StringBuffer;
    move-object v7, v3

    .end local v3           #sbText:Ljava/lang/StringBuffer;
    .local v7, sbText:Ljava/lang/StringBuffer;
    move-object v4, v0

    .end local v0           #sbHtml:Ljava/lang/StringBuffer;
    .local v4, sbHtml:Ljava/lang/StringBuffer;
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/emailcommon/mail/Part;

    .line 74
    .local v3, viewable:Lcom/android/emailcommon/mail/Part;
    invoke-static {v3}, Lcom/android/emailcommon/internet/MimeUtility;->getTextFromPart(Lcom/android/emailcommon/mail/Part;)Ljava/lang/String;

    move-result-object v9

    .line 75
    .local v9, text:Ljava/lang/String;
    const-string v0, "X-Android-Body-Quoted-Part"

    invoke-interface {v3, v0}, Lcom/android/emailcommon/mail/Part;->getHeader(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 76
    .local v1, replyTags:[Ljava/lang/String;
    const/4 v0, 0x0

    .line 77
    .local v0, replyTag:Ljava/lang/String;
    if-eqz v1, :cond_c

    array-length v2, v1

    if-lez v2, :cond_c

    .line 78
    const/4 v0, 0x0

    aget-object v0, v1, v0

    move-object v2, v0

    .line 81
    .end local v0           #replyTag:Ljava/lang/String;
    .local v2, replyTag:Ljava/lang/String;
    :goto_1
    const-string v0, "text/html"

    invoke-interface {v3}, Lcom/android/emailcommon/mail/Part;->getMimeType()Ljava/lang/String;

    move-result-object v1

    .end local v1           #replyTags:[Ljava/lang/String;
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    .line 83
    .local v0, isHtml:Z
    if-eqz v2, :cond_4

    .line 84
    const-string v1, "quoted-reply"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    .line 85
    .local v3, isQuotedReply:Z
    const-string v1, "quoted-forward"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    .line 86
    .local v1, isQuotedForward:Z
    const-string v10, "quoted-intro"

    invoke-virtual {v10, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    .line 88
    .local v2, isQuotedIntro:Z
    if-nez v3, :cond_0

    if-eqz v1, :cond_3

    .line 89
    :cond_0
    if-eqz v0, :cond_1

    .line 90
    invoke-static {v5, v9}, Lcom/android/emailcommon/utility/ConversionUtilities;->appendTextPart(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    .end local v5           #sbHtmlReply:Ljava/lang/StringBuffer;
    .local v0, sbHtmlReply:Ljava/lang/StringBuffer;
    move-object v1, v8

    .line 95
    .end local v8           #sbTextReply:Ljava/lang/StringBuffer;
    .local v1, sbTextReply:Ljava/lang/StringBuffer;
    :goto_2
    iget v2, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlags:I

    .end local v2           #isQuotedIntro:Z
    and-int/lit8 v2, v2, -0x4

    iput v2, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlags:I

    .line 96
    iget v2, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlags:I

    if-eqz v3, :cond_2

    const/4 v3, 0x1

    .end local v3           #isQuotedReply:Z
    :goto_3
    or-int/2addr v2, v3

    iput v2, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlags:I

    move-object v8, v1

    .end local v1           #sbTextReply:Ljava/lang/StringBuffer;
    .restart local v8       #sbTextReply:Ljava/lang/StringBuffer;
    move-object v5, v0

    .line 99
    .end local v0           #sbHtmlReply:Ljava/lang/StringBuffer;
    .restart local v5       #sbHtmlReply:Ljava/lang/StringBuffer;
    goto :goto_0

    .line 92
    .local v0, isHtml:Z
    .local v1, isQuotedForward:Z
    .restart local v2       #isQuotedIntro:Z
    .restart local v3       #isQuotedReply:Z
    :cond_1
    invoke-static {v8, v9}, Lcom/android/emailcommon/utility/ConversionUtilities;->appendTextPart(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    .end local v8           #sbTextReply:Ljava/lang/StringBuffer;
    .local v0, sbTextReply:Ljava/lang/StringBuffer;
    move-object v1, v0

    .end local v0           #sbTextReply:Ljava/lang/StringBuffer;
    .local v1, sbTextReply:Ljava/lang/StringBuffer;
    move-object v0, v5

    .end local v5           #sbHtmlReply:Ljava/lang/StringBuffer;
    .local v0, sbHtmlReply:Ljava/lang/StringBuffer;
    goto :goto_2

    .line 96
    .end local v2           #isQuotedIntro:Z
    :cond_2
    const/4 v3, 0x2

    goto :goto_3

    .line 101
    .local v0, isHtml:Z
    .local v1, isQuotedForward:Z
    .restart local v2       #isQuotedIntro:Z
    .restart local v5       #sbHtmlReply:Ljava/lang/StringBuffer;
    .restart local v8       #sbTextReply:Ljava/lang/StringBuffer;
    :cond_3
    if-eqz v2, :cond_4

    .line 102
    invoke-static {v6, v9}, Lcom/android/emailcommon/utility/ConversionUtilities;->appendTextPart(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    .end local v6           #sbIntroText:Ljava/lang/StringBuffer;
    .local v0, sbIntroText:Ljava/lang/StringBuffer;
    move-object v6, v0

    .line 103
    .end local v0           #sbIntroText:Ljava/lang/StringBuffer;
    .restart local v6       #sbIntroText:Ljava/lang/StringBuffer;
    goto :goto_0

    .line 108
    .end local v1           #isQuotedForward:Z
    .end local v2           #isQuotedIntro:Z
    .end local v3           #isQuotedReply:Z
    .local v0, isHtml:Z
    :cond_4
    if-eqz v0, :cond_5

    .line 109
    invoke-static {v4, v9}, Lcom/android/emailcommon/utility/ConversionUtilities;->appendTextPart(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    .end local v4           #sbHtml:Ljava/lang/StringBuffer;
    .local v0, sbHtml:Ljava/lang/StringBuffer;
    move-object v1, v7

    .end local v7           #sbText:Ljava/lang/StringBuffer;
    .local v1, sbText:Ljava/lang/StringBuffer;
    :goto_4
    move-object v7, v1

    .end local v1           #sbText:Ljava/lang/StringBuffer;
    .restart local v7       #sbText:Ljava/lang/StringBuffer;
    move-object v4, v0

    .line 113
    .end local v0           #sbHtml:Ljava/lang/StringBuffer;
    .restart local v4       #sbHtml:Ljava/lang/StringBuffer;
    goto :goto_0

    .line 111
    .local v0, isHtml:Z
    :cond_5
    invoke-static {v7, v9}, Lcom/android/emailcommon/utility/ConversionUtilities;->appendTextPart(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    .end local v7           #sbText:Ljava/lang/StringBuffer;
    .local v0, sbText:Ljava/lang/StringBuffer;
    move-object v1, v0

    .end local v0           #sbText:Ljava/lang/StringBuffer;
    .restart local v1       #sbText:Ljava/lang/StringBuffer;
    move-object v0, v4

    .end local v4           #sbHtml:Ljava/lang/StringBuffer;
    .local v0, sbHtml:Ljava/lang/StringBuffer;
    goto :goto_4

    .line 116
    .end local v0           #sbHtml:Ljava/lang/StringBuffer;
    .end local v1           #sbText:Ljava/lang/StringBuffer;
    .end local v9           #text:Ljava/lang/String;
    .restart local v4       #sbHtml:Ljava/lang/StringBuffer;
    .restart local v7       #sbText:Ljava/lang/StringBuffer;
    :cond_6
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    .end local p2           #i$:Ljava/util/Iterator;
    if-nez p2, :cond_7

    .line 117
    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    .line 118
    .local p2, text:Ljava/lang/String;
    iput-object p2, p0, Lcom/android/emailcommon/provider/EmailContent$Body;->mTextContent:Ljava/lang/String;

    .line 119
    invoke-static {p2}, Lcom/android/emailcommon/mail/Snippet;->fromPlainText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .end local p2           #text:Ljava/lang/String;
    iput-object p2, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mSnippet:Ljava/lang/String;

    .line 121
    :cond_7
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_8

    .line 122
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    .line 123
    .restart local p2       #text:Ljava/lang/String;
    iput-object p2, p0, Lcom/android/emailcommon/provider/EmailContent$Body;->mHtmlContent:Ljava/lang/String;

    .line 124
    iget-object v0, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mSnippet:Ljava/lang/String;

    if-nez v0, :cond_8

    .line 125
    invoke-static {p2}, Lcom/android/emailcommon/mail/Snippet;->fromHtmlText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .end local p2           #text:Ljava/lang/String;
    iput-object p2, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mSnippet:Ljava/lang/String;

    .line 128
    :cond_8
    if-eqz v5, :cond_9

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->length()I

    move-result p1

    .end local p1
    if-eqz p1, :cond_9

    .line 129
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/emailcommon/provider/EmailContent$Body;->mHtmlReply:Ljava/lang/String;

    .line 131
    :cond_9
    if-eqz v8, :cond_a

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->length()I

    move-result p1

    if-eqz p1, :cond_a

    .line 132
    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/emailcommon/provider/EmailContent$Body;->mTextReply:Ljava/lang/String;

    .line 134
    :cond_a
    if-eqz v6, :cond_b

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->length()I

    move-result p1

    if-eqz p1, :cond_b

    .line 135
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/emailcommon/provider/EmailContent$Body;->mIntroText:Ljava/lang/String;

    .line 137
    :cond_b
    const/4 p0, 0x1

    .end local p0
    return p0

    .local v0, replyTag:Ljava/lang/String;
    .local v1, replyTags:[Ljava/lang/String;
    .local v3, viewable:Lcom/android/emailcommon/mail/Part;
    .restart local v9       #text:Ljava/lang/String;
    .restart local p0
    .restart local p1
    .local p2, i$:Ljava/util/Iterator;
    :cond_c
    move-object v2, v0

    .end local v0           #replyTag:Ljava/lang/String;
    .local v2, replyTag:Ljava/lang/String;
    goto/16 :goto_1
.end method
