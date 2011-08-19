.class public Lcom/amazon/kcp/library/models/BookCapability;
.super Ljava/lang/Object;
.source "BookCapability.java"


# static fields
.field public static final BC_ARCHIVE_CAPABILITY:I = 0x1

.field public static final BC_GOTO_CAPABILITY:I = 0x3

.field public static final BC_KEEP:I = 0x4

.field public static final BC_SHELFARI_CAPABILITY:I = 0x2

.field public static final BC_SYNC_CAPABILITY:I


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    return-void
.end method

.method public static isValidCapability(I)Z
    .locals 2
    .parameter

    .prologue
    .line 58
    if-ltz p0, :cond_0

    const/4 v0, 0x4

    if-le p0, v0, :cond_1

    .line 60
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Rejecting invalid capability value: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 61
    const/4 v0, 0x0

    .line 65
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static supportsCapability(Lcom/amazon/kcp/library/models/IListableBook;I)Z
    .locals 4
    .parameter "book"
    .parameter "capability"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 80
    invoke-static {p1}, Lcom/amazon/kcp/library/models/BookCapability;->isValidCapability(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 82
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid capability: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 85
    :cond_0
    packed-switch p1, :pswitch_data_0

    move v0, v2

    .line 106
    :goto_0
    return v0

    .line 89
    :pswitch_0
    invoke-interface {p0}, Lcom/amazon/kcp/library/models/IListableBook;->getAsin()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {p0}, Lcom/amazon/kcp/library/models/IListableBook;->getBookType()I

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Lcom/amazon/kcp/library/dictionary/internal/PreferredDictionaries;->isPreferredDictionary(Lcom/amazon/kcp/library/models/IListableBook;)Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v3

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_0

    .line 92
    :pswitch_1
    invoke-interface {p0}, Lcom/amazon/kcp/library/models/IListableBook;->getBookType()I

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Lcom/amazon/kcp/library/models/IListableBook;->getBookType()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    invoke-interface {p0}, Lcom/amazon/kcp/library/models/IListableBook;->getBookType()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    :cond_2
    invoke-interface {p0}, Lcom/amazon/kcp/library/models/IListableBook;->getAsin()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    move v0, v3

    goto :goto_0

    :cond_3
    move v0, v2

    goto :goto_0

    .line 98
    :pswitch_2
    invoke-interface {p0}, Lcom/amazon/kcp/library/models/IListableBook;->getAsin()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-static {p0}, Lcom/amazon/kcp/util/Utils;->isListableBookPeriodical(Lcom/amazon/kcp/library/models/IListableBook;)Z

    move-result v0

    if-nez v0, :cond_4

    move v0, v3

    goto :goto_0

    :cond_4
    move v0, v2

    goto :goto_0

    .line 101
    :pswitch_3
    invoke-static {p0}, Lcom/amazon/kcp/util/Utils;->isListableBookPeriodical(Lcom/amazon/kcp/library/models/IListableBook;)Z

    move-result v0

    if-nez v0, :cond_5

    move v0, v3

    goto :goto_0

    :cond_5
    move v0, v2

    goto :goto_0

    .line 104
    :pswitch_4
    invoke-static {p0}, Lcom/amazon/kcp/util/Utils;->isListableBookPeriodical(Lcom/amazon/kcp/library/models/IListableBook;)Z

    move-result v0

    goto :goto_0

    .line 85
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
