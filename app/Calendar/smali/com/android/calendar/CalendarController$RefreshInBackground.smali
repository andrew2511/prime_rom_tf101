.class Lcom/android/calendar/CalendarController$RefreshInBackground;
.super Landroid/os/AsyncTask;
.source "CalendarController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/CalendarController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RefreshInBackground"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Landroid/database/Cursor;",
        "Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/CalendarController;


# direct methods
.method private constructor <init>(Lcom/android/calendar/CalendarController;)V
    .locals 0
    .parameter

    .prologue
    .line 610
    iput-object p1, p0, Lcom/android/calendar/CalendarController$RefreshInBackground;->this$0:Lcom/android/calendar/CalendarController;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/calendar/CalendarController;Lcom/android/calendar/CalendarController$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 610
    invoke-direct {p0, p1}, Lcom/android/calendar/CalendarController$RefreshInBackground;-><init>(Lcom/android/calendar/CalendarController;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Landroid/database/Cursor;)Ljava/lang/Integer;
    .locals 10
    .parameter "params"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v9, 0x0

    .line 616
    array-length v6, p1

    if-eq v6, v8, :cond_0

    move-object v6, v9

    .line 646
    :goto_0
    return-object v6

    .line 619
    :cond_0
    aget-object v3, p1, v7

    .line 620
    .local v3, cursor:Landroid/database/Cursor;
    if-nez v3, :cond_1

    move-object v6, v9

    .line 621
    goto :goto_0

    .line 624
    :cond_1
    const/4 v4, 0x0

    .line 625
    .local v4, previousAccount:Ljava/lang/String;
    const/4 v5, 0x0

    .line 626
    .local v5, previousType:Ljava/lang/String;
    const-string v6, "CalendarController"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Refreshing "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " calendars"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 628
    :cond_2
    :goto_1
    :try_start_0
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 629
    const/4 v0, 0x0

    .line 630
    .local v0, account:Landroid/accounts/Account;
    const/4 v6, 0x1

    invoke-interface {v3, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 631
    .local v1, accountName:Ljava/lang/String;
    const/4 v6, 0x2

    invoke-interface {v3, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 634
    .local v2, accountType:Ljava/lang/String;
    invoke-static {v1, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-static {v2, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 638
    :cond_3
    move-object v4, v1

    .line 639
    move-object v5, v2

    .line 640
    new-instance v0, Landroid/accounts/Account;

    .end local v0           #account:Landroid/accounts/Account;
    invoke-direct {v0, v1, v2}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 641
    .restart local v0       #account:Landroid/accounts/Account;
    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {p0, v0, v6, v7}, Lcom/android/calendar/CalendarController$RefreshInBackground;->scheduleSync(Landroid/accounts/Account;ZLjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 644
    .end local v0           #account:Landroid/accounts/Account;
    .end local v1           #accountName:Ljava/lang/String;
    .end local v2           #accountType:Ljava/lang/String;
    :catchall_0
    move-exception v6

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    throw v6

    :cond_4
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    move-object v6, v9

    .line 646
    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 610
    check-cast p1, [Landroid/database/Cursor;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/calendar/CalendarController$RefreshInBackground;->doInBackground([Landroid/database/Cursor;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method scheduleSync(Landroid/accounts/Account;ZLjava/lang/String;)V
    .locals 3
    .parameter "account"
    .parameter "uploadChangesOnly"
    .parameter "url"

    .prologue
    .line 659
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 660
    .local v0, extras:Landroid/os/Bundle;
    if-eqz p2, :cond_0

    .line 661
    const-string v1, "upload"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 663
    :cond_0
    if-eqz p3, :cond_1

    .line 664
    const-string v1, "feed"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 665
    const-string v1, "force"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 667
    :cond_1
    sget-object v1, Landroid/provider/Calendar$Calendars;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1, v0}, Landroid/content/ContentResolver;->requestSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 668
    return-void
.end method
