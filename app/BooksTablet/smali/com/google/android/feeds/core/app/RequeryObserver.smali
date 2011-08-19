.class public final Lcom/google/android/feeds/core/app/RequeryObserver;
.super Landroid/database/DataSetObserver;
.source "RequeryObserver.java"


# instance fields
.field private final mCursor:Landroid/database/Cursor;

.field private final mWindow:Landroid/view/Window;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/database/Cursor;)V
    .locals 1
    .parameter "activity"
    .parameter "cursor"

    .prologue
    .line 97
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/google/android/feeds/core/app/RequeryObserver;-><init>(Landroid/view/Window;Landroid/database/Cursor;)V

    .line 98
    return-void
.end method

.method public constructor <init>(Landroid/view/Window;Landroid/database/Cursor;)V
    .locals 2
    .parameter "window"
    .parameter "cursor"

    .prologue
    .line 68
    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    .line 69
    if-nez p1, :cond_0

    .line 70
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Window must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 72
    :cond_0
    if-nez p2, :cond_1

    .line 73
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Cursor must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 75
    :cond_1
    iput-object p1, p0, Lcom/google/android/feeds/core/app/RequeryObserver;->mWindow:Landroid/view/Window;

    .line 76
    iput-object p2, p0, Lcom/google/android/feeds/core/app/RequeryObserver;->mCursor:Landroid/database/Cursor;

    .line 79
    invoke-direct {p0}, Lcom/google/android/feeds/core/app/RequeryObserver;->updateWindow()V

    .line 80
    return-void
.end method

.method public static requestWindowFeatures(Landroid/app/Activity;)V
    .locals 1
    .parameter "activity"

    .prologue
    .line 39
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 40
    .local v0, window:Landroid/view/Window;
    invoke-static {v0}, Lcom/google/android/feeds/core/app/RequeryObserver;->requestWindowFeatures(Landroid/view/Window;)V

    .line 41
    return-void
.end method

.method public static requestWindowFeatures(Landroid/view/Window;)V
    .locals 1
    .parameter "window"

    .prologue
    .line 47
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Landroid/view/Window;->requestFeature(I)Z

    .line 48
    return-void
.end method

.method private updateWindow()V
    .locals 5

    .prologue
    .line 114
    iget-object v2, p0, Lcom/google/android/feeds/core/app/RequeryObserver;->mCursor:Landroid/database/Cursor;

    invoke-static {v2}, Lcom/google/android/feeds/core/provider/Feed;->getStatus(Landroid/database/Cursor;)Lcom/google/android/feeds/core/provider/FeedStatus;

    move-result-object v1

    .line 115
    .local v1, status:Lcom/google/android/feeds/core/provider/FeedStatus;
    sget-object v2, Lcom/google/android/feeds/core/provider/FeedStatus;->REQUERYING:Lcom/google/android/feeds/core/provider/FeedStatus;

    if-ne v1, v2, :cond_0

    const/4 v2, 0x1

    move v0, v2

    .line 116
    .local v0, requerying:Z
    :goto_0
    iget-object v2, p0, Lcom/google/android/feeds/core/app/RequeryObserver;->mWindow:Landroid/view/Window;

    const/4 v3, 0x5

    if-eqz v0, :cond_1

    const/4 v4, -0x1

    :goto_1
    invoke-virtual {v2, v3, v4}, Landroid/view/Window;->setFeatureInt(II)V

    .line 118
    return-void

    .line 115
    .end local v0           #requerying:Z
    :cond_0
    const/4 v2, 0x0

    move v0, v2

    goto :goto_0

    .line 116
    .restart local v0       #requerying:Z
    :cond_1
    const/4 v4, -0x2

    goto :goto_1
.end method


# virtual methods
.method public onChanged()V
    .locals 0

    .prologue
    .line 102
    invoke-super {p0}, Landroid/database/DataSetObserver;->onChanged()V

    .line 103
    invoke-direct {p0}, Lcom/google/android/feeds/core/app/RequeryObserver;->updateWindow()V

    .line 104
    return-void
.end method

.method public onInvalidated()V
    .locals 3

    .prologue
    .line 108
    invoke-super {p0}, Landroid/database/DataSetObserver;->onInvalidated()V

    .line 109
    const/4 v0, 0x5

    .line 110
    .local v0, featureId:I
    iget-object v1, p0, Lcom/google/android/feeds/core/app/RequeryObserver;->mWindow:Landroid/view/Window;

    const/4 v2, -0x2

    invoke-virtual {v1, v0, v2}, Landroid/view/Window;->setFeatureInt(II)V

    .line 111
    return-void
.end method
