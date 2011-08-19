.class public final Lcom/google/android/feeds/core/app/ErrorObserver;
.super Landroid/database/DataSetObserver;
.source "ErrorObserver.java"


# instance fields
.field private final mActivity:Landroid/app/Activity;

.field private final mCursor:Landroid/database/Cursor;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/database/Cursor;)V
    .locals 2
    .parameter "activity"
    .parameter "cursor"

    .prologue
    .line 44
    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    .line 45
    if-nez p1, :cond_0

    .line 46
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Context must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 48
    :cond_0
    if-nez p2, :cond_1

    .line 49
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Cursor must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 51
    :cond_1
    iput-object p1, p0, Lcom/google/android/feeds/core/app/ErrorObserver;->mActivity:Landroid/app/Activity;

    .line 52
    iput-object p2, p0, Lcom/google/android/feeds/core/app/ErrorObserver;->mCursor:Landroid/database/Cursor;

    .line 53
    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 5

    .prologue
    .line 57
    invoke-super {p0}, Landroid/database/DataSetObserver;->onChanged()V

    .line 58
    iget-object v3, p0, Lcom/google/android/feeds/core/app/ErrorObserver;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->hasWindowFocus()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 60
    :try_start_0
    iget-object v3, p0, Lcom/google/android/feeds/core/app/ErrorObserver;->mCursor:Landroid/database/Cursor;

    invoke-static {v3}, Lcom/google/android/feeds/core/provider/Feed;->throwError(Landroid/database/Cursor;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    :cond_0
    :goto_0
    return-void

    .line 61
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 62
    .local v0, e:Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    .line 63
    .local v1, message:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 64
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    .line 66
    :cond_1
    iget-object v3, p0, Lcom/google/android/feeds/core/app/ErrorObserver;->mActivity:Landroid/app/Activity;

    const/4 v4, 0x0

    invoke-static {v3, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    .line 67
    .local v2, toast:Landroid/widget/Toast;
    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
