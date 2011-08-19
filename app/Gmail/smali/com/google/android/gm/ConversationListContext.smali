.class public Lcom/google/android/gm/ConversationListContext;
.super Ljava/lang/Object;
.source "ConversationListContext.java"


# static fields
.field private static final sUrlMatcher:Landroid/content/UriMatcher;


# instance fields
.field private final mAccount:Ljava/lang/String;

.field private final mGmailQuery:Ljava/lang/String;

.field private final mLabelName:Ljava/lang/String;

.field private final mSearchQuery:Ljava/lang/String;

.field private mSearchTerms:Ljava/util/ArrayList;
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
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 48
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/google/android/gm/ConversationListContext;->sUrlMatcher:Landroid/content/UriMatcher;

    .line 50
    sget-object v0, Lcom/google/android/gm/ConversationListContext;->sUrlMatcher:Landroid/content/UriMatcher;

    const-string v1, "gmail-ls"

    const-string v2, "account/*/label/*"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 52
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "account"
    .parameter "searchQuery"
    .parameter "label"

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p1, p0, Lcom/google/android/gm/ConversationListContext;->mAccount:Ljava/lang/String;

    .line 57
    iput-object p2, p0, Lcom/google/android/gm/ConversationListContext;->mSearchQuery:Ljava/lang/String;

    .line 58
    iput-object p3, p0, Lcom/google/android/gm/ConversationListContext;->mLabelName:Ljava/lang/String;

    .line 60
    iget-object v0, p0, Lcom/google/android/gm/ConversationListContext;->mSearchQuery:Ljava/lang/String;

    invoke-static {v0, p3}, Lcom/google/android/gm/Utils;->makeQueryString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gm/ConversationListContext;->mGmailQuery:Ljava/lang/String;

    .line 61
    return-void
.end method

