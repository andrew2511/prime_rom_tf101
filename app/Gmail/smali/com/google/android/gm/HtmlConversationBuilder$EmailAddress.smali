.class public Lcom/google/android/gm/HtmlConversationBuilder$EmailAddress;
.super Ljava/lang/Object;
.source "HtmlConversationBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gm/HtmlConversationBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EmailAddress"
.end annotation


# static fields
.field private static final sEmailMatcher:Ljava/util/regex/Matcher;


# instance fields
.field private final mAddress:Ljava/lang/String;

.field private final mClickSafeAddress:Ljava/lang/String;

.field private final mName:Ljava/lang/String;

.field private mSimplifiedName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 1375
    const-string v0, "\\\"?([^\"<]*)\\\"?\\s*<(.*)>"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    sput-object v0, Lcom/google/android/gm/HtmlConversationBuilder$EmailAddress;->sEmailMatcher:Ljava/util/regex/Matcher;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "name"
    .parameter "address"

    .prologue
    .line 1378
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1379
    iput-object p1, p0, Lcom/google/android/gm/HtmlConversationBuilder$EmailAddress;->mName:Ljava/lang/String;

    .line 1380
    iput-object p2, p0, Lcom/google/android/gm/HtmlConversationBuilder$EmailAddress;->mAddress:Ljava/lang/String;

    .line 1383
    invoke-static {p2}, Landroid/text/TextUtils;->htmlEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "@"

    const-string v2, "<span>@</span>"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gm/HtmlConversationBuilder$EmailAddress;->mClickSafeAddress:Ljava/lang/String;

    .line 1384
    return-void
.end method

.method static declared-synchronized getEmailAddress(Ljava/lang/String;)Lcom/google/android/gm/HtmlConversationBuilder$EmailAddress;
    .locals 5
    .parameter "rawAddress"

    .prologue
    .line 1425
    const-class v3, Lcom/google/android/gm/HtmlConversationBuilder$EmailAddress;

    monitor-enter v3

    :try_start_0
    sget-object v4, Lcom/google/android/gm/HtmlConversationBuilder$EmailAddress;->sEmailMatcher:Ljava/util/regex/Matcher;

    invoke-virtual {v4, p0}, Ljava/util/regex/Matcher;->reset(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 1426
    .local v1, m:Ljava/util/regex/Matcher;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1427
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    .line 1428
    .local v2, name:Ljava/lang/String;
    const/4 v4, 0x2

    invoke-virtual {v1, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    .line 1429
    .local v0, address:Ljava/lang/String;
    if-nez v2, :cond_0

    .line 1430
    const-string v2, ""

    .line 1436
    :cond_0
    :goto_0
    new-instance v4, Lcom/google/android/gm/HtmlConversationBuilder$EmailAddress;

    invoke-direct {v4, v2, v0}, Lcom/google/android/gm/HtmlConversationBuilder$EmailAddress;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v3

    return-object v4

    .line 1433
    .end local v0           #address:Ljava/lang/String;
    .end local v2           #name:Ljava/lang/String;
    :cond_1
    :try_start_1
    const-string v2, ""
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1434
    .restart local v2       #name:Ljava/lang/String;
    move-object v0, p0

    .restart local v0       #address:Ljava/lang/String;
    goto :goto_0

    .line 1425
    .end local v0           #address:Ljava/lang/String;
    .end local v1           #m:Ljava/util/regex/Matcher;
    .end local v2           #name:Ljava/lang/String;
    :catchall_0
    move-exception v4

    monitor-exit v3

    throw v4
.end method


# virtual methods
.method getAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1395
    iget-object v0, p0, Lcom/google/android/gm/HtmlConversationBuilder$EmailAddress;->mAddress:Ljava/lang/String;

    return-object v0
.end method

.method getClickSafeAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1399
    iget-object v0, p0, Lcom/google/android/gm/HtmlConversationBuilder$EmailAddress;->mClickSafeAddress:Ljava/lang/String;

    return-object v0
.end method

.method getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1387
    iget-object v0, p0, Lcom/google/android/gm/HtmlConversationBuilder$EmailAddress;->mName:Ljava/lang/String;

    return-object v0
.end method

.method getSimplifiedName()Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, -0x1

    .line 1408
    iget-object v2, p0, Lcom/google/android/gm/HtmlConversationBuilder$EmailAddress;->mSimplifiedName:Ljava/lang/String;

    if-nez v2, :cond_0

    .line 1409
    iget-object v2, p0, Lcom/google/android/gm/HtmlConversationBuilder$EmailAddress;->mName:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/gm/HtmlConversationBuilder$EmailAddress;->mAddress:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1410
    iget-object v2, p0, Lcom/google/android/gm/HtmlConversationBuilder$EmailAddress;->mAddress:Ljava/lang/String;

    const/16 v3, 0x40

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 1411
    .local v0, atSign:I
    if-eq v0, v4, :cond_1

    iget-object v2, p0, Lcom/google/android/gm/HtmlConversationBuilder$EmailAddress;->mAddress:Ljava/lang/String;

    invoke-virtual {v2, v5, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    :goto_0
    iput-object v2, p0, Lcom/google/android/gm/HtmlConversationBuilder$EmailAddress;->mSimplifiedName:Ljava/lang/String;

    .line 1420
    .end local v0           #atSign:I
    :cond_0
    :goto_1
    iget-object v2, p0, Lcom/google/android/gm/HtmlConversationBuilder$EmailAddress;->mSimplifiedName:Ljava/lang/String;

    return-object v2

    .line 1411
    .restart local v0       #atSign:I
    :cond_1
    const-string v2, ""

    goto :goto_0

    .line 1412
    .end local v0           #atSign:I
    :cond_2
    iget-object v2, p0, Lcom/google/android/gm/HtmlConversationBuilder$EmailAddress;->mName:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 1413
    iget-object v2, p0, Lcom/google/android/gm/HtmlConversationBuilder$EmailAddress;->mName:Ljava/lang/String;

    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 1414
    .local v1, firstSpace:I
    if-ne v1, v4, :cond_3

    iget-object v2, p0, Lcom/google/android/gm/HtmlConversationBuilder$EmailAddress;->mName:Ljava/lang/String;

    :goto_2
    iput-object v2, p0, Lcom/google/android/gm/HtmlConversationBuilder$EmailAddress;->mSimplifiedName:Ljava/lang/String;

    goto :goto_1

    :cond_3
    iget-object v2, p0, Lcom/google/android/gm/HtmlConversationBuilder$EmailAddress;->mName:Ljava/lang/String;

    invoke-virtual {v2, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    .line 1416
    .end local v1           #firstSpace:I
    :cond_4
    const-string v2, "Gmail"

    const-string v3, "Unable to get a simplified name"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1417
    const-string v2, ""

    iput-object v2, p0, Lcom/google/android/gm/HtmlConversationBuilder$EmailAddress;->mSimplifiedName:Ljava/lang/String;

    goto :goto_1
.end method
