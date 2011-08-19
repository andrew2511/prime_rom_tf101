.class public Lcom/android/email/FolderProperties;
.super Ljava/lang/Object;
.source "FolderProperties.java"


# static fields
.field private static sInstance:Lcom/android/email/FolderProperties;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mSpecialMailbox:[Ljava/lang/String;

.field private final mSpecialMailboxDrawable:Landroid/content/res/TypedArray;

.field private final mSummaryCombinedInboxDrawable:Landroid/graphics/drawable/Drawable;

.field private final mSummaryStarredMailboxDrawable:Landroid/graphics/drawable/Drawable;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/android/email/FolderProperties;->mContext:Landroid/content/Context;

    .line 43
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07000c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/email/FolderProperties;->mSpecialMailbox:[Ljava/lang/String;

    .line 44
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/android/email/FolderProperties;->mSpecialMailbox:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 45
    const-string v1, ""

    iget-object v2, p0, Lcom/android/email/FolderProperties;->mSpecialMailbox:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 47
    iget-object v1, p0, Lcom/android/email/FolderProperties;->mSpecialMailbox:[Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    .line 44
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 50
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07000d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v1

    iput-object v1, p0, Lcom/android/email/FolderProperties;->mSpecialMailboxDrawable:Landroid/content/res/TypedArray;

    .line 52
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02003f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/email/FolderProperties;->mSummaryStarredMailboxDrawable:Landroid/graphics/drawable/Drawable;

    .line 54
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020042

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/email/FolderProperties;->mSummaryCombinedInboxDrawable:Landroid/graphics/drawable/Drawable;

    .line 56
    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/android/email/FolderProperties;
    .locals 2
    .parameter "context"

    .prologue
    .line 59
    const-class v0, Lcom/android/email/FolderProperties;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/android/email/FolderProperties;->sInstance:Lcom/android/email/FolderProperties;

    if-nez v1, :cond_0

    .line 60
    new-instance v1, Lcom/android/email/FolderProperties;

    invoke-direct {v1, p0}, Lcom/android/email/FolderProperties;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/android/email/FolderProperties;->sInstance:Lcom/android/email/FolderProperties;

    .line 62
    :cond_0
    sget-object v1, Lcom/android/email/FolderProperties;->sInstance:Lcom/android/email/FolderProperties;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 59
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public getDisplayName(I)Ljava/lang/String;
    .locals 2
    .parameter "type"

    .prologue
    .line 67
    const-wide/16 v0, -0x1

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/email/FolderProperties;->getDisplayName(IJ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayName(IJ)Ljava/lang/String;
    .locals 3
    .parameter "type"
    .parameter "mailboxId"

    .prologue
    .line 80
    const/4 v0, 0x0

    .line 83
    .local v0, resId:I
    const-wide/16 v1, -0x2

    cmp-long v1, p2, v1

    if-nez v1, :cond_1

    .line 84
    const v0, 0x7f080062

    .line 92
    :cond_0
    :goto_0
    if-eqz v0, :cond_4

    .line 93
    iget-object v1, p0, Lcom/android/email/FolderProperties;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 99
    :goto_1
    return-object v1

    .line 85
    :cond_1
    const-wide/16 v1, -0x4

    cmp-long v1, p2, v1

    if-nez v1, :cond_2

    .line 86
    const v0, 0x7f080063

    goto :goto_0

    .line 87
    :cond_2
    const-wide/16 v1, -0x5

    cmp-long v1, p2, v1

    if-nez v1, :cond_3

    .line 88
    const v0, 0x7f080064

    goto :goto_0

    .line 89
    :cond_3
    const-wide/16 v1, -0x6

    cmp-long v1, p2, v1

    if-nez v1, :cond_0

    .line 90
    const v0, 0x7f080065

    goto :goto_0

    .line 96
    :cond_4
    iget-object v1, p0, Lcom/android/email/FolderProperties;->mSpecialMailbox:[Ljava/lang/String;

    array-length v1, v1

    if-ge p1, v1, :cond_5

    .line 97
    iget-object v1, p0, Lcom/android/email/FolderProperties;->mSpecialMailbox:[Ljava/lang/String;

    aget-object v1, v1, p1

    goto :goto_1

    .line 99
    :cond_5
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public getIcon(IJ)Landroid/graphics/drawable/Drawable;
    .locals 4
    .parameter "type"
    .parameter "mailboxId"

    .prologue
    const/4 v3, -0x1

    .line 106
    const-wide/16 v1, -0x2

    cmp-long v1, p2, v1

    if-nez v1, :cond_0

    .line 107
    iget-object v1, p0, Lcom/android/email/FolderProperties;->mSummaryCombinedInboxDrawable:Landroid/graphics/drawable/Drawable;

    .line 121
    :goto_0
    return-object v1

    .line 108
    :cond_0
    const-wide/16 v1, -0x4

    cmp-long v1, p2, v1

    if-nez v1, :cond_1

    .line 109
    iget-object v1, p0, Lcom/android/email/FolderProperties;->mSummaryStarredMailboxDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 110
    :cond_1
    const-wide/16 v1, -0x5

    cmp-long v1, p2, v1

    if-nez v1, :cond_2

    .line 111
    iget-object v1, p0, Lcom/android/email/FolderProperties;->mSpecialMailboxDrawable:Landroid/content/res/TypedArray;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_0

    .line 112
    :cond_2
    const-wide/16 v1, -0x6

    cmp-long v1, p2, v1

    if-nez v1, :cond_3

    .line 113
    iget-object v1, p0, Lcom/android/email/FolderProperties;->mSpecialMailboxDrawable:Landroid/content/res/TypedArray;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_0

    .line 115
    :cond_3
    if-ltz p1, :cond_4

    iget-object v1, p0, Lcom/android/email/FolderProperties;->mSpecialMailboxDrawable:Landroid/content/res/TypedArray;

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->length()I

    move-result v1

    if-ge p1, v1, :cond_4

    .line 116
    iget-object v1, p0, Lcom/android/email/FolderProperties;->mSpecialMailboxDrawable:Landroid/content/res/TypedArray;

    invoke-virtual {v1, p1, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    .line 117
    .local v0, resId:I
    if-eq v0, v3, :cond_4

    .line 118
    iget-object v1, p0, Lcom/android/email/FolderProperties;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_0

    .line 121
    .end local v0           #resId:I
    :cond_4
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getSummaryMailboxIconIds(J)Landroid/graphics/drawable/Drawable;
    .locals 1
    .parameter "id"

    .prologue
    .line 72
    const/4 v0, -0x1

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/email/FolderProperties;->getIcon(IJ)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method