.method public static forBundle(Landroid/os/Bundle;)Lcom/google/android/gm/ConversationListContext;
    .locals 4
    .parameter "bundle"

    .prologue
    .line 125
    new-instance v0, Lcom/google/android/gm/ConversationListContext;

    const-string v1, "account"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "query"

    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "label"

    invoke-virtual {p0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gm/ConversationListContext;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static forIntent(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;)Lcom/google/android/gm/ConversationListContext;
    .locals 5
    .parameter "context"
    .parameter "account"
    .parameter "intent"

    .prologue
    .line 87
    const/4 v1, 0x0

    .line 88
    .local v1, label:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 89
    .local v0, action:Ljava/lang/String;
    const-string v3, "android.intent.action.SEARCH"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 90
    invoke-static {p2}, Lcom/google/android/gm/Utils;->mailSearchQueryForIntent(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3}, Lcom/google/android/gm/ConversationListContext;->forSearchQuery(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gm/ConversationListContext;

    move-result-object v3

    .line 107
    :goto_0
    return-object v3

    .line 93
    :cond_0
    const-string v3, "android.intent.action.PROVIDER_CHANGED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 94
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v1

    .line 97
    :cond_1
    const-string v3, "android.intent.action.VIEW"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    if-eqz v3, :cond_2

    sget-object v3, Lcom/google/android/gm/ConversationListContext;->sUrlMatcher:Landroid/content/UriMatcher;

    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_2

    .line 99
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    .line 100
    .local v2, parts:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v3, 0x3

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 103
    .end local v2           #parts:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_2
    if-nez v1, :cond_3

    .line 104
    const-string v3, "label"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 107
    :cond_3
    invoke-static {p0, p1, v1}, Lcom/google/android/gm/ConversationListContext;->forLabel(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gm/ConversationListContext;

    move-result-object v3

    goto :goto_0
.end method

.method public static forLabel(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gm/ConversationListContext;
    .locals 2
    .parameter "context"
    .parameter "account"
    .parameter "label"

    .prologue
    .line 75
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 76
    invoke-static {p0, p1}, Lcom/google/android/gm/Utils;->getAccountInbox(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 79
    :cond_0
    new-instance v0, Lcom/google/android/gm/ConversationListContext;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1, p2}, Lcom/google/android/gm/ConversationListContext;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static forSearchQuery(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gm/ConversationListContext;
    .locals 3
    .parameter "account"
    .parameter "query"

    .prologue
    .line 67
    new-instance v1, Lcom/google/android/gm/ConversationListContext;

    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v0, v2}, Lcom/google/android/gm/ConversationListContext;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method static getQueryTerms(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 9
    .parameter "rawQuery"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/16 v8, 0x5f

    const/16 v7, 0x3a

    const/16 v6, 0x2d

    .line 211
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 212
    const/4 v4, 0x0

    .line 268
    :goto_0
    return-object v4

    .line 215
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 216
    .local v2, queryTerms:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v3, Ljava/io/StreamTokenizer;

    new-instance v4, Ljava/io/StringReader;

    invoke-direct {v4, p0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v4}, Ljava/io/StreamTokenizer;-><init>(Ljava/io/Reader;)V

    .line 218
    .local v3, tokenizer:Ljava/io/StreamTokenizer;
    invoke-virtual {v3}, Ljava/io/StreamTokenizer;->resetSyntax()V

    .line 219
    const/16 v4, 0x41

    const/16 v5, 0x5a

    invoke-virtual {v3, v4, v5}, Ljava/io/StreamTokenizer;->wordChars(II)V

    .line 220
    const/16 v4, 0x61

    const/16 v5, 0x7a

    invoke-virtual {v3, v4, v5}, Ljava/io/StreamTokenizer;->wordChars(II)V

    .line 221
    const/16 v4, 0xa0

    const/16 v5, 0xff

    invoke-virtual {v3, v4, v5}, Ljava/io/StreamTokenizer;->wordChars(II)V

    .line 222
    invoke-virtual {v3, v6, v6}, Ljava/io/StreamTokenizer;->wordChars(II)V

    .line 223
    invoke-virtual {v3, v7, v7}, Ljava/io/StreamTokenizer;->wordChars(II)V

    .line 224
    invoke-virtual {v3, v8, v8}, Ljava/io/StreamTokenizer;->wordChars(II)V

    .line 225
    const/4 v4, 0x0

    const/16 v5, 0x20

    invoke-virtual {v3, v4, v5}, Ljava/io/StreamTokenizer;->whitespaceChars(II)V

    .line 226
    const/16 v4, 0x22

    invoke-virtual {v3, v4}, Ljava/io/StreamTokenizer;->quoteChar(I)V

    .line 229
    :cond_1
    :goto_1
    :try_start_0
    invoke-virtual {v3}, Ljava/io/StreamTokenizer;->nextToken()I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_2

    .line 230
    iget v4, v3, Ljava/io/StreamTokenizer;->ttype:I

    sparse-switch v4, :sswitch_data_0

    goto :goto_1

    .line 231
    :sswitch_0
    iget-object v0, v3, Ljava/io/StreamTokenizer;->sval:Ljava/lang/String;

    .line 233
    .local v0, candidate:Ljava/lang/String;
    const-string v4, "-"

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 240
    const-string v4, ":"

    invoke-virtual {v0, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 241
    invoke-virtual {v3}, Ljava/io/StreamTokenizer;->nextToken()I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 264
    .end local v0           #candidate:Ljava/lang/String;
    :catch_0
    move-exception v4

    move-object v1, v4

    .line 265
    .local v1, e:Ljava/io/IOException;
    const-string v4, "Gmail"

    const-string v5, "Problem calling StreamTokenizer#nextToken()"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v1           #e:Ljava/io/IOException;
    :cond_2
    move-object v4, v2

    .line 268
    goto :goto_0

    .line 247
    .restart local v0       #candidate:Ljava/lang/String;
    :cond_3
    :try_start_1
    const-string v4, ":"

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 252
    const-string v4, "OR"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 259
    .end local v0           #candidate:Ljava/lang/String;
    :sswitch_1
    iget-object v4, v3, Ljava/io/StreamTokenizer;->sval:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 230
    nop

    :sswitch_data_0
    .sparse-switch
        -0x3 -> :sswitch_0
        0x22 -> :sswitch_1
    .end sparse-switch
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .parameter "o"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 273
    if-ne p1, p0, :cond_0

    move v2, v5

    .line 282
    :goto_0
    return v2

    .line 276
    :cond_0
    instance-of v2, p1, Lcom/google/android/gm/ConversationListContext;

    if-eqz v2, :cond_2

    .line 277
    move-object v0, p1

    check-cast v0, Lcom/google/android/gm/ConversationListContext;

    move-object v1, v0

    .line 278
    .local v1, other:Lcom/google/android/gm/ConversationListContext;
    iget-object v2, v1, Lcom/google/android/gm/ConversationListContext;->mSearchQuery:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gm/ConversationListContext;->mSearchQuery:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, v1, Lcom/google/android/gm/ConversationListContext;->mLabelName:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gm/ConversationListContext;->mLabelName:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, v1, Lcom/google/android/gm/ConversationListContext;->mAccount:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gm/ConversationListContext;->mAccount:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v2, v5

    goto :goto_0

    :cond_1
    move v2, v4

    goto :goto_0

    .end local v1           #other:Lcom/google/android/gm/ConversationListContext;
    :cond_2
    move v2, v4

    .line 282
    goto :goto_0
.end method

.method public getAccount()Ljava/lang/String;
    .locals 1

    .prologue
    .line 189
    iget-object v0, p0, Lcom/google/android/gm/ConversationListContext;->mAccount:Ljava/lang/String;

    return-object v0
.end method

.method public getGmailQuery()Ljava/lang/String;
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/google/android/gm/ConversationListContext;->mGmailQuery:Ljava/lang/String;

    return-object v0
.end method

.method public getLabelName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lcom/google/android/gm/ConversationListContext;->mLabelName:Ljava/lang/String;

    return-object v0
.end method

.method public getSearchQuery()Ljava/lang/String;
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lcom/google/android/gm/ConversationListContext;->mSearchQuery:Ljava/lang/String;

    return-object v0
.end method

.method public getSearchTerms()Ljava/util/ArrayList;
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
    .line 157
    invoke-virtual {p0}, Lcom/google/android/gm/ConversationListContext;->isSearchResult()Z

    move-result v0

    if-nez v0, :cond_0

    .line 158
    const/4 v0, 0x0

    .line 164
    :goto_0
    return-object v0

    .line 161
    :cond_0
    iget-object v0, p0, Lcom/google/android/gm/ConversationListContext;->mSearchTerms:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    .line 162
    iget-object v0, p0, Lcom/google/android/gm/ConversationListContext;->mSearchQuery:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gm/ConversationListContext;->getQueryTerms(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gm/ConversationListContext;->mSearchTerms:Ljava/util/ArrayList;

    .line 164
    :cond_1
    iget-object v0, p0, Lcom/google/android/gm/ConversationListContext;->mSearchTerms:Ljava/util/ArrayList;

    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 287
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/android/gm/ConversationListContext;->mAccount:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/gm/ConversationListContext;->mSearchQuery:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/gm/ConversationListContext;->mLabelName:Ljava/lang/String;

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/common/base/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isInboxView()Z
    .locals 2

    .prologue
    .line 196
    iget-object v0, p0, Lcom/google/android/gm/ConversationListContext;->mSearchQuery:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "^i"

    iget-object v1, p0, Lcom/google/android/gm/ConversationListContext;->mLabelName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isMagicInboxView()Z
    .locals 2

    .prologue
    .line 203
    iget-object v0, p0, Lcom/google/android/gm/ConversationListContext;->mSearchQuery:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "^iim"

    iget-object v1, p0, Lcom/google/android/gm/ConversationListContext;->mLabelName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSearchResult()Z
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lcom/google/android/gm/ConversationListContext;->mSearchQuery:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toBundle()Landroid/os/Bundle;
    .locals 3

    .prologue
    .line 114
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 115
    .local v0, result:Landroid/os/Bundle;
    const-string v1, "account"

    iget-object v2, p0, Lcom/google/android/gm/ConversationListContext;->mAccount:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    const-string v1, "query"

    iget-object v2, p0, Lcom/google/android/gm/ConversationListContext;->mSearchQuery:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    const-string v1, "label"

    iget-object v2, p0, Lcom/google/android/gm/ConversationListContext;->mLabelName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 292
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[ConversationListContext (label=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gm/ConversationListContext;->mLabelName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', query=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gm/ConversationListContext;->mSearchQuery:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\')]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
