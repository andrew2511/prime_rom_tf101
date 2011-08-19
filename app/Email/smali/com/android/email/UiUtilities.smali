.class public Lcom/android/email/UiUtilities;
.super Ljava/lang/Object;
.source "UiUtilities.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static formatSize(Landroid/content/Context;J)Ljava/lang/String;
    .locals 3
    .parameter "context"
    .parameter "size"

    .prologue
    .line 28
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    .line 29
    .local p0, res:Landroid/content/res/Resources;
    const-wide/16 v0, 0x400

    .line 30
    .local v0, KB:J
    const-wide/32 v0, 0x100000

    .line 31
    .local v0, MB:J
    const-wide/32 v0, 0x40000000

    .line 36
    .local v0, GB:J
    const-wide/16 v0, 0x400

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    .line 37
    .end local v0           #GB:J
    const v0, 0x7f0c0009

    .line 38
    .local v0, resId:I
    long-to-int p1, p1

    .local p1, value:I
    move p2, p1

    .end local p1           #value:I
    .local p2, value:I
    move p1, v0

    .line 49
    .end local v0           #resId:I
    .local p1, resId:I
    :goto_0
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p0, p1, p2, v0}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .end local p0           #res:Landroid/content/res/Resources;
    return-object p0

    .line 39
    .end local p2           #value:I
    .restart local p0       #res:Landroid/content/res/Resources;
    .local p1, size:J
    :cond_0
    const-wide/32 v0, 0x100000

    cmp-long v0, p1, v0

    if-gez v0, :cond_1

    .line 40
    const v0, 0x7f0c000a

    .line 41
    .restart local v0       #resId:I
    const-wide/16 v1, 0x400

    div-long/2addr p1, v1

    .end local p1           #size:J
    long-to-int p1, p1

    .local p1, value:I
    move p2, p1

    .end local p1           #value:I
    .restart local p2       #value:I
    move p1, v0

    .end local v0           #resId:I
    .local p1, resId:I
    goto :goto_0

    .line 42
    .end local p2           #value:I
    .local p1, size:J
    :cond_1
    const-wide/32 v0, 0x40000000

    cmp-long v0, p1, v0

    if-gez v0, :cond_2

    .line 43
    const v0, 0x7f0c000b

    .line 44
    .restart local v0       #resId:I
    const-wide/32 v1, 0x100000

    div-long/2addr p1, v1

    .end local p1           #size:J
    long-to-int p1, p1

    .local p1, value:I
    move p2, p1

    .end local p1           #value:I
    .restart local p2       #value:I
    move p1, v0

    .end local v0           #resId:I
    .local p1, resId:I
    goto :goto_0

    .line 46
    .end local p2           #value:I
    .local p1, size:J
    :cond_2
    const v0, 0x7f0c000c

    .line 47
    .restart local v0       #resId:I
    const-wide/32 v1, 0x40000000

    div-long/2addr p1, v1

    .end local p1           #size:J
    long-to-int p1, p1

    .local p1, value:I
    move p2, p1

    .end local p1           #value:I
    .restart local p2       #value:I
    move p1, v0

    .end local v0           #resId:I
    .local p1, resId:I
    goto :goto_0
.end method

.method public static getMessageCountForUi(Landroid/content/Context;IZ)Ljava/lang/String;
    .locals 1
    .parameter "context"
    .parameter "count"
    .parameter "replaceZeroWithBlank"

    .prologue
    .line 54
    if-eqz p2, :cond_0

    if-nez p1, :cond_0

    .line 55
    const-string v0, ""

    .line 59
    :goto_0
    return-object v0

    .line 56
    :cond_0
    const/16 v0, 0x3e7

    if-le p1, v0, :cond_1

    .line 57
    const v0, 0x7f080171

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 59
    :cond_1
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
