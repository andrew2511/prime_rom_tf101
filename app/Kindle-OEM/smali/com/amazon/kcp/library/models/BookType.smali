.class public Lcom/amazon/kcp/library/models/BookType;
.super Ljava/lang/Object;
.source "BookType.java"


# static fields
.field public static final BT_EBOOK:I = 0x0

.field public static final BT_EBOOK_MAGAZINE:I = 0x2

.field public static final BT_EBOOK_NEWSPAPER:I = 0x3

.field public static final BT_EBOOK_SAMPLE:I = 0x1

.field public static final BT_UNKNOWN:I = -0x1


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 144
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 146
    return-void
.end method

.method public static getBookTypeFor(Lcom/amazon/kcp/application/models/internal/TodoItem$Type;)I
    .locals 1
    .parameter "todoItemType"

    .prologue
    .line 68
    sget-object v0, Lcom/amazon/kcp/application/models/internal/TodoItem$Type;->BOOK:Lcom/amazon/kcp/application/models/internal/TodoItem$Type;

    if-ne p0, v0, :cond_0

    .line 70
    const/4 v0, 0x0

    .line 84
    :goto_0
    return v0

    .line 72
    :cond_0
    sget-object v0, Lcom/amazon/kcp/application/models/internal/TodoItem$Type;->BOOK_SAMPLE:Lcom/amazon/kcp/application/models/internal/TodoItem$Type;

    if-ne p0, v0, :cond_1

    .line 74
    const/4 v0, 0x1

    goto :goto_0

    .line 76
    :cond_1
    sget-object v0, Lcom/amazon/kcp/application/models/internal/TodoItem$Type;->MAGAZINE:Lcom/amazon/kcp/application/models/internal/TodoItem$Type;

    if-ne p0, v0, :cond_2

    .line 78
    const/4 v0, 0x2

    goto :goto_0

    .line 80
    :cond_2
    sget-object v0, Lcom/amazon/kcp/application/models/internal/TodoItem$Type;->NEWSPAPER:Lcom/amazon/kcp/application/models/internal/TodoItem$Type;

    if-ne p0, v0, :cond_3

    .line 82
    const/4 v0, 0x3

    goto :goto_0

    .line 84
    :cond_3
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public static getBookTypeFor(Ljava/lang/String;)I
    .locals 1
    .parameter "cdeContentType"

    .prologue
    .line 97
    const-string v0, "EBOK"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 99
    const/4 v0, 0x0

    .line 113
    :goto_0
    return v0

    .line 101
    :cond_0
    const-string v0, "EBSP"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 103
    const/4 v0, 0x1

    goto :goto_0

    .line 105
    :cond_1
    const-string v0, "MAGZ"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 107
    const/4 v0, 0x2

    goto :goto_0

    .line 109
    :cond_2
    const-string v0, "NWPR"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 111
    const/4 v0, 0x3

    goto :goto_0

    .line 113
    :cond_3
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public static getCDEContentTypeFor(I)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    .line 127
    packed-switch p0, :pswitch_data_0

    .line 138
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown book type ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ").  Cannot conver to string, so returning empty string."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    const-string v0, ""

    :goto_0
    return-object v0

    .line 130
    :pswitch_0
    const-string v0, "EBOK"

    goto :goto_0

    .line 132
    :pswitch_1
    const-string v0, "MAGZ"

    goto :goto_0

    .line 134
    :pswitch_2
    const-string v0, "NWPR"

    goto :goto_0

    .line 136
    :pswitch_3
    const-string v0, "EBSP"

    goto :goto_0

    .line 127
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_3
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static isValidBookType(I)Z
    .locals 1
    .parameter

    .prologue
    .line 50
    const/4 v0, -0x1

    if-lt p0, v0, :cond_0

    const/4 v0, 0x3

    if-le p0, v0, :cond_1

    .line 52
    :cond_0
    const/4 v0, 0x0

    .line 56
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method
