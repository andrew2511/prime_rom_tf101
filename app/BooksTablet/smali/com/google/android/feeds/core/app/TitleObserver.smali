.class public Lcom/google/android/feeds/core/app/TitleObserver;
.super Landroid/database/DataSetObserver;
.source "TitleObserver.java"


# instance fields
.field private final mActivity:Landroid/app/Activity;

.field private final mCursor:Landroid/database/Cursor;

.field private final mOriginalTitle:Ljava/lang/CharSequence;

.field private final mTitleExtra:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/database/Cursor;Ljava/lang/String;)V
    .locals 2
    .parameter "activity"
    .parameter "cursor"
    .parameter "titleExtra"

    .prologue
    .line 47
    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    .line 48
    if-nez p1, :cond_0

    .line 49
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Activity must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 51
    :cond_0
    if-nez p2, :cond_1

    .line 52
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Cursor must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 54
    :cond_1
    if-nez p3, :cond_2

    .line 55
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Extra key must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 57
    :cond_2
    iput-object p1, p0, Lcom/google/android/feeds/core/app/TitleObserver;->mActivity:Landroid/app/Activity;

    .line 58
    iput-object p2, p0, Lcom/google/android/feeds/core/app/TitleObserver;->mCursor:Landroid/database/Cursor;

    .line 59
    iput-object p3, p0, Lcom/google/android/feeds/core/app/TitleObserver;->mTitleExtra:Ljava/lang/String;

    .line 60
    invoke-virtual {p1}, Landroid/app/Activity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/feeds/core/app/TitleObserver;->mOriginalTitle:Ljava/lang/CharSequence;

    .line 61
    invoke-direct {p0}, Lcom/google/android/feeds/core/app/TitleObserver;->updateTitle()V

    .line 62
    return-void
.end method

.method private updateTitle()V
    .locals 3

    .prologue
    .line 65
    iget-object v2, p0, Lcom/google/android/feeds/core/app/TitleObserver;->mCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 66
    .local v0, extras:Landroid/os/Bundle;
    iget-object v2, p0, Lcom/google/android/feeds/core/app/TitleObserver;->mTitleExtra:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 67
    .local v1, title:Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 68
    iget-object v2, p0, Lcom/google/android/feeds/core/app/TitleObserver;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2, v1}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    .line 70
    :cond_0
    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 0

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/google/android/feeds/core/app/TitleObserver;->updateTitle()V

    .line 75
    return-void
.end method

.method public onInvalidated()V
    .locals 2

    .prologue
    .line 79
    iget-object v0, p0, Lcom/google/android/feeds/core/app/TitleObserver;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/google/android/feeds/core/app/TitleObserver;->mOriginalTitle:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    .line 80
    return-void
.end method
