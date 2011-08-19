.class public Lcom/android/email/ResourceHelper;
.super Ljava/lang/Object;
.source "ResourceHelper.java"


# static fields
.field private static sInstance:Lcom/android/email/ResourceHelper;


# instance fields
.field private final mAccountColorArray:Landroid/content/res/TypedArray;

.field private final mAccountColorPaints:[Landroid/graphics/Paint;

.field private final mAccountColors:[I

.field private final mContext:Landroid/content/Context;

.field private final mResources:Landroid/content/res/Resources;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    const v3, 0x7f07000e

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iput-object v2, p0, Lcom/android/email/ResourceHelper;->mContext:Landroid/content/Context;

    .line 40
    iget-object v2, p0, Lcom/android/email/ResourceHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iput-object v2, p0, Lcom/android/email/ResourceHelper;->mResources:Landroid/content/res/Resources;

    .line 42
    iget-object v2, p0, Lcom/android/email/ResourceHelper;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v2

    iput-object v2, p0, Lcom/android/email/ResourceHelper;->mAccountColorArray:Landroid/content/res/TypedArray;

    .line 43
    iget-object v2, p0, Lcom/android/email/ResourceHelper;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v2

    iput-object v2, p0, Lcom/android/email/ResourceHelper;->mAccountColors:[I

    .line 44
    iget-object v2, p0, Lcom/android/email/ResourceHelper;->mAccountColors:[I

    array-length v2, v2

    new-array v2, v2, [Landroid/graphics/Paint;

    iput-object v2, p0, Lcom/android/email/ResourceHelper;->mAccountColorPaints:[Landroid/graphics/Paint;

    .line 45
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/android/email/ResourceHelper;->mAccountColors:[I

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 46
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    .line 47
    .local v1, p:Landroid/graphics/Paint;
    iget-object v2, p0, Lcom/android/email/ResourceHelper;->mAccountColors:[I

    aget v2, v2, v0

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 48
    iget-object v2, p0, Lcom/android/email/ResourceHelper;->mAccountColorPaints:[Landroid/graphics/Paint;

    aput-object v1, v2, v0

    .line 45
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 50
    .end local v1           #p:Landroid/graphics/Paint;
    :cond_0
    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/android/email/ResourceHelper;
    .locals 2
    .parameter "context"

    .prologue
    .line 53
    const-class v0, Lcom/android/email/ResourceHelper;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/android/email/ResourceHelper;->sInstance:Lcom/android/email/ResourceHelper;

    if-nez v1, :cond_0

    .line 54
    new-instance v1, Lcom/android/email/ResourceHelper;

    invoke-direct {v1, p0}, Lcom/android/email/ResourceHelper;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/android/email/ResourceHelper;->sInstance:Lcom/android/email/ResourceHelper;

    .line 56
    :cond_0
    sget-object v1, Lcom/android/email/ResourceHelper;->sInstance:Lcom/android/email/ResourceHelper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 53
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public getAccountColor(J)I
    .locals 2
    .parameter "accountId"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/email/ResourceHelper;->mAccountColors:[I

    invoke-virtual {p0, p1, p2}, Lcom/android/email/ResourceHelper;->getAccountColorIndex(J)I

    move-result v1

    aget v0, v0, v1

    return v0
.end method

.method public getAccountColorId(J)I
    .locals 3
    .parameter "accountId"

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/email/ResourceHelper;->mAccountColorArray:Landroid/content/res/TypedArray;

    invoke-virtual {p0, p1, p2}, Lcom/android/email/ResourceHelper;->getAccountColorIndex(J)I

    move-result v1

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    return v0
.end method

.method getAccountColorIndex(J)I
    .locals 4
    .parameter "accountId"

    .prologue
    .line 62
    const-wide/16 v0, 0x1

    sub-long v0, p1, v0

    iget-object v2, p0, Lcom/android/email/ResourceHelper;->mAccountColors:[I

    array-length v2, v2

    int-to-long v2, v2

    rem-long/2addr v0, v2

    long-to-int v0, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    return v0
.end method

.method public getAccountColorPaint(J)Landroid/graphics/Paint;
    .locals 2
    .parameter "accountId"

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/email/ResourceHelper;->mAccountColorPaints:[Landroid/graphics/Paint;

    invoke-virtual {p0, p1, p2}, Lcom/android/email/ResourceHelper;->getAccountColorIndex(J)I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method
