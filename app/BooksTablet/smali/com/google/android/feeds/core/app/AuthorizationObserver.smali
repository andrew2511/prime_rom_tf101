.class public final Lcom/google/android/feeds/core/app/AuthorizationObserver;
.super Landroid/database/DataSetObserver;
.source "AuthorizationObserver.java"


# static fields
.field private static final KEY_INTENT:Ljava/lang/String; = "intent"

.field private static final TAG:Ljava/lang/String; = "AuthorizationObserver"


# instance fields
.field private final mActivity:Landroid/app/Activity;

.field private final mCursor:Landroid/database/Cursor;

.field private final mRequestCode:I


# direct methods
.method public constructor <init>(Landroid/app/Activity;ILandroid/database/Cursor;)V
    .locals 0
    .parameter "activity"
    .parameter "requestCode"
    .parameter "cursor"

    .prologue
    .line 61
    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    .line 62
    iput-object p3, p0, Lcom/google/android/feeds/core/app/AuthorizationObserver;->mCursor:Landroid/database/Cursor;

    .line 63
    iput-object p1, p0, Lcom/google/android/feeds/core/app/AuthorizationObserver;->mActivity:Landroid/app/Activity;

    .line 64
    iput p2, p0, Lcom/google/android/feeds/core/app/AuthorizationObserver;->mRequestCode:I

    .line 65
    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 9

    .prologue
    const-string v8, "AuthorizationObserver"

    .line 69
    invoke-super {p0}, Landroid/database/DataSetObserver;->onChanged()V

    .line 70
    iget-object v6, p0, Lcom/google/android/feeds/core/app/AuthorizationObserver;->mActivity:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->hasWindowFocus()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 71
    iget-object v0, p0, Lcom/google/android/feeds/core/app/AuthorizationObserver;->mCursor:Landroid/database/Cursor;

    .line 72
    .local v0, cursor:Landroid/database/Cursor;
    invoke-interface {v0}, Landroid/database/Cursor;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 73
    .local v1, extras:Landroid/os/Bundle;
    sget-object v6, Lcom/google/android/feeds/core/provider/FeedStatus;->ERROR:Lcom/google/android/feeds/core/provider/FeedStatus;

    invoke-static {v1}, Lcom/google/android/feeds/core/provider/FeedStatus;->readFrom(Landroid/os/Bundle;)Lcom/google/android/feeds/core/provider/FeedStatus;

    move-result-object v7

    if-ne v6, v7, :cond_1

    .line 74
    const-string v6, "com.google.android.feeds.cursor.extra.RESPONSE_CODE"

    invoke-virtual {v1, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    .line 75
    .local v5, statusCode:I
    const/16 v6, 0x191

    if-eq v5, v6, :cond_0

    const/16 v6, 0x193

    if-ne v5, v6, :cond_1

    .line 77
    :cond_0
    const-string v4, "com.google.android.feeds.cursor.extra.ACCOUNT_MANAGER_BUNDLE"

    .line 78
    .local v4, key:Ljava/lang/String;
    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    .line 79
    .local v2, info:Landroid/os/Bundle;
    if-eqz v2, :cond_3

    .line 80
    const-string v6, "intent"

    invoke-virtual {v2, v6}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/content/Intent;

    .line 81
    .local v3, intent:Landroid/content/Intent;
    if-eqz v3, :cond_2

    .line 82
    iget-object v6, p0, Lcom/google/android/feeds/core/app/AuthorizationObserver;->mActivity:Landroid/app/Activity;

    iget v7, p0, Lcom/google/android/feeds/core/app/AuthorizationObserver;->mRequestCode:I

    invoke-virtual {v6, v3, v7}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 92
    .end local v0           #cursor:Landroid/database/Cursor;
    .end local v1           #extras:Landroid/os/Bundle;
    .end local v2           #info:Landroid/os/Bundle;
    .end local v3           #intent:Landroid/content/Intent;
    .end local v4           #key:Ljava/lang/String;
    .end local v5           #statusCode:I
    :cond_1
    :goto_0
    return-void

    .line 84
    .restart local v0       #cursor:Landroid/database/Cursor;
    .restart local v1       #extras:Landroid/os/Bundle;
    .restart local v2       #info:Landroid/os/Bundle;
    .restart local v3       #intent:Landroid/content/Intent;
    .restart local v4       #key:Ljava/lang/String;
    .restart local v5       #statusCode:I
    :cond_2
    const-string v6, "AuthorizationObserver"

    const-string v6, "Intent missing"

    invoke-static {v8, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 87
    .end local v3           #intent:Landroid/content/Intent;
    :cond_3
    const-string v6, "AuthorizationObserver"

    const-string v6, "AccountManager Bundle missing"

    invoke-static {v8, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
